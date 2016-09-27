module TradoMailchimpModule
    module ActiveRecord
        extend ActiveSupport::Concern

        module ClassMethods
            def has_mailchimp_newsletter
                attr_accessible :newsletter
                attr_accessor :newsletter

                after_commit :send_email_to_mailchimp,              on: :create, if: :newsletter?

                define_method("send_email_to_mailchimp") do
                    Gibbon::Request.lists(Store.settings.mailchimp_list_id).members.create(body: {email_address: self.email, status: "subscribed", merge_fields: {FNAME: self.billing_address.first_name, LNAME: self.billing_address.last_name}}) if Store.settings.mailchimp_list_id.present? && self.email.present? && self.billing_address.present?
                end

                define_method("newsletter?") do
                    newsletter == 1 ? true : false
                end
            end

            def has_mailchimp_list
                attr_accessible :mailchimp_list_id
            end
        end
    end
end
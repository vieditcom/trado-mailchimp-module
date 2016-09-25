module TradoMailchimpModule
    module ActiveRecord
        extend ActiveSupport::Concern

        module ClassMethods
            def has_mailchimp_newsletter
                attr_accessor :newsletter

                after_commit :send_email_to_mailchimp,              on: :create, if: :newsletter

                def send_email_to_mailchimp
                    Gibbon::Request.lists(Store.settings.mailchimp_list_id).members.create(body: {email_address: email, status: "subscribed", merge_fields: {FNAME: billing_address.first_name, LNAME: billing_address.last_name}} )
                end
            end

            def has_mailchimp_list
                attr_accessible :mailchimp_list_id
            end
        end
    end
end
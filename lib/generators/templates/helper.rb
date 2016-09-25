module MailchimpHelper

    def mailchimp_store_setting_fields f
        render 'admin/store_setting_fields', format: [:html], f: f
    end
end
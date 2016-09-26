module MailchimpHelper

    def mailchimp_store_setting_fields f
        render 'admin/store_setting_fields', format: [:html], f: f
    end

    def mailchimp_checkout_fields f, label
        render 'carts/checkout_fields', format: [:html], f: f, label: label
    end
end
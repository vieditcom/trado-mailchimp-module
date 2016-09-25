class AddMailchimpAttributes < ActiveRecord::Migration
    def self.up
        add_column :store_settings, :mailchimp_list_id, :string
    end

    def self.down
        remove_column :store_settings, :mailchimp_list_id, :string
    end
end

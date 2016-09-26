module TradoMailchimpModule
    module Generators
        class InstallGenerator < Rails::Generators::Base
            source_root File.expand_path("../../templates", __FILE__)

            def copy_migration
                unless mailchimp_migration_already_exists?
                    timestamp_number = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
                    copy_file "migration.rb", "db/migrate/#{timestamp_number}_add_mailchimp_attributes.rb"
                end
            end
            
            def assign_model_concerns
                order_content = <<-CONTENT

    has_mailchimp_newsletter
                CONTENT

                store_setting_content = <<-CONTENT

    has_mailchimp_list
                CONTENT

                inject_into_file "app/models/order.rb", order_content, after: "class Order < ActiveRecord::Base"
                inject_into_file "app/models/store_setting.rb", store_setting_content, after: "class StoreSetting < ActiveRecord::Base"
            end

            private

            def mailchimp_migration_already_exists?
                Dir.glob("#{File.join(destination_root, File.join("db", "migrate"))}/[0-9]*_*.rb").grep(/\d+_add_mailchimp_attributes.rb$/).first
            end
        end
    end
end
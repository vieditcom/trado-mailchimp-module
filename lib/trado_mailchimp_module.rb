module TradoMailchimpModule
end

require 'gibbon'

require 'trado_mailchimp_module/engine'
require 'trado_mailchimp_module/version'
require 'trado_mailchimp_module/active_record'

ActiveRecord::Base.send(:include, TradoMailchimpModule::ActiveRecord)
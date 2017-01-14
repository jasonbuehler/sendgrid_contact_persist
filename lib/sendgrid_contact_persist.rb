require 'rest-client'

module SendgridContactPersist
	class << self
    attr_accessor :logger

    def persist(emails, custom_attrs = {})
      return nil unless api_key = ENV['SENDGRID_API_KEY']

      headers = {'Authorization' => "Bearer #{api_key}"}
      emails = [emails] unless emails.kind_of?(Array)
      data = []
      emails.each do |email|
        data << {email: email}.merge(custom_attrs)
      end

      resp = RestClient.post 'https://api.sendgrid.com/v3/contactdb/recipients', data.to_json, headers
      SendgridContactPersist.logger.info "Contact(s) added to Sendgrid: #{emails}"
      resp
    end
  end

  class Railties < ::Rails::Railtie
    initializer 'Rails logger' do
      SendgridContactPersist.logger = Rails.logger
    end
  end

  if defined?(Rails)
		require 'sendgrid_contact_persist/engine'
  end
end

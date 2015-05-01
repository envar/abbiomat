require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Abbiomat
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    # Mailer config
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      :address => "smtp.mandrillapp.com",
      :port => 587,
      :user_name => ENV['MANDRILL_USERNAME'],
      :password => ENV['MANDRILL_PASSWORD'],
      :authentication => "plain",
      :enable_starttls_auto => true,
      :domain => "abbiomat.ca"
    }

  # Tell Paperclip where to look for imagemagick utilities
  Paperclip.options[:command_path] = "/usr/local/bin/"
  # Paperclip config
  config.paperclip_defaults = {
    :storage => :s3,
    :bucket => ENV['S3_BUCKET_NAME'],
    :s3_credentials => {
      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
    },
    :url => ':s3_domain_url',
    :path => '/:class/:attachment/:id_partition/:style/:filename',
  }

  end
end

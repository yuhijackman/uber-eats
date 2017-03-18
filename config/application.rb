require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module UberEats
  class Application < Rails::Application
    config.generators do |g|
      g.helper     false
      g.test_framework false
    end
  end
end

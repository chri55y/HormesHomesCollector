require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HormesHomesCollector
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # from http://guides.rubyonrails.org/generators.html
    config.generators do |g|
      # g.orm             :active_record # standard, rarely change
      # g.template_engine :erb	# could be slim, haml
      # g.test_framework  :test_unit, fixture: false
      # g.stylesheets     false
      # g.javascripts     false
      g.scaffold_stylesheet false
    end

    # Don't generate system test files.
    config.generators.system_tests = nil
  end
end

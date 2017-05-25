require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Splus
  class Application < Rails::Application
  end
end

require 'bourbon'
require 'neat'
require 'bitters'
require 'jquery-rails'
require 'selectivity/rails'

module RolloutSpice
  class Engine < ::Rails::Engine
    isolate_namespace RolloutSpice
  end
end

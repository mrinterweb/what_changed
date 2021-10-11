# frozen_string_literal: true

require 'yaml'

module WhatChanged
  class Config
    include Singleton

    class ConfigError < StandardError; end

    def initialize
      @config = YAML.load_file
    end

    def base_branch
      @config.fetch('base_branch')
    rescue KeyError
      raise ConfigError, 'base_branch not defined'
    end

    class << self
      def base_branch
        instance.base_branch
      end
    end
  end
end

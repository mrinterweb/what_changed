# frozen_string_literal: true

module WhatChanged
  # Applies rules from the config
  class Rules
    attr_reader :config, :changed_files

    def initialize(config, changed_files)
      @config = config
      @changed_files = changed_files.sort
      apply_ignore_rules!
    end

    def features_with_changes

    end

    private

    def apply_ignore_rules!
      config.dig('ignored', 'files').each do |ignored_file|
        changed_files.reject! { |f| f == ignored_file }
      end
    end

    def file_search(file)
      changed_files.bsearch { |changed_file| file <=> changed_file }
    end
  end
end

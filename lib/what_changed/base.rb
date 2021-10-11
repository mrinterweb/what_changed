# frozen_string_literal: true

module WhatChanged
  # Top-most API
  class Base
    def self.features_with_changes
      rules = Rules.new(Config.instance, Git.files_changed)
      rules.features_with_changes
    end
  end
end

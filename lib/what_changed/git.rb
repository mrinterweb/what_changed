# frozen_string_literal: true

module WhatChanged
  class Git
    class << self
      def files_changed(release_branch = 'HEAD', base_branch = Config.base_branch)
        `git diff --name-only #{base_branch}..#{release_branch}`
      end

      def base_branch
        Config.base_branch
      end
    end
  end
end

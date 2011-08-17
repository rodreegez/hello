#!/usr/bin/env rake
require 'bundler/gem_tasks'

module Bundler
  class GemHelper
    def release_gem
      guard_clean
      guard_already_tagged
      built_gem_path = build_gem
      tag_version
      git_push
      rubygem_push(built_gem_path)
    end

    def rubygem_push(path)
      if Pathname.new("~/.gem/geminabox").expand_path.exist?
        sh("gem inabox '#{path}'")
        Bundler.ui.confirm "Pushed #{name} #{version} to gems.mintdigital.com"
      else
        raise "Your geminabox credentials aren't set. Run `gem inabox` to set them."
      end
    end
  end
end

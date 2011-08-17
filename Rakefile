#!/usr/bin/env rake
require 'bundler/gem_tasks'

module Bundler
  class GemHelper
    def gem_push(path)
      sh("gem inabox '#{path}'")
    end
  end
end

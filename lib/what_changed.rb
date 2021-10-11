# frozen_string_literal: true

require 'what_changed/base'
require 'what_changed/config'
require 'what_changed/git'
require 'what_changed/rules'
require 'what_changed/version'

module WhatChanged
  class Error < StandardError; end
end

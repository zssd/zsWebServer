module Helpers
  module Zswebserver
    include MiniTest::Chef::Assertions
    include MiniTest::Chef::Context
    include MiniTest::Chef::Resources
    require 'minitest/spec'
    require 'chef'
    require 'minitest/autorun'
    require 'win32/registry'
    require 'ruby-wmi'
  end
end

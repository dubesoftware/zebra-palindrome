$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "zebra_palindrome"

require "minitest/autorun"
require "minitest/reporters"
Minitest::Reporters.use!

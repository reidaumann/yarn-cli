require 'minitest/autorun'
require './store'

class TestYarn < Minitest::Test
  store=Store.new
  assert_equal store, @yarns = []
end

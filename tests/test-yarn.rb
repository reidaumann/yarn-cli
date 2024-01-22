require 'minitest/autorun'
require './store'

class TestYarn < Minitest::Test
  def test_add_yarn
    store = Store.new
    assert store.add_yarn != nil
  end
end

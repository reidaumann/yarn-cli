require 'minitest/autorun'
require './store'

class TestYarn < Minitest::Test
  def test_new_store
    store=Store.new
    assert_equal "There is no yarn in your cart currently.", store.list_yarns
  end

  def test_add_yarn
    store=Store.new
    assert_equal "Yarn added to cart!", store.add_yarn
  end
end

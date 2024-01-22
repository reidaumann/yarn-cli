require 'minitest/autorun'
require './store'
require './yarn'

class TestYarn < Minitest::Test
  #test that yarn "cart" is empty when store is first opened
  def test_new_store
    store=Store.new
    assert_equal "There is no yarn in your cart currently.", store.list_yarns
  end

  #test to make sure that adding yarn to "cart" works
  def test_add_yarn
    store=Store.new
    store.add_yarn
    assert_equal yarn.to_s, store.list_yarns
  end
end

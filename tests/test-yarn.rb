require 'minitest/autorun'
require './store'
require './yarn'

class TestYarn < Minitest::Test
 #testing to make sure cart is empty when first opened
   def test_cart_empty
    store=Store.new
    assert_equal "There is no yarn in your cart currently.", store.list_yarns
   end
  end

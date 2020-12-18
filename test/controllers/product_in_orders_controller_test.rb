require "test_helper"

class ProductInOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_in_order = product_in_orders(:one)
  end

  test "should get index" do
    get product_in_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_product_in_order_url
    assert_response :success
  end

  test "should create product_in_order" do
    assert_difference('ProductInOrder.count') do
      post product_in_orders_url, params: { product_in_order: { order_id: @product_in_order.order_id, product_id: @product_in_order.product_id, quantity: @product_in_order.quantity } }
    end

    assert_redirected_to product_in_order_url(ProductInOrder.last)
  end

  test "should show product_in_order" do
    get product_in_order_url(@product_in_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_in_order_url(@product_in_order)
    assert_response :success
  end

  test "should update product_in_order" do
    patch product_in_order_url(@product_in_order), params: { product_in_order: { order_id: @product_in_order.order_id, product_id: @product_in_order.product_id, quantity: @product_in_order.quantity } }
    assert_redirected_to product_in_order_url(@product_in_order)
  end

  test "should destroy product_in_order" do
    assert_difference('ProductInOrder.count', -1) do
      delete product_in_order_url(@product_in_order)
    end

    assert_redirected_to product_in_orders_url
  end
end

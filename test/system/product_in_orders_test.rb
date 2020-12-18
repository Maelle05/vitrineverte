require "application_system_test_case"

class ProductInOrdersTest < ApplicationSystemTestCase
  setup do
    @product_in_order = product_in_orders(:one)
  end

  test "visiting the index" do
    visit product_in_orders_url
    assert_selector "h1", text: "Product In Orders"
  end

  test "creating a Product in order" do
    visit product_in_orders_url
    click_on "New Product In Order"

    fill_in "Order", with: @product_in_order.order_id
    fill_in "Product", with: @product_in_order.product_id
    fill_in "Quantity", with: @product_in_order.quantity
    click_on "Create Product in order"

    assert_text "Product in order was successfully created"
    click_on "Back"
  end

  test "updating a Product in order" do
    visit product_in_orders_url
    click_on "Edit", match: :first

    fill_in "Order", with: @product_in_order.order_id
    fill_in "Product", with: @product_in_order.product_id
    fill_in "Quantity", with: @product_in_order.quantity
    click_on "Update Product in order"

    assert_text "Product in order was successfully updated"
    click_on "Back"
  end

  test "destroying a Product in order" do
    visit product_in_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product in order was successfully destroyed"
  end
end

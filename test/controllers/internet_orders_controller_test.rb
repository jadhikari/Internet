require 'test_helper'

class InternetOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @internet_order = internet_orders(:one)
  end

  test "should get index" do
    get internet_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_internet_order_url
    assert_response :success
  end

  test "should create internet_order" do
    assert_difference('InternetOrder.count') do
      post internet_orders_url, params: { internet_order: { apply_date: @internet_order.apply_date, conclusion: @internet_order.conclusion, fb_id: @internet_order.fb_id, house_type: @internet_order.house_type, kouji_date: @internet_order.kouji_date, link: @internet_order.link, name: @internet_order.name, phone_number: @internet_order.phone_number, plan: @internet_order.plan, postal_code: @internet_order.postal_code, sn: @internet_order.sn } }
    end

    assert_redirected_to internet_order_url(InternetOrder.last)
  end

  test "should show internet_order" do
    get internet_order_url(@internet_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_internet_order_url(@internet_order)
    assert_response :success
  end

  test "should update internet_order" do
    patch internet_order_url(@internet_order), params: { internet_order: { apply_date: @internet_order.apply_date, conclusion: @internet_order.conclusion, fb_id: @internet_order.fb_id, house_type: @internet_order.house_type, kouji_date: @internet_order.kouji_date, link: @internet_order.link, name: @internet_order.name, phone_number: @internet_order.phone_number, plan: @internet_order.plan, postal_code: @internet_order.postal_code, sn: @internet_order.sn } }
    assert_redirected_to internet_order_url(@internet_order)
  end

  test "should destroy internet_order" do
    assert_difference('InternetOrder.count', -1) do
      delete internet_order_url(@internet_order)
    end

    assert_redirected_to internet_orders_url
  end
end

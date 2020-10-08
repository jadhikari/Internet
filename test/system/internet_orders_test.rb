require "application_system_test_case"

class InternetOrdersTest < ApplicationSystemTestCase
  setup do
    @internet_order = internet_orders(:one)
  end

  test "visiting the index" do
    visit internet_orders_url
    assert_selector "h1", text: "Internet Orders"
  end

  test "creating a Internet order" do
    visit internet_orders_url
    click_on "New Internet Order"

    fill_in "Apply date", with: @internet_order.apply_date
    fill_in "Conclusion", with: @internet_order.conclusion
    fill_in "Fb", with: @internet_order.fb_id
    fill_in "House type", with: @internet_order.house_type
    fill_in "Kouji date", with: @internet_order.kouji_date
    fill_in "Link", with: @internet_order.link
    fill_in "Name", with: @internet_order.name
    fill_in "Phone number", with: @internet_order.phone_number
    fill_in "Plan", with: @internet_order.plan
    fill_in "Postal code", with: @internet_order.postal_code
    fill_in "Sn", with: @internet_order.sn
    click_on "Create Internet order"

    assert_text "Internet order was successfully created"
    click_on "Back"
  end

  test "updating a Internet order" do
    visit internet_orders_url
    click_on "Edit", match: :first

    fill_in "Apply date", with: @internet_order.apply_date
    fill_in "Conclusion", with: @internet_order.conclusion
    fill_in "Fb", with: @internet_order.fb_id
    fill_in "House type", with: @internet_order.house_type
    fill_in "Kouji date", with: @internet_order.kouji_date
    fill_in "Link", with: @internet_order.link
    fill_in "Name", with: @internet_order.name
    fill_in "Phone number", with: @internet_order.phone_number
    fill_in "Plan", with: @internet_order.plan
    fill_in "Postal code", with: @internet_order.postal_code
    fill_in "Sn", with: @internet_order.sn
    click_on "Update Internet order"

    assert_text "Internet order was successfully updated"
    click_on "Back"
  end

  test "destroying a Internet order" do
    visit internet_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Internet order was successfully destroyed"
  end
end

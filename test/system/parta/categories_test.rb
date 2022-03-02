require "application_system_test_case"

class Parta::CategoriesTest < ApplicationSystemTestCase
  setup do
    @parta_category = parta_categories(:one)
  end

  test "visiting the index" do
    visit parta_categories_url
    assert_selector "h1", text: "Parta/Categories"
  end

  test "creating a Category" do
    visit parta_categories_url
    click_on "New Parta/Category"

    fill_in "Description", with: @parta_category.description
    fill_in "Name", with: @parta_category.name
    click_on "Create Category"

    assert_text "Category was successfully created"
    click_on "Back"
  end

  test "updating a Category" do
    visit parta_categories_url
    click_on "Edit", match: :first

    fill_in "Description", with: @parta_category.description
    fill_in "Name", with: @parta_category.name
    click_on "Update Category"

    assert_text "Category was successfully updated"
    click_on "Back"
  end

  test "destroying a Category" do
    visit parta_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Category was successfully destroyed"
  end
end

require "minitest_helper"

feature "adding new product" do
  scenario "user clicks new product and form appears", js: true do
    # save_and_open_page
    visit root_path

    click_on 'New Product'
    sleep 1

    # Then I should see the new post
    page.text.must_include 'Name'

  end
end

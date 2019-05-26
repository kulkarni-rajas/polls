require "application_system_test_case"

class PollboothsTest < ApplicationSystemTestCase
  setup do
    @pollbooth = pollbooths(:one)
  end

  test "visiting the index" do
    visit pollbooths_url
    assert_selector "h1", text: "Pollbooths"
  end

  test "creating a Pollbooth" do
    visit pollbooths_url
    click_on "New Pollbooth"

    fill_in "Answer", with: @pollbooth.answer
    fill_in "Email", with: @pollbooth.email
    click_on "Create Pollbooth"

    assert_text "Pollbooth was successfully created"
    click_on "Back"
  end

  test "updating a Pollbooth" do
    visit pollbooths_url
    click_on "Edit", match: :first

    fill_in "Answer", with: @pollbooth.answer
    fill_in "Email", with: @pollbooth.email
    click_on "Update Pollbooth"

    assert_text "Pollbooth was successfully updated"
    click_on "Back"
  end

  test "destroying a Pollbooth" do
    visit pollbooths_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pollbooth was successfully destroyed"
  end
end

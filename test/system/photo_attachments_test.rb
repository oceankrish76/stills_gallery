require "application_system_test_case"

class PhotoAttachmentsTest < ApplicationSystemTestCase
  setup do
    @photo_attachment = photo_attachments(:one)
  end

  test "visiting the index" do
    visit photo_attachments_url
    assert_selector "h1", text: "Photo Attachments"
  end

  test "creating a Photo attachment" do
    visit photo_attachments_url
    click_on "New Photo Attachment"

    fill_in "Avatar", with: @photo_attachment.avatar
    fill_in "Photo", with: @photo_attachment.photo_id
    click_on "Create Photo attachment"

    assert_text "Photo attachment was successfully created"
    click_on "Back"
  end

  test "updating a Photo attachment" do
    visit photo_attachments_url
    click_on "Edit", match: :first

    fill_in "Avatar", with: @photo_attachment.avatar
    fill_in "Photo", with: @photo_attachment.photo_id
    click_on "Update Photo attachment"

    assert_text "Photo attachment was successfully updated"
    click_on "Back"
  end

  test "destroying a Photo attachment" do
    visit photo_attachments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Photo attachment was successfully destroyed"
  end
end

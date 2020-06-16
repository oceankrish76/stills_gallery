require 'test_helper'

class PhotoAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photo_attachment = photo_attachments(:one)
  end

  test "should get index" do
    get photo_attachments_url
    assert_response :success
  end

  test "should get new" do
    get new_photo_attachment_url
    assert_response :success
  end

  test "should create photo_attachment" do
    assert_difference('PhotoAttachment.count') do
      photo photo_attachments_url, params: { photo_attachment: { avatar: @photo_attachment.avatar, photo_id: @photo_attachment.photo_id } }
    end

    assert_redirected_to photo_attachment_url(PhotoAttachment.last)
  end

  test "should show photo_attachment" do
    get photo_attachment_url(@photo_attachment)
    assert_response :success
  end

  test "should get edit" do
    get edit_photo_attachment_url(@photo_attachment)
    assert_response :success
  end

  test "should update photo_attachment" do
    patch photo_attachment_url(@photo_attachment), params: { photo_attachment: { avatar: @photo_attachment.avatar, photo_id: @photo_attachment.photo_id } }
    assert_redirected_to photo_attachment_url(@photo_attachment)
  end

  test "should destroy photo_attachment" do
    assert_difference('PhotoAttachment.count', -1) do
      delete photo_attachment_url(@photo_attachment)
    end

    assert_redirected_to photo_attachments_url
  end
end

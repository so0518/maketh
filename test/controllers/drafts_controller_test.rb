require 'test_helper'

class DraftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @draft = drafts(:one)
  end

  test "should get index" do
    get drafts_url
    assert_response :success
  end

  test "should get new" do
    get new_draft_url
    assert_response :success
  end

  test "should create draft" do
    assert_difference('Draft.count') do
      post drafts_url, params: { draft: { bookmark_count: @draft.bookmark_count, draft_id: @draft.draft_id, draft_name: @draft.draft_name, expected_price: @draft.expected_price, explanation: @draft.explanation, gender: @draft.gender, product_category: @draft.product_category, user_id: @draft.user_id } }
    end

    assert_redirected_to draft_url(Draft.last)
  end

  test "should show draft" do
    get draft_url(@draft)
    assert_response :success
  end

  test "should get edit" do
    get edit_draft_url(@draft)
    assert_response :success
  end

  test "should update draft" do
    patch draft_url(@draft), params: { draft: { bookmark_count: @draft.bookmark_count, draft_id: @draft.draft_id, draft_name: @draft.draft_name, expected_price: @draft.expected_price, explanation: @draft.explanation, gender: @draft.gender, product_category: @draft.product_category, user_id: @draft.user_id } }
    assert_redirected_to draft_url(@draft)
  end

  test "should destroy draft" do
    assert_difference('Draft.count', -1) do
      delete draft_url(@draft)
    end

    assert_redirected_to drafts_url
  end
end

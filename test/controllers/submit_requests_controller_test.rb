require 'test_helper'

class SubmitRequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get submit_requests_index_url
    assert_response :success
  end

  test "should get new" do
    get submit_requests_new_url
    assert_response :success
  end

  test "should get create" do
    get submit_requests_create_url
    assert_response :success
  end

  test "should get show" do
    get submit_requests_show_url
    assert_response :success
  end

  test "should get edit" do
    get submit_requests_edit_url
    assert_response :success
  end

  test "should get update" do
    get submit_requests_update_url
    assert_response :success
  end

  test "should get destroy" do
    get submit_requests_destroy_url
    assert_response :success
  end

  test "should get approve" do
    get submit_requests_approve_url
    assert_response :success
  end

  test "should get unapprove" do
    get submit_requests_unapprove_url
    assert_response :success
  end

  test "should get reject" do
    get submit_requests_reject_url
    assert_response :success
  end

  test "should get inbox" do
    get submit_requests_inbox_url
    assert_response :success
  end

end

require 'test_helper'

class MajorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @major = majors(:one)
  end

  test "should get index" do
    get majors_url
    assert_response :success
  end

  test "should get new" do
    get new_major_url
    assert_response :success
  end

  test "should create major" do
    assert_difference('Major.count') do
      post majors_url, params: { major: { instructor_id: @major.instructor_id, title: @major.title } }
    end

    assert_redirected_to major_url(Major.last)
  end

  test "should show major" do
    get major_url(@major)
    assert_response :success
  end

  test "should get edit" do
    get edit_major_url(@major)
    assert_response :success
  end

  test "should update major" do
    patch major_url(@major), params: { major: { instructor_id: @major.instructor_id, title: @major.title } }
    assert_redirected_to major_url(@major)
  end

  test "should destroy major" do
    assert_difference('Major.count', -1) do
      delete major_url(@major)
    end

    assert_redirected_to majors_url
  end
end

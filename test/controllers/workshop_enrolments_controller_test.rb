require 'test_helper'

class WorkshopEnrolmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workshop_enrolment = workshop_enrolments(:one)
  end

  test "should get index" do
    get workshop_enrolments_url
    assert_response :success
  end

  test "should get new" do
    get new_workshop_enrolment_url
    assert_response :success
  end

  test "should create workshop_enrolment" do
    assert_difference('WorkshopEnrolment.count') do
      post workshop_enrolments_url, params: { workshop_enrolment: { enrolment: @workshop_enrolment.enrolment, workshop: @workshop_enrolment.workshop } }
    end

    assert_redirected_to workshop_enrolment_url(WorkshopEnrolment.last)
  end

  test "should show workshop_enrolment" do
    get workshop_enrolment_url(@workshop_enrolment)
    assert_response :success
  end

  test "should get edit" do
    get edit_workshop_enrolment_url(@workshop_enrolment)
    assert_response :success
  end

  test "should update workshop_enrolment" do
    patch workshop_enrolment_url(@workshop_enrolment), params: { workshop_enrolment: { enrolment: @workshop_enrolment.enrolment, workshop: @workshop_enrolment.workshop } }
    assert_redirected_to workshop_enrolment_url(@workshop_enrolment)
  end

  test "should destroy workshop_enrolment" do
    assert_difference('WorkshopEnrolment.count', -1) do
      delete workshop_enrolment_url(@workshop_enrolment)
    end

    assert_redirected_to workshop_enrolments_url
  end
end

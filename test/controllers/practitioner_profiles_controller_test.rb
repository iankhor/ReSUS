require 'test_helper'

class PractitionerProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @practitioner_profile = practitioner_profiles(:one)
  end

  test "should get index" do
    get practitioner_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_practitioner_profile_url
    assert_response :success
  end

  test "should create practitioner_profile" do
    assert_difference('PractitionerProfile.count') do
      post practitioner_profiles_url, params: { practitioner_profile: { first_name: @practitioner_profile.first_name, gender_id: @practitioner_profile.gender_id, last_name: @practitioner_profile.last_name, region_id: @practitioner_profile.region_id, registration_number: @practitioner_profile.registration_number, specialty_id: @practitioner_profile.specialty_id, user_id: @practitioner_profile.user_id } }
    end

    assert_redirected_to practitioner_profile_url(PractitionerProfile.last)
  end

  test "should show practitioner_profile" do
    get practitioner_profile_url(@practitioner_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_practitioner_profile_url(@practitioner_profile)
    assert_response :success
  end

  test "should update practitioner_profile" do
    patch practitioner_profile_url(@practitioner_profile), params: { practitioner_profile: { first_name: @practitioner_profile.first_name, gender_id: @practitioner_profile.gender_id, last_name: @practitioner_profile.last_name, region_id: @practitioner_profile.region_id, registration_number: @practitioner_profile.registration_number, specialty_id: @practitioner_profile.specialty_id, user_id: @practitioner_profile.user_id } }
    assert_redirected_to practitioner_profile_url(@practitioner_profile)
  end

  test "should destroy practitioner_profile" do
    assert_difference('PractitionerProfile.count', -1) do
      delete practitioner_profile_url(@practitioner_profile)
    end

    assert_redirected_to practitioner_profiles_url
  end
end

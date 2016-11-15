require 'test_helper'

class MedicalPractitionerProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medical_practitioner_profile = medical_practitioner_profiles(:one)
  end

  test "should get index" do
    get medical_practitioner_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_medical_practitioner_profile_url
    assert_response :success
  end

  test "should create medical_practitioner_profile" do
    assert_difference('MedicalPractitionerProfile.count') do
      post medical_practitioner_profiles_url, params: { medical_practitioner_profile: { first_name: @medical_practitioner_profile.first_name, last_name: @medical_practitioner_profile.last_name, registration_number: @medical_practitioner_profile.registration_number } }
    end

    assert_redirected_to medical_practitioner_profile_url(MedicalPractitionerProfile.last)
  end

  test "should show medical_practitioner_profile" do
    get medical_practitioner_profile_url(@medical_practitioner_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_medical_practitioner_profile_url(@medical_practitioner_profile)
    assert_response :success
  end

  test "should update medical_practitioner_profile" do
    patch medical_practitioner_profile_url(@medical_practitioner_profile), params: { medical_practitioner_profile: { first_name: @medical_practitioner_profile.first_name, last_name: @medical_practitioner_profile.last_name, registration_number: @medical_practitioner_profile.registration_number } }
    assert_redirected_to medical_practitioner_profile_url(@medical_practitioner_profile)
  end

  test "should destroy medical_practitioner_profile" do
    assert_difference('MedicalPractitionerProfile.count', -1) do
      delete medical_practitioner_profile_url(@medical_practitioner_profile)
    end

    assert_redirected_to medical_practitioner_profiles_url
  end
end

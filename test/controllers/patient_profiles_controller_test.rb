require 'test_helper'

class PatientProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_profile = patient_profiles(:one)
  end

  test "should get index" do
    get patient_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_profile_url
    assert_response :success
  end

  test "should create patient_profile" do
    assert_difference('PatientProfile.count') do
      post patient_profiles_url, params: { patient_profile: { allergy_id: @patient_profile.allergy_id, blood_type_id: @patient_profile.blood_type_id, contact_number: @patient_profile.contact_number, date_of_birth: @patient_profile.date_of_birth, ethnicity_id: @patient_profile.ethnicity_id, first_name: @patient_profile.first_name, gender_id: @patient_profile.gender_id, height: @patient_profile.height, last_name: @patient_profile.last_name, marital_status_id: @patient_profile.marital_status_id, region_id: @patient_profile.region_id, user_id: @patient_profile.user_id, weight: @patient_profile.weight } }
    end

    assert_redirected_to patient_profile_url(PatientProfile.last)
  end

  test "should show patient_profile" do
    get patient_profile_url(@patient_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_profile_url(@patient_profile)
    assert_response :success
  end

  test "should update patient_profile" do
    patch patient_profile_url(@patient_profile), params: { patient_profile: { allergy_id: @patient_profile.allergy_id, blood_type_id: @patient_profile.blood_type_id, contact_number: @patient_profile.contact_number, date_of_birth: @patient_profile.date_of_birth, ethnicity_id: @patient_profile.ethnicity_id, first_name: @patient_profile.first_name, gender_id: @patient_profile.gender_id, height: @patient_profile.height, last_name: @patient_profile.last_name, marital_status_id: @patient_profile.marital_status_id, region_id: @patient_profile.region_id, user_id: @patient_profile.user_id, weight: @patient_profile.weight } }
    assert_redirected_to patient_profile_url(@patient_profile)
  end

  test "should destroy patient_profile" do
    assert_difference('PatientProfile.count', -1) do
      delete patient_profile_url(@patient_profile)
    end

    assert_redirected_to patient_profiles_url
  end
end

class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    #role id 1 : patient
    #role id 2 : practitioner

    case current_user.role.to_i
        when 1
            new_patient_profile_path
        when 2
            new_practitioner_profile_path
     end



  end
end
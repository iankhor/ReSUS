module ApplicationHelper
    def page_header(text)
        content_for(:page_header) { text.to_s }
    end

    def current_user_profile_nil?

        (PatientProfile.find_by(user_id: current_user) || PractitionerProfile.find_by(user_id: current_user)).nil? 

    end
end

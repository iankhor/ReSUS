class DashboardController < ApplicationController
    layout 'dashboard'

    def index
        case current_user.role.to_i
        when 1
            # @dashboard = Quote.where(listing: Listing.where(patient: current_user))
             @dashboard = Listing.where(patient: current_user)
            
        when 2
             specialty = PractitionerProfile.find_by(user_id: current_user.id).specialty_id

             condition_treated = Seek.find_by(specialty: specialty)

             @dashboard = Listing.where(medical_condition: condition_treated)
            # @dashboard = Quote.where(practitioner: current_user)
        end
    end

    
end

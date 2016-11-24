class DashboardController < ApplicationController
    before_action :authenticate_user!

    layout 'dashboard'

    def index
        case current_user.role.to_i
        when 1
            # @dashboard = Quote.where(listing: Listing.where(patient: current_user))
             @dashboard = Listing.where(patient: current_user)
            
        when 2
             specialty = PractitionerProfile.find_by(user_id: current_user.id).specialty_id

             condition_treated = Seek.find_by(specialty: specialty)

            # this is not right. the condition needs to be all conditons by that specialty
            #  @dashboard = Listing.where(medical_condition: condition_treated)

            # currently display all listing for doctors
             @dashboard = Listing.all
        end
    end

    
end

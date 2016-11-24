class DashboardController < ApplicationController
    layout 'dashboard'

    def index
        case current_user.role.to_i
        when 1
            # @dashboard = Quote.where(listing: Listing.where(patient: current_user))
             @dashboard = Listing.where(patient: current_user)
            
        when 2
            specialty = PractitionerProfile.find_by()
             @dashboard = Listing.where(patient: current_user)
            # @dashboard = Quote.where(practitioner: current_user)
        end
        # @dashboard = Quote.all
    end

    
end

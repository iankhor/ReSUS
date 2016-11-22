class DashboardController < ApplicationController

    def index
        case current_user.role.to_i
        when 1
            @dashboard = Quote.where(listing: Listing.where(patient: current_user))
        when 2
            @dashboard = Quote.where(practitioner: current_user)
        end
        # @dashboard = Quote.all
    end

    
end

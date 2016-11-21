class DashboardController < ApplicationController

    def index
        # case current_user.role.to_i
        # when 1
        #     @dashboard = Listing.all
        # when 2
        #     @dashboard = Quote.all
        # end
            @dashboard = Quote.all
    end

    
end

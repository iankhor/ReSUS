class DashboardController < ApplicationController

    def index
        @dashboard = Listing.all
    end

    
end

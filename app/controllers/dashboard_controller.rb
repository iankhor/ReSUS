class DashboardController < ApplicationController

    def index
        @dashboard = Quote.all
    end

    
end

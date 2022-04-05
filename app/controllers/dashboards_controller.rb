class DashboardsController < ApplicationController
    def show
        @doctors = Doctor.all
    end
end

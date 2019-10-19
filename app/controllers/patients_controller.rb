class PatientsController < ApplicationController
    layout 'application'

    def index
        @patients = Patient.all    
    end

    def show
        @patient = Patient.find(params[:id])
    end
end

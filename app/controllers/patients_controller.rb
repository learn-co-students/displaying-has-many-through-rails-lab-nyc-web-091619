class PatientsController < ApplicationController
    def index
        patients = Patient.all
        @appointment_count = patients.map do |app_count|
          {app_count => app_count.appointments.count}
        end
      end
    
      def show
        @patient = Patient.find(params[:id])
        @appointments = @patient.appointments
      end

    end
    
    
class AppointmentsController < ApplicationController

    def show
        @appointment = Appointment.find(params[:id])
        @date = @appointment.date
        @time = @appointment.time
        @patient = @appointment.patient
        @doctor = @appointment.doctor
    end
    
end

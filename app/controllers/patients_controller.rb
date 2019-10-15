class PatientsController < ApplicationController
  def index
    patients = Patient.all
    @appt_count = patients.map do |pt|
      {pt => pt.appointments.count}
    end
  end

  def show
    @patient = Patient.find(params[:id])
    @appointments = @patient.appointments
  end
end

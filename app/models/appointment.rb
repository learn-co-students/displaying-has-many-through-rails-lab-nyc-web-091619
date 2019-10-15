class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    validates :appointment_datetime, presence: true

    def date 
        self.appointment_datetime.strftime("%B %d, %Y")
    end

    def time
        self.appointment_datetime.strftime("%k:%M")
    end
end

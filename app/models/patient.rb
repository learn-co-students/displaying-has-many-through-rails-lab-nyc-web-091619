class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments

    def my_appointments
        self.appointments
    end
end

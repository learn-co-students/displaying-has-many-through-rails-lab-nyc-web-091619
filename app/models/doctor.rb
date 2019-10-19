class Doctor < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments

    def my_appointments
        self.appointments
    end
end

class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments

    def number_of_apps
        appointments.count
    end

end

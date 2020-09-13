require_relative 'appointment'

class DailyAppointment < Appointment
    def initialize(location, purpose, hour, min)
        super 
    end

    def occurs_on?(hour_question, min_question)
        puts @hour == hour_question 
        puts @min == min_question
    end

    def to_s
        "Reunion diaria en #{@location} sobre #{@purpose} a las #{@hour}:#{min}"
    end
end

one_date = DailyAppointment.new('Desafio Latam', 'Educacion', 8, 15)

puts one_date

one_date.occurs_on?(8, 15)



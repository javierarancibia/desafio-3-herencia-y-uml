require_relative 'appointment'

class MonthlyAppointment < Appointment
    attr_accessor :day
    def initialize(location, purpose, hour, min, day)
        super(location, purpose, hour, min)
        @day = day
    end

    def occurs_on?(day_question)
        puts @day == day_question 

    end

    def to_s
        "Reunion mensual en #{@location} sobre #{@purpose} el dia #{@day} a la(s) #{@hour}:#{@min}"
    end    

end

cita1 = MonthlyAppointment.new('NASA', 'Aliens', 8, 15, 23)

puts cita1
cita1.occurs_on?(23)


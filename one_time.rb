require_relative 'appointment'

class OneTimeAppointment < Appointment
    attr_reader :day, :month, :year 

    def initialize(location, purpose, hour, min, day, month, year)
        super(location, purpose, hour, min)
        @day = day
        @month = month
        @year = year
    end

    def to_s

        "Reunion unica en #{@location} sobre #{@purpose} el #{@day}/#{@month}/#{@year} a las #{hour}:#{min}."
        
    end 



    def occurs_on?(day_question, month_question, year_question)
        puts @day == day_question 
        puts @month == month_question
        puts @year == year_question
    end

end

one_date = OneTimeAppointment.new('Desafio Latam', 'Trabajo', 14, 30, 4, 6, 2019)

puts one_date

one_date.occurs_on?(4, 6, 2019)





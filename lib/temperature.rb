
class Temperature
    attr_accessor :temperature

    FAHRENHEIT_OFFSET = 32
    FAHRENHEIT_SLOPE = Rational(9,5)
    KELVIN_OFFSET = 273.15

    def initialize temperature
        throw Exception unless temperature.kind_of? Numeric
        @temperature = temperature
    end

    def to_fahrenheit
        FAHRENHEIT_OFFSET + temperature * FAHRENHEIT_SLOPE
    end

    def to_kelvin
        KELVIN_OFFSET + temperature
    end

end

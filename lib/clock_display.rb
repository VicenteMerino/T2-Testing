# frozen_string_literal: true

# models a Clock
class Clock
  def initialize(hours, minutes, seconds)
    @hours = hours
    @minutes = minutes
    @seconds = seconds
  end

  def time_to_string(number)
    if number >= 10
      number.to_s
    else
      "0#{number}"
    end
  end

  def print_string
    hours_string = time_to_string(@hours)
    minutes_string = time_to_string(@minutes)
    seconds_string = time_to_string(@seconds)
    "#{hours_string}:#{minutes_string}:#{seconds_string}"
  end

  def time_increment(number, modulo)
    (number + 1) % modulo
  end

  def increment
    @seconds = time_increment(@seconds, 60)
    return unless @seconds.zero?

    @minutes = time_increment(@minutes, 60)
    @hours = time_increment(@hours, 24) if @minutes.zero?
  end
end

# frozen_string_literal: true

# models a Clock
class Clock
  def initialize(hours, minutes, seconds)
    @hours = hours
    @minutes = minutes
    @seconds = seconds
  end

  def hours_string
    if @hours >= 10
      @hours.to_s
    else
      "0#{@hours}"
    end
  end

  def minutes_string
    if @minutes >= 10
      @minutes.to_s
    else
      "0#{@minutes}"
    end
  end

  def seconds_string
    if @seconds >= 10
      @seconds.to_s
    else
      "0#{@seconds}"
    end
  end

  def print_string
    "#{hours_string}:#{minutes_string}:#{seconds_string}"
  end

  def increment
    @seconds = (@seconds + 1) % 60
    return unless @seconds.zero?

    @minutes = (@minutes + 1) % 60
    @hours = (@hours + 1) % 24 if @minutes.zero?
  end
end

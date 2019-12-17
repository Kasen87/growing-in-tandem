require 'caretaker'
require 'water_scheduler'

class ScheduleController < ApplicationController
  def index
    @water_schedules = caretaker.water_plants(plants: all_plants)
  end

  private def caretaker
    @caretaker ||= Caretaker.new
  end

  private def all_plants
    @all_plants ||= Plant.all
  end
end
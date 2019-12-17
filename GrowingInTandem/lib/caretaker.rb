require 'water_scheduler'

class Caretaker
  attr_reader :date, :plants

  def initialize 
  end

  def water_plants(plants: nil)
    schedules = []

    plants.each do |plant|
      details = {
        name: plant.name,
        schedule: water_schedule(plant: plant).get_schedule,
      }
      schedules << details
    end

    schedules
  end

  private def water_scheduler(plant:)
    WaterScheduler.new(plant)
  end

  private def is_workday?
    water_scheduler.validate_workday_status(date_to_check: date)
  end
end
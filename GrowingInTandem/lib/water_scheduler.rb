class WaterScheduler
  START_DATE = Date.parse('2019-12-16')
  END_DATE = Date.parse('2020-03-15')

  attr_reader :plant

  def initialize(plant)
    @plant = plant
  end

  def get_schedule
    build_schedule
  end

  private def build_schedule
    watering_dates = []

    START_DATE.step(END_DATE, plant.water_after.to_i) do |date|
      watering_dates << date unless date.saturday? || date.sunday?
    end

    watering_dates
  end

  def validate_workday_status(date_to_check:)
    return true if is_valid_workday?(date_to_check)
  end

  private def is_valid_workday?(date)
    date.on_weekday? && date_in_bounds?(date)
  end

  private def date_in_bounds?(date)
    date >= START_DATE && date <= END_DATE
  end
end
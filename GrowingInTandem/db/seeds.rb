require 'json'

DEFAULT_PLANT_DETAILS = '../Apprentice_WeGrowInTandem_Data.json'

private def create_default_plant_entries
  default_plants = parse_default_plant_details

  default_plants.each do |plant|
    Plant.create({
      name: plant['name'],
      water_after: plant['water_after'],
    })
  end
end

private def parse_default_plant_details
  JSON.parse(File.read(DEFAULT_PLANT_DETAILS))
end

create_default_plant_entries
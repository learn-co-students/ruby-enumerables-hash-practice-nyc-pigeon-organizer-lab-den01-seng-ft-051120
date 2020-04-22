require 'pry'

def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |sub_category, value|
    value.each do |trait, names|
      names.each do |name|
        pigeons[name] ||= {}
        pigeons[name][sub_category] ||= []
        pigeons[name][sub_category].push(trait.to_s)
      end
    end
  end
  p pigeons
end




pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

nyc_pigeon_organizer(pigeon_data)

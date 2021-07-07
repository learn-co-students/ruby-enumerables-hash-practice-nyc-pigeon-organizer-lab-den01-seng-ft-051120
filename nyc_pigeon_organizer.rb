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

def nyc_pigeon_organizer(data)
  org_hash = {}
  data.each do |attribute, options| 
    options.each do |option, pigeons|
      pigeons.each do |pigeon|
        org_hash[pigeon] ||= {}
        org_hash[pigeon][attribute] ||= []
        org_hash[pigeon][attribute] << option.to_s
      end
    end
  end
  org_hash
end

nyc_pigeon_organizer(pigeon_data)
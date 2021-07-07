require "pry";

def nyc_pigeon_organizer(data)
  organized_data = {}; #thing to be returned if necessary
   data.each_pair { |category, cat_value| 
    cat_value.each_pair { |specifier, names|
      names.each { |name|
        #data_portion = { name.to_s => { category.to_sym => [specifier.to_s]}};
        if organized_data[name.to_s] == nil 
          organized_data[(name.to_s)] = { category.to_sym => [specifier.to_s]};
        elsif organized_data[name.to_s][category.to_sym] == nil
          organized_data[name.to_s].store( category.to_sym, [specifier.to_s]); 
        else 
          placement = organized_data[name.to_s][category.to_sym].length 
          organized_data[name.to_s][category.to_sym][placement]= specifier.to_s; 
        end
      }
    }
  }
  
  organized_data;
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

nyc_pigeon_organizer(pigeon_data);


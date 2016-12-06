require 'pry'
def get_first_name_of_season_winner(data, season)
  name_array = nil
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      name_array = contestant["name"].split
    end
  end
  name_array[0]
end

def get_contestant_name(data, occupation)
  name_string = nil
  data.each do |season, season_data|
    season_data.each do |contestant|
      if contestant["occupation"] == occupation
        name_string = contestant["name"]
      end
    end
  end
  name_string
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, season_data|
    season_data.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, season_data|
    season_data.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  counter = 0
  ages = 0
  data[season].each do |contestant|
    counter += 1
    ages = ages + contestant["age"].to_f
  end
  average = (ages/counter.to_f)
  average.round
end

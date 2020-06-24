require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
   holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
       holiday_hash[:winter].each do |holiday,supplies| supplies << supply
  end 
end 
    
def add_supply_to_memorial_day(holiday_hash, supply)
   holiday_hash[:spring].each do |holiday,supplies| supplies << supply
 end 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
 return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
    new_array = []
    holiday_hash[:winter].each do |holiday,supply| 
    new_array << supply
   end 
  return new_array.flatten
end

def all_supplies_in_holidays(holiday_hash)
#   # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  
  holiday_hash.each do |season,holidays|
    season = season.to_s.capitalize!
    holidays.each do |holiday,supplies|
     holiday = holiday.to_s.split
     holiday.each do |words| words.capitalize!
     holiday = holiday.join
      holiday.each do |supplies|
       binding.pry

     
#   puts "#{season}: #{holiday}"
   
# #     holiday.each do |supplies|
# #       puts "#{holiday}: #{supplies}"
 end 
 end
 end 
end
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_names = []
  
   holiday_hash.each do |season,holidays|
    holidays.each do |holiday, supplies|
      
    if  supplies.include?("BBQ")
        holiday_names << holiday
   end
  end 
 end
return holiday_names
end










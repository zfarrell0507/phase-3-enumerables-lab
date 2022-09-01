require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

def get_names(spicy_foods)
  names = []
  spicy_foods.each do |food|
    names << food[:name]
  end
  names
end

def spiciest_foods(spicy_foods)
  spiced = []
  spicy_foods.filter do |food|
    if food[:heat_level] > 5
      spiced << food
    end
  end
  spiced
end

def print_spicy_foods(spicy_foods)
  spicy_foods.each do |food|
    peppers = "🌶" * food[:heat_level]
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{peppers}"
  end
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find do |food|
    food[:cuisine] == cuisine
  end
end

def sort_by_heat(spicy_foods)
  sorted = spicy_foods.sort_by { |heat| heat[:heat_level] }
end

def print_spiciest_foods(spicy_foods)
  spicy_foods.filter do |food|
    if food[:heat_level] > 5
      peppers = "🌶" * food[:heat_level]
      puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{peppers}"
    end
  end
end

def average_heat_level(spicy_foods)
  total = spicy_foods.sum do |t|
    t[:heat_level]
  end
  total / spicy_foods.length
end

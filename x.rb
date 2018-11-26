
def setup
@person1 = {
  name: "Shaggy",
  age: 12,
  monies: 1,
  friends: ["Velma","Fred","Daphne", "Scooby"],
  favourites: {
    tv_show: "Friends",
    snacks: ["charcuterie"]
  }
}

@person2 = {
  name: "Velma",
  age: 15,
  monies: 2,
  friends: ["Fred"],
  favourites: {
    tv_show: "Baywatch",
    snacks: ["soup","bread"]
  }
}

@person3 = {
  name: "Scooby",
  age: 18,
  monies: 20,
  friends: ["Shaggy", "Velma"],
  favourites: {
    tv_show: "Pokemon",
    snacks: ["Scooby snacks"]
  }
}

@person4 = {
  name: "Fred",
  age: 18,
  monies: 20,
  friends: ["Shaggy", "Velma", "Daphne"],
  favourites: {
    tv_show: "X-Files",
    snacks: ["spaghetti", "ratatouille"]
  }
}

@person5 = {
  name: "Daphne",
  age: 20,
  monies: 100,
  friends: [],
  favourites: {
    tv_show: "X-Files",
    snacks: ["spinach"]
  }
}

@people = [@person1, @person2, @person3, @person4, @person5]

end

def get_name(person)
  return person[:name]
end

p get_name("Daphne")
# 1. For a given person, return their name
def get_favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  for snack in person[:favourites][:snacks]
    if snack == food
      return true
    end
  end
  return false
end

# Or, for bonus points:
# def likes_to_eat(person, food)
#   return person[:favourites][:snacks].include?(food)
# end

def add_friend(person, new_friend)
  person[:friends].push(new_friend)
  # or
  # person[:friends] << new_friend
end

def remove_friend(person, old_friend)
  person[:friends].delete(old_friend)
end

def total_money(people)
  total_money = 0
  for person in people
    total_money += person[:monies]
  end
  return total_money
end

def lend_money(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end

def all_favourite_foods(people)
  favourite_foods = []
  for person in people
    for snack in person[:favourites][:snacks]
      favourite_foods.push(snack)
      # or
      # favourite_foods << snack
    end
  end
  return favourite_foods
end

# Simpler version:
# def all_favourite_foods(people)
#   favourite_foods = []
#   for person in people
#     favourite_foods.concat(person[:favourites][:snacks])
#   end
#   return favourite_foods
# end

def find_no_friends(people)
  no_mates = []
  for person in people
    if person[:friends].length == 0
      no_mates.push(person)
    end
  end
  return no_mates
end

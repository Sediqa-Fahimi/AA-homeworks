# PHASE 2
def convert_to_int(str)
  Integer(str)
  rescue
    puts "Please enter a number"
  str
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    unless maybe_fruit == 'coffee'
      raise StandardError 
    end
    raise "give me fruit, not coffee"
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit)
  rescue StandardError => e   
    puts "There was an error: #{e.message}"
    retry if e.message.include?("coffee")

   
end  


# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    if name.empty?
      raise "Please enter a name"
    end
    @name = name
    if yrs_known < 5
      raise "Good friendship takes at least five years!"
    end
    @yrs_known = yrs_known
    if fav_pastime.empty?
      raise "please enter favourite past time."
    end
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end



require "pp"

def greet_user
  puts "Welcome to teddit"
end


def get_title
  puts "Please give me a story title:"
  gets.strip
end


def get_upvotes
  puts "Please give me current number of upvotes:"
  gets.strip.to_i 
end


def get_category
  puts "what category is this in?"
  gets.strip
end


def create_story 
  story_hash = {}
  story_hash[:title] = get_title 
  story_hash[:upvotes] = get_upvotes
  story_hash[:category] = get_category
end

def add_to_stories(story, stories)
  stories << story
end

  
#need to add a loop
def option_to_continue
  puts "Would you like to continue? yes/no"
  continue?
end

def continue?
  response = gets.strip
end


def print_story(story_title, current_upvotes)
  if story_title.include? "cat"
    current_upvotes = current_upvotes * 2
  elsif story_title.include? 'pig'
    current_upvotes = current_upvotes / 2
  elsif story_title.include? 'candy'
    current_upvotes = current_upvotes + 1
  end
end

#print out the stories 
 



stories = [ { title: "Oh my carrots!" , upvotes: 7, category: "farming" },
  { title: "Purrrrrr", upvotes: 5, category: "cats" },
  { title: "Bacon!", upvotes: 4, category: "pigs" }] 



# while option_to_continue
#    gets.strip.chomp == "yes"
#   break if gets.strip.chomp == "no"
#   end
   
# end 

response = "yes"

while response == "yes"
  greet_user
  story = create_story
  stories << story 
  response = option_to_continue
end

#for each story print 
stories.each do |story|
  print story 
end 


# Step 1: Working with Arrays and Hashes
# Copy your solution from conditional_teddit.rb.
# Create an empty stories array. This will be used to hold all stories we capture.
# Users enter the story as they do now, but it gets put in a hash instead.
# Update any reference to the story (upvotes, category and title)
# Your story hash should look like the one below:
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add the hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Using the stories array
# Test your cat, pig, and candy upvote conditional logic.
# (cats get double upvotes, pigs - half of upvotes, candy gest +1 upvote)
# Step 2: Adding Loops
# Use a loop, so that your program continues to ask a user for stories until they chose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
# Once the user is finished with entering their stories, use .each to print each story in the stories array.
# The actuall thingo
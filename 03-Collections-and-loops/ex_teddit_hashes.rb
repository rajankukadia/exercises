require 'pp'
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
# (cats get double upvotes, pigs - half of upvotes, candy gets +1 upvote)
#
# Step 2: Adding Loops
# Use a loop, so that your program continues to ask a user for stories until they chose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
# Once the user is finished with entering their stories, use .each to print each story in the stories array.
#


def get_story_from_user
  puts "Please give story title:"
  title = gets.strip.chomp
  puts "Please give category:"
  category = gets.strip.chomp
  puts "Please give upvotes:"
  upvotes = gets.strip.chomp

  {
    title: title,
    upvotes: upvotes,
    category: category
  }
end

def print_story(h)
  story = h[:story]
  category = h[:category]
  upvotes = h[:upvotes].to_i.to_f
  if h[:category] == 'cat'
    upvotes *= 2
  elsif h[:category] == 'pig'
    upvotes /= 2
  elsif h[:category] == 'candy'
    upvotes += 1
  end

  puts "Story: #{story}. Upvotes: #{upvotes}. Category #{category}"
end

def continue?
  puts "Do you want to continue? yes/no"
  gets.strip.chomp == "yes"
end



puts "hello!"
puts "welcome to teddit"

stories = []

stories << get_story_from_user
while continue?
  stories << get_story_from_user
end

puts "ok printing stories!"
stories.each { |s| print_story(s) }

pp stories

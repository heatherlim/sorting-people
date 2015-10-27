require 'pp'
class Sorting
def initialize


# Reminder: Make it so groupnumber cannot exceed # of people.

end

  def sort
    @people = ["Lesly Brezillien", "Heather Lim", "Tatsiana Borschch", 
  "Hedi Essid", "Jeff Slutzky", "Tracy Lum", "Matthew Main", 
  "Hideyuki Gojima", "Hilary Winn", "Jay Ribakove",
  "Ho Won Cheng", "Austin Gilmour", "Madeline Ford", "KJ Angamaiton", 
  "Yifan Chen", "Dan Berenholtz", "Avi Turkewitz", "Korey Aaronson", 
  "Michael Bukantz", "Jessie Nadler", "Reuben Son", "Michael Sterling",
"Alexandra Valcourt", "Asia Lindsay", "Matthew Billie", "Michele Cavaioni",
"May Lee", "Meredith Edwards", "Amanda Johns", "Ben Stewart", "Roslynn Graves",
"Jim Rectenwald", "Natalie Coley", "Dan Glatstein"]
@groupnumber = 17

@groups = {}
    create_groups
    filling_group
      if @people.length != 0  
        if_uneven
      end 
    @groups
  end

  def create_groups 
     range = (1..@groupnumber).to_a
     range.each do |indgroup| # 1, 2, 3, 4...
     @groups["group" + " " + "#{indgroup}"] = []
    end  
    @groups
  end

  def filling_group
    people_number = @people.count/@groupnumber
    range = (1..@groupnumber).to_a
     range.each do |indgroup|
        @groups["group" + " " + "#{indgroup}"] << @people.shuffle!.pop(people_number)    
          @groups.values.each do |x|
            x.flatten!
         end
     end 
  end

  def if_uneven
    range = (1..@people.count).to_a
    range.each do |indgroup|
      @groups["group" + " " + "#{indgroup}"] << @people.shuffle!.pop
    end
  end
end


# def divisible_check(people, groupnumber)
#   if people.length % groupnumber != 0
#     puts "Sorry, it won't divide evenly."
#   end
# end

# def random_person(people, groupnumber)
#   random = rand(people.count)
#   people[random]
  
# end

# def grouping(people, groupnumber)
#   groups = {}
#   divisible_check(people, groupnumber)
#   random_person = random_person(people, groupnumber)

#   range = (1..groupnumber).to_a
#   range.each do |indgroup| # 1, 2, 3, 4...
#     if groups["group" + " " + "#{indgroup}"] == nil
#       groups["group"+ " " + "#{indgroup}"] = [random_person]
#     end
#   end
#   puts groups
# end

# def random_group(people, groupnumber)
#   random_person = people.sample
#   binding.pry
#   group_array = [] 
#    #Array.new(groupnumber) {people.sample }
#     people.each do |each_person|
#       if each_person != random_person
#         group_array << random_person
#         people.delete_if {|repeat_person| repeat_person == random_person}
#         binding.pry
#       elsif each_person == random_person
#         people.delete_if {|repeat_person| repeat_person == random_person}
#       end
      
#     end
 

#   binding.pry

# end

# random_group(people, groupnumber)
# random_person(people, groupnumber)
# grouping(people, groupnumber)

# groups = {
#   :group1 => [],
#   :group2 => [],
#   :group3 => [],
#   :group4 => [],
#   :group5 => []
# }
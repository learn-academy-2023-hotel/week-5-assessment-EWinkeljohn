# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

us_states = { 
northwest: ['Washington', 'Oregon', 'Idaho'], 
southwest: ['California', 'Arizona', 'Nevada'],
notheast: ['Maine', 'New Hampshire', 'Rhode Island'] 
}

# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 

# Pseudo code:
def array(hash)
# define method that takes in a hash
    states = hash.values.flatten.sort
    # variable states set to string of methods
    # hash.values extracts an array including the value (each array) from each key-value pair of the hash
    # .flatten gets rid of the nested arrays from hash.values resulting in one array containing all states
    # .sort is used to alphebetize the states

# implicit return of states variable will be an array containing each state in alphabetical order
end

p array(us_states)
# Output: ["Arizona", "California", "Idaho", "Maine", "Nevada", "New Hampshire", "Oregon", "Rhode Island", "Washington"]

# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

class Bike
    #create the Bike class
    attr_accessor :model, :wheels, :current_speed
    # use attr_accessor in place of getter/setter methods
    def initialize model
        # use initialize method to set data in a newly created object
        # include model as a parameter as it will be given as an argument when we instantiate the class
        @model = model
        @wheels = 2
        @current_speed = 0
        # set the values to be included in each instantiation
    end
    def bike_info 
        # define bike_info method inside of Bike class
        "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph."
        #implicit return of above sentence using string interpolation to pull values from Bike class
    end
    def pedal_faster(num)
        # define method pedal_faster to take in a number
        @current_speed += num
        # update current speed by adding the given number
    end
    def brake(num)
           # define method brake to take in a number
        @current_speed -= num
         # update current speed by subtracting the given number
        [@current_speed, 0].max
        # set current speed to be at least 0
    end
end

trek = Bike.new('Trek')
# p trek.bike_info
# instantiate the class with model as Trek


# Pseudo code:

# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

my_bike = Bike.new('Giant')
# I ride a Giant brand mountain bike. It's black and green 🚵🏼‍♂️
p my_bike.pedal_faster(22)
#Output --> 22
p my_bike
#Output --> #<Bike:0x000000010bc5f7e0 @model="Giant", @wheels=2, @current_speed=22>
p my_bike.brake(11)
#Output --> 11
p my_bike
#Output --> #<Bike:0x000000010bc5f7e0 @model="Giant", @wheels=2, @current_speed=11>


# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# Pseudo code:
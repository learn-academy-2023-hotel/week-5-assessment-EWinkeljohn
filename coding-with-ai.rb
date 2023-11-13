# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# Prompt: Create a hash called totals that includes the total number of votes for each type of taco in the array taco_votes. HINT: Use the Ruby built-in method .reduce.
# Expected Output: {"fish taco"=>9, "california burrito"=>4, "tacos al pastor"=>3, "carnitas tacos"=>4, "tacos de barbacoa"=>2}

# Add comments to each line to explain the code.

taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']

totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
# Defining a hash called totals
# tacos_votes.reduce has an initial value of the new array with a default value of 0 votes. 
# The .reduce method iterates over the taco_votes array and counts the number of times each taco type appears in taco_votes.
# |result, vote| are the parameters for the reduce method.
result[vote.downcase] += 1
# On each iteration the lowercased vote (taco type) is added to result for that taco type.
result
# Each iteration, result is implicitly returned as the hash containing the accumulated vote count for each taco type with the taco type (lowercase) as the key and vote as the value.
# 
end

p totals
# Prints the hash with the total number of votes for each taco type with the taco type (lowercase) as the key and final total vote as the value.

# Output if p result (line 20) 
# {"fish taco"=>1}
# {"fish taco"=>1, "california burrito"=>1}
# {"fish taco"=>1, "california burrito"=>1, "tacos al pastor"=>1}
# {"fish taco"=>1, "california burrito"=>1, "tacos al pastor"=>1, "carnitas tacos"=>1}
# {"fish taco"=>1, "california burrito"=>2, "tacos al pastor"=>1, "carnitas tacos"=>1}
# {"fish taco"=>2, "california burrito"=>2, "tacos al pastor"=>1, "carnitas tacos"=>1}
# {"fish taco"=>2, "california burrito"=>3, "tacos al pastor"=>1, "carnitas tacos"=>1}
# {"fish taco"=>3, "california burrito"=>3, "tacos al pastor"=>1, "carnitas tacos"=>1}
# {"fish taco"=>3, "california burrito"=>3, "tacos al pastor"=>1, "carnitas tacos"=>1, "tacos de barbacoa"=>1}
# {"fish taco"=>3, "california burrito"=>3, "tacos al pastor"=>2, "carnitas tacos"=>1, "tacos de barbacoa"=>1}
# {"fish taco"=>4, "california burrito"=>3, "tacos al pastor"=>2, "carnitas tacos"=>1, "tacos de barbacoa"=>1}
# {"fish taco"=>4, "california burrito"=>4, "tacos al pastor"=>2, "carnitas tacos"=>1, "tacos de barbacoa"=>1}
# {"fish taco"=>5, "california burrito"=>4, "tacos al pastor"=>2, "carnitas tacos"=>1, "tacos de barbacoa"=>1}
# {"fish taco"=>5, "california burrito"=>4, "tacos al pastor"=>3, "carnitas tacos"=>1, "tacos de barbacoa"=>1}
# {"fish taco"=>5, "california burrito"=>4, "tacos al pastor"=>3, "carnitas tacos"=>2, "tacos de barbacoa"=>1}
# {"fish taco"=>6, "california burrito"=>4, "tacos al pastor"=>3, "carnitas tacos"=>2, "tacos de barbacoa"=>1}
# {"fish taco"=>6, "california burrito"=>4, "tacos al pastor"=>3, "carnitas tacos"=>2, "tacos de barbacoa"=>2}
# {"fish taco"=>7, "california burrito"=>4, "tacos al pastor"=>3, "carnitas tacos"=>2, "tacos de barbacoa"=>2}
# {"fish taco"=>7, "california burrito"=>4, "tacos al pastor"=>3, "carnitas tacos"=>3, "tacos de barbacoa"=>2}
# {"fish taco"=>7, "california burrito"=>4, "tacos al pastor"=>3, "carnitas tacos"=>4, "tacos de barbacoa"=>2}
# {"fish taco"=>8, "california burrito"=>4, "tacos al pastor"=>3, "carnitas tacos"=>4, "tacos de barbacoa"=>2}
# {"fish taco"=>9, "california burrito"=>4, "tacos al pastor"=>3, "carnitas tacos"=>4, "tacos de barbacoa"=>2}

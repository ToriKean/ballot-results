require'pry'
#build vote results
vote_results = []
4.times do |precinct_index|
  vote_results[precinct_index] = []
  3.times do |candidate_index|
    vote_results[precinct_index][candidate_index] = rand(20..500)
  end
end

puts vote_results.inspect

candidates = [
  'Mary Sue',
  'Sally Jane',
  'Billy Joe'
]

#list out vote results
vote_results.each_with_index do |precinct_results, precinct_index|
  puts "**In precinct #{precinct_index + 1}:**"

  candidates.each_with_index do |candidate, candidate_index|
    puts "* #{candidate} got #{vote_results[precinct_index][candidate_index]} votes"
  end

  puts ""
end

### put your code here
# How many people voted in precinct 1?
sum = 0
vote_results[0].each do |result|
  sum += result
end
puts "#{sum} people voted in precinct one."

# Who was the winning candidate in Precinct 4?

max_vote = vote_results[3].max
winning_canditate = vote_results[3].index(max_vote)
puts "#{candidates[winning_canditate]} is the winner of Precinct 4."

# How many people voted for Mary Sue?
vote_results
# How many people voted for Billy Joe?
# How many people voted for Sally Jane?
# How many people voted in total?
# Who had the most votes?

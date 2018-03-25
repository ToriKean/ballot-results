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
# How many people voted for Billy Joe?
# How many people voted for Sally Jane?
mary_sue_sum = 0
billy_joe_sum = 0
sally_jane_sum = 0
vote_results.each do |precinct|
  mary_sue_sum += precinct[0]
  billy_joe_sum += precinct[2]
  sally_jane_sum += precinct[1]
end
puts "Mary Sue had #{mary_sue_sum} people vote for her."
puts "Billy Joe had #{billy_joe_sum} people vote for him."
puts "Sally Jane had #{sally_jane_sum} people vote for her."

# How many people voted in total?
total_votes = 0
vote_results.each do |precinct|
  precinct.each do |candidate_votes|
    total_votes += candidate_votes
  end
end
puts "#{total_votes} people voted in total."

# Who had the most votes?
mary_sue_sum = 0
billy_joe_sum = 0
sally_jane_sum = 0
vote_results.each do |precinct|
  mary_sue_sum += precinct[0]
  billy_joe_sum += precinct[2]
  sally_jane_sum += precinct[1]
end
vote_tally = {
  "Mary Sue" => mary_sue_sum,
  "Billy Joe" => billy_joe_sum,
  "Sally Jane" => sally_jane_sum
}
winner = vote_tally.sort_by {|k, v| v}.reverse[0]
puts "#{winner[0]} had the most votes at #{vote_tally.values.max}"

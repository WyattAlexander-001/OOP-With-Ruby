# Electoral votes for each state
state_electoral = {
  AL: 9,   
  AK: 3,   
  AZ: 11,  
  AR: 6,   
  CA: 54,
  CO: 9,   
  CT: 7,   
  DE: 3,   
  DC: 3,   
  FL: 29,
  GA: 16,  
  HI: 4,   
  ID: 4,   
  IL: 20,  
  IN: 11,
  IA: 6,   
  KS: 6,   
  KY: 8,   
  LA: 8,   
  ME: 2,
  MD: 10,  
  MA: 11,  
  MI: 10,  
  MN: 10,  
  MS: 6,
  MO: 10,  
  MT: 4,   
  NE: 2,   
  NV: 6,   
  NH: 4,
  NJ: 14,  
  NM: 5,   
  NY: 28,  
  NC: 15,  
  ND: 3,
  OH: 18,  
  OK: 7,   
  OR: 7,   
  PA: 19,  
  RI: 4,
  SC: 9,   
  SD: 3,   
  TN: 11,  
  TX: 40,  
  UT: 6,
  VT: 3,   
  VA: 13,  
  WA: 12,  
  WV: 4,   
  WI: 10,
  WY: 3,
}

state_probabilities = {
  AL: 1.00, # Alabama strongly favors Republicans
  AK: 1.00,
  AZ: 0.50, # Arizona is a swing state
  AR: 0.85,
  CA: 0.00, # California strongly favors Democrats
  CO: 0.40,
  CT: 0.20,
  DE: 0.60,
  DC: 0.00,
  FL: 0.50, # Florida is a swing state
  GA: 0.50, # Georgia is a swing state
  HI: 0.05,
  ID: 0.85,
  IL: 0.15,
  IN: 0.65,
  IA: 0.55,
  KS: 0.75,
  KY: 0.80,
  LA: 0.80,
  ME: 0.45,
  MD: 0.60,
  MA: 0.05,
  MI: 0.50, # Michigan is a swing state
  MN: 0.45,
  MS: 0.80,
  MO: 0.65,
  MT: 0.60,
  NE: 0.70,
  NV: 0.50, # Nevada is a swing state
  NH: 0.45,
  NJ: 0.45,
  NM: 0.35,
  NY: 0.00,
  NC: 0.50, # North Carolina is a swing state
  ND: 0.85,
  OH: 0.55,
  OK: 0.90,
  OR: 0.10,
  PA: 0.50, # Pennsylvania is a swing state
  RI: 0.05,
  SC: 0.60,
  SD: 0.85,
  TN: 0.70,
  TX: 0.50, # Texas is a swing state
  UT: 0.70,
  VT: 0.05,
  VA: 0.45,
  WA: 0.05,
  WV: 0.80,
  WI: 0.50, # Wisconsin is a swing state
  WY: 0.90,
}


# Define the simulation method
def run_simulation(state_electoral, state_probabilities)
  republican_votes = 0  # Obviously, the Republican candidate starts with 0 votes
  democratic_votes = 0 # Obviously, the Democratic candidate starts with 0 votes

  state_electoral.each do |state, electoral_votes|
    # Get the Republican win probability for the state
    republican_chance = state_probabilities[state]

    # Simulate the election result for the state
    winner = rand < republican_chance ? :republican : :democratic

    # Update the electoral votes based on the winner
    if winner == :republican
      republican_votes += electoral_votes
    else
      democratic_votes += electoral_votes
    end
  end

  # Determine the overall winner
  if republican_votes > democratic_votes
    :republican
  elsif democratic_votes > republican_votes
    :democratic
  else
    :tie
  end
end

simulation_results = { republican: 0, democratic: 0, tie: 0 }

# Run the simulation 1000 times
1000.times do
  winner = run_simulation(state_electoral, state_probabilities)
  simulation_results[winner] += 1
end

# Display the results
puts "After 1000 simulations:"
puts "Republican candidate won #{simulation_results[:republican]} times"
puts "Democratic candidate won #{simulation_results[:democratic]} times"
puts "There were #{simulation_results[:tie]} ties"

# Calculate and display the percentage of wins
total_simulations = simulation_results.values.sum
republican_percentage = (simulation_results[:republican] / total_simulations.to_f) * 100
democratic_percentage = (simulation_results[:democratic] / total_simulations.to_f) * 100
tie_percentage = (simulation_results[:tie] / total_simulations.to_f) * 100

puts "\nPercentage of wins:"
puts "Republican candidate: #{republican_percentage.round(2)}%"
puts "Democratic candidate: #{democratic_percentage.round(2)}%"
puts "Ties: #{tie_percentage.round(2)}%"
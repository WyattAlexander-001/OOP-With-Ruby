states = Hash.new

states["CA"] = "California"
states["MA"] = "Massachusetts"
states["NY"] = "New York"

puts states["NY"].reverse 

prePreppedExampleOfStates = {
    "CA" => "California",
    "MA" => "Massachusetts",
    "NY" => "New York",
    "TX" => "Texas",
    "FL" => "Florida",
    "OH" => "Ohio",
}

puts prePreppedExampleOfStates["TX"]
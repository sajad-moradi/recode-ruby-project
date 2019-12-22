# You will write a method upcase_keys_selector that takes in a Hash
# The method returns a new hash containing key-value pairs of the original hash that had uppercase keys.
# You can assume that the keys will always be strings.

def upcase_keys_selector(hash)
  hash.select! { |key, value| key == key.upcase }
end

print upcase_keys_selector({ "make" => "Tesla", "MODEL" => "S", "Year" => 2018, "SEATS" => 4 }) == { "MODEL" => "S", "SEATS" => 4 }
puts

print upcase_keys_selector({ "DATE" => "August 31st", "holiday" => "National Day", "type" => "Federal" }) == { "DATE" => "August 31st" }
puts

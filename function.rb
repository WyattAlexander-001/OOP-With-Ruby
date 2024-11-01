def health_multiplier string , hp 
  if string == "potion"
    hp += 50
    puts hp
  end
end

def set_player_hp num
  player_hp = 100
end

player_hp = 100
puts health_multiplier("potion", 230)
puts health_multiplier("potion", player_hp) # 150 because player_hp is 100 however the method is not returning the value
puts player_hp # 100
games = {key1: "Minecraft", key2: "Terraria", key3: "Stardew Valley"}
games[:key1] = "Minecraft SUPER EDITION"
games[:key4] = "Factorio"
string = ""
games.each {|k,v| string << "#{k}: #{v}\n"}
puts string
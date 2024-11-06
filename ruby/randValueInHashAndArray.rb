array = ["Mango", "avocado", "banana", "mangosteen", "lanzones"]
puts array[rand(array.size)]
puts "----"
hashTables = {
  yellow: "banana",
  green: "avocado",
  red: "apple",
  orange: "orange",
  purple: "grapes",
  brown: "coconut",
  white: "lychee",
  pink: "dragonfruit",
  black: "blackberry",
  blue: "blueberry",
  lightGreen: "kiwi",
  lightYellow: "pineapple",
  lightOrange: "peach",
  lightRed: "strawberry"
}
puts hashTables.keys[rand(hashTables.keys.size)]
puts hashTables.values[rand(hashTables.values.size)]
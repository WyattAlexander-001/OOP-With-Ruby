# Import CuteLinesModule
require_relative 'cuteLinesModule.rb'
include Cute, Cute::Lines
puts Cute.flirt "Wyatt!!!!" # This is how you call a method from a module
puts Cute::Lines.flirt "Wyatt!!!!" #
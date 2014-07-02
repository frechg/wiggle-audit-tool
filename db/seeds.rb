# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Question.destroy_all
BikeRoute.destroy_all
Block.destroy_all
Intersection.destroy_all

##########################################################################

outbound = BikeRoute.new(name: 'Outbound to Ocean')
outbound.save!

intersection = Intersection.new(title: 'Market and 1st', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market and 1st to Market and 2nd', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Market and 2nd', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market and 2nd to Market and 3rd', bike_route_id: outbound.id)
block.save!

##########################################################################

question = Question.new(route_segment_type: 'Block', title: 'Does this block have a bike lane?')
question.answers = [
  Answer.new(title: 'Yes', score: 3),
  Answer.new(title: 'No', score: -1),
]
question.save!

question = Question.new(route_segment_type: 'Block', title: 'Does this block have sharrows?')
question.answers = [
  Answer.new(title: 'Yes', score: 3),
  Answer.new(title: 'No', score: -1),
]
question.save!

##########################################################################

inbound = BikeRoute.new(name: 'Inbound to Downtown')
inbound.save!

intersection = Intersection.new(title: 'Market and 1st', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market and 1st to Market and 2nd', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Market and 2nd', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market and 2nd to Market and 3rd', bike_route_id: inbound.id)
block.save!

##########################################################################

question = Question.new(route_segment_type: 'Intersection', title: 'Does this intersection have a bike lane?')
question.answers = [
  Answer.new(title: 'Yes', score: 3),
  Answer.new(title: 'No', score: -1),
]
question.save!

question = Question.new(route_segment_type: 'Intersection', title: 'Does this intersection have sharrows?')
question.answers = [
  Answer.new(title: 'Yes', score: 3),
  Answer.new(title: 'No', score: -1),
]
question.save!

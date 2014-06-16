# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Question.destroy_all
Block.destroy_all

question = Block.questions.new(title: 'Does this block have a bike lane?')
question.answers = [
  Answer.new(title: 'Yes', score: 3),
  Answer.new(title: 'No', score: -1),
]
question.save!

question = Block.questions.new(title: 'Does this block have a bike lane?')
question.answers = [
  Answer.new(title: 'Yes', score: 3),
  Answer.new(title: 'No', score: -1),
]
question.save!

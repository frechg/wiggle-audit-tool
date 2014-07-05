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

question = Question.new(route_segment_type: 'Block', title: 'Is there a bike lane present?')
question.answers = [
  Answer.new(title: 'Yes, colored and protected', score: 5),
  Answer.new(title: 'Yes, protected but not colored', score: 3),
  Answer.new(title: 'Yes, colored but not protected', score: 2),
  Answer.new(title: 'Yes, but not colored or protected', score: 1),
  Answer.new(title: 'No', score: -1),
]
question.save!

question = Question.new(route_segment_type: 'Block', title: 'Does the bike lane make an unpredicted turn?')
question.answers = [
  Answer.new(title: 'Yes', score: -1),
  Answer.new(title: 'No', score: 0),
]
question.save!

question = Question.new(route_segment_type: 'Block', title: 'Are there sharrows present (not in a bike lane)?')
question.answers = [
  Answer.new(title: 'Yes', score: 1),
  Answer.new(title: 'Yes, and they are colored:', score: 2),
  Answer.new(title: 'No', score: -1),
]
question.save!

question = Question.new(route_segment_type: 'Block', title: 'Is on street parking permitted?')
question.answers = [
  Answer.new(title: 'Yes', score: -1),
  Answer.new(title: 'No', score: 2),
]
question.save!

question = Question.new(route_segment_type: 'Block', title: 'Traffic Mix: Count the number of large vehicles - bus, delivery truck, trolley etc. in 5 traffic signal cycles. The average number of large vehicles in cycles 1 - 5 is:')
question.answers = [
  Answer.new(title: '0 - 4', score: 2),
  Answer.new(title: '5 - 9', score: 1),
  Answer.new(title: '10+', score: -1),
]
question.save!

question = Question.new(route_segment_type: 'Block', title: 'Is there a transit stop?')
question.answers = [
  Answer.new(title: 'Yes', score: 1),
  Answer.new(title: 'Yes, and the bus needs to cross a bike lane to reach the stop', score: -1),
  Answer.new(title: 'No', score: 0),
]
question.save!

question = Question.new(route_segment_type: 'Block', title: 'Do more than three busses use the transit stop?')
question.answers = [
  Answer.new(title: 'Yes', score: -1),
  Answer.new(title: 'No', score: 0),
]
question.save!

question = Question.new(route_segment_type: 'Block', title: 'Incline/Grade: (See images in audit package for reference)')
question.answers = [
  Answer.new(title: 'Flat Road', score: 2),
  Answer.new(title: 'Medium Incline', score: 1),
  Answer.new(title: 'Down slope or steep incline', score: -1),
]
question.save!

question = Question.new(route_segment_type: 'Block', title: 'Pavement Quality: (See images in audit package for reference)')
question.answers = [
  Answer.new(title: 'Fewer than 3 road obstructions', score: 2),
  Answer.new(title: '3-6 road obstructions', score: 1),
  Answer.new(title: 'Greater than 6 road obstructions', score: -3),
]
question.save!

##########################################################################

question = Question.new(route_segment_type: 'Intersection', title: 'Is there a leading signal to allow bikers to move first?')
question.answers = [
  Answer.new(title: 'Yes', score: 2),
  Answer.new(title: 'No', score: 0),
]
question.save!

question = Question.new(route_segment_type: 'Intersection', title: 'Is there a bike box present?')
question.answers = [
  Answer.new(title: 'Yes, and it is colored', score: 2),
  Answer.new(title: 'Yes, but not colored', score: 1),
  Answer.new(title: 'No', score: 0),
]
question.save!

question = Question.new(route_segment_type: 'Intersection', title: 'Signal Type:')
question.answers = [
  Answer.new(title: '4 way stop intersection', score: 2),
  Answer.new(title: '2 way stop intersection', score: 1),
  Answer.new(title: 'Signaled intersection', score: 0),
]
question.save!

question = Question.new(route_segment_type: 'Intersection', title: 'Are there road markings to direct bike traffic?')
question.answers = [
  Answer.new(title: 'Yes, and the markings are colored', score: 2),
  Answer.new(title: 'Yes, but the markings are not colored', score: 1),
  Answer.new(title: 'No', score: 0),
]
question.save!

question = Question.new(route_segment_type: 'Intersection', title: 'Road Intersection Type:')
question.answers = [
  Answer.new(title: 'Local road (one traffic lane in each direction)', score: 2),
  Answer.new(title: 'Arterial road (multiple lanes in each direction)', score: -1),
]
question.save!

question = Question.new(route_segment_type: 'Intersection', title: 'Rails tracks in road way:')
question.answers = [
  Answer.new(title: 'No tracks present', score: 1),
  Answer.new(title: 'One set of tracks present', score: -1),
  Answer.new(title: 'More than one set of tracks present', score: -2),
]
question.save!

question = Question.new(route_segment_type: 'Intersection', title: 'Are vehicular right turns are permitted?')
question.answers = [
  Answer.new(title: 'Yes, and there is a right turn signal', score: 1),
  Answer.new(title: 'Yes, and the right turn yields to pedestrians', score: -1),
  Answer.new(title: 'Yes, and it is an off ramp (see picture)', score: -1),
  Answer.new(title: 'No', score: 1),
]
question.save!

question = Question.new(route_segment_type: 'Intersection', title: 'Can oncoming traffic turn left?')
question.answers = [
  Answer.new(title: 'Yes, and the turn is protected', score: 0),
  Answer.new(title: 'Yes, and the turn is unprotected/drivers yield', score: -1),
  Answer.new(title: 'No', score: 1),
]
question.save!

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

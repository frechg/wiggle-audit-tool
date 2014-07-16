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

question = Question.new(route_segment_type: 'Block', title: 'If the road is a shared lane are sharrows present?')
question.answers = [
  Answer.new(title: 'Yes', score: 3),
  Answer.new(title: 'Yes, some colored', score: 4),
  Answer.new(title: 'Yes, all colored', score: 5),
  Answer.new(title: 'No', score: 1),
  Answer.new(title: 'Not a shared lane', score: 0),
]
question.save!

question = Question.new(route_segment_type: 'Block', title: 'Is there a bike lane present?')
question.answers = [
  Answer.new(title: 'Yes, colored and protected', score: 5),
  Answer.new(title: 'Yes, protected but not colored', score: 4),
  Answer.new(title: 'Yes, colored but not protected', score: 3),
  Answer.new(title: 'Yes, but not colored or protected', score: 2),
  Answer.new(title: 'No', score: 1),
  Answer.new(title: 'This is a shared lane', score: 0),
]
question.save!

question = Question.new(route_segment_type: 'Block', title: 'Does the bike lane maintain consistent placement on the road?')
question.answers = [
  Answer.new(title: 'Yes', score: 2),
  Answer.new(title: 'No', score: 1),
]
question.save!

question = Question.new(route_segment_type: 'Block', title: 'Is on street parking permitted?')
question.answers = [
  Answer.new(title: 'Yes', score: 1),
  Answer.new(title: 'No', score: 3),
]
question.save!

question = Question.new(route_segment_type: 'Block', title: 'Traffic Mix: Count the number of large vehicles - bus, delivery truck, trolley etc. in 5 traffic signal cycles. The average number of large vehicles in cycles 1 - 5 is:')
question.answers = [
  Answer.new(title: '0 - 2', score: 4),
  Answer.new(title: '3 - 5', score: 2),
  Answer.new(title: '6+', score: 1),
]
question.save!

question = Question.new(route_segment_type: 'Block', title: 'Is there a transit stop?')
question.answers = [
  Answer.new(title: 'Yes', score: 2),
  Answer.new(title: 'Yes, and the bus needs to cross a bike lane to reach the stop', score: 1),
  Answer.new(title: 'No', score: 3),
]
question.save!

question = Question.new(route_segment_type: 'Block', title: 'Pavement Quality: (See images in audit package for reference)')
question.answers = [
  Answer.new(title: '0 - 2 road obstructions', score: 3),
  Answer.new(title: '3 - 5 road obstructions', score: 2),
  Answer.new(title: '6+ road obstructions', score: 1),
]
question.save!

##########################################################################

question = Question.new(route_segment_type: 'Intersection', title: 'Intersection Signal Type')
question.answers = [
  Answer.new(title: 'Stop signs for traffic in all directions', score: 5),
  Answer.new(title: 'Stop signs for traffic on one road', score: 3),
  Answer.new(title: 'Signals for traffic in all directions', score: 2),
  Answer.new(title: 'No signals/Cross traffic yields', score: 1),
]
question.save!

question = Question.new(route_segment_type: 'Intersection', title: 'Is there a leading signal to allow bikers to move first?')
question.answers = [
  Answer.new(title: 'Yes', score: 2),
  Answer.new(title: 'No', score: 1),
]
question.save!

question = Question.new(route_segment_type: 'Intersection', title: 'Is there a bike box present?')
question.answers = [
  Answer.new(title: 'Yes, and it is colored', score: 3),
  Answer.new(title: 'Yes, but not colored', score: 2),
  Answer.new(title: 'No', score: 1),
]
question.save!

question = Question.new(route_segment_type: 'Intersection', title: 'Are there road markings to direct bike traffic?')
question.answers = [
  Answer.new(title: 'Yes', score: 2),
  Answer.new(title: 'No', score: 0),
]
question.save!

question = Question.new(route_segment_type: 'Intersection', title: 'Road Intersection Type:')
question.answers = [
  Answer.new(title: 'Local road (one traffic lane in each direction)', score: 4),
  Answer.new(title: 'Arterial road (multiple lanes in each direction)', score: 1),
]
question.save!

question = Question.new(route_segment_type: 'Intersection', title: 'Rails tracks in road way:')
question.answers = [
  Answer.new(title: 'No tracks present', score: 4),
  Answer.new(title: 'One set of tracks present', score: 2),
  Answer.new(title: 'More than one set of tracks present', score: 1),
]
question.save!

question = Question.new(route_segment_type: 'Intersection', title: 'Are vehicular right turns are permitted?')
question.answers = [
  Answer.new(title: 'Yes, and there is a right turn signal or stop sign', score: 3),
  Answer.new(title: 'Yes, and the right turn yields to pedestrians', score: 2),
  Answer.new(title: 'Yes, and it is an off ramp (see picture)', score: 1),
  Answer.new(title: 'No', score: 5),
]
question.save!

question = Question.new(route_segment_type: 'Intersection', title: 'Can oncoming traffic turn left?')
question.answers = [
  Answer.new(title: 'Yes, and the turn is protected (green arrow or stop sign)', score: 2),
  Answer.new(title: 'Yes, and the turn is unprotected/drivers yield', score: 1),
  Answer.new(title: 'No', score: 4),
]
question.save!

##########################################################################

outbound = BikeRoute.new(name: 'Outbound to Ocean')
outbound.save!

intersection = Intersection.new(title: 'Drumm and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Drumm to Beale', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Beale and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Beale to Front', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Front and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Front to 1st', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: '1st and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: 1st to Battery', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Battery and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Battery to Sutter', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Sutter and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Sutter to 2nd', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: '2nd and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: 2nd to Montgomery', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Montgomery and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Montgomery to Geary', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Geary and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Geary to 3rd', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: '3rd and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: 3rd to OFarrell', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'OFarrell and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: OFarrell to 4th', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: '4th and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: 4th to 5th', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: '5th and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: 5th to Turk', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Turk and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Turk to Mason', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Mason and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Mason to 6th', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: '6th and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: 6th to McAllister', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'McAllister and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: McAllister to Jones', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Jones and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Jones to 7th', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: '7th and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: 7th to 8th', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: '8th and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: 8th to Hayes', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Hayes and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Hayes to 9th', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: '9th and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: 9th to 10th', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: '10th and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: 10th to Fell', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Fell and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Fell to 11th', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: '11th and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: 11th to Van Ness', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Van Ness and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Van Ness to 12th', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: '12th and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: 12th to Franklin', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Franklin and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Franklin to Rose', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Rose and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Rose to Haight', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Haight and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Haight to Gough', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Gough and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Gough to Octavia', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Octavia and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Octavia to Laguna', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Laguna and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Laguna to Buchanan', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Buchanan and Market', bike_route_id: outbound.id)
intersection.save!

intersection = Intersection.new(title: 'Church and Duboce', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Duboce: Church to Fillmore', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Fillmore and Duboce', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Duboce: Fillmore to Belcher', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Duboce and Belcher', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Duboce: Belcher to Sanchez', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Duboce and Sanchez', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Duboce: Sanchez to Steiner', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Duboce and Steiner', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Steiner: Duboce to Hermann', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Hermann and Steiner', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Steiner: Hermann to Germania', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Germania and Steiner', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Steiner: Germania to Waller', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Waller and Steiner', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Waller: Steiner to Potomac', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Waller and Potomac', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Waller: Potomac to Pierce', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Peirce and Waller', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Pierce: Waller to Haight', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Haight and Pierce', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Haight: Pierce to Scott', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Scott and Haight', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Scott: Haight to Page', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Page and Scott', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Scott: Page to Oak', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Oak and Scott', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Scott: Oak to Fell', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Fell and Scott', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Fell: Scott to Divisadero', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Divisadero and Fell', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Fell: Divisadero to Broderick', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Broderick and Fell', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Fell: Broderick to Baker', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Baker and Fell', bike_route_id: outbound.id)
intersection.save!

##########################################################################

inbound = BikeRoute.new(name: 'Inbound to Downtown')
inbound.save!

intersection = Intersection.new(title: 'Fell and Baker', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Baker: Fell to Oak', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Oak and Baker', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Oak: Baker to Broderick', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Broderick and Oak ', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Oak: Broderick to Divisadero', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Divisadero and Oak ', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Oak: Divisadero to Scott', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Scott and Oak ', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Scott: Oak to Page', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Page and Scott', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Scott: Page to Haight', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Scott and Haight', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Haight: Scott to Pierce', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Haight and Pierce', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Pierce: Haight to Waller', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Pierce and Waller', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Waller: Pierce to Potomac', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Waller and Potomac', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Waller: Potomac to Steiner', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Waller and Steiner', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Steiner: Waller to Germania', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Germania and Steiner', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Steiner: Germania to Hermann', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Hermann and Steiner', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Steiner: Hermann to Duboce', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Duboce and Steiner', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Duboce: Steiner to Sanchez', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Duboce and Sanchez', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Duboce: Sanchez to Belcher', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Duboce and Belcher', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Duboce: Belcher to Fillmore', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Fillmore and Duboce', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Duboce: Fillmore to Church', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Church and Duboce', bike_route_id: inbound.id)
intersection.save!

intersection = Intersection.new(title: 'Buchanan and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Buchanan to Laguna', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Laguna and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Laguna to Octavia', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Octavia and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Octavia to Gough', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Gough and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Gough to Haight', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Haight and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Haight to Rose', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Rose and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Rose to Franklin', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Franklin and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Franklin to 12th', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '12th and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: 12th to Van Ness', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Van Ness and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Van Ness to 11th', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '11th and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: 11th to Fell', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Fell and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: 10th to Fell', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '10th and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: 10th to 9th', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '9th and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: 9th to Hayes', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Hayes and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Hayes to 8th', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '8th and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: 8th to 7th', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '7th and Market', bike_route_id: inbound.id)
intersection.save!
block = Block.new(title: 'Market: 7th to Jones', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Jones and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Jones to McAllister', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'McAllister and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: McAllister to 6th', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '6th and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: 6th to Mason', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Mason and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Mason to Turk', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Turk and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Turk to 5th', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '5th and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: 5th to 4th', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '4th and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: 4th to OFarrell', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'OFarrell and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: OFarrell to 3rd', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '3rd and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: 3rd to Geary', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Geary and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Geary to Montgomery', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Montgomery and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Montgomery to 2nd', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '2nd and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: 2nd to Sutter', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Sutter and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Sutter to Battery', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Battery and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Battery to 1st', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '1st and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: 1st to Front', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Front and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Front to Beale', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Beale and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Beale to Drumm', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Drumm and Market', bike_route_id: inbound.id)
intersection.save!

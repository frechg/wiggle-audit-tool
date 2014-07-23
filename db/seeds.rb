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

question = Question.new(route_segment_type: 'Block', title: 'Traffic Mix: Average number of large vehicles - buses, delivery trucks, trollies etc. in 5 traffic signal cycles (or 3min if at stop sign):')
question.answers = [
  Answer.new(title: '0 - 2', score: 4),
  Answer.new(title: '3 - 5', score: 2),
  Answer.new(title: '6+', score: 1),
]
question.save!

question = Question.new(route_segment_type: 'Block', title: 'Bicyclist travel on a local road with:')
question.answers = [
  Answer.new(title: 'Shared lane: no sharrows', score: 2),
  Answer.new(title: 'Shared lane: skeleton sharrows', score: 3),
  Answer.new(title: 'Shared lane: colored sharrows', score: 3.5),
  Answer.new(title: 'Bike lane', score: 4),
  Answer.new(title: 'Not a local road', score: 0),
]
question.save!

question = Question.new(route_segment_type: 'Block', title: 'Bicyclist travel on an arterial road with:')
question.answers = [
  Answer.new(title: 'Shared lane: no sharrows', score: 1),
  Answer.new(title: 'Shared lane: skeleton sharrows', score: 1.5),
  Answer.new(title: 'Shared lane: colored sharrows', score: 2),
  Answer.new(title: 'Bike lane: not colored or protected', score: 3),
  Answer.new(title: 'Bike lane: colored not protected', score: 3.5),
  Answer.new(title: 'Bike lane: protected not colored', score: 4.5),
  Answer.new(title: 'Bike lane: protected and colored', score: 5),
  Answer.new(title: 'Not an aterial road', score: 0),
]
question.save!

question = Question.new(route_segment_type: 'Block', title: 'Is the bicycle space consistent?')
question.answers = [
  Answer.new(title: 'Yes', score: 2),
  Answer.new(title: 'No, it joggs left or right', score: 1),
  Answer.new(title: 'No, bike lane changes to checkered green lane', score: 1),
  Answer.new(title: 'No, bike lane changes to shared lane with colored sharrows', score: -1.5),
  Answer.new(title: 'No, bike lane changes to shared lane with skeleton sharrows', score: -2),
]
question.save!

question = Question.new(route_segment_type: 'Block', title: 'Cyclist avaiable road space is within aprox. 5 feet of or crosses railroad tracks?')
question.answers = [
  Answer.new(title: 'No tracks present', score: 4),
  Answer.new(title: 'One set of tracks present', score: 2),
  Answer.new(title: 'More than one set of tracks present', score: 1),
]
question.save!

question = Question.new(route_segment_type: 'Block', title: 'Is on street parking permitted?')
question.answers = [
  Answer.new(title: 'Yes', score: 1),
  Answer.new(title: 'No', score: 3),
]
question.save!

question = Question.new(route_segment_type: 'Block', title: 'Is there a local road or ally way that feed into the bicyclists rout mid block?')
question.answers = [
  Answer.new(title: 'Yes', score: 1),
  Answer.new(title: 'No', score: 2),
]
question.save!

question = Question.new(route_segment_type: 'Block', title: 'Is there a transit stop?')
question.answers = [
  Answer.new(title: 'Yes, and the bus does not enter bicycle space', score: 2),
  Answer.new(title: 'Yes, and the bus crosses or stops in bicycle space.', score: 1),
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
  Answer.new(title: 'No, there is a stop sign', score: 2),
  Answer.new(title: 'No', score: 1),
]
question.save!

question = Question.new(route_segment_type: 'Intersection', title: 'Road Intersection Type:')
question.answers = [
  Answer.new(title: 'Local road (one traffic lane in each direction)', score: 3),
  Answer.new(title: 'Arterial road (multiple lanes in each direction)', score: 1),
]
question.save!

question = Question.new(route_segment_type: 'Intersection', title: 'Are there road markings to direct bike traffic?')
question.answers = [
  Answer.new(title: 'Yes, path continues in-line', score: 4),
  Answer.new(title: 'Yes, path turns or changes placement on road', score: 3),
  Answer.new(title: 'No, path continues in-line', score: 2),
  Answer.new(title: 'No, path turns or changes placement on road', score: 1),
]
question.save!

question = Question.new(route_segment_type: 'Intersection', title: 'Pavement Quality: (See images in audit package for reference)')
question.answers = [
  Answer.new(title: 'Road obstructions present', score: 1),
  Answer.new(title: 'No road obstructions', score: 2),
]
question.save!


question = Question.new(route_segment_type: 'Intersection', title: 'Cyclist avaiable road space is within aprox. 5 feet of or crosses railroad tracks?')
question.answers = [
  Answer.new(title: 'No tracks present', score: 5),
  Answer.new(title: 'Parallel tracks present', score: 4),
  Answer.new(title: 'Bicyclists cross one set of tracks', score: 3),
  Answer.new(title: 'Bicyclists cross more than one set of tracks', score: 1),
]
question.save!

question = Question.new(route_segment_type: 'Intersection', title: 'Are vehicular right turns permitted?')
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

intersection = Intersection.new(title: 'Drumm (Main) and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Drumm (Main) to Davis (Beale)', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Davis (Beale) and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Davis (Beale) to Front (Fremont)', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Front (Fremont) and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Front (Fremont) to 1st', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: '1st and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: 1st to Sutter', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Sutter and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Sutter to 2nd', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: '2nd and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: 2nd to (New) Montgomery', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: '(New) Montgomery and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: (New) Montgomery to Kearny (3rd)', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Kearny (3rd) and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Kearny (3rd) to Grant/OFarrell', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Grant/OFarrell and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Grant/OFarrell to Ellis (4th)', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Ellis (4th) and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Ellis (4th) to Cyril Magnin (5th)', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Cyril Magnin (5th) and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Cyril Magnin (5th) to Turk/Mason', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Turk/Mason and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Turk/Mason to Golden Gate (6th)', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Golden Gate (6th) and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Golden Gate (6th) to Jones/McAllister', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Jones/McAllister and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Jones/McAllister to 7th', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: '7th and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: 7th to Hyde/Grove (8th)', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Hyde/Grove (8th) and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Hyde/Grove (8th) to Larkin/Hayes (9th)', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Larkin/Hayes (9th) and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Larkin/Hayes (9th) to Polk/Fell (10th)', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Polk/Fell (10th) and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Polk/Fell (10th) to (S) Van Ness', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: '(S) Van Ness and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: (S) Van Ness to Franklin/Page (12th)', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Franklin/Page (12th) and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Franklin/Page (12th) to Gough', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Gough and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Gough to Octavia', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Octavia and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Octavia to Laguna (Guerrero)', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Laguna (Guerrero) and Market', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Market: Laguna (Guerrero) to Buchanan (Duboce)', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Buchanan (Duboce) and Market', bike_route_id: outbound.id)
intersection.save!

intersection = Intersection.new(title: 'Church and Duboce', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Duboce: Church to Sanchez/Steiner', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Duboce and Sanchez/Steiner', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Steiner: Duboce to Waller', bike_route_id: outbound.id)
block.save!

intersection = Intersection.new(title: 'Waller and Steiner', bike_route_id: outbound.id)
intersection.save!

block = Block.new(title: 'Waller: Steiner to Pierce', bike_route_id: outbound.id)
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

block = Block.new(title: 'Waller: Pierce to Steiner', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Waller and Steiner', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Steiner: Waller to Duboce', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Duboce and Steiner/Sanchez', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Duboce: Steiner/Sanchez to Church', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Church and Duboce', bike_route_id: inbound.id)
intersection.save!

intersection = Intersection.new(title: 'Buchanan (Duboce) and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Duboce (Buchanan) to Guerrero (Laguna)', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Guerrero (Laguna) and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Guerrero (Laguna) to Octavia', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Octavia and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Octavia to Valencia', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Valencia and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Valencia to Gough', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Gough and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Gough to 12th', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '12th and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: 12th to S Van Ness', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'S Van Ness and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: S Van Ness to 10th', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '10th and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: 10th to 9th', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '9th and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: 9th to 8th', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '8th and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: 8th to 7th', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '7th and Market', bike_route_id: inbound.id)
intersection.save!
block = Block.new(title: 'Market: 7th to Jones/McAllister', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Jones/McAllister and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Jones/McAllister to 6th', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '6th and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: 6th to Mason/Turk', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Mason/Turk and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Mason/Turk to 5th', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '5th and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: 5th to 4th', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '4th and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: 4th to Grant/OFarrell', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Grant/OFarrell and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Grant/OFarrell to 3rd (Kearny)', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '3rd (Kearny) and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: 3rd (Kearny) to (New) Montgomery', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '(New) Montgomery and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: (New) Montgomery to 2nd', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '2nd and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: 2nd to Sutter', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Sutter and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Sutter to 1st', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: '1st and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: 1st to Fremont (Front)', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Fremont (Front) and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Fremont (Front) to Beale (Davis)', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Beale (Davis) and Market', bike_route_id: inbound.id)
intersection.save!

block = Block.new(title: 'Market: Beale (Davis) to Main (Drumm)', bike_route_id: inbound.id)
block.save!

intersection = Intersection.new(title: 'Main (Drumm) and Market', bike_route_id: inbound.id)
intersection.save!

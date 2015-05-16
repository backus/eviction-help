# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicag },
# { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

Question.create!([
  { title: "Has your landlord given you a 60-day notice terminating your tenancy?",
    description: "",
    required: true,
    kind: "question",
    prev_id: nil,
    next1_id: 5,
    next2_id: 2,
    response1: "Yes",
    response2: "No" },
  { title: "Has your landlord served you a 3-day notice to cure or quit?",
    description: "",
    required: true,
    kind: "question",
    prev_id: 1,
    next1_id: 3,
    next2_id: 4,
    response1: "Yes",
    response2: "No" },
  { title: "Have more than 3 days passed since your landlord served you the notice?",
    description: "",
    required: true,
    kind: "question",
    prev_id: 2,
    next1_id: 5,
    next2_id: 4,
    response1: "Yes",
    response2: "No" },
  { title: "Good news!",
    description: "Since fewer than 3 days have passed since your landlord served you the notice, you still have a chance to resolve this dispute outside of the courts. {more info...}",
    required: true,
    kind: "advice",
    prev_id: nil,
    next1_id: nil,
    next2_id: nil,
    response1: nil, 
    response2: nil },
  { title: "Has your landlord filed an Unlawful Detainer lawsuit at the Court?",
    description: "",
    required: true,
    kind: "question",
    prev_id: 3,
    next1_id: 6,
    next2_id: 9,
    response1: "Yes",
    response2: "No" },
  { title: "Did (s)he file the lawsuit within the past 5 days?",
    description: "",
    required: true,
    kind: "question",
    prev_id: 5,
    next1_id: 8,
    next2_id: 7,
    response1: "Yes",
    response2: "No" },
  { title: "Default Judgement",
    description: "Unfortunately, tenants automatically lose Unlawful Detainer lawsuits if they don't respond within 5 days. You should expect a Sheriff's Notice within the next 1-5 days, and if you do not move within 6-8 days the Sheriff will evict you in person.",
    required: true,
    kind: "advice",
    prev_id: 6,
    next1_id: nil,
    next2_id: nil,
    response1: nil, 
    response2: nil },
  { title: "Have you filed an answer to the lawsuit?",
    description: "",
    required: true,
    kind: "question",
    prev_id: 6,
    next1_id: 9,
    next2_id: 10,
    response1: "Yes",
    response2: "No" },
  { title: "Here is information about further legal resources.",
    description: nil,
    required: true,
    kind: "advice",
    prev_id: nil,
    next1_id: nil,
    next2_id: nil,
    response1: nil, 
    response2: nil },
  { title: "Do you live in San Mateo County?",
    description: "",
    required: true,
    kind: "question",
    prev_id: 8,
    next1_id: 11,
    next2_id: 12,
    response1: "Yes",
    response2: "No" },
  { title: "Good news!",
    description: "We can help you file your answer to the lawsuit. Sign up now to get started.",
    required: true,
    kind: "advice",
    prev_id: nil,
    next1_id: nil,
    next2_id: nil,
    response1: nil, 
    response2: nil },
  { title: "We don't serve your county quite yet, but here is information about further legal resources.",
    description: nil,
    required: true,
    kind: "advice",
    prev_id: nil,
    next1_id: nil,
    next2_id: nil,
    response1: nil, 
    response2: nil}
])

Defense.create([
  { description: "Infestation of rodents/cockroaches/insects" },
  { description: "Defective plumbing" },
  { description: "Roof leaks" },
  { description: "Damp walls" },
  { description: "Falling plaster/sheet rock" },
  { description: "Peeling paint" },
  { description: "Cracks" },
  { description: "Missing or defective smoke detectors" },
  { description: "Unsafe stairways/railings" },
  { description: "Defective electrical system" },
  { description: "Inadequate heat" },
  { description: "Inadequate security" },
  { description: "Defective CO detectors" },
  { description: "Mold" },
  { description: "Holes in walls" },
  { description: "Floors in disrepair" },
  { description: "Windows leak air/don't seal/don't open properly" },
  { description: "Gaps around doors" },
  { description: "Inadequate trash receptacles/collection" },
  { description: "Common areas unclean" },
  { description: "Defective appliances" },
  { description: "No secure mail receptacle" },
  { description: "Inadequate hot water" }
])
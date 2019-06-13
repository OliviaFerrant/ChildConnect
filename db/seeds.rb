require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning db..."
User.destroy_all
CaseSafetyFactor.destroy_all
CaseRisk.destroy_all
CaseAction.destroy_all
Case.destroy_all
risks = [
    "1. Total prior reports for adults and children in RAP family unit.",
    "2. Any child in the RAP family unit was in the care of custody any substitute caregivers at any time prior to the current report date.",
    "3. Child under one year old in RAP family unit at time of the current report, and/or new infant since report.",
    "4. Current or recent history of housing with serious health of safety hazards; extreme overcrowding; unstable housing or no housing.",
    "5. Financial resources are mismanaged or limited to the degree that one or more basics family needs are intermittently or chronically unmet.",
    "6. Caretaker has. and utilizes, reliable and contructive support and assistance from extended family, friends or neighbors.",
    "7. Caretaker has been a victim or perpetrator of abusive or threatening incidents with a parterners or other adults in family/neighborhood.",
    "8. Caretaker's alcohol use has had nefative effects on chold care, family relationships, jobs, or arrests, within the past two years.",
    "9. Cartaker's drug use has had negative effects on child care, family relationships, jobs or arrests within the past two years.",
    "10. Caretaker's behavior suggests a mental health problem exists and/or caretaker has diagnosed mental illness.",
    "11. Caretaker has very limited cognitive skills.",
    "12. Caretaker has debilitating physical illness or physical disability.",
    "13. Caretaker demonstrates developmentally appropriate expecations of all children.",
    "14. Caretaker attends to needs fo all children and prioritizes the children's needs above his/her own needs or desires.",
    "15. Caretaker understands the seriousnees of current or potential harm to the children and is willing to address any areas of concern."
]

safety_factors = [
    "1. Based on your present assessment and review of prior history of abuse or maltreatment the Parent(s)/Caretaker(s) is unable or unwilling ti protect the child(ren).",
    "2. Parent(s)/Caretaker(s) currently uses alcohol to the extent that it negatively impacts his/her ability to supervise, protect and/or care for the child(ren).",
    "3. Parent(s)/Caretaker(s) currently uses illicit drugs or misuses prescription medication to the extent that it negatively impacts his/her ability to supervise, protect and/or care for the child(ren).",
    "4. Child(ren) has experienced or is likely to experience physical or psychological harm as a result of domestic violence in the household.",
    "5. Parent(s)/Caretaker(s) apparent or diagnosed medical or mental health status or developmental disability negatively impacts his/her ability to supervise, protect and/or care for the child(ren).",
    "6. Parent(s)/Caretaker(s) has a recent history of violence and/or is currently violent and out of control.",
    "7. Parent(s)/Caretaker(s) is unable and/or unwilling to meet the child(ren)'s needs for food, clothing, shelter, medical or mental health care and/or control child's behavior.",
    "8. Parent(s)/Caretaker(s) is unable and/or unwilling to provide adequate supervision of the chid(ren).",
    "9. Child(ren) has experienced serious nad/or repeated physical harm or injury and/or the Parent(s)/Caretaker(s) has made a plausible threat of serious harm or injury to the child(ren).",
    "10. Parent(s)/Caretaker(s) views, describes or acts toward the chil(ren) in predominantly negative terms and/or has extremely unrealistic expectations of the child(ren).",
    "11. Child(ren)'s current whereabouts cannot be ascertained and/or there is reason to believe the family is about to feel or refuses access to the child(ren).",
    "12. Child(ren) has been or is suspected of being sexually avused or exploited and the Parent(s)/Caretaker(s) is unable or unwilling to provide adequate protection of the chil(ren).",
    "13. The physical condition of the home is hazardous to the safety of the child(ren).",
    "14. Child(ren) expresses or exhibits fear of being in the home due to current behaviors of Parent(s)/Caretaker(s) or the other persons living in, or frequenting the household.",
    "15. Child(ren) has a positive toxicology for drugs and/or alcohol.",
    "16. Child(ren) has significant vulnerability, is devel-opmentally delayed, or medically fragile and the Parent(s)/Caretaker(s) is unable and/or unwilling to provide adequate care and/or proctection of the child(ren).",
    "17. Weapon noted in CPS report or found in the home and Parent(s)/Caretaker(s) is unable and/or unwilling to protect the child(ren) from potential harm.",
    "18. Criminal activity in the home negatively impacts Parent(s)/Caretaker(s) ability to supervise, protect and/or care for the child(ren).",
    "19. No Safety Factors present at this time."
]

puts "creating risks"
risks.each do |risk|
    Risk.create(category: risk)
end
puts "creating safety factors"
safety_factors.each do |sf|
    SafetyFactor.create(fact: sf)
end
puts "creating user"
User.create!(email: "thomasferrant@hotmail.fr", password: "secret")

puts "creating Cases"

d = Faker::Date.between(45.days.ago, Date.today)
Case.create(child_name: "Jessica", family_name: "Smith", remote_photo_url: "https://i0.wp.com/www.healthline.com/hlcmsresource/images/topic_centers/1296x728_bruise-colors-H1.jpg?w=1155", state: "Open", address: "32 Mercer Street, Jersey City, New Jersey, United States of America", phone_number: "212-601-3254", summary: "A bruise has been found on the child by the primary school teacher. Parents claim that the child fell down the stairs but teachers said that this is not the first time such inceident is supposed to have occurred", start_date: d, end_date: d + 60)

d = Faker::Date.between(45.days.ago, Date.today)
Case.create(child_name: "Chloe", family_name: "Johnson", remote_photo_url: "https://i.dailymail.co.uk/i/pix/2014/03/17/article-0-1C5DAB4300000578-449_964x644.jpg", state: "Open", address: "7681 Roberts Drive Far Rockaway, NY 11691", phone_number: "212-401-9399", summary: "Domestic violence signalled by neighbour. Police has been called and in entering the premises found the child dirty and uncared for.", start_date: d, end_date: d + 60)

d = Faker::Date.between(45.days.ago, Date.today)
Case.create(child_name: "Emily", family_name: "Williams", remote_photo_url: "http://coachvinnym.com/wp-content/uploads/2018/10/dirty-apartment-this-is-a-feeling-you-can-now-avoid-dirty-apartment-eviction.jpg", state: "Open", address: "Far Rockaway, New York, United States of America", phone_number: "212-301-2314", summary: "Absent from school for 30 days despite not producing any valid explanations. Father is absent from home and the mother has drug abuse and mental illness history", start_date: d, end_date: d + 60)

d = Faker::Date.between(45.days.ago, Date.today)
Case.create(child_name: "Mia", family_name: "Jones", remote_photo_url: "https://i0.wp.com/www.healthline.com/hlcmsresource/images/topic_centers/5986-bruised_ribs-648x364-body.jpg?w=1155&h=764", state: "Open", address: "1203 East New York Avenue, New York City, New York, United States of America", phone_number: "212-789-0098", summary: "Complained about being hit by step father - has bruised back and thighs. Child is also part of the wresling team in which he might has suffered those injuries.", start_date: d, end_date: d + 60)

d = Faker::Date.between(45.days.ago, Date.today)
Case.create(child_name: "Tyrina", family_name: "Brown", remote_photo_url: "http://1.bp.blogspot.com/-v2tTeCX1DOA/UoEEGFe99BI/AAAAAAAAATo/JooEIZAxR7w/s1600/dirty+flat+(3)+(1024+x+768).jpg", state: "Open", address: "222 Smith Avenue, Todt Hill, New York, United States of America", phone_number: "212-690-4052", summary: "Mum has been arrested for drunk and disorderly behaviour in the streets. She has no prior convictions.", start_date: d, end_date: d + 60)

d = Faker::Date.between(45.days.ago, Date.today)
Case.create(child_name: "Ranielle", family_name: "Hall", remote_photo_url: "https://live.staticflickr.com/162/417062984_04727ecf7f.jpg", state: "Open", address: "350 100th Avenue, New York City, New York, United States of America", phone_number: "212-098-1326", summary: "Dad has gone missing after an altercation with a relative. The child's mother has passed away and the child was found taken care out by his 12yrs old sister.", start_date: d, end_date: d + 60)

d = Faker::Date.between(45.days.ago, Date.today)
Case.create(child_name: "Latisha", family_name: "Allen", remote_photo_url: "https://i2-prod.dailyrecord.co.uk/incoming/article892491.ece/ALTERNATES/s615b/505FAC0B-A2FA-F210-71ADBCCAEA6844EE.jpg", state: "Open", address: "6800 100th Road, New York City, New York, United States of America", phone_number: "212-253-6473", summary: "The child has been repeatedly sick over a period of six months. Lately sufers from unexplained weight loss ", start_date: d, end_date: d + 60)

d = Faker::Date.between(45.days.ago, Date.today)
Case.create(child_name: "Rashawn", family_name: "Stewart", remote_photo_url: "https://static1.squarespace.com/static/5624272be4b0007a000e2091/t/587fbacf3e00be6f0d1da847/1484765914101/?format=1000w", state: "Open", address: "5000 100th Street, New York City, New York, United States of America", phone_number: "212-231-7819", summary: "Mental health issues are prevalent in the parents of the child. Neglect has been ongoing and the child has just been returned after ", start_date: d, end_date: d + 60)

d = Faker::Date.between(45.days.ago, Date.today)
Case.create(child_name: "Montraie", family_name: "Sanchez", remote_photo_url: "https://i.pinimg.com/originals/06/2b/b6/062bb625146abb751d3b15b31757a1a6.jpg", state: "Open", address: "100 Brooklyn Bridge, Manhattan Community Board 1, New York, United States of America", phone_number: "212-601-2536", summary: "Alcoolic parents have been known to leave the child unattended but claim that he is cared for by the maternal grand mother.", start_date: d, end_date: d + 60)

d = Faker::Date.between(45.days.ago, Date.today)
Case.create(child_name: "Joshua", family_name: "Bennet", remote_photo_url: "https://islamicanews.com/files/2014/06/messyapt.jpg", state: "Open", address: "9 12th Avenue, Manhattan Community Board 9, New York, United States of America", phone_number: "212-111-2018", summary: "Family doctor is concerned by the weight of the baby who is severely under the normal rate of development - neglect is suspected", start_date: d, end_date: d + 60)

d = Faker::Date.between(45.days.ago, Date.today)
Case.create(child_name: "Oliver", family_name: "Barnes", remote_photo_url: "https://cdnblog.rentcafe.com/blog/wp-content/uploads/2012/01/MessyApartment.jpg", state: "Open", address: "56 56th Place, New York City, New York, United States of America", phone_number: "212-301-2018", summary: "Teacher reported that the child seems to be constantly tired and is not engaging in lessons", start_date: d, end_date: d + 60)

d = Faker::Date.between(45.days.ago, Date.today)
Case.create(child_name: "Daniel", family_name: "Wood", remote_photo_url: "https://i.redd.it/62cqzypfjnx01.jpg", state: "Open", address: "80 80th Drive, New York City, New York, United States of America", phone_number: "212-604-4908", summary: "Dad just out of a long incarceration. The child seems to not be accepting the return of his father and has been involved in truancy", start_date: d, end_date: d + 60)

d = Faker::Date.between(45.days.ago, Date.today)
Case.create(child_name: "Jack", family_name: "Hernandez", remote_photo_url: "https://byemould.com/wp-content/uploads/2016/08/landlord-messy-apartment-tenant-viewing-property-estate-agent-byemould.jpg", state: "Open", address: "7 7th Avenue, Manhattan Community Board 4, New York, United States of America", phone_number: "212-231-4018", summary: "Friend of the child  has called in our services following a violent altercation between the child and his step dad. ", start_date: d, end_date: d + 60)

d = Faker::Date.between(45.days.ago, Date.today)
Case.create(child_name: "Jacob", family_name: "Young", remote_photo_url: "https://cdn.homedit.com/wp-content/uploads/2011/07/clean-interior-design-apartment.jpg", state: "Open", address: "65 65th Avenue, New York City, New York, United States of America", phone_number: "212-321-9876", summary: "Parents are divorced and mother is accusing father of not taking care of the child during is week ends of custody", start_date: d, end_date: d + 60)

d = Faker::Date.between(45.days.ago, Date.today)
Case.create(child_name: "William", family_name: "Price", remote_photo_url: "http://bipolardesign.co/wp-content/uploads/2018/06/cool-game-room-ideas-best-small-gaming-part-photos-gamer-bedroom-with-decorating-home.jpg", state: "Open", address: "450 Brooklyn Bridge, Manhattan Community Board 3, New York, United States of America", phone_number: "212-231-4348", summary: "Child has completely lost interest at school and is no longer taking part in sports event in which he was previously active. Abuse suspected.", start_date: d, end_date: d + 60)

cases = Case.all

cases.each do |c|
  acts = [{title: "Call source & Home visit (day 1)", due_date: c.start_date},
          {title: "School visit & contact other sources (day 2-5)", due_date: c.start_date + 3},
          {title: "Safety Factors Checklist due (day 7)", due_date: c.start_date + 7},
          {title: "Second home visit (day 15)", due_date: c.start_date + 15},
          {title: "Risk factors Checklist due (day 16)", due_date: c.start_date + 16},
          {title: "Third home visit (day 23)", due_date: c.start_date + 23},
          {title: "Fourth home visit (day 41)", due_date: c.start_date + 41},
          {title: "Case Closure due (day 60)", due_date: c.start_date + 60}
    ]
    c.case_number = c.id
    c.save

  acts.each do |h|
    next_action = CaseAction.new(title: h[:title], due_date: h[:due_date], case_id: c.id, status: "Pending")
    if next_action.due_date < Date.today
      next_action.status = "Done"
      next_action.save
    else
      next_action.save
    end
  end
end

puts "all done !"

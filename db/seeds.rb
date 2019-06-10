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
10.times do |c|
    Case.create!(
        address: Faker::Address.state,
        family_name: Faker::Name.last_name,
        child_name: Faker::Name.first_name,
        state: "Open",
        # start_date: Date.today,
        # end_date: start_date + 60,
        case_number: rand(12345...99999),
        phone_number: Faker::PhoneNumber.phone_number,
        summary: Faker::Lorem.paragraph
    )
    end
puts "all done !"
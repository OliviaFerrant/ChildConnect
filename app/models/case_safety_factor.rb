class CaseSafetyFactor < ApplicationRecord
  belongs_to :case
  belongs_to :safety_factor

  SAFETYFACTORS = ["1. Based on your present assessment and review of prior history of abuse or maltreatment the Parent(s)/Caretaker(s) is unable or unwilling ti protect the child(ren).",
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
end

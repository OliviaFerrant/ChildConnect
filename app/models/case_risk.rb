class CaseRisk < ApplicationRecord
  belongs_to :case
  belongs_to :risk

  RISKS = ["1. Total prior reports for adults and children in RAP family unit.",
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
end

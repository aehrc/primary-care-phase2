
Profile: AUPrimaryCareHealthEducation
Parent: Communication
Id: AUPrimaryCareHealthEducation
// This description sounds odd, is it really "interventions" provided? Or information?
Description: "List of interventions provided to the patient."
* payload ^short = "Health education"
* payload ^definition = "Description of the Health education or intervention provided to the patient in the context of SDOH categories. Information given, advice provided."
* payload.content[x] only string
* note ^short = "Comment"
* note ^definition = "Comment text on the intervention provided"
* reasonReference only Reference(AUPrimaryCareIssue)
* reasonReference ^short = "Relates to issue"
// This should be something like "The issue the health education relates to"
* reasonReference ^definition = "Element that describes which issue the health education relates to"
// This is really annoying - R4 does not allow reasonReference to be Goal, but R5 does, so Goal must go somewhere else
* about only Reference(AUPrimaryCareGoal)
* about ^short = "Relates to goal"
// This should be something like "The goal the health education relates to"
* about ^definition = "Element that describes which goal the health education relates to"
* subject only Reference(AUPrimaryCarePatient)

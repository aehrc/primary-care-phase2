
Profile: AUPrimaryCareGoal
Parent: Goal
Id: AUPrimaryCareGoal
Description: "Data group for the recording of goals"
* description 1..1 MS
* description.text 1..1 MS
* description.text ^short = "Goal Name"
* expressedBy 1..1
* expressedBy ^definition = "Element to state who has set the goal. For example the clinician or the patient"
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* note ^short = "Comment"
* note ^definition = "Text comment in relation to the recorded goal"
* target.detailString 1..1
* target ^definition = "Specify the details of what the target of this goal is."
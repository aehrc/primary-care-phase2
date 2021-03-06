
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
* extension contains AUPrimaryCareReviewDate named reviewDate 0..*
* category ^definition =  "Element that describes what the goal relates to."
// DONNA Is this a reference to the category e.g. genitourinary health, or a different element, e.g. a current med or a problem list entry
* outcomeCode.text ^definition = "Outcome of this goal once review period is finished"

Extension: AUPrimaryCareReviewDate
Id: AUPrimaryCareReviewDate
Title: "AU Primary Care Review Date"
Description: "Date when this goal is planned to be reviewed"
* . ^short = "Review Date"
* value[x] only date

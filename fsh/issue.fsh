
Profile: AUPrimaryCareIssue
Parent: AUPrimaryCareCondition
Id: au-primary-care-issue
Title: "AU Primary Care Issue"
Description: "The Issue data group enables the recording of an issue for a patient."
* code MS
* code ^short = "The Issue"
* code ^definition = "Describes the issue to be recorded"
* code.text MS
* code.text ^short = "Patient-Oriented-Issue-Name"
* code.text ^definition = "This text element enables an issue to be recorded by using a string, espeically if the issue needs to be phrased using specific language - e.g. positive statements"
* code.coding MS
* code.coding ^short = "Coded value for the Issue"
* asserter 1..1
// Do we *really* want to rule out a family member @Donna @Robyn
* asserter only Reference(AUPrimaryCarePatient|AUBasePractitioner|AUBasePractitionerRole)
* asserter ^short = "Expressed-by"
* asserter ^definition = "Who the issue has been raised/entered by. Intended to be either patient or clinician"
* note ^short = "Comment"
* note ^definition = "Entry of text relating to the Issue/Recommendation entry"
* subject only Reference(AUPrimaryCarePatient)
// Health-Education-List reverse reference from AUHealthEducation
// GoalList reverse reference to AUPrimaryCareGoal
// Referral reverse reference to?
// ServiceRequest reverse reference to?
// Follow-Up-List reverse reference to?
* clinicalStatus 1..1
* clinicalStatus ^short = "Status"
* clinicalStatus ^definition = "To indicate if this Issue is active or inactive"
* clinicalStatus from AUPrimaryCareIssueStatusVS
// Relates-To
* category ^short = "Relates-To"
* category ^definition = "Which category or examination this issue relates to. Intended to be system generated"
* category from AUPrimaryCareIssueCategoriesVS

ValueSet: AUPrimaryCareIssueStatusVS
Title: "All AU Primary Care Issue Status Codes"
* http://terminology.hl7.org/CodeSystem/condition-clinical#active
* http://terminology.hl7.org/CodeSystem/condition-clinical#inactive

CodeSystem: AUPrimaryCareCategoryCS
Title: "AU Primary Care Category Codes"
* #s-gsh    "Genitourinary And Sexual Health"
* #s-slp    "Sleep"
* #s-mw     "Mood and Wellbeing"
* #s-ntr    "Nutrition"
* #s-pa     "Physical Activity"
* #e-ese    "Eye amd Sight Examination"
* #e-ehe    "Ear and Hearing Examination"
* #e-ode    "Oral and Dental Examination"
* #sdh-fi   "Food Insecurity"
* #sdh-hs   "Housing"
* #sdh-fsc  "Family and Social Connection"
* #sdh-le   "Learning and Education"
* #sdh-eof  "Employment, Occupation and Finances"
* #sdh-ls   "Legal and Safety"
* #sdh-tpt  "Transport"

ValueSet: AUPrimaryCareIssueCategoriesVS
Title: "AU Primary Care Issue Category Codes"
* codes from AUPrimaryCareCategoryCS

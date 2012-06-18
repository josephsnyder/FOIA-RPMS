APCLVLS1 ; IHS/CMI/LAB - dir question mark ;
 ;;2.0;IHS PCC SUITE;**2**;MAY 14, 2009
 ;
 ;
DIRQ ;EP
 S DIR("?")="<Enter a list or a range.  E.g. 1-4,5,20 or 10,12,20,30>"
 S DIR("?",1)="Most of the above selection choices are self-explanatory.  A  brief"
 S DIR("?",2)="definition is provided below for those items that may require explanation:"
 S DIR("?",3)=""
 S DIR("?",4)="Living Patients - will limit selections to patients who are alive on the date"
 S DIR("?",5)="               the report is run."
 S DIR("?",6)=""
 S DIR("?",7)="Chart Facility -  will limit selections to those patients who have a health"
 S DIR("?",8)="               record at the facility you specify."
 S DIR("?",9)=""
 S DIR("?",10)="Eligibility Status - permits you to select patients based on eligibility"
 S DIR("?",11)="               categories of Ineligible, Direct Only, CHS & Direct, and"
 S DIR("?",12)="               Pending Verification."
 S DIR("?",13)=""
 S DIR("?",14)="Beneficiary Status - permits you to select patients based on beneficiary "
 S DIR("?",15)="               categories of Indian/Alaska Native, Dependent of Indian,"
 S DIR("?",16)="               Commissioned Officer, Non-Indian Emergency, and many other"
 S DIR("?",17)="               categories."
 S DIR("?",18)=""
 S DIR("?",19)="Medicare/Medicaid/Private Insurance - "
 I APCLPTVS="P" S DIR("?",20)="               will limit selection of patients to those who"
 I APCLPTVS="P" S DIR("?",21)="               have an active (open) enrollment at the report is run."
 I APCLPTVS="V" S DIR("?",20)="               will limit selection of visits to those patients who have"
 I APCLPTVS="V" S DIR("?",21)="               an active (open) enrollment on the date of the visit."
 S DIR("?",22)=""
 S DIR("?",23)="Designated Primary Care Provider - will limit selection to those patients who "
 S DIR("?",24)="               have had a specific provider identified as their 'regular'"
 S DIR("?",25)="               or 'Designated Primary Care' provider."
 S DIR("?",26)=""
 I APCLPTVS="P" S DIR("?",27)="Exclude Inactive Patients - will exclude patients whose health record number"
 I APCLPTVS="P" S DIR("?",28)="               has been inactivated at the facility for which you are"
 I APCLPTVS="P" S DIR("?",29)="               signed on to the computer."
 I APCLPTVS="V" S DIR("?",27)="Exclude Inactive Patients - will exclude visits for patients whose health record"
 I APCLPTVS="V" S DIR("?",28)="               is inactive at the time of the visit."
 I APCLPTVS="V" S DIR("?",29)=""
 S DIR("?",30)="               Use of the term 'inactive patients' is not related to the "
 S DIR("?",31)="               concept of 'active users', which consists of certain patients"
 S DIR("?",32)="               seen during the last three years.)"
 S DIR("?",33)=""
 Q:APCLPTVS="P"
 S DIR("?",34)="Exclude Incomplete Visits - will limit selection to those visits that contain"
 S DIR("?",35)="               a provider of service and a diagnosis/purpose of visit.  When"
 S DIR("?",36)="               data is passed into PCC from ancillary RPMS packages, such as"
 S DIR("?",37)="               lab and pharmacy, it sometimes does not include provider and/or"
 S DIR("?",38)="               diagnosis.  These data items are added later when a PCC form "
 S DIR("?",39)="               gets processed.  Use of this selection criteria will exclude"
 S DIR("?",40)="               those visits that are still incomplete at the time the report is "
 S DIR("?",41)="               generated."
 S DIR("?",42)=""
 Q

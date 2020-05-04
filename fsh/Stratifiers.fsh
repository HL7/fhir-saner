// This file contains value sets used for stratification.

CodeSystem: AgeBracket
Title: "Age Bracket System"
Description: "A Code System for Stratifying by Age Bracket defined by The SANER Project"
* ^purpose = """
This code system is defined to support a compositional grammar to create codes for age groups.
It is defined in terms of a grammar, which is structured as follows:

```
          code ::=    "allages"
                 |    lower-bound upper-bound {time-unit}?
                 |    "under" upper-bound {time-unit}?
                 |    lower-bound "plus" {time-unit}?
   lower-bound ::= number
   upper-bound ::= "to" number
        number ::= [1-9] | [1-9][0-9] | 1[0-9][0-9]
     time-unit ::= "days" | "weeks" | "months"
```

If time-unit is not present, then the time unit is years.

"""
* ^compositional = true
* ^content = #fragment
* #allages  "all ages"  "All age groups"
* #under20  "< 20"      "Less than 20 years in age"
* #20to39   "20 - 39"   "20 to 39 years in age"
*   #20to29 "20 - 29"   "20 to 29 years in age"
*   #30to39 "30 - 39"   "30 to 39 years in age"
* #40to59"  "40 - 59"   "40 to 59 years in age"
*   #40to49 "40 - 49"   "40 to 49 years in age"
*   #50to59 "50 - 59"   "50 to 59 years in age"
* #60to79"  "60 - 79"   "60 to 79 years in age"
*   #60to69 "60 - 59"   "60 to 69 years in age"
*   #70to79 "70 - 79"   "70 to 79 years in age"
* #80plus   "80+"       "80 or more years in age"

* #under19  "< 19"      "Less than 19 years in age"
* #19to44"  "19 - 44"   "19 to 44 years in age"
* #45to64"  "45 - 64"   "45 to 64 years in age"
* #65to84"  "65 - 84"   "65 to 84 years in age"
* #85plus   "85+"       "85 or more years in age"

* #under1   "< 1"       "Less than 1 year in age"
* #1to4     "1 - 4"     "1 to 4 years in age"
* #5to9     "5 - 9"     "5 to 9 years in age"
* #10to14   "10 - 14"   "10 to 14 years in age"
* #15to24   "15 - 24"   "15 to 24 years in age"
* #25to34   "25 - 34"   "25 to 34 years in age"
* #35to44   "35 - 44"   "35 to 44 years in age"
* #45to54   "45 - 54"   "45 to 54 years in age"
* #55to64   "55 - 64"   "55 to 64 years in age"
* #65plue   "65+"       "65 or more years in age"

ValueSet: DecadeAgeBrackets
Title: "Age Brackets By Decade"
Description: "A Value Set of age groups generally by decade except youth (under 20), or over 80, commonly used for stratification in public health dashboards"
* AgeBracket#under20
* AgeBracket#20to29
* AgeBracket#30to39
* AgeBracket#40to49
* AgeBracket#50to59
* AgeBracket#60to69
* AgeBracket#70to79
* AgeBracket#80plus

ValueSet: ScoreAgeBrackets
Title: "Age Brackets By Score (20)"
Description: "A Value Set of age groups in 20 year increments used in some public health dashboards"
* AgeBracket#under20
* AgeBracket#20to39
* AgeBracket#40to59
* AgeBracket#60to79
* AgeBracket#80plus



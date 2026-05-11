INSERT INTO body_systems (id, name, cfr_section, vbkb_slug, vbkb_url) OVERRIDING SYSTEM VALUE VALUES
  (1, 'Musculoskeletal System – Bones and Joints', '4.71a', 'spine', 'https://veteransbenefitskb.com/spine'),
  (2, 'Musculoskeletal System – Muscle Injuries', '4.73', 'msindex', 'https://veteransbenefitskb.com/msindex'),
  (3, 'Eye', '4.75', 'eyes', 'https://veteransbenefitskb.com/eyes'),
  (4, 'Ear', '4.87', 'ears', 'https://veteransbenefitskb.com/ears'),
  (5, 'Other Sense Organs – Smell and Taste', '4.87a', 'tastesmell', 'https://veteransbenefitskb.com/tastesmell'),
  (6, 'Infectious Diseases, Immune Disorders, and Nutritional Deficiencies', '4.88b', 'infect', 'https://veteransbenefitskb.com/infect');

SELECT setval(pg_get_serial_sequence('body_systems','id'), MAX(id)) FROM body_systems;

INSERT INTO cfr_sections (id, body_system_id, section_number, title, content_text, content_xml, source_url, effective_date) OVERRIDING SYSTEM VALUE VALUES
  (1, 1, '4.40', '4.40 Functional loss.', '§ 4.40 Functional loss.
Disability of the musculoskeletal system is primarily the inability, due to damage or infection in parts of the system, to perform the normal working movements of the body with normal excursion, strength, speed, coordination and endurance. It is essential that the examination on which ratings are based adequately portray the anatomical damage, and the functional loss, with respect to all these elements. The functional loss may be due to absence of part, or all, of the necessary bones, joints and muscles, or associated structures, or to deformity, adhesions, defective innervation, or other pathology, or it may be due to pain, supported by adequate pathology and evidenced by the visible behavior of the claimant undertaking the motion. Weakness is as important as limitation of motion, and a part which becomes painful on use must be regarded as seriously disabled. A little used part of the musculoskeletal system may be expected to show evidence of disuse, either through atrophy, the condition of the skin, absence of normal callosity or the like.', '<DIV8 N="4.40" TYPE="SECTION" hierarchy_metadata="{&quot;path&quot;:&quot;/on/_SUBSTITUTE_DATE_/title-38/section-4.40&quot;,&quot;citation&quot;:&quot;38 CFR 4.40&quot;}">
<HEAD>§ 4.40 Functional loss.</HEAD>
<P>Disability of the musculoskeletal system is primarily the inability, due to damage or infection in parts of the system, to perform the normal working movements of the body with normal excursion, strength, speed, coordination and endurance. It is essential that the examination on which ratings are based adequately portray the anatomical damage, and the functional loss, with respect to all these elements. The functional loss may be due to absence of part, or all, of the necessary bones, joints and muscles, or associated structures, or to deformity, adhesions, defective innervation, or other pathology, or it may be due to pain, supported by adequate pathology and evidenced by the visible behavior of the claimant undertaking the motion. Weakness is as important as limitation of motion, and a part which becomes painful on use must be regarded as seriously disabled. A little used part of the musculoskeletal system may be expected to show evidence of disuse, either through atrophy, the condition of the skin, absence of normal callosity or the like.</P>
</DIV8>

', 'https://www.ecfr.gov/current/title-38/part-4/section-4.40', '2026-04-06'),
  (2, 1, '4.41', '4.41 History of injury.', '§ 4.41 History of injury.
In considering the residuals of injury, it is essential to trace the medical-industrial history of the disabled person from the original injury, considering the nature of the injury and the attendant circumstances, and the requirements for, and the effect of, treatment over past periods, and the course of the recovery to date. The duration of the initial, and any subsequent, period of total incapacity, especially periods reflecting delayed union, inflammation, swelling, drainage, or operative intervention, should be given close attention. This consideration, or the absence of clear cut evidence of injury, may result in classifying the disability as not of traumatic origin, either reflecting congenital or developmental etiology, or the effects of healed disease.', '<DIV8 N="4.41" TYPE="SECTION" hierarchy_metadata="{&quot;path&quot;:&quot;/on/_SUBSTITUTE_DATE_/title-38/section-4.41&quot;,&quot;citation&quot;:&quot;38 CFR 4.41&quot;}">
<HEAD>§ 4.41 History of injury.</HEAD>
<P>In considering the residuals of injury, it is essential to trace the medical-industrial history of the disabled person from the original injury, considering the nature of the injury and the attendant circumstances, and the requirements for, and the effect of, treatment over past periods, and the course of the recovery to date. The duration of the initial, and any subsequent, period of total incapacity, especially periods reflecting delayed union, inflammation, swelling, drainage, or operative intervention, should be given close attention. This consideration, or the absence of clear cut evidence of injury, may result in classifying the disability as not of traumatic origin, either reflecting congenital or developmental etiology, or the effects of healed disease.</P>
</DIV8>

', 'https://www.ecfr.gov/current/title-38/part-4/section-4.41', '2026-04-06'),
  (3, 1, '4.42', '4.42 Complete medical examination of injury cases.', '§ 4.42 Complete medical examination of injury cases.
The importance of complete medical examination of injury cases at the time of first medical examination by the Department of Veterans Affairs cannot be overemphasized. When possible, this should include complete neurological and psychiatric examination, and other special examinations indicated by the physical condition, in addition to the required general and orthopedic or surgical examinations. When complete examinations are not conducted covering all systems of the body affected by disease or injury, it is impossible to visualize the nature and extent of the service connected disability. Incomplete examination is a common cause of incorrect diagnosis, especially in the neurological and psychiatric fields, and frequently leaves the Department of Veterans Affairs in doubt as to the presence or absence of disabling conditions at the time of the examination.', '<DIV8 N="4.42" TYPE="SECTION" hierarchy_metadata="{&quot;path&quot;:&quot;/on/_SUBSTITUTE_DATE_/title-38/section-4.42&quot;,&quot;citation&quot;:&quot;38 CFR 4.42&quot;}">
<HEAD>§ 4.42 Complete medical examination of injury cases.</HEAD>
<P>The importance of complete medical examination of injury cases at the time of first medical examination by the Department of Veterans Affairs cannot be overemphasized. When possible, this should include complete neurological and psychiatric examination, and other special examinations indicated by the physical condition, in addition to the required general and orthopedic or surgical examinations. When complete examinations are not conducted covering all systems of the body affected by disease or injury, it is impossible to visualize the nature and extent of the service connected disability. Incomplete examination is a common cause of incorrect diagnosis, especially in the neurological and psychiatric fields, and frequently leaves the Department of Veterans Affairs in doubt as to the presence or absence of disabling conditions at the time of the examination.</P>
</DIV8>

', 'https://www.ecfr.gov/current/title-38/part-4/section-4.42', '2026-04-06'),
  (4, 1, '4.43', '4.43 Osteomyelitis.', '§ 4.43 Osteomyelitis.
Chronic, or recurring, suppurative osteomyelitis, once clinically identified, including chronic inflammation of bone marrow, cortex, or periosteum, should be considered as a continuously disabling process, whether or not an actively discharging sinus or other obvious evidence of infection is manifest from time to time, and unless the focus is entirely removed by amputation will entitle to a permanent rating to be combined with other ratings for residual conditions, however, not exceeding amputation ratings at the site of election.', '<DIV8 N="4.43" TYPE="SECTION" hierarchy_metadata="{&quot;path&quot;:&quot;/on/_SUBSTITUTE_DATE_/title-38/section-4.43&quot;,&quot;citation&quot;:&quot;38 CFR 4.43&quot;}">
<HEAD>§ 4.43 Osteomyelitis.</HEAD>
<P>Chronic, or recurring, suppurative osteomyelitis, once clinically identified, including chronic inflammation of bone marrow, cortex, or periosteum, should be considered as a continuously disabling process, whether or not an actively discharging sinus or other obvious evidence of infection is manifest from time to time, and unless the focus is entirely removed by amputation will entitle to a permanent rating to be combined with other ratings for residual conditions, however, not exceeding amputation ratings at the site of election.</P>
</DIV8>

', 'https://www.ecfr.gov/current/title-38/part-4/section-4.43', '2026-04-06'),
  (5, 1, '4.44', '4.44 The bones.', '§ 4.44 The bones.
The osseous abnormalities incident to trauma or disease, such as malunion with deformity throwing abnormal stress upon, and causing malalignment of joint surfaces, should be depicted from study and observation of all available data, beginning with inception of injury or disease, its nature, degree of prostration, treatment and duration of convalescence, and progress of recovery with development of permanent residuals. With shortening of a long bone, some degree of angulation is to be expected; the extent and direction should be brought out by X-ray and observation. The direction of angulation and extent of deformity should be carefully related to strain on the neighboring joints, especially those connected with weight-bearing.', '<DIV8 N="4.44" TYPE="SECTION" hierarchy_metadata="{&quot;path&quot;:&quot;/on/_SUBSTITUTE_DATE_/title-38/section-4.44&quot;,&quot;citation&quot;:&quot;38 CFR 4.44&quot;}">
<HEAD>§ 4.44 The bones.</HEAD>
<P>The osseous abnormalities incident to trauma or disease, such as malunion with deformity throwing abnormal stress upon, and causing malalignment of joint surfaces, should be depicted from study and observation of all available data, beginning with inception of injury or disease, its nature, degree of prostration, treatment and duration of convalescence, and progress of recovery with development of permanent residuals. With shortening of a long bone, some degree of angulation is to be expected; the extent and direction should be brought out by X-ray and observation. The direction of angulation and extent of deformity should be carefully related to strain on the neighboring joints, especially those connected with weight-bearing.</P>
</DIV8>

', 'https://www.ecfr.gov/current/title-38/part-4/section-4.44', '2026-04-06'),
  (6, 1, '4.45', '4.45 The joints.', '§ 4.45 The joints.
As regards the joints the factors of disability reside in reductions of their normal excursion of movements in different planes. Inquiry will be directed to these considerations:
(a) Less movement than normal (due to ankylosis, limitation or blocking, adhesions, tendon-tie-up, contracted scars, etc.).
(b) More movement than normal (from flail joint, resections, nonunion of fracture, relaxation of ligaments, etc.).
(c) Weakened movement (due to muscle injury, disease or injury of peripheral nerves, divided or lengthened tendons, etc.).
(d) Excess fatigability.
(e) Incoordination, impaired ability to execute skilled movements smoothly.
(f) Pain on movement, swelling, deformity or atrophy of disuse. Instability of station, disturbance of locomotion, interference with sitting, standing and weight-bearing are related considerations. For the purpose of rating disability from arthritis, the shoulder, elbow, wrist, hip, knee, and ankle are considered major joints; multiple involvements of the interphalangeal, metacarpal and carpal joints of the upper extremities, the interphalangeal, metatarsal and tarsal joints of the lower extremities, the cervical vertebrae, the dorsal vertebrae, and the lumbar vertebrae, are considered groups of minor joints, ratable on a parity with major joints. The lumbosacral articulation and both sacroiliac joints are considered to be a group of minor joints, ratable on disturbance of lumbar spine functions.', '<DIV8 N="4.45" TYPE="SECTION" hierarchy_metadata="{&quot;path&quot;:&quot;/on/_SUBSTITUTE_DATE_/title-38/section-4.45&quot;,&quot;citation&quot;:&quot;38 CFR 4.45&quot;}">
<HEAD>§ 4.45 The joints.</HEAD>
<P>As regards the joints the factors of disability reside in reductions of their normal excursion of movements in different planes. Inquiry will be directed to these considerations:</P>
<P>(a) Less movement than normal (due to ankylosis, limitation or blocking, adhesions, tendon-tie-up, contracted scars, etc.).</P>
<P>(b) More movement than normal (from flail joint, resections, nonunion of fracture, relaxation of ligaments, etc.).</P>
<P>(c) Weakened movement (due to muscle injury, disease or injury of peripheral nerves, divided or lengthened tendons, etc.).</P>
<P>(d) Excess fatigability.</P>
<P>(e) Incoordination, impaired ability to execute skilled movements smoothly.</P>
<P>(f) Pain on movement, swelling, deformity or atrophy of disuse. Instability of station, disturbance of locomotion, interference with sitting, standing and weight-bearing are related considerations. For the purpose of rating disability from arthritis, the shoulder, elbow, wrist, hip, knee, and ankle are considered major joints; multiple involvements of the interphalangeal, metacarpal and carpal joints of the upper extremities, the interphalangeal, metatarsal and tarsal joints of the lower extremities, the cervical vertebrae, the dorsal vertebrae, and the lumbar vertebrae, are considered groups of minor joints, ratable on a parity with major joints. The lumbosacral articulation and both sacroiliac joints are considered to be a group of minor joints, ratable on disturbance of lumbar spine functions.</P>
</DIV8>

', 'https://www.ecfr.gov/current/title-38/part-4/section-4.45', '2026-04-06');

SELECT setval(pg_get_serial_sequence('cfr_sections','id'), MAX(id)) FROM cfr_sections;

INSERT INTO vbkb_articles (id, slug, title, body_system_id, intro_markdown, pyramiding_notes, presumptive_notes, important_notes, full_markdown, source_url, scraped_at) OVERRIDING SYSTEM VALUE VALUES
  (1, 'adt', 'Secondary Conditions Due to Alcohol, Drugs, or Tobacco — Veterans Benefits Knowledge Base', NULL, '[Categories](https://www.veteransbenefitskb.com/alcohol-drugs-tobacco)

\> [Death & Survivor Benefits](https://veteransbenefitskb.com/#ds)

\> [Education &](https://veteransbenefitskb.com/#ee) [Employment](https://veteransbenefitskb.com/#ee)

\> [Health care](https://veteransbenefitskb.com/#healthcare)

\> [Housing](https://veteransbenefitskb.com/#housing)

\> [Miscellaneous](https://veteransbenefitskb.com/#misc)

\> [VA Disability Compensation](https://veteransbenefitskb.com/#va)

\> [VA Pension](https://veteransbenefitskb.com/#pension)

If you use alcohol, drugs, or tobacco to self-medicate you may be able to [Claim](https://veteransbenefitskb.com/vaclaim) associated disabilities on a [Secondary basis](https://veteransbenefitskb.com/claimtype#secondary).

**IMPORTANT NOTES:**

- You **CANNOT** be service-connected for alcoholism, drug abuse, or tobacco use as a stand-alone condition; It **MUST** be secondary to a service-connected disability. If the VA does grant, then the condition will be lumped with the primary condition. For example: [PTSD](https://www.veteransbenefitskb.com/mental) with cannabis and alcohol abuse disorder.

  - This lumping with the primary condition does **NOT** in and of itself change how the VA evaluates the primary condition.

* * *', NULL, NULL, NULL, '[0](https://www.veteransbenefitskb.com/cart)

# **Secondary Conditions Due to Alcohol, Drugs or Tobacco**

![Green bottles hanging on a black metal railing in front of a yellow wall with a blue window and a partially visible brown door.](https://images.squarespace-cdn.com/content/v1/66c515a3e8305f0f79e8b680/1737158805116-L3ZCG46JVAMTX7QNKOUR/unsplash-image-S3iBRUzLuEE.jpg)

[![Search bar with a magnifying glass icon and a placeholder text ''Search''](https://images.squarespace-cdn.com/content/v1/66c515a3e8305f0f79e8b680/bd22f10b-2167-4509-9215-2b49d4a4e22f/search3.png)](https://cse.google.com/cse?cx=8392d3f710df0427c)

[Featured Articles](https://www.veteransbenefitskb.com/alcohol-drugs-tobacco)

[\> Master Condition List](https://veteransbenefitskb.com/master)

[\> Federal Benefits List by Combined Ratings](https://veteransbenefitskb.com/combinedbenefits)

[\> Insider Insight into VBA Claim Processing](https://veteransbenefitskb.com/insight)

[\> Rating Schedule Index](https://veteransbenefitskb.com/ratingsindex)

[\> Filing a VA Disability Claim](https://veteransbenefitskb.com/vaclaim)

[\> Filing an Appeal](https://veteransbenefitskb.com/appeals)

* * *

[Categories](https://www.veteransbenefitskb.com/alcohol-drugs-tobacco)

\> [Death & Survivor Benefits](https://veteransbenefitskb.com/#ds)

\> [Education &](https://veteransbenefitskb.com/#ee) [Employment](https://veteransbenefitskb.com/#ee)

\> [Health care](https://veteransbenefitskb.com/#healthcare)

\> [Housing](https://veteransbenefitskb.com/#housing)

\> [Miscellaneous](https://veteransbenefitskb.com/#misc)

\> [VA Disability Compensation](https://veteransbenefitskb.com/#va)

\> [VA Pension](https://veteransbenefitskb.com/#pension)

If you use alcohol, drugs, or tobacco to self-medicate you may be able to [Claim](https://veteransbenefitskb.com/vaclaim) associated disabilities on a [Secondary basis](https://veteransbenefitskb.com/claimtype#secondary).

**IMPORTANT NOTES:**

- You **CANNOT** be service-connected for alcoholism, drug abuse, or tobacco use as a stand-alone condition; It **MUST** be secondary to a service-connected disability. If the VA does grant, then the condition will be lumped with the primary condition. For example: [PTSD](https://www.veteransbenefitskb.com/mental) with cannabis and alcohol abuse disorder.

  - This lumping with the primary condition does **NOT** in and of itself change how the VA evaluates the primary condition.

* * *

## **Willful Misconduct**

If the VA determines your use of alcohol, drugs, or tobacco was _willful misconduct_, any resultant disabilities are **NOT** eligible for service-connection!

* * *

### Alcohol

Drinking alcohol (if legal due to age and locale) is **NOT** willful misconduct.

**HOWEVER**, if you drink to become intoxicated **AND** _while intoxicated_ hurt yourself or die, the VA **WILL** consider it to be willful misconduct.

The most common example of this would be injuries sustained from an accident/incident while drunk driving. Don''t drink and drive!

* * *

### Drugs

If you use drugs to enjoy/experience their effects **AND** the usage results in hurting yourself or death, the VA **WILL** consider willful misconduct.

## **Alcoholism**

The effects of drinking too much over time **CAN** be serviced-connected if the reason for the excessive drinking is due to a service-connected disability.

This can include drinking to deal with one’s [PTSD](https://veteransbenefitskb.com/mental), as well as to escape chronic physical pain.

Common disabilities of alcoholism involve [Damage to the liver](https://veteransbenefitskb.com/digsystem#7312).

**IMPORTANT NOTE:**

- Personality disorders **CANNOT** be the primary service-connected disability in awards of secondary service-connection for alcoholism.


[Return to top](https://www.veteransbenefitskb.com/alcohol-drugs-tobacco#top)

## **Drug Abuse**

Drug abuse according to the VA is:

- The use of illegal drugs (including the use of prescription drugs legally or illicitly obtained);

- The intentional use of prescription or non-prescription drugs for a purpose other than the medically-intended use; or

- The use of substances other than alcohol to enjoy their intoxicating effects.


The Veteran can be service-connected for conditions that developed due to drug abuse **ONLY IF** the drug abuse was used as a way to manage the symptoms of a service-connected disability.

**IMPORTANT NOTE:**

- Any secondary conditions that occurred from drug abuse _during_ service **CANNOT** be service-connected, **UNLESS** there is evidence it was in response to managing a condition that was service-connected after separation.


[Return to top](https://www.veteransbenefitskb.com/alcohol-drugs-tobacco#top)

## **Tobacco**

The VA **NO** longer awards primary service-connection for tobacco usage.

**BUT**, the Veteran can still get service connection for associated [Cancers](https://veteransbenefitskb.com/airsystem#6819) and [Lung conditions](https://veteransbenefitskb.com/airsystem) if:

- Use of tobacco products was a result of dealing with a service-connected disability (IE the Veteran smoked to help reduce their [Anxiety](https://veteransbenefitskb.com/mental)); **AND**

- The tobacco related condition would not be as severe or have existed at all if the Veteran had not started using due to their service-connected disability.


**IMPORTANT NOTES:**

- If the Veteran was a smoker before or during their service _unrelated_ to their primary service-connected issue, and continued to smoke after their service, then the VA will **NOT** award service-connection for tobacco usage!

- If the VA previously awarded service-connection for tobacco usage on a _primary basis_; secondary service-connection can **NO** longer be established for issues related to that usage.


[Return to top](https://www.veteransbenefitskb.com/alcohol-drugs-tobacco#top)

## **References**

- [38 CFR § 3.300 Claims based on the effects of tobacco products](https://www.law.cornell.edu/cfr/text/38/3.300)

- [38 CFR § 3.301 Line of duty and misconduct](https://www.law.cornell.edu/cfr/text/38/3.301)

- [38 CFR § 3.310 Disabilities that are proximately due to, or aggravated by, service-connected disease or injury](https://www.law.cornell.edu/cfr/text/38/3.310)

- [M21-1, Part X, Subpart iv, Chapter 1, Section C - Willful Misconduct and Line of Duty (LOD)](https://www.knowva.ebenefits.va.gov/system/templates/selfservice/va_ssnew/help/customer/locale/en-US/portal/554400000001018/content/554400000177987/M21-1-Part-X-Subpart-iv-Chapter-1-Section-C-Willful-Misconduct-and-Line-of-Duty-LOD)

- [M21-1, Part X, Subpart iv, Chapter 1, Section D - Disability or Death from Use of Alcohol, Drugs, or Tobacco Products](https://www.knowva.ebenefits.va.gov/system/templates/selfservice/va_ssnew/help/customer/locale/en-US/portal/554400000001018/content/554400000177988/M21-1-Part-X-Subpart-iv-Chapter-1-Section-D-Disability-or-Death-from-Use-of-Alcohol-Drugs-or-Tobacco-Products#3)

- [VAOPGCPREC 06-03, Oct 28, 2003, Service Connection for Cause of Disability or Death](https://www.knowva.ebenefits.va.gov/system/templates/selfservice/va_ssnew/help/customer/locale/en-US/portal/554400000001018/content/554400000043874/VAOPGCPREC-06-03-Oct-28-2003-Service-Connection-for-Cause-of-Disability-or-Death)


[Return to top](https://www.veteransbenefitskb.com/alcohol-drugs-tobacco#top)

­

­', 'https://veteransbenefitskb.com/adt', '2026-04-08 01:08:10.641971+00:00'),
  (2, 'airsystem', 'Rating Schedule for the Respiratory System', NULL, '[Categories](https://www.veteransbenefitskb.com/respiratory-system)

\> [Death & Survivor Benefits](https://veteransbenefitskb.com/#ds)

\> [Education &](https://veteransbenefitskb.com/#ee) [Employment](https://veteransbenefitskb.com/#ee)

\> [Health care](https://veteransbenefitskb.com/#healthcare)

\> [Housing](https://veteransbenefitskb.com/#housing)

\> [Miscellaneous](https://veteransbenefitskb.com/#misc)

\> [VA Disability Compensation](https://veteransbenefitskb.com/#va)

\> [VA Pension](https://veteransbenefitskb.com/#pension)

From the nose and sinuses to the lungs.

* * *', NULL, NULL, NULL, '[0](https://www.veteransbenefitskb.com/cart)

# **Rating Schedule for the Respiratory System**

![Attic model of human lungs showing bronchial tubes and alveoli with detailed internal structures.](https://images.squarespace-cdn.com/content/v1/66c515a3e8305f0f79e8b680/1737135591833-FYDVL5TNI9K2KF6GEVIH/unsplash-image-Pw9aFhc92P8.jpg)

[![Search bar with a magnifying glass icon](https://images.squarespace-cdn.com/content/v1/66c515a3e8305f0f79e8b680/bd22f10b-2167-4509-9215-2b49d4a4e22f/search3.png)](https://cse.google.com/cse?cx=8392d3f710df0427c)

[Featured Articles](https://www.veteransbenefitskb.com/respiratory-system)

[\> Master Condition List](https://veteransbenefitskb.com/master)

[\> Federal Benefits List by Combined Ratings](https://veteransbenefitskb.com/combinedbenefits)

[\> Insider Insight into VBA Claim Processing](https://veteransbenefitskb.com/insight)

[\> Rating Schedule Index](https://veteransbenefitskb.com/ratingsindex)

[\> Filing a VA Disability Claim](https://veteransbenefitskb.com/vaclaim)

[\> Filing an Appeal](https://veteransbenefitskb.com/appeals)

* * *

[Categories](https://www.veteransbenefitskb.com/respiratory-system)

\> [Death & Survivor Benefits](https://veteransbenefitskb.com/#ds)

\> [Education &](https://veteransbenefitskb.com/#ee) [Employment](https://veteransbenefitskb.com/#ee)

\> [Health care](https://veteransbenefitskb.com/#healthcare)

\> [Housing](https://veteransbenefitskb.com/#housing)

\> [Miscellaneous](https://veteransbenefitskb.com/#misc)

\> [VA Disability Compensation](https://veteransbenefitskb.com/#va)

\> [VA Pension](https://veteransbenefitskb.com/#pension)

From the nose and sinuses to the lungs.

* * *

## **GENERAL PYRAMIDING NOTES:**

- Under this schedule the Veteran **CANNOT** receive multiple individual ratings for conditions _besides_ in the following cases:

  - Diseases of the Nose & Sinuses

  - Diseases of the Throat
- Lung cancers or tumors, **CANNOT** be given separate ratings if there is already a rating for respiratory condition ( **EXCEPT** nose, sinuses, and throat conditions).


Otherwise the Veteran can only have one individual respiratory rating. I.E. either a rating for sleep apnea **OR** asthma - You **CANNOT** separate ratings for both!

- If the secondary respiratory condition affects the Veteran''s overall health _significantly_, then the rating for the dominant respiratory condition can be increased to the next higher rating in the schedule (not just with an added 10%).

  - **HOWEVER**, the rater **CANNOT** consider subjective symptoms _or_ symptoms that overlap between the respiratory conditions.
- Separate ratings for Sinusitis and Rhinitis **ARE ALLOWED**! You just can''t get say 2 ratings for different types of sinusitis or rhinitis.


## **Table of Contents**

- [Evaluation Vocabulary to Know](https://www.veteransbenefitskb.com/respiratory-system#vocabulary)

- [General Rating Schedule](https://www.veteransbenefitskb.com/respiratory-system#general)

- [Obstructive Lung Diseases](https://www.veteransbenefitskb.com/respiratory-system#obstructive)

- [Restrictive Lung Diseases](https://www.veteransbenefitskb.com/respiratory-system#restrictive)

- [Bacterial Infections of the Lungs](https://www.veteransbenefitskb.com/respiratory-system#bacterial)

- [Fungal Infections of the Lungs (Mycotic Lung Diseases)](https://www.veteransbenefitskb.com/respiratory-system#fungal)

- [Nose and Sinuses](https://www.veteransbenefitskb.com/respiratory-system#nose)

- [Throat](https://www.veteransbenefitskb.com/respiratory-system#throat)

- [Miscellaneous Conditions](https://www.veteransbenefitskb.com/respiratory-system#misce)

- [Cancers and Tumors](https://www.veteransbenefitskb.com/respiratory-system#cancers)

- [Disability Benefits Questionnaire (DBQs)](https://www.veteransbenefitskb.com/respiratory-system#dbq)

- [Having Trouble Finding Your Condition?](https://www.veteransbenefitskb.com/respiratory-system#trouble)

- [References](https://www.veteransbenefitskb.com/respiratory-system#ref)

- [Rating Schedule Index Navigation](https://www.veteransbenefitskb.com/respiratory-system#nav)


[Return to top](https://www.veteransbenefitskb.com/respiratory-system#top)

## **Evaluation Vocabulary to Know**

- Diffusion Capacity of the Lung for Carbon Monoxide by the Single Breath Method (DLCO (SB)). In addition to testing the function of the airways, this test also measures the ability of the lungs to absorb gasses. After inhaling a certain amount of carbon monoxide, the test measures how much is absorbed by the lungs into the blood stream by measuring how much is left in the air that is exhaled.

  - Results of this test would be a percentage of how you would compare to a healthy person. 80% and above is considered normal.
- Exercise test - determines how much oxygen your body uses when functioning at its maximum capacity.

  - Results of this test look like: _XX ml/kg/min_.
- Heart test - if the heart is involved in the respiratory condition a echocardiogram (ECG or EKG), cardiac catheterization, or other tests of the heart may be done.

- Spirometry - determines the functioning of the lungs and the airways leading to the lungs. This test should be done **BEFORE** and **AFTER** you take medication!


**IMPORTANT NOTE:**

- In terms of rating - if this test is used to evaluate conditions under diagnostic codes (DC) 6600, 6603, 6604, 6825-6833, and 6840-6845, then the results with the **AFTER** medication results will be used (if medication is used); **UNLESS** the medication made your results worse!


The following are results that are generated from spirometry tests:

- Forced Vital Capacity (FVC) - the total maximum amount of air that you can exhale after taking a full breath.

- Forced Expiratory Volume in 1 second (FEV-1) - the maximum amount of air that you can blow out in 1 second.

  - Results of this measurement would be a percentage of how you would compare to a healthy person. 70% and above is considered normal.
- Ratio of FEV-1 to Forced Vital Capacity (FVC) - determined by dividing the FEV-1 by the FVC.

  - Results of this measurement would be a percentage of how you would compare to a healthy person. 75% and above is considered normal. However, if the Veteran''s FEV-1 or FVC are valued at over 1 (better than what is considered normal) this measure **CANNOT** be used to assign a rating.
- Flow-Volume Loop - Shows lung capacity and the ability to move air through the airways.

  - Results are presented as a graph. From which, an examiner can determine if there is an obstruction that is blocking airflow. Be it an upper airway, extrathoracic, or intrathoracic obstruction.

[Return to top](https://www.veteransbenefitskb.com/respiratory-system#top)

## **General Rating Schedule**

A lot of respiratory conditions are rated under the general schedule.

**IMPORTANT NOTES:**

- The Pulmonary Function Test (PFT) provides several readings; The rater will base the rating on whichever reading most closely resembles the extent of the Veteran''s disability, as _marked by the examiner_. Which may not necessarily be the one that provides the highest rating!

  - For example: FEV-1 would rate 10% and FEV-1/FVC would rate 0%, and the examiner notes that FEV-1/FVC best represents the Veteran. The rater would go with the 0% _instead_ of the 10% evaluation.

  - **EXCEPTION**: If the Veteran meets the criteria for an evaluation under the [Heart test](https://veteransbenefitskb.com/airsystem#heart) _or_ [Miscellaneous](https://veteransbenefitskb.com/airsystem#misc) sub-schedules, the rater will assign an 100% evaluation.
- In the rare event FEV-1 **AND** FVC are greater than 100, an evaluation based off of _FEV-1/FVC_, **CANNOT** be more than 0%. ( [M21 V.iii.4.A.1.f](https://www.knowva.ebenefits.va.gov/system/templates/selfservice/va_ssnew/help/customer/locale/en-US/portal/554400000001018/content/554400000180967/M21-1-Part-V-Subpart-iii-Chapter-4-Section-A-Respiratory-Conditions#1f))


* * *

### Exercise Test

| Rating | Description |
| --- | --- |
| 60% | 15-20 ml/kg/min with the limitation caused by a heart or respiratory condition. |
| 100% | Less than 15 ml/kg/min with the limitation caused by a heart or respiratory condition. |

* * *

### Diffusing Capacity of the Lung - Single Breath (DLCO) (SB)

| Rating | Description |
| --- | --- |
| 10% | 66-80%. |
| 30% | 56-65%. |
| 60% | 40-55%. |
| 100% | Less than 40%. |

* * *

### FEV-1

| Rating | Description |
| --- | --- |
| 10% | 71-80%. |
| 30% | 56-70%. |
| 60% | 40-55%. |
| 100% | Less than 40%. |

* * *

### FEV-1/FVC

| Rating | Description |
| --- | --- |
| 10% | 71-80%. |
| 30% | 56-70%. |
| 60% | 40-55%. |
| 100% | Less than 40%. |

* * *

### Heart Test

| Rating | Description |
| --- | --- |
| 100% | Right-sided heart failure (Cor pulmonale). |
| 100% | Abnormal enlargement of the cardiac muscle surrounding the right ventricle (Right ventricular hypertrophy). |
| 100% | High blood pressure that affects arteries in the lungs and in the heart (Pulmonary hypertension). |

* * *

### Miscellaneous

| Rating | Description |
| --- | --- |
| 100% | Requires use of oxygen therapy at home. |
| 100% | 1 or more episodes of respiratory failure. |

[Return to top](https://www.veteransbenefitskb.com/respiratory-system#top)

## **Obstructive Lung Diseases**

Diseases that block the airways.

* * *

### 6600 Chronic Bronchitis

Swelling of the bronchi in the lungs.

**PRESUMPTIVE CONDITION:**

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits); or

- If exposed to [Lewisite/Mustard gas](https://www.veteransbenefitskb.com/mustardgas).


Rated under the [General Rating Schedule](https://veteransbenefitskb.com/airsystem#general).

* * *

### 6601 Bronchiectasis

When part of the bronchial tree becomes enlarged, obstructing airflow.

**PRESUMPTIVE CONDITION:**

- If diagnosed within a [Year](https://veteransbenefitskb.com/time) of separation **AND** the severity warranted at least a 10% evaluation within that time; or

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits).


Rated under the [General Rating Schedule](https://veteransbenefitskb.com/airsystem#general) _or_ on incapacitating episodes; Whichever gives the Veteran the highest rating.

* * *

#### Incapacitating Episodes

**IMPORTANT NOTE:**

- Incapacitating episode is defined as: requiring bed rest and treatment by a physician.


| Rating | Description |
| --- | --- |
| 10% | Intermittent productive cough with occasional infection requiring a course of antibiotics at least twice a year. |
| 30% | Episodes last 2-4 weeks, (combined) during a year, **OR**; daily coughing up mucus that contains pus or blood and that requires prolonged (lasting 4-6 weeks) antibiotic usage more than twice a year. |
| 60% | Episodes last 4-6 weeks, (combined) during a year, **OR**; near constant coughing up mucus containing pus or blood, with anorexia, weight loss, and requiring antibiotic usage almost continuously. |
| 100% | Episodes last at least 6 weeks, (combined) during a year. |

* * *

### 6602 Asthma

Swollen airways and bronchi.

Note:

- In the absence of clinical findings of asthma at time of examination, a verified history of asthmatic attacks must be of record.


The Veteran will receive a singular rating, based upon the below tables - whichever is highest.

**PRESUMPTIVE CONDITION:**

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits); or

- If exposed to [Lewisite/Mustard gas](https://www.veteransbenefitskb.com/mustardgas).


* * *

#### FEV-1

| Rating | Description |
| --- | --- |
| 10% | 71-80%. |
| 30% | 56-70%. |
| 60% | 40-55%. |
| 100% | Less than 40%. |

* * *

#### FEV-1/FVC

| Rating | Description |
| --- | --- |
| 10% | 71-80%. |
| 30% | 56-70%. |
| 60% | 40-55%. |
| 100% | Less than 40%. |

* * *

#### ER Visits

| Rating | Description |
| --- | --- |
| 60% | At least once monthly ER visits. |
| 100% | 2 or more episodes a week resulting in respiratory failure that require ER visits. |

* * *

#### Medications

| Rating | Description |
| --- | --- |
| 10% | Requires occasional use of a bronchodilator taken by mouth or inhaled. |
| 30% | Requires _daily_ use of a bronchodilator taken by mouth or inhaled **OR**; Requires occasional use of inhaled anti-inflammatory medication. |
| 60% | Requires use of steroids or immunosuppressive medications taken by mouth or injection 3 or more times a year. |
| 100% | Requires _daily_ **HIGH** doses of steroids _or_ immunosuppressive medications taken by mouth or injection. |

#### Examples of Medications

Bronchodilators:

- AccuNeb

- Albuterol

- Alupent

- Bambuterol

- Bitolterol mesylate

- Bricanyl

- Clenbuterol

- Fenoterol

- Foradil

- Formoterol

- Indacaterol

- Levalbuteral

- Levosalbutamol

- Maxair

- Metaproterenol

- Pirbuteral

- Procaterol

- Proventil

- Ritodrine

- Salbutamol

- Salmeterol

- Sereveut

- Symbicort

- Terbutaline

- Ventolin

- Xopenex


Immunosuppressive Medications:

- Decadron

- Deltasone

- Dexamethasone

- Medrol

- Orasone

- Pediapred

- Prednisone

- Prednisolone

- Prelone


Inhaled Anti-inflammatory Medications:

- Advair (Fluticasone and Salmeterol)

- Aerobid (Flunisolide)

- Asmanex

- Azmacort (triamcinolone)

- Dulera

- Flovent HFA (Flutocasone HFA)

- Ipratropium Bromide (Atrovent)

- Pulmicort

- Qvar

- Symbicort


* * *

### 6603 Pulmonary Emphysema

Disease that causes the tissues that maintain the shape of the lungs to die.

**PRESUMPTIVE CONDITION:**

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits); or

- If exposed to [Lewisite/Mustard gas](https://www.veteransbenefitskb.com/mustardgas).


Rated under the [General Rating Schedule](https://veteransbenefitskb.com/airsystem#general).

* * *

### 6604 Chronic Obstructive Pulmonary Disease (COPD)

Disease that results in difficulty breathing via blocked airways.

**PRESUMPTIVE CONDITION:**

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits); or

- If exposed to [Lewisite/Mustard gas](https://www.veteransbenefitskb.com/mustardgas).


Rated under the [General Rating Schedule](https://veteransbenefitskb.com/airsystem#general).

[Return to top](https://www.veteransbenefitskb.com/respiratory-system#top)

## **Restrictive Lung Diseases**

Diseases that limit how much the lungs can expand.

* * *

### 6840 Diaphragm Paralysis (Diaphragm Paresis)

- Rated under the [General Rating Schedule](https://veteransbenefitskb.com/airsystem#general).


* * *

### 6841 Injury of the Spinal Cord (Spinal Cord Injury with Respiratory Insufficiency)

- Rated under the [General Rating Schedule](https://veteransbenefitskb.com/airsystem#general).


* * *

### 6842 Kyphoscoliosis, Pectus Excavatum, Pectus Carinatum

- Kyphoscoliosis - abnormal curving of the spine both side-to-side & back-to-front.

- Pectus excavatum - ribs and sternum grow _inward_, causing a caved-in chest.

- Pectus carinatum - ribs and sternum grow _outward_ in the middle of the chest.


These conditions limit the space in which the lungs can expand.

- Rated under the [General Rating Schedule](https://veteransbenefitskb.com/airsystem#general).


* * *

### 6843 Collapsed Lung (Pneumothorax), Gunshot Wound to the Lungs (Traumatic Chest Wall Defect), Hernia, etc.

Conditions or defects of the chest wall that keep the lungs from inflating properly.

- Hernia - when the lung pushes through the chest wall.

- Collapsed lung (Pneumothorax)


**PYRAMIDING NOTES:**

- If the muscles in [Group XXI](https://veteransbenefitskb.com/tnmuscles#5321) are affected (they control breathing). The Veteran will receive a respiratory rating **OR** a muscular rating - whichever is higher.

- If other muscle groups are affected the Veteran can receive ratings for **BOTH**.


| Rating | Description |
| --- | --- |
| ?% | [General Rating Schedule.](https://veteransbenefitskb.com/airsystem#general) |
| 20% | Gunshot wound to the lung (minimum evaluation): If the bullet remains lodged in the lung; **OR** there is a crackly/wheezing sound in the lung; **OR** lower chest or the diaphragm **CANNOT** fully expand. |
| 100% | For 3 months after release from hospital. |

* * *

### 6844 Removal of a Lung (Lobectomy, Pneumonectomy, etc.)

- Rated under the [General Rating Schedule](https://veteransbenefitskb.com/airsystem#general).


* * *

### 6845 Chronic Pleural Effusion, Fibrosis, or Pleurisy with Empyema

- Effusion - excess fluid build up between the lung and the chest wall.

- Fibrosis - excess connective tissues build up between the lung and the chest wall.

- Pleurisy with empyema - pus builds up between the lung and the chest wall.


**PRESUMPTIVE CONDITION:**

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits).


| Rating | Description |
| --- | --- |
| ?% | [General Rating Schedule.](https://veteransbenefitskb.com/airsystem#general) |
| 100% | While active. |

* * *

### 6846 Sarcoidosis

When lumps form on the tissues surrounding the air sacs, bronchi and small blood vessels in the lungs.

**PRESUMPTIVE CONDITION:**

- If diagnosed within a [Year](https://veteransbenefitskb.com/time) of separation **AND** the severity warranted at least a 10% evaluation within that time; or

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits).


| Rating | Description |
| --- | --- |
| ?% | [General Rating Schedule.](https://veteransbenefitskb.com/airsystem#general) |
| 0% | Chronic hilar adenopathy or stable lung infiltrates without symptoms or physiologic impairment. |
| 30% | Pulmonary involvement with persistent symptoms requiring chronic low dose (maintenance) or intermittent corticosteroids. |
| 60% | Pulmonary involvement requiring systemic high dose (therapeutic) corticosteroids for control. |
| 100% | Right-sided heart failure (Cor pulmonale), **OR**; cardiac involvement with congestive heart failure, **OR**; progressive pulmonary disease with fever, night sweats, and weight loss despite treatment. |

[Return to top](https://www.veteransbenefitskb.com/respiratory-system#top)

## **Interstitial Lung Diseases**

Conditions that affect the tissues surrounding the air sacs in the lungs:

- 6825 Diffuse Interstitial Fibrosis (Interstitial Pneumonitis, Fibrosing Alveolitis)

- 6826 Desquamative Interstitial Pneumonitis

- 6827 Pulmonary Alveolar Proteinosis

- 6828 Eosinophilic Granuloma of the Lung

- 6829 Drug-induced Pulmonary Pneumonitis and Fibrosis

- 6830 Radiation-induced Pulmonary Pneumonitis and Fibrosis

- 6831 Hypersensitivity Pneumonitis (Extrinsic Allergic Alveolitis)

- 6832 Pneumoconiosis (Silicosis, Anthracosis, etc.)

- 6833 Asbestosis


**PRESUMPTIVE CONDITION:**

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits).

  - Conditions attributed to drugs, radiation, asbestos rebuts this presumptive.

They are all rated under the following schedule:

* * *

### Exercise Test

| Rating | Description |
| --- | --- |
| 60% | 15-20 ml/kg/min with the limitation caused by a heart or respiratory condition. |
| 100% | Less than 15 ml/kg/min with the limitation caused by a heart or respiratory condition. |

* * *

### DLCO (SB)

| Rating | Description |
| --- | --- |
| 10% | 66-80%. |
| 30% | 56-65%. |
| 60% | 40-55%. |
| 100% | Less than 40%. |

* * *

### FVC

| Rating | Description |
| --- | --- |
| 10% | 75-80%. |
| 30% | 65-74%. |
| 60% | 50-64%. |
| 100% | Less than 50%. |

* * *

### Heart Test

| Rating | Description |
| --- | --- |
| 100% | Right-sided heart failure (Cor pulmonale). |
| 100% | High blood pressure that affects arteries in the lungs and in the heart (Pulmonary hypertension). |

* * *

### Miscellaneous

| Rating | Description |
| --- | --- |
| 100% | Requires use of oxygen therapy at home. |

[Return to top](https://www.veteransbenefitskb.com/respiratory-system#top)

## **Bacterial Infections of the Lungs**

Bacterial infections of the lungs:

- 6515 Tuberculous Laryngitis

- 6730 All Other Active Pulmonary Tuberculoses

- 6731 Inactive Pulmonary Tuberculosis

- 6732 Tuberculous Pleurisy

- 6822 Actinomycosis

- 6823 Nocardiosis

- 6824 Chronic Lung Abscess


**PRESUMPTIVE CONDITION:**

- If diagnosed with _tuberculosis_ within 3 [Years](https://veteransbenefitskb.com/time) of separation.

- If diagnosed with _mycobacterium tuberculosis_ **AND** exposed to [Gulf environmental hazards](https://www.veteransbenefitskb.com/gulfill).


Rated under the following schedule:

| Rating | Description |
| --- | --- |
| ?% | If not active, it is rated under [General Rating Schedule or](https://veteransbenefitskb.com/airsystem#general) [Interstitial Lung Schedule. Depending on whichever schedule is most appropriate.](https://veteransbenefitskb.com/airsystem#6825) |
| 100% | While tuberculous is active and for 1 year after it goes inactive and treatment stops. |
| 100% | Active infection with persistent symptoms of fever, weight loss, night sweats, or coughing up large amounts of blood. |

[Return to top](https://www.veteransbenefitskb.com/respiratory-system#top)

## **Fungal Infections of the Lungs (Mycotic Lung Disease)**

Caused by inhaling fungal spores:

- 6834 Histoplasmosis

- 6835 Coccidioidomycosis

  - It can take several years before this condition manifests. As such, if you are filing a claim for this condition it is important that your records show service in the Southwest US, Central America, or South America.
- 6836 Blastomycosis

- 6837 Cryptococcosis

- 6838 Aspergillosis

- 6839 Mucormycosis


**PRESUMPTIVE CONDITION:**

- If diagnosed with _coccidoidomycosis_ within a [Year](https://veteransbenefitskb.com/time) of separation **AND** the severity warranted at least a 10% evaluation within that time.


They are all rated under the following schedule:

| Rating | Description |
| --- | --- |
| 0% | Healed and inactive mycotic lesions, no symptoms. |
| 30% | Chronic pulmonary mycosis with minimal symptoms such as occasional minor coughing up blood or productive cough. |
| 50% | Chronic pulmonary mycosis requiring suppressive therapy with no more than minimal symptoms such as occasional minor coughing up blood or productive cough. |
| 100% | Active infection with persistent symptoms of fever, weight loss, night sweats, or coughing up large amounts of blood. |

[Return to top](https://www.veteransbenefitskb.com/respiratory-system#top)

## **Nose and Sinuses**

* * *

### 6502 Deviation of the Nasal Septum (Nasal Septum Deviation)

When your nasal septum is significantly displaced to one side, making one nasal air passage smaller than the other.

**PYRAMIDING NOTE:**

- You **CANNOT** get separate evaluations for deviated septum and allergic _or_ bacterial rhinitis.


**IMPORTANT NOTE:**

- This condition can _only_ be rated **IF** it is a result of a traumatic injury!


| Rating | Description |
| --- | --- |
| 10% | 50% blockage of the nasal passage on both sides **OR** complete blockage on one side. |

* * *

### 6504 Loss of Part of the Nose/Significant Scarring

**PYRAMIDING NOTE:**

- If the Veteran would rate higher under [Disfiguring scars](https://veteransbenefitskb.com/skin#7800) they will be rated under that schedule _instead_ of this one.


| Rating | Description |
| --- | --- |
| 10% | If one nasal passage is exposed or other obvious disfigurement. |
| 30% | Both nasal passages are exposed. |

* * *

### 6510-6514 Chronic Sinusitis (Various)

When the sinuses swell, often caused by an infection or allergy.

**PYRAMIDING NOTES:**

- You **CAN** get separate evaluations for rhinitis and sinusitis!

- Sinus headaches **CANNOT** be awarded a separate evaluation and/or be rated under the [Migraine](https://veteransbenefitskb.com/cns#8100) schedule, even if the migraine schedule would give a higher evaluation! Typically a grant would look like ‘chronic sinusitis with sinus headaches’.

  - The exception to being rated under the migraine schedule would require the rater to exercise an [Extra scheduler](https://veteransbenefitskb.com/ratingsindex#extra) evaluation or a [BVA](https://veteransbenefitskb.com/appeals#bva) or higher judge exercising judicial judgement.

**PRESUMPTIVE CONDITION:**

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits).


NOTES:

- Remember, the sinusitis _must_ be chronic or it _cannot_ be rated. So if you get a diagnosis of ''acute'' that is **NOT** going to fly!

  - However, do know that a diagnosis of recurrent acute rhinosinusitis (RARS) **IS** a chronic condition, despite the name.
- Incapacitating episode means the Veteran required bed rest _and_ treatment by a physician.


All sinusitis conditions are rated the same. This includes:

- Ethmoid sinusitis

- Frontal sinusitis

- Maxillary sinusitis

- Pansinusitis

- Sphenoid sinusitis


Common Secondary Condition:

- [Obstructive Sleep Apnea](https://veteransbenefitskb.com/airsystem#6847)


| Rating | Description |
| --- | --- |
| 0% | Detected by X-ray only. |
| 10% | 1 or 2 incapacitating episodes a year, requiring prolonged (lasting 4 to 6 weeks) antibiotic treatment, **OR**; 3 to 6 non-incapacitating episodes a year characterized by headaches, pain, and purulent discharge or crusting. |
| 30% | 3 or more incapacitating episodes a year requiring prolonged (lasting 4 to 6 weeks) antibiotic treatment, **OR**; more than 6 non-incapacitating episodes a year characterized by headaches, pain, and purulent discharge or crusting. |
| 50% | Following radical surgery with chronic osteomyelitis, **OR**; near constant sinusitis characterized by headaches, pain and tenderness of affected sinus, and purulent discharge or crusting after repeated surgeries. |

* * *

### 6522 Allergic or Vasomotor Rhinitis

Swelling of the tissues lining the nasal passage caused by allergies or other environmental triggers.

**PYRAMIDING NOTE:**

- You **CAN** get separate evaluations for rhinitis and sinusitis!


**PRESUMPTIVE CONDITION:**

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits).


Common Secondary Condition:

- [Obstructive Sleep Apnea](https://veteransbenefitskb.com/airsystem#6847)


| Rating | Description |
| --- | --- |
| 10% | Without growths forming in the tissues (polyps), but with greater than 50% obstruction of nasal passage on both sides _or_ complete obstruction on 1 side. |
| 30% | With polyps. |

* * *

### 6523 Bacterial Rhinitis

Swelling of the tissues lining the nasal passage caused by a bacterial infection.

**PYRAMIDING NOTE:**

- You **CAN** get separate evaluations for rhinitis and sinusitis!


**PRESUMPTIVE CONDITION:**

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits).


| Rating | Description |
| --- | --- |
| 10% | With permanent hypertrophy of turbinates **AND** having greater than 50% obstruction of nasal passage on both sides _or_ complete obstruction on 1 side. |
| 50% | Rhinoscleroma. |

* * *

### 6524 Granulomatous Rhinitis

Swelling of the tissues lining the nasal passage with abnormal cell growths _not_ caused by bacteria.

**PRESUMPTIVE CONDITION:**

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits).


| Rating | Description |
| --- | --- |
| 20% | Granulomatous infection. |
| 100% | Wegener''s granulomatosis (lethal midline granuloma). |

[Return to top](https://www.veteransbenefitskb.com/respiratory-system#top)

## **Throat**

Made up of the pharynx, larynx and trachea.

* * *

### 6516 Chronic Laryngitis

Swelling of the larynx (lasting at least 3 months at a time).

**PRESUMPTIVE CONDITION:**

- If exposed to [Lewisite/Mustard gas](https://www.veteransbenefitskb.com/mustardgas).


| Rating | Description |
| --- | --- |
| 10% | Hoarseness, with swelling of vocal cords or laynx walls. |
| 30% | Hoarseness, with thickening or nodules of cords, polyps, submucous infiltration, or pre-cancerous tumors. |

* * *

### 6518 Removal of the Larynx (Laryngectomy)

| Rating | Description |
| --- | --- |
| ?% | Partial: Rated on residuals such a [Loss of speech,](https://veteransbenefitskb.com/airsystem#6519) [Laryngitis,](https://veteransbenefitskb.com/airsystem#6516) [Stenosis of the larynx, and/or](https://veteransbenefitskb.com/airsystem#6520) [Scarring.](https://veteransbenefitskb.com/skin#7800) |
| 100% | Total. Veteran is also entitled to [Special Monthly Compensation (SMC) for loss of use.](https://veteransbenefitskb.com/smc) |

* * *

### 6519 Loss of Organic Speech (Aphonia, Inability to Speak)

**IMPORTANT NOTE:**

- If the inability to speak is due to a [Mental disorder](https://veteransbenefitskb.com/mental) and not a physical (to include nerve based) reason it **CANNOT** be rated under this schedule!


NOTE:

- If the Veteran''s inability to speak comes and goes then they will be rated under [Chronic laryngitis](https://veteransbenefitskb.com/airsystem#6516).


| Rating | Description |
| --- | --- |
| 60% | Can speak, but not above a whisper. |
| 100% | Cannot speak at all. Veteran is also entitled to [Special Monthly Compensation (SMC) for loss of use.](https://veteransbenefitskb.com/smc) |

* * *

### 6520 Stenosis of the Larynx

Narrowing of the larynx.

NOTE:

- If the Veteran''s condition results in the chronic inability to speak it can be rated under [Aphonia](https://veteransbenefitskb.com/airsystem#6519) instead - if it results in a higher rating.


| Rating | Description |
| --- | --- |
| 10% | FEV-1 of 71-80%, with Flow-Volume Loop showing an upper airway obstruction. |
| 30% | FEV-1 of 56-70%, with Flow-Volume Loop showing an upper airway obstruction. |
| 60% | FEV-1 of 40-55%, with Flow-Volume Loop showing an upper airway obstruction. |
| 100% | FEV-1 less than 40%, with Flow-Volume Loop showing an upper airway obstruction, **OR**; requires a permanent tracheostomy. |

* * *

### 6521 Injuries of the Pharynx

| Rating | Description |
| --- | --- |
| 50% | Stricture or obstruction of pharynx or nasopharynx, **OR**; loss of the soft palate due to trauma, chemical burn, or granulomatous disease, **OR**; paralysis of soft palate with swallowing difficulty (nasal regurgitation) and speech impairment. |

[Return to top](https://www.veteransbenefitskb.com/respiratory-system#top)

## **Miscellaneous Conditions**

* * *

### 6817 Pulmonary Vascular Disease

Affects the blood vessels leading to and from the lungs.

| Rating | Description |
| --- | --- |
| ?% | [General Rating Schedule.](https://veteransbenefitskb.com/airsystem#general) |
| 0% | Asymptomatic, following resolution of pulmonary thromboembolism. |
| 30% | Symptomatic, following resolution of acute pulmonary embolism. |
| 60% | Chronic pulmonary thromboembolism requiring anticoagulant therapy, **OR**; following inferior vena cava surgery without evidence of pulmonary hypertension or right ventricular dysfunction. |
| 100% | Primary pulmonary hypertension, **OR**; chronic pulmonary thromboembolism with evidence of pulmonary hypertension, right ventricular hypertrophy, or cor pulmonale, **OR**; pulmonary hypertension secondary to other obstructive disease of pulmonary arteries or veins with evidence of right ventricular hypertrophy or cor pulmonale. |

* * *

### Upper Airway Resistance Syndrome (UARS)

Represents a progression toward the potential development of sleep apnea, caused by snoring.

However, UARS, in and of itself, does **NOT** meet the criteria of sleep-disordered breathing that defines sleep apnea and is **NOT** considered a ratable disability for compensation purposes.

If you have a diagnosis for UARS, you should wait on submitting a [Claim](https://veteransbenefitskb.com/vaclaim) till/if you get a diagnosis of sleep apnea.

* * *

### 6847 Sleep Apnea (SA, Obstructive, Central, Mixed)

When you stop breathing while you sleep or your breathing becomes insufficient leading to low blood oxygen levels.

**IMPORTANT NOTES:**

- The VA **MUST** have a sleep study! Otherwise they **CANNOT** grant service-connection.

  - Home sleep studies _are_ acceptable if:

    - It has been clinically determined that the Veteran can be appropriately evaluated by a home sleep study; and

    - A competent medical provider has evaluated the results.
- The Veteran only needs to be prescribed a CPAP machine to rate 50%. While it would be a good idea to use it, for your health and all. It is **NOT** a requirement to use it to maintain this rating.


NOTES:

- Other qualifying breathing assistance devices include:

  - Other positive airway pressure machines (automatic positive airway pressure device (APAP); bilevel positive airway pressure device (BiPAP));

    - Positive airway pressure machines may also be called non-invasive positive pressure ventilation (NIPPV) or non-invasive ventilation (NIV).
  - Nasopharyngeal appliances (nasal dilators; nasopharyngeal stents);

  - Oral appliances (mandibular advancement devices (MAD)); tongue-retaining mouthpieces); and

  - Implanted genioglossal nerve stimulation devices.

| Rating | Description |
| --- | --- |
| 0% | No symptoms, but there is a diagnosis. |
| 30% | Persistent sleepiness during the daytime or not feeling rested after sleeping. |
| 50% | Requires use of breathing assistance device such as continuous airway pressure (CPAP) machine. |
| 100% | Chronic respiratory failure with carbon dioxide retention or cor pulmonale, **OR**; requires tracheostomy. |

[Return to top](https://www.veteransbenefitskb.com/respiratory-system#top)

## **Cancers and Tumors**

* * *

### 6819 Cancer (Malignant Tumor)

**PRESUMPTIVE CONDITION:**

- Cancers of: _lung_, _bronchus_, _larynx_, and _trachea_; if exposed to [Agent Orange](https://veteransbenefitskb.com/agentorange).

- _Breathing_ related cancers; if exposed to [Burn pits](https://veteransbenefitskb.com/burnpits).

- If diagnosed with _brochiolo-alveolar carcinoma_, _lung_, or _pharynx_ cancers and exposed to [Ionizing radiation](https://www.veteransbenefitskb.com/ionizing).

- If diagnosed with cancers of: _larynx_, _lung_ (except mesothelioma), and _nasopharyngeal_ cancers and exposed to [Mustard gas](https://www.veteransbenefitskb.com/mustardgas);


| Rating | Description |
| --- | --- |
| ?% | Veteran will be rated based upon any residuals. |
| 100% | While active and for 6 months after cancer goes into remission and treatment ends. |

* * *

### 6820 Benign Tumor

Having a tumor itself is not a compensational condition.

However, if the tumor causes [Secondary conditions](https://veteransbenefitskb.com/claimtype#secondary) such as [Aphonia](https://veteransbenefitskb.com/airsystem#6519). Those issues may be rated. As well as any resulting [scars](https://veteransbenefitskb.com/skin#7802) that are the result of the removal of any tumor(s).

[Return to top](https://www.veteransbenefitskb.com/respiratory-system#top)

## **Disability Benefits Questionnaire (DBQs)**

To get an idea of how a [C&P exam](https://veteransbenefitskb.com/cnp) will be conducted it is recommended that the Veteran look at the applicable DBQ.

Veteran''s may ask a physician to complete a DBQ on their behalf to submit with their claim. For more information on DBQs click [HERE](https://veteransbenefitskb.com/dbq).

- [Respiratory Conditions (other than tuberculosis and sleep apnea)](https://www.benefits.va.gov/compensation/docs/Respiratory_Conditions_Other_than_Tuberculosis_and_Sleep_Apnea.pdf)

- [Sleep Apnea](https://www.benefits.va.gov/compensation/docs/Sleep_Apnea.pdf)

- [Tuberculosis](https://www.benefits.va.gov/compensation/docs/Tuberculosis.pdf)


[Return to top](https://www.veteransbenefitskb.com/respiratory-system#top)

## **Having Trouble Finding Your Condition?**

- Click [HERE](https://veteransbenefitskb.com/master) to view the Master Condition List.


[Return to top](https://www.veteransbenefitskb.com/respiratory-system#top)

## **References**

- [38 CFR § 4.88c Ratings for inactive nonpulmonary tuberculosis initially entitled after August 19, 1968](https://www.law.cornell.edu/cfr/text/38/4.88c)

- [38 CFR § 4.96 Special provisions regarding evaluation of respiratory conditions](https://www.law.cornell.edu/cfr/text/38/4.96)

- [38 CFR § 4.97 Schedule of ratings—respiratory system](https://www.law.cornell.edu/cfr/text/38/4.97)

- [M21-1, Part V, Subpart iii, Chapter 4, Section A - Respiratory Conditions](https://www.knowva.ebenefits.va.gov/system/templates/selfservice/va_ssnew/help/customer/locale/en-US/portal/554400000001018/content/554400000180967/M21-1-Part-V-Subpart-iii-Chapter-4-Section-A-Respiratory-Conditions)

- [M21-1, Part V, Subpart iii, Chapter 4, Section B - Tuberculosis](https://www.knowva.ebenefits.va.gov/system/templates/selfservice/va_ssnew/help/customer/locale/en-US/portal/554400000001018/content/554400000180881/M21-1-Part-V-Subpart-iii-Chapter-4-Section-B-Tuberculosis)


[Return to top](https://www.veteransbenefitskb.com/respiratory-system#top)

­

­', 'https://veteransbenefitskb.com/airsystem', '2026-04-08 01:08:10.641971+00:00'),
  (3, 'ankle', 'Rating Schedule for The Ankle', NULL, '[Categories](https://www.veteransbenefitskb.com/ankle)

\> [Death & Survivor Benefits](https://veteransbenefitskb.com/#ds)

\> [Education &](https://veteransbenefitskb.com/#ee) [Employment](https://veteransbenefitskb.com/#ee)

\> [Health care](https://veteransbenefitskb.com/#healthcare)

\> [Housing](https://veteransbenefitskb.com/#housing)

\> [Miscellaneous](https://veteransbenefitskb.com/#misc)

\> [VA Disability Compensation](https://veteransbenefitskb.com/#va)

\> [VA Pension](https://veteransbenefitskb.com/#pension)

**IMPORTANT NOTE:**

- For the purposes of Range of Motion (ROM), the examiner/rater are **REQUIRED** to consider flair ups in your conditions. Meaning, if you do not happen to have an [Examination](https://veteransbenefitskb.com/cnp) on your worst day, the examiner is required to reasonably estimate your impairment on your worst day! The rater is required to use this estimate, unless your ROM is somehow noted as being worse during ROM testing during the exam. In any event, the rater is to use the most impaired ROM measurements noted by the examiner!


* * *', NULL, NULL, NULL, '[0](https://www.veteransbenefitskb.com/cart)

# **Rating Schedule for the Ankle**

![Ankle and foot](https://images.squarespace-cdn.com/content/v1/66c515a3e8305f0f79e8b680/72d5ae98-db0e-4867-a46f-c8f859e84db8/ankle.png)

[![Screenshot of a search bar with a magnifying glass icon](https://images.squarespace-cdn.com/content/v1/66c515a3e8305f0f79e8b680/bd22f10b-2167-4509-9215-2b49d4a4e22f/search3.png)](https://cse.google.com/cse?cx=8392d3f710df0427c)

[Featured Articles](https://www.veteransbenefitskb.com/ankle)

[\> Master Condition List](https://veteransbenefitskb.com/master)

[\> Federal Benefits List by Combined Ratings](https://veteransbenefitskb.com/combinedbenefits)

[\> Insider Insight into VBA Claim Processing](https://veteransbenefitskb.com/insight)

[\> Rating Schedule Index](https://veteransbenefitskb.com/ratingsindex)

[\> Filing a VA Disability Claim](https://veteransbenefitskb.com/vaclaim)

[\> Filing an Appeal](https://veteransbenefitskb.com/appeals)

* * *

[Categories](https://www.veteransbenefitskb.com/ankle)

\> [Death & Survivor Benefits](https://veteransbenefitskb.com/#ds)

\> [Education &](https://veteransbenefitskb.com/#ee) [Employment](https://veteransbenefitskb.com/#ee)

\> [Health care](https://veteransbenefitskb.com/#healthcare)

\> [Housing](https://veteransbenefitskb.com/#housing)

\> [Miscellaneous](https://veteransbenefitskb.com/#misc)

\> [VA Disability Compensation](https://veteransbenefitskb.com/#va)

\> [VA Pension](https://veteransbenefitskb.com/#pension)

**IMPORTANT NOTE:**

- For the purposes of Range of Motion (ROM), the examiner/rater are **REQUIRED** to consider flair ups in your conditions. Meaning, if you do not happen to have an [Examination](https://veteransbenefitskb.com/cnp) on your worst day, the examiner is required to reasonably estimate your impairment on your worst day! The rater is required to use this estimate, unless your ROM is somehow noted as being worse during ROM testing during the exam. In any event, the rater is to use the most impaired ROM measurements noted by the examiner!


* * *

## **Amputation Rule**

- Veterans **CANNOT** have a total [Combined](https://veteransbenefitskb.com/vamath) rating of over 40% for ratings involving the ankle _and_ [Foot](https://veteransbenefitskb.com/foot) on the same leg.


* * *

## **5165 Amputation**

Veteran is entitled to [Special Monthly Compensation](https://veteransbenefitskb.com/smc).

| Rating | Degree of Amputation |
| --- | --- |
| 40% | At the ankle. |

## **5270 Joint Stiffness (Ankylosis)**

When the ankle joint cannot be moved.

- Abduction: Foot is rotated clockwise.

- Adduction: Foot is rotated counterclockwise.

- Dorsiflexion: Foot is raised.

- Eversion: Foot is tilted to the left.

- Plantar Flexion: Foot is pointed down.

- Inversion: Foot is tilted to the right.


![Ankle range of motion](https://images.squarespace-cdn.com/content/v1/66c515a3e8305f0f79e8b680/c4a52a73-be3b-49cd-bcc4-de5feb37b5ed/ankledem.png)

![Ankle range of motion](https://images.squarespace-cdn.com/content/v1/66c515a3e8305f0f79e8b680/dd20b11a-9715-4e0e-a26a-83945537cd80/anklerom.png)

| Rating | Ankle is Locked in Plantar Flexion | Ankle is Locked in Dorsiflexion | Other |
| --- | --- | --- | --- |
| 20% | Less than 30°. |  |  |
| 30% | Between 30° and 40°. | Between 0° and 10°. |  |
| 40% | More than 40°. | More than 10°. | Any abduction, adduction, inversion or eversion deformity. |

[Return to top](https://www.veteransbenefitskb.com/ankle#top)

## **5272 Tarsal Joint or Subastragalar Joint Ankylosis**

When the joint is frozen in place. It can be frozen in a ''favorable'' or ''unfavorable'' position.

- Favorable: Veteran can stand without difficulty.

- Unfavorable: Veteran has difficulty standing on the foot.


| Rating | Description |
| --- | --- |
| 10% | Favorable. |
| 20% | Unfavorable. |

[Return to top](https://www.veteransbenefitskb.com/ankle#top)

## **5056 Ankle Replacement (Prosthesis)**

**PYRAMIDING NOTE:**

- If the joint had **ANY** other musculoskeletal evaluations (ankylosis, range of motion, etc.) they **WILL BE** discontinued the date of the procedure!


**IMPORTANT NOTES:**

- **AFTER** your temp 100% ends you **CAN** file an [Increase claim](https://veteransbenefitskb.com/vaclaim), if you feel your evaluation should be higher.

  - If this condition could be rated higher under ankylosis, the rater will do so; replacing this evaluation.
- Joint replacement does **NOT** have a requirement for a reevaluation after the surgery. ( [M21 V.iii.1.A.3.i](https://www.knowva.ebenefits.va.gov/system/templates/selfservice/va_ssnew/help/customer/locale/en-US/portal/554400000001018/content/554400000014407/M21-1-Part-V-Subpart-iii-Chapter-1-Section-A-Painful-Motion-and-Functional-Loss%3FarticleViewContext=article_view_related_article#3i))

- If the evaluation(s) for the ankle are **HIGHER**( [VA math](https://www.veteransbenefitskb.com/va-math)) than the minimum evaluation, the VA **MUST** return everything to the prior evaluation(s) in place _before_ the temp 100%, **UNLESS** there is an exam after surgery which shows improvement. ( [M21 VIII.iv.8.D.2.b](https://www.knowva.ebenefits.va.gov/system/templates/selfservice/va_ssnew/help/customer/locale/en-US/portal/554400000001018/content/554400000177543/M21-1-Part-VIII-Subpart-iv-Chapter-8-Section-D-Other-Temporary-Total-Evaluations#2b)) However, the VA _should_ generally order a new examination after the temp 100% ends. ( [M21 VIII.iv.8.D.1.f](https://www.knowva.ebenefits.va.gov/system/templates/selfservice/va_ssnew/help/customer/locale/en-US/portal/554400000001018/content/554400000177543/M21-1-Part-VIII-Subpart-iv-Chapter-8-Section-D-Other-Temporary-Total-Evaluations#1f)) If there is improvement, the VA _should_ [Pr](https://www.veteransbenefitskb.com/va-math) [opose](https://www.veteransbenefitskb.com/propose) to reduce _if appropriate_. ( [M21 VIII.iv.8.D.2.c](https://www.knowva.ebenefits.va.gov/system/templates/selfservice/va_ssnew/help/customer/locale/en-US/portal/554400000001018/content/554400000177543/M21-1-Part-VIII-Subpart-iv-Chapter-8-Section-D-Other-Temporary-Total-Evaluations#2c))

- Medical evidence **MUST** show:

  - Date of admission;

  - Date of discharge;

  - Date of surgery; **AND**

  - Procedure performed.

    - If the procedure is noted for a non-service-connected condition then the VA will get a medical opinion to determine if the non-service-connected condition is a progression of the service-connected condition.

**RATER NOTES:**

- Temp 100% includes a bonus 1 month due to 38 CFR 4.30, so while it says 1 year it is actually 13 months total!

  - Example: Admitted for surgery June 12, 2025 and release June 12, 2025.

    - Effective date of 100% due to 38 CFR 4.30 is June 12, 2025 to August 1, 2025. Then 12 months due to the schedule ending on August 1, 2026. So in the end, temp 100% runs from June 12, 2025 to August 1, 2026.
  - Example rollover: Admitted for surgery February 28, 2025 and released March 2, 2025.

    - Effective date of 100% due to 38 CFR 4.30 is February 28, 2025 to May 1, 2025. Then 12 months due to the schedule ending on May 1, 2026. So in the end, temp 100% runs from February 28, 2025 to May 1, 2026.
- Remember to check for temporary entitlement to [SMC S](https://www.veteransbenefitskb.com/smc#s) and to discontinue it as appropriate!

- Any residual [Scars](https://www.veteransbenefitskb.com/skin#7802)?

- Temporary 100% **CANNOT** be the basis of the award of [Permanent and Total](https://www.veteransbenefitskb.com/pnt)… It is in the name…


| Rating | Description |
| --- | --- |
| 20% | Minimum rating. |
| 40% | Chronic residuals consisting of severe painful motion or weakness. |
| 100% | For 1 year following the replacement. After which, Veteran will be rated the minimum. |

[Return to top](https://www.veteransbenefitskb.com/ankle#top)

## **5271 Ratings Based Off Limitations of Range of Motion (ROM)**

- Dorsiflexion: Ability to raise your foot.

- Plantar Flexion: Ability to point your foot down.


**PYRAMIDING NOTE:**

- You **CANNOT** get separate evaluations for dorsiflexion and plantar flexion, you will get the worse of the two.


![Range of motion for the ankle](https://images.squarespace-cdn.com/content/v1/66c515a3e8305f0f79e8b680/dd20b11a-9715-4e0e-a26a-83945537cd80/anklerom.png)

| Rating | Dorsiflexion | Plantar Flexion |
| --- | --- | --- |
| 10% | Less than 15°. | Less than 30°. |
| 20% | Less than 5°. | Less than 10°. |

* * *

### Ankle Instability

Not mentioned in the rating schedule. However, the VA can [Analogously](https://veteransbenefitskb.com/diagnoticcodes#analog) rate the instability under the code for limitations of range of motion.

**PYRAMIDING NOTE:**

- You **CANNOT** get separate ratings for ankle ROM and for instability of the ankle.


[Return to top](https://www.veteransbenefitskb.com/ankle#top)

## **5273, 5274 Ankle Bone (Talus Bone)**

Ratings for when this bone has been previously broken and did not heel properly or has been removed.

| Rating | Description |
| --- | --- |
| 10% | Foot became slightly deformed. |
| 20% | Foot became very deformed. |
| 20% | Bone has been removed. |

[Return to top](https://www.veteransbenefitskb.com/ankle#top)

## **Miscellaneous Ratings**

The Veteran will **NOT** receive an additional rating if they fit the criteria of any of these miscellaneous cases. The Veteran will get a single rating for the ROM or Miscellaneous rating; **Whichever rating is higher!**

* * *

### Pain with Motion

**PYRAMIDING NOTE:**

- When there is an award based on _pain with motion_ with movement of the ankle. The VA will only award a **SINGLE** rating under range of motion! No matter how many ranges of motion are impacted!


| Rating | Description |
| --- | --- |
| 10% | Pain with motion. |

* * *

### Arthritis

When a Veteran''s arthritis does not warrant a rating based upon ROM or other miscellaneous situations. The Veteran''s condition will be rated under degenerative arthritis.

- For an explanation of arthritis ratings click [HERE](https://veteransbenefitskb.com/msdiseases#5002).


[Return to top](https://www.veteransbenefitskb.com/ankle#top)

## **Disability Benefits Questionnaire (DBQs)**

To get an idea of how a [C&P exam](https://veteransbenefitskb.com/cnp) will be conducted it is recommended that the Veteran look at the applicable DBQ.

Veteran''s may ask a physician to complete a DBQ on their behalf to submit with their claim. For more information on DBQs click [HERE](https://veteransbenefitskb.com/dbq).

- [Ankle](https://www.benefits.va.gov/compensation/docs/ankle.pdf)


[Return to top](https://www.veteransbenefitskb.com/ankle#top)

## **Having Trouble Finding Your Condition?**

- Click [HERE](https://veteransbenefitskb.com/master) to view the Master Condition List.


[Return to top](https://www.veteransbenefitskb.com/ankle#top)

## **References**

- [38 CFR § 4.59 Painful motion](https://www.law.cornell.edu/cfr/text/38/4.59)

- [38 CFR § 4.68 Amputation rule](https://www.law.cornell.edu/cfr/text/38/4.68)

- [38 CFR § 4.71 Measurement of ankylosis and joint motion](https://www.law.cornell.edu/cfr/text/38/4.71)

- [38 CFR § 4.71a Schedule of ratings—musculoskeletal system](https://www.law.cornell.edu/cfr/text/38/4.71a)

- [M21-1, Part V, Subpart iii, Chapter 1, Section B - Musculoskeletal Disabilities of the Extremities and Spine](https://www.knowva.ebenefits.va.gov/system/templates/selfservice/va_ssnew/help/customer/locale/en-US/portal/554400000001018/content/554400000014410/M21-1-Part-V-Subpart-iii-Chapter-1-Section-B-Musculoskeletal-Disabilities-of-the-Extremities-and-Spine)


[Return to top](https://www.veteransbenefitskb.com/ankle#top)

## [**Rating Schedule Index Navigation**](https://www.veteransbenefitskb.com/ratingsindex)

|     |     |
| --- | --- |
| \> Cariovascular System\> Arteries & Veins\> Blood\> Heart | \> [Conditions that the VA will **NOT** Rate](https://veteransbenefitskb.com/norate) |
| \> [Dental and Oral](https://veteransbenefitskb.com/mouthsystem) | \> [Digestive System](https://veteransbenefitskb.com/digsystem) |
| \> [Endocrine System](https://veteransbenefitskb.com/endsystem) | \> [Female Reproductive System](https://veteransbenefitskb.com/femalesystem) |
| \> [Genitourinary System](https://veteransbenefitskb.com/gensystem) | \> Hematologic and Lymphatic Systems\> Blood\> Breasts |
| \> [Infectious Diseases and Immune Disorders](https://veteransbenefitskb.com/infect) | \> [Mental Disorders](https://veteransbenefitskb.com/mental) |
| \> Musculoskeletal System\> Ankle\> Elbow & Forearm\> Foot\> Hand\> Hip & Thigh\> Knee & Lower Leg\> Ribs\> Skull\> Shoulder & Arm\> Spine\> Wrist\> Cancers and Tumors\> Diseases\> Face\> Forearm and Hand\> Hernias\> Lower Leg and Foot\> Buttock, Hip, and Thigh\> Shoulder, and Upper Arm\> Torso and Neck | \> Nervous System\> Cranial Nerves\> Central Nervous System\> Lower Back and Legs\> Upper Back and Arms\> Traumatic Brain Injuries |
| \> [Nutritional Deficiencies](https://veteransbenefitskb.com/nutritional) | \> [Respiratory System](https://veteransbenefitskb.com/airsystem) |
| \> Senses\> Ears\> Eyes\> Taste/Smell | \> [Skin](https://veteransbenefitskb.com/skin) |

­

­', 'https://veteransbenefitskb.com/ankle', '2026-04-08 01:08:10.641971+00:00'),
  (4, 'bhtmuscles', 'Rating Schedule for The Buttock, Hip and Thigh Muscles', NULL, '[Categories](https://www.veteransbenefitskb.com/bhtmuscles)

\> [Death & Survivor Benefits](https://veteransbenefitskb.com/#ds)

\> [Education &](https://veteransbenefitskb.com/#ee) [Employment](https://veteransbenefitskb.com/#ee)

\> [Health care](https://veteransbenefitskb.com/#healthcare)

\> [Housing](https://veteransbenefitskb.com/#housing)

\> [Miscellaneous](https://veteransbenefitskb.com/#misc)

\> [VA Disability Compensation](https://veteransbenefitskb.com/#va)

\> [VA Pension](https://veteransbenefitskb.com/#pension)

The muscles in the buttocks, pelvis, and thighs are divided into six groups (XIII-XVIII).

**PYRAMIDING NOTES:**

- Muscle ratings **CANNOT** be awarded with a separate [Nerve rating](https://veteransbenefitskb.com/nervesystem) for the _same body part_ **UNLESS** they affect completely different functions (the nerve condition affects the flexion and the muscle condition affects the extension).

  - If the same functions _are_ affected. The Veteran will **NOT** get an injured muscle rating.
- If the Veteran has a joint issue and the muscle injury also impairs that _same_ joint; separate evaluations are **NOT** allowed!

- Injured muscles that connect to a joint that is cannot be moved at all (ankylosis) **CANNOT** receive an additional rating for their injured muscles.

  - **EXCEPTION in which the Veteran can get individual ratings for both:**

    - [Knee joint](https://veteransbenefitskb.com/kneeleg) & muscles in group XIII: The Veteran''s muscle rating would be decreased by one degree (e.g. if the muscle injury rated 30% and the next lowest rating was 10%. The Veteran would get the 10% rating.)
- If a joint can move, then the [Combined rating](https://veteransbenefitskb.com/vamath) for all the injured muscles that connect to to the joint must be lower than the _highest rating_ for that joint if it were ankylosed. e.g. the highest rating for an ankylosed wrist is 50% (if dominant wrist) or 40% (if non-dominant wrist), so the combined rating of all the injured muscles connecting to the wrist joint must be _lower_ than 50% or 40%, respectively.

- If there are injured muscles in the same body region but are not attached to the same joint (all in the arm but not all attached to the elbow joint), then the rating for the worst injured muscle in the arm will be _increased_ to the next higher available rating and used as a singular rating for **ALL** muscle injuries in the arm.

  - If the muscle is already at the highest rating in the schedule. Then that is that, you keep that one rating. You will not automatically be given [Extra scheduler](https://veteransbenefitskb.com/ratingsindex#extra) consideration.
- Otherwise, if your muscle group injuries are **NOT** related to each other and don''t fall into any of the above situations. You **CAN** get a singular rating for each of the muscle groups.


**IMPORTANT NOTE:**

- Muscle injuries such as strains, tears, or atrophy ( **NOT** the result of shrapnel, gun shot wounds, foreign bodies) will simply be rated based on the [Joint schedule](https://veteransbenefitskb.com/msindex) that the injury impairs!

  - **EXCEPTION**: Compartment syndrome is **ALWAYS** rated under the appropriate muscle schedule!', NULL, NULL, NULL, '[0](https://www.veteransbenefitskb.com/cart)

# **Rating Schedule for the Buttock, Hip and Thigh Muscles**

![A person wearing blue jeans and a white shirt sitting on a black padded bench, with several other people standing around in the background.](https://images.squarespace-cdn.com/content/v1/66c515a3e8305f0f79e8b680/1737118853403-AW9UT65O9HCD7KP0N2NZ/unsplash-image-yNoIyGyGcG0.jpg)

[![Search bar with placeholder text ''Search''](https://images.squarespace-cdn.com/content/v1/66c515a3e8305f0f79e8b680/bd22f10b-2167-4509-9215-2b49d4a4e22f/search3.png)](https://cse.google.com/cse?cx=8392d3f710df0427c)

[Featured Articles](https://www.veteransbenefitskb.com/bhtmuscles)

[\> Master Condition List](https://veteransbenefitskb.com/master)

[\> Federal Benefits List by Combined Ratings](https://veteransbenefitskb.com/combinedbenefits)

[\> Insider Insight into VBA Claim Processing](https://veteransbenefitskb.com/insight)

[\> Rating Schedule Index](https://veteransbenefitskb.com/ratingsindex)

[\> Filing a VA Disability Claim](https://veteransbenefitskb.com/vaclaim)

[\> Filing an Appeal](https://veteransbenefitskb.com/appeals)

* * *

[Categories](https://www.veteransbenefitskb.com/bhtmuscles)

\> [Death & Survivor Benefits](https://veteransbenefitskb.com/#ds)

\> [Education &](https://veteransbenefitskb.com/#ee) [Employment](https://veteransbenefitskb.com/#ee)

\> [Health care](https://veteransbenefitskb.com/#healthcare)

\> [Housing](https://veteransbenefitskb.com/#housing)

\> [Miscellaneous](https://veteransbenefitskb.com/#misc)

\> [VA Disability Compensation](https://veteransbenefitskb.com/#va)

\> [VA Pension](https://veteransbenefitskb.com/#pension)

The muscles in the buttocks, pelvis, and thighs are divided into six groups (XIII-XVIII).

**PYRAMIDING NOTES:**

- Muscle ratings **CANNOT** be awarded with a separate [Nerve rating](https://veteransbenefitskb.com/nervesystem) for the _same body part_ **UNLESS** they affect completely different functions (the nerve condition affects the flexion and the muscle condition affects the extension).

  - If the same functions _are_ affected. The Veteran will **NOT** get an injured muscle rating.
- If the Veteran has a joint issue and the muscle injury also impairs that _same_ joint; separate evaluations are **NOT** allowed!

- Injured muscles that connect to a joint that is cannot be moved at all (ankylosis) **CANNOT** receive an additional rating for their injured muscles.

  - **EXCEPTION in which the Veteran can get individual ratings for both:**

    - [Knee joint](https://veteransbenefitskb.com/kneeleg) & muscles in group XIII: The Veteran''s muscle rating would be decreased by one degree (e.g. if the muscle injury rated 30% and the next lowest rating was 10%. The Veteran would get the 10% rating.)
- If a joint can move, then the [Combined rating](https://veteransbenefitskb.com/vamath) for all the injured muscles that connect to to the joint must be lower than the _highest rating_ for that joint if it were ankylosed. e.g. the highest rating for an ankylosed wrist is 50% (if dominant wrist) or 40% (if non-dominant wrist), so the combined rating of all the injured muscles connecting to the wrist joint must be _lower_ than 50% or 40%, respectively.

- If there are injured muscles in the same body region but are not attached to the same joint (all in the arm but not all attached to the elbow joint), then the rating for the worst injured muscle in the arm will be _increased_ to the next higher available rating and used as a singular rating for **ALL** muscle injuries in the arm.

  - If the muscle is already at the highest rating in the schedule. Then that is that, you keep that one rating. You will not automatically be given [Extra scheduler](https://veteransbenefitskb.com/ratingsindex#extra) consideration.
- Otherwise, if your muscle group injuries are **NOT** related to each other and don''t fall into any of the above situations. You **CAN** get a singular rating for each of the muscle groups.


**IMPORTANT NOTE:**

- Muscle injuries such as strains, tears, or atrophy ( **NOT** the result of shrapnel, gun shot wounds, foreign bodies) will simply be rated based on the [Joint schedule](https://veteransbenefitskb.com/msindex) that the injury impairs!

  - **EXCEPTION**: Compartment syndrome is **ALWAYS** rated under the appropriate muscle schedule!

## **Severity Definitions**

Severity ranges between Slight to Severe. The severity of a muscle disability is determined by “cardinal signs and symptoms.” These include:

- Decreased muscle control

- Easily fatigued

- Lack of coordination

- Loss of power

- Pain with fatigue

- Weakness


Below are the criteria your rater will look over when determining the severity of your muscle injuries:

NOTES:

- You do **NOT** need to meet every criteria in order to qualify for a level of severity. Just whatever severity most closely resembles the totality of the disability.

- A through and through wound **WILL BE** considered to be of a _minimum_ severity of _moderate_!

- A compound fracture (bone broke the skin) that _also_ results in damage to the muscles or tendons **WILL BE** considered to be of a severity of _severe_!

  - **UNLESS**, the muscle group involves the wrist **OR** involving the shinbone (tibia) **IF** there is evidence that shows the muscle damage is minimal.

* * *

### SLIGHT

- Type of injury:

  - A simple wound that does not contain debris (bits of bone, shrapnel, etc.) or infection.
- Veteran complaints:

  - **NO** cardinal signs or symptoms.
- Examiner can see:

  - Wound healed well and muscle can still function properly.

  - Small scar may be present.

* * *

### MODERATE

- Type of injury:

  - A through and through or deep penetrating wound _without_ long period of infection or debris.
- Veteran complaints:

  - Regularly experience at least one or more cardinal signs or symptoms.

    - Particularly are easily fatigued and have decreased muscle control.
- Examiner can see:

  - Entrance and if present, exit scars;

  - Loss of muscle tone or muscle mass; or

  - If the paired side is uninjured, injured muscles are weaker.

* * *

### MODERATELY SEVERE

- Type of injury:

  - A through and through or deep penetrating wound _with_ long period of infection, containing debris, or physical loss of muscle tissue with the development of scar tissue within the muscle tissue itself.
- Veteran complaints:

  - Regularly experiences cardinal signs or symptoms significant enough to interfere with the ability to work.
- Examiner can see:

  - Scars could cover more than one muscle group or the majority of one group;

  - Loss of muscle mass and tone; or

  - Definite decrease in muscle function.

* * *

### SEVERE

- Type of injury:

  - A through and through or deep penetrating wound _with_ shattered bones, long period of infection, containing **LOTS** of debris, or physical loss of muscle tissue with the development of significant scar tissue within the muscle tissue itself.
- Veteran complaints:

  - Regularly experiences cardinal signs or symptoms significant enough to _definitely_ interfere with the ability to work.
- Examiner can see:

  - Very large area of scarring;

  - Significant interference with muscle function;

  - Serious loss of muscle mass and tone (skin may look flabby due to missing muscle);

  - Skin attached directly to the bone instead;

  - Decreased muscular response to electric shocks;

  - Other muscle groups are over strengthened due to compensating for the injured muscle group;

  - Other muscle groups not directly connected to the damaged muscle group are smaller than would be expected; or

  - Entire muscle becomes smaller or stays constantly firm following what would be considered a simple through and through wound.

[Return to top](https://www.veteransbenefitskb.com/bhtmuscles#top)

## **5313 Group XIII Function: Extension of Hip and Flexion of Knee**

Posterior thigh group, Hamstring complex of 2-joint muscles:

- Biceps femoris

- Iliotibial tract

- Semimembranosus

- Semitendinosus


Functions:

- Bend the knee.

- Lift the leg backwards from the hip.

- Rotate leg inward and outward.


| Rating | Severity |
| --- | --- |
| 0% | Slight. |
| 10% | Moderate. |
| 30% | Moderately severe. |
| 40% | Severe. |

[Return to top](https://www.veteransbenefitskb.com/bhtmuscles#top)

## **5314 Group XIV Function: Extension of Knee**

Anterior thigh group:

- Quadriceps femoris

  - Rectus femoris

  - Vastus intermedius

  - Vastus lateralis

  - Vastus medialis
- Sartorius

- Tensor vaginae femoris


Functions:

- Simultaneous straightening of the knee and bending at the hip.

- Straightening the leg, at the knee.


| Rating | Severity |
| --- | --- |
| 0% | Slight. |
| 10% | Moderate. |
| 30% | Moderately severe. |
| 40% | Severe. |

[Return to top](https://www.veteransbenefitskb.com/bhtmuscles#top)

## **5315 Group XV Function: Adduction of Hip**

Located on the inside of the thigh.

Mesial thigh group:

- Adductor brevis

- Adductor longus

- Adductor magnus

- Gracilis


Functions:

- Bend the knee backwards.

- Move the leg forward.

- Move your leg across the other leg (adduction of the hip).


| Rating | Severity |
| --- | --- |
| 0% | Slight. |
| 10% | Moderate. |
| 20% | Moderately severe. |
| 30% | Severe. |

[Return to top](https://www.veteransbenefitskb.com/bhtmuscles#top)

## **5316 Group XVI Function: Flexion of Hip**

Located in the pelvic girdle.

Pelvic girdle group:

- Iliacus

- Pectineus

- Psoas


Function:

- Move the leg forward.


| Rating | Severity |
| --- | --- |
| 0% | Slight. |
| 10% | Moderate. |
| 30% | Moderately severe. |
| 40% | Severe. |

[Return to top](https://www.veteransbenefitskb.com/bhtmuscles#top)

## **5317 Group XVII Function: Extension of Hip**

The Butt.

Pelvic girdle group 2:

- Gluteus maximus

- Gluteus medius

- Gluteus minimus


Functions:

- Move the leg backwards.

- Move the leg sideways.


**IMPORTANT NOTE:**

- If Veteran has severe impairment of **BOTH** buttocks, they are entitled to [SMC K](https://veteransbenefitskb.com/smc#k).


| Rating | Severity |
| --- | --- |
| 0% | Slight. |
| 20% | Moderate. |
| 40% | Moderately severe. |
| 50% | Severe. |

[Return to top](https://www.veteransbenefitskb.com/bhtmuscles#top)

## **5318 Group XVIII Function: Outward Rotation of Thigh**

Pelvic girdle group 3:

- Gemellus

- Quadratus femoris

- Obturator

- Piriformis


Function:

- Turn the leg outward.


| Rating | Severity |
| --- | --- |
| 0% | Slight. |
| 10% | Moderate. |
| 20% | Moderately severe. |
| 30% | Severe. |

[Return to top](https://www.veteransbenefitskb.com/bhtmuscles#top)

## **Disability Benefits Questionnaire (DBQs)**

To get an idea of how a [C&P exam](https://veteransbenefitskb.com/cnp) will be conducted it is recommended that the Veteran look at the applicable DBQ.

Veteran''s may ask a physician to complete a DBQ on their behalf to submit with their claim. For more information on DBQs click [HERE](https://veteransbenefitskb.com/dbq).

- [Muscle Injuries](https://www.benefits.va.gov/compensation/docs/Muscle_Injuries.pdf)


[Return to top](https://www.veteransbenefitskb.com/bhtmuscles#top)

## **Having Trouble Finding Your Condition?**

- Click [HERE](https://veteransbenefitskb.com/master) to view the Master Condition List.


[Return to top](https://www.veteransbenefitskb.com/bhtmuscles#top)

## **References**

- [38 CFR § 4.55 Principles of combined ratings for muscle injuries](https://www.law.cornell.edu/cfr/text/38/4.55)

- [38 CFR § 4.56 Evaluation of muscle disabilities](https://www.law.cornell.edu/cfr/text/38/4.56)

- [38 CFR § 4.73 Schedule of ratings—muscle injuries](https://www.law.cornell.edu/cfr/text/38/4.73)

- [M21-1, Part V, Subpart iii, Chapter 1, Section E - Muscle Injuries](https://www.knowva.ebenefits.va.gov/system/templates/selfservice/va_ssnew/help/customer/locale/en-US/portal/554400000001018/content/554400000014422/M21-1-Part-V-Subpart-iii-Chapter-1-Section-E-Muscle-Injuries)


[Return to top](https://www.veteransbenefitskb.com/bhtmuscles#top)

## [**Rating Schedule Index Navigation**](https://www.veteransbenefitskb.com/ratingsindex)

|     |     |
| --- | --- |
| \> Cariovascular System\> Arteries & Veins\> Blood\> Heart | \> [Conditions that the VA will **NOT** Rate](https://veteransbenefitskb.com/norate) |
| \> [Dental and Oral](https://veteransbenefitskb.com/mouthsystem) | \> [Digestive System](https://veteransbenefitskb.com/digsystem) |
| \> [Endocrine System](https://veteransbenefitskb.com/endsystem) | \> [Female Reproductive System](https://veteransbenefitskb.com/femalesystem) |
| \> [Genitourinary System](https://veteransbenefitskb.com/gensystem) | \> Hematologic and Lymphatic Systems\> Blood\> Breasts |
| \> [Infectious Diseases and Immune Disorders](https://veteransbenefitskb.com/infect) | \> [Mental Disorders](https://veteransbenefitskb.com/mental) |
| \> Musculoskeletal System\> Ankle\> Elbow & Forearm\> Foot\> Hand\> Hip & Thigh\> Knee & Lower Leg\> Ribs\> Skull\> Shoulder & Arm\> Spine\> Wrist\> Cancers and Tumors\> Diseases\> Face\> Forearm and Hand\> Hernias\> Lower Leg and Foot\> Buttock, Hip, and Thigh\> Shoulder, and Upper Arm\> Torso and Neck | \> Nervous System\> Cranial Nerves\> Central Nervous System\> Lower Back and Legs\> Upper Back and Arms\> Traumatic Brain Injuries |
| \> [Nutritional Deficiencies](https://veteransbenefitskb.com/nutritional) | \> [Respiratory System](https://veteransbenefitskb.com/airsystem) |
| \> Senses\> Ears\> Eyes\> Taste/Smell | \> [Skin](https://veteransbenefitskb.com/skin) |

­

­', 'https://veteransbenefitskb.com/bhtmuscles', '2026-04-08 01:08:10.641971+00:00'),
  (5, 'blood', 'Rating Schedule for Hematologic and Lymphatic Systems (The Blood)', NULL, '[Categories](https://www.veteransbenefitskb.com/blood)

\> [Death & Survivor Benefits](https://veteransbenefitskb.com/#ds)

\> [Education &](https://veteransbenefitskb.com/#ee) [Employment](https://veteransbenefitskb.com/#ee)

\> [Health care](https://veteransbenefitskb.com/#healthcare)

\> [Housing](https://veteransbenefitskb.com/#housing)

\> [Miscellaneous](https://veteransbenefitskb.com/#misc)

\> [VA Disability Compensation](https://veteransbenefitskb.com/#va)

\> [VA Pension](https://veteransbenefitskb.com/#pension)

Makes the green grass grow.

* * *', NULL, NULL, NULL, '[0](https://www.veteransbenefitskb.com/cart)

# **Rating Schedule for Hematologic and Lymphatic Systems (The Blood)**

![Close-up of test tubes with red, purple, and marbled caps in a yellow test tube rack.](https://images.squarespace-cdn.com/content/v1/66c515a3e8305f0f79e8b680/1737118524719-LLCURF6WE0RNSL5KRQMI/unsplash-image-egT3xtDu9DQ.jpg)

[![Search bar with a magnifying glass icon and a placeholder text ''Search''.](https://images.squarespace-cdn.com/content/v1/66c515a3e8305f0f79e8b680/bd22f10b-2167-4509-9215-2b49d4a4e22f/search3.png)](https://cse.google.com/cse?cx=8392d3f710df0427c)

[Featured Articles](https://www.veteransbenefitskb.com/blood)

[\> Master Condition List](https://veteransbenefitskb.com/master)

[\> Federal Benefits List by Combined Ratings](https://veteransbenefitskb.com/combinedbenefits)

[\> Insider Insight into VBA Claim Processing](https://veteransbenefitskb.com/insight)

[\> Rating Schedule Index](https://veteransbenefitskb.com/ratingsindex)

[\> Filing a VA Disability Claim](https://veteransbenefitskb.com/vaclaim)

[\> Filing an Appeal](https://veteransbenefitskb.com/appeals)

* * *

[Categories](https://www.veteransbenefitskb.com/blood)

\> [Death & Survivor Benefits](https://veteransbenefitskb.com/#ds)

\> [Education &](https://veteransbenefitskb.com/#ee) [Employment](https://veteransbenefitskb.com/#ee)

\> [Health care](https://veteransbenefitskb.com/#healthcare)

\> [Housing](https://veteransbenefitskb.com/#housing)

\> [Miscellaneous](https://veteransbenefitskb.com/#misc)

\> [VA Disability Compensation](https://veteransbenefitskb.com/#va)

\> [VA Pension](https://veteransbenefitskb.com/#pension)

Makes the green grass grow.

* * *

## **Anemia**

When there are not enough healthy red blood cells in the blood.

**PRESUMPTIVE CONDITION:**

- Primary anemia (anemia **NOT** caused by another condition) is [Presumptive](https://veteransbenefitskb.com/time) if it manifests within _one year_ of separation, **AND** the severity warranted _at least_ a 10% evaluation within that time.


* * *

### 7714 Sickle Cell Anemia (Sickle Cell Disease)

Anemia where the red blood cells become shaped like a sickle.

**IMPORTANT NOTE:**

- In order to get service-connection the Veteran **MUST** have served in a location that can be linked as to the cause of the sickle cell. This is due to the fact that sickle cell can be caused by the Veteran''s own genes.


| Rating | Description |
| --- | --- |
| 10% | Symptoms no longer present but an established case is now in remission, _with_ identifiable organ impairment. |
| 30% | With 1 or 2 painful episodes per 12-month period. |
| 60% | With 3 painful episodes per 12-month period or with symptoms so severe that nothing more than light manual labor can be preformed. |
| 100% | With 4 or more painful episodes per 12-month period, occurring in skin, joints, bones, or any major organs, caused by breakdown of blood cells and sickling of red blood cells, with anemia, thrombosis, and infarction, with residual symptoms preventing even light manual labor. |

| Rating | Description |
| --- | --- |
| 10% | Requires continuous medication. |
| 30% | Requiring transfusion of platelets or red blood cells, on average, at least once per 12-month period; **OR** infections recurring, on average, at least once per 12-month period. |
| 60% | Requiring transfusion of platelets or red blood cells, on average, at least once every 3 months per 12-month period; **OR** infections recurring, on average, at least once every 3 months per 12-month period; **OR** using continuous therapy with immunosuppressive agent or newer platelet stimulating factors. |
| 100% | Requiring peripheral blood or bone marrow stem cell transplant; **OR** requiring transfusion of platelets or red cells, on average, at least once every 6 weeks per 12-month period; **OR** infections recurring, on average, at least once every 6 weeks per 12-month period. |

### 7716 Aplastic Anemia (Bone Marrow Aplasia)

Bone marrow not making enough new blood cells.

**IMPORTANT NOTE:**

- The 100% evaluation for peripheral blood or bone marrow stem cell transplant will continue for 6 months after the Veteran is released from the hospital. After which, the Veteran will have a **MANDATORY** [Reevaluation](https://veteransbenefitskb.com/cnp).


**PRESUMPTIVE CONDITION:**

- If exposed to [Camp Lejeune](https://www.veteransbenefitskb.com/lejeune) **AND** the severity _ever_ warranted _at least_ a 10% evaluation.


* * *

* * *

### 7720 Iron Deficiency Anemia

Occurs when your body doesn''t have enough iron.

**PYRAMIDING NOTE:**

- If iron deficiency anemia is _due to_ _blood loss_ caused by another condition, a secondary standalone grant of iron deficiency anemia is **NOT** allowed. It will be lumped together with the causative condition and rated under the schedule of the causative condition.


| Rating | Description |
| --- | --- |
| 0% | No symptoms or can be treated by changing diet. |
| 10% | Requiring intravenous iron infusions 1-3 times per 12-month period; **OR** requires continuous treatment with oral supplements. |
| 30% | Requiring intravenous iron infusions 4 or more times per 12-month period. |

### 7722 Addison''s Anemia (Pernicious Anemia, Vitamin B12 Deficiency Anemia)

When the body can''t absorb enough vitamin B-12.

**IMPORTANT NOTE:**

- This 100% rating **IS** temporary, and will continue for 6 months after release from hospital _or_ at the end of the parenteral B12 therapy. At which time the Veteran will be [Reevaluated](https://veteransbenefitskb.com/cnp). This condition will then receive a 10% rating, if the 100% criteria is no longer meet.


* * *

| Rating | Description |
| --- | --- |
| 10% | Requiring continuous treatment with Vitamin B12 injections, Vitamin B12 sublingual or high-dose oral tablets, or Vitamin B12 nasal spray or gel. |
| 100% | For initial diagnosis requiring transfusion due to severe anemia; **OR** if there are signs or symptoms related to central nervous system impairment, such as encephalopathy, myelopathy, or severe peripheral neuropathy, requiring parenteral B12 therapy. |

* * *

#### Common secondary conditions

The following secondary conditions **CAN** receive their own individual ratings:

- [Dementia](https://veteransbenefitskb.com/mental)

- [Peripheral neuropathy](https://veteransbenefitskb.com/nervesystem)

- [Myelopathy](https://veteransbenefitskb.com/nervesystem)

- [Related gastrointestinal issues](https://veteransbenefitskb.com/digsystem)


### 7723 Acquired Hemolytic Anemia (Extrinsic Hemolytic Anemia)

**IMPORTANT NOTE:**

- The 100% evaluation for bone marrow transplant will continue for 6 months after the Veteran is released from the hospital. After which, the Veteran will have a **MANDATORY** [Reevaluation](https://veteransbenefitskb.com/cnp).


* * *

| Rating | Description |
| --- | --- |
| 0% | No symptoms. |
| 10% | Requiring 1 course of immunosuppressive therapy per 12-month period. |
| 30% | Requiring 2-3 courses of immunosuppressive therapy per 12-month period. |
| 60% | Requiring immunosuppressive medication 4 or more times per 12-month period. |
| 100% | Requiring a bone marrow transplant or continuous intravenous or immunosuppressive therapy (e.g., prednisone, Cytoxan, azathioprine, or rituximab). |

[Return to top](https://www.veteransbenefitskb.com/blood#top)

## **Red Blood Cells**

Carries gasses throughout the blood.

* * *

### 7704 Polycythemia Vera

Bone marrow produces too many red blood cells.

**IMPORTANT NOTES:**

- The 100% evaluation **IS TEMPORARY** and will continue for 6 months after the Veteran is released from the hospital/treatment ends. After which, the Veteran will have a **MANDATORY** [Reevaluation](https://veteransbenefitskb.com/cnp).

- Chemotherapy (including myelosuppressants) warrants a 100% evaluation for 6 months after treatment ends. After which, the Veteran will have a **MANDATORY** [Reevaluation](https://veteransbenefitskb.com/cnp).

- If this condition becomes cancerous the Veteran will be rated under [Leukemia](https://veteransbenefitskb.com/blood#7703) instead of this schedule.


| Rating | Description |
| --- | --- |
| 10% | Requiring phlebotomy 3 or fewer times per 12-month period or if requiring biologic therapy or interferon on an intermittent basis as needed to maintain all blood values at reference range levels. |
| 30% | Requiring phlebotomy 4-5 times per 12-month period, or if requiring continuous biologic therapy or myelosuppressive agents, to include interferon, to maintain platelets <200,000 or white blood cells (WBC) <12,000. |
| 60% | Requiring phlebotomy 6 or more times per 12-month period or molecularly targeted therapy for the purpose of controlling RBC count. |
| 100% | Requiring peripheral blood or bone marrow stem-cell transplant or chemotherapy (including myelosuppressants) for the purpose of decreasing symptoms. |

* * *

#### Common secondary conditions

For the following conditions. The Veteran can receive individual ratings for each condition!

- [Gout](https://veteransbenefitskb.com/msdisease#5017)

- [Hypertension](https://veteransbenefitskb.com/bloodtubes#7101)

- [Stroke](https://veteransbenefitskb.com/cns#8008)

- [Thrombotic disease](https://veteransbenefitskb.com/bloodtubes#7115)


* * *

### 7721 Folate Deficiency (Folic Acid Deficiency)

When the body doesn''t have enough folic acid, resulting in low number of red blood cells.

| Rating | Description |
| --- | --- |
| 0% | No symptoms or only need to change diet. |
| 10% | Requiring continuous treatment with high-dose oral supplements. |

[Return to top](https://www.veteransbenefitskb.com/blood#top)

## **White Blood Cells**

Stuff that helps your immune system.

* * *

### 7702 Agranulocytosis (Agranulosis, Granulopenia, Leukopenia)

Condition where the bone marrow does not produce enough white blood cells.

**IMPORTANT NOTE:**

- The 100% evaluation for bone marrow transplant will continue for 6 months after the Veteran is released from the hospital. After which, the Veteran will have a **MANDATORY** [Reevaluation](https://veteransbenefitskb.com/cnp).


| Rating | Description |
| --- | --- |
| 10% | Requiring continuous medication (e.g., antibiotics) for control; **OR** requiring intermittent use of a myeloid growth factor to maintain absolute neutrophil count (ANC) greater than or equal to 1500/µl. |
| 30% | Requiring intermittent myeloid growth factors to maintain ANC greater than 1000/µl; **OR** infections recurring, on average, at least once per 12-month period but less than once every 3 months per 12-month period. |
| 60% | Requiring intermittent myeloid growth factors (granulocyte colony-stimulating factor (G-CSF) or granulocyte-macrophage colony-stimulating factor (GM-CSF) or continuous immunosuppressive therapy such as cyclosporine to maintain (ANC) greater than 500/microliter (µl) but less than 1000/µl; **OR** infections recurring, on average, at least once every 3 months per per 12-month period. |
| 100% | Requiring bone marrow transplant; **OR** infections recurring, on average, at least once every 6 weeks per 12-month period. |

### 7719 Chronic Myelogenous Leukemia (CML, Chronic Myeloid Leukemia, Chronic Granulocytic Leukemia)

Condition where the bone marrow produces too many white blood cells.

**IMPORTANT NOTES:**

- The 100% evaluation for peripheral blood or bone marrow stem cell transplant will continue for 6 months after the Veteran is released from the hospital. After which, the Veteran will have a **MANDATORY** [Reevaluation](https://veteransbenefitskb.com/cnp).

- Chemotherapy (including myelosuppressants) or interferon treatment warrants a 100% evaluation for 6 months after treatment ends. After which, the Veteran will have a **MANDATORY** [Reevaluation](https://veteransbenefitskb.com/cnp).

- If this condition becomes cancerous the Veteran will be rated under [Leukemia](https://veteransbenefitskb.com/blood#7703) instead of this schedule.


**PRESUMPTIVE CONDITION:**

- If diagnosed within a [Year](https://veteransbenefitskb.com/time) of separation **AND** the severity warranted _at least_ a 10% evaluation within that time;

- If exposed to [Mustard gas](https://www.veteransbenefitskb.com/mustardgas); or

- If exposed to [Ionizing radiation](https://www.veteransbenefitskb.com/ionizing).


* * *

| Rating | Description |
| --- | --- |
| 30% | In apparent remission on continuous molecularly targeted therapy with tyrosine kinase inhibitors. |
| 60% | Requiring intermittent myelosuppressive therapy, or molecularly targeted therapy with tyrosine kinase inhibitors, or interferon treatment when not in apparent remission. |
| 100% | Requiring peripheral blood or bone marrow stem cell transplant, or continuous myelosuppressive or immunosuppressive therapy treatment. |

[Return to top](https://www.veteransbenefitskb.com/blood#top)

## **Platelets**

Helps stop bleeding by forming blood clots.

* * *

### 7705 Low Platelet Level (Immune Thrombocytopenia, Thrombocytopenia)

**IMPORTANT NOTE:**

- The 100% evaluation for chemotherapy will continue for 6 months after treatment ends. After which, the Veteran will have a **MANDATORY** [Reevaluation](https://veteransbenefitskb.com/cnp).


**PRESUMPTIVE CONDITION:**

- If diagnosed within a [Year](https://veteransbenefitskb.com/time) of separation **AND** the severity warranted _at least_ a 10% evaluation within that time.


| Rating | Description |
| --- | --- |
| 0% | Platelet count above 50,000 and asymptomatic; **OR** for immune thrombocytopenia in remission. |
| 10% | Platelet count higher than 30,000 but not higher than 50,000, not requiring treatment. |
| 30% | Platelet count higher than 30,000 but not higher than 50,000, _with either_ immune thrombocytopenia or mild mucous membrane bleeding which requires oral corticosteroid therapy or intravenous immune globulin. |
| 70% | Requiring immunosuppressive therapy; **OR** for a platelet count higher than 30,000 but not higher than 50,000, with history of hospitalization because of severe bleeding requiring intravenous immune globulin, high-dose parenteral corticosteroids, and platelet transfusions. |
| 100% | Requiring chemotherapy for chronic refractory thrombocytopenia; **OR** a platelet count 30,000 or below despite treatment. |

### 7718 Essential Thrombocythemia & Primary Myelofibrosis

Body produces too many platelets. \| Bone marrow is unable to make enough normal blood cells

**IMPORTANT NOTES:**

- The 100% evaluation for peripheral blood or bone marrow stem cell transplant will continue for 6 months after the Veteran is released from the hospital. After which, the Veteran will have a **MANDATORY** [Reevaluation](https://veteransbenefitskb.com/cnp).

- Chemotherapy (including myelosuppressants) or interferon treatment warrants a 100% evaluation for 6 months after treatment ends. After which, the Veteran will have a **MANDATORY** [Reevaluation](https://veteransbenefitskb.com/cnp).

- If this condition becomes cancerous the Veteran will be rated under [Leukemia](https://veteransbenefitskb.com/blood#7703) instead of this schedule.


**PRESUMPTIVE CONDITION:**

- If diagnosed with _Myelofibrosis_ and exposed to [Burn pits](https://veteransbenefitskb.com/burnpits).


* * *

| Rating | Description |
| --- | --- |
| 0% | No symptoms. |
| 30% | Requiring continuous or intermittent myelosuppressive therapy, or chemotherapy, or interferon treatment to maintain platelet count of 200,000-400,000, or white blood cell (WBC) count of 4,000-10,000. |
| 70% | Requiring continuous or intermittent myelosuppressive therapy, or chemotherapy, or interferon treatment to maintain platelet count <500 × 109/L. |
| 100% | Requiring either continuous myelosuppressive therapy or, for 6 months following hospital admission, peripheral blood or bone marrow stem cell transplant, or chemotherapy, or interferon treatment. |

[Return to top](https://www.veteransbenefitskb.com/blood#top)

### 7706 Removal of Spleen - Full or Partial (Splenectomy)

**PYRAMIDING NOTE:**

- Veteran''s experiencing any lasting residuals can have those rated separately.


## **The Spleen**

Filters the blood, removing old red blood cells.

* * *

| Rating | Description |
| --- | --- |
| 20% | Full or partial removal. |

### 7707 Other Spleen Conditions (Injury of the Spleen)

If the spleen causes symptoms that affect the Veteran. Those symptoms may be rated as appropriate.

* * *

[Return to top](https://www.veteransbenefitskb.com/blood#top)

### 7710 Tuberculous Adenitis (Tuberculosis of the Lymph Nodes, TB Adenitis, Crofula)

Tuberculous infection of the lymph nodes in the neck.

## **Miscellaneous Conditions**

* * *

| Rating | Description |
| --- | --- |
| ?% | After the temporary 100% ends the Veteran will be rated based on residuals of the TB or the treatment itself. |
| 100% | For 1 year after TB goes inactive. |
| 100% | While active. |

### 7717 Primary Amyloidosis (AL Amyloidosis, Primary Systemic Amyloidosis, PSA, Amyloid Light-Chain Amyloidosis)

When the body produces abnormal proteins that can build up and interfere with the functioning of various organs.

**PRESUMPTIVE CONDITION:**

- If exposed to [Agent Orange](https://veteransbenefitskb.com/agentorange).


* * *

| Rating | Description |
| --- | --- |
| 100% | Current diagnosis. |

[Return to top](https://www.veteransbenefitskb.com/blood#top)

### 7703 Leukemia (Chronic Lymphocytic Leukemia, CLL)

Cancer of the blood or bone marrow that causes the over-production of immature white blood cells.

**IMPORTANT NOTES:**

- While the condition may be ‘ _active_’ if the condition is considered “asymptomatic, Rai Stage 0” then a 0%, **NOT** 100% will be awarded!

- [Chronic myelogenous leukemia](https://veteransbenefitskb.com/blood#7719) is **NOT** rated under this schedule.


**PRESUMPTIVE CONDITION:**

- If diagnosed within a [Year](https://veteransbenefitskb.com/time) of separation **AND** the severity warranted _at least_ a 10% evaluation within that time;

- If exposed to [Agent Orange](https://veteransbenefitskb.com/agentorange) **AND** the severity _ever_ warranted _at least_ a 10% evaluation;

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits); or

- If exposed to [Camp Lejeune](https://www.veteransbenefitskb.com/lejeune).


## **Cancer & Tumors of the Blood and Lymph Nodes**

* * *

| Rating | Description |
| --- | --- |
| 0% | Chronic lymphocytic leukemia or monoclonal B-cell lymphocytosis (MBL), asymptomatic, Rai Stage 0. |
| ?% | After the temporary 100% ends the Veteran will be rated based on residuals of the leukemia or the treatment itself. |
| 100% | While active and for 6 months after condition goes into remission/treatment stops. |

Residuals will be rated under one or more of the following schedules:

- [Chronic myelogenous leukemia](https://veteransbenefitskb.com/blood#7719);

- [Essential thrombocythemia and primary myelofibrosis](https://veteransbenefitskb.com/blood#7718); or

- [Polycythemia vera](https://veteransbenefitskb.com/blood#7704).


* * *

### 7709 Hodgkin’s Disease (Hodgkin''s Lymphoma)

Cancer of the part of the immune system called the lymphatic system.

**PRESUMPTIVE CONDITION:**

- If exposed to [Agent Orange](https://veteransbenefitskb.com/agentorange).

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits).


| Rating | Description |
| --- | --- |
| ?% | After the temporary 100% ends the Veteran will be rated based on residuals of the cancer or the treatment itself. |
| 100% | While active and for 6 months after condition goes into remission/treatment stops. |

* * *

### 7715 Non-Hodgkin''s Lymphoma

Lymphomas that are not Hodgkin’s.

**PRESUMPTIVE CONDITION:**

- If exposed to [Agent Orange](https://veteransbenefitskb.com/agentorange);

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits);

- If exposed to [Camp Lejeune](https://www.veteransbenefitskb.com/lejeune); or

- If exposed to [Ionizing radiation](https://www.veteransbenefitskb.com/ionizing).


| Rating | Description |
| --- | --- |
| ?% | After the temporary 100% ends the Veteran will be rated based on residuals of the cancer or the treatment itself. |
| 100% | While active and for **2 YEARS** after condition goes into remission/treatment stops. |

### 7725 Myelodysplastic Syndrome (MDS, Preleukemia)

Blood cancer.

**IMPORTANT NOTES:**

- The 100% evaluation for peripheral blood or bone marrow stem cell transplant will continue for 6 months after the Veteran is released from the hospital. After which, the Veteran will have a **MANDATORY** [Reevaluation](https://veteransbenefitskb.com/cnp).

- Chemotherapy warrants a 100% evaluation for 6 months after treatment ends. After which, the Veteran will have a **MANDATORY** [Reevaluation](https://veteransbenefitskb.com/cnp).

- If this condition becomes cancerous the Veteran will be rated under [Leukemia](https://veteransbenefitskb.com/blood#7703) instead of this schedule.


**PRESUMPTIVE CONDITION:**

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits).


* * *

| Rating | Description |
| --- | --- |
| 30% | Requiring 1-3 blood or platelet transfusions per 12-month period; **OR** infections requiring hospitalization 1-2 times per 12-month period; **OR** requiring biologic therapy on an ongoing basis or erythropoiesis stimulating agent (ESA) for 12 weeks or less per 12-month period. |
| 60% | Requiring 4 or more blood or platelet transfusions per 12-month period; **OR** infections requiring hospitalization 3 or more times per 12-month period. |
| 100% | Requiring peripheral blood or bone marrow stem cell transplant; **OR** requiring chemotherapy. |

### 7712 Kahler''s Disease (Bone Marrow Cancer, Multiple Myeloma)

A cancer of plasma cells.

**IMPORTANT NOTES:**

- **5 YEARS** from the time of diagnosis **WITH** symptoms is when a **MANDATORY** [Reevaluation](https://veteransbenefitskb.com/cnp) is required.

  - Meaning if you are service-connected 4 years **AFTER** symptoms start, you will be reevaluated in a year.

**PRESUMPTIVE CONDITION:**

- If exposed to [Agent Orange](https://veteransbenefitskb.com/agentorange) **AND** the severity _ever_ warranted at least a 10% evaluation;

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits);

- If exposed to [Camp Lejeune](https://www.veteransbenefitskb.com/lejeune) **AND** the severity _ever_ warranted at least a 10% evaluation; or

- If exposed to [Ionizing radiation](https://www.veteransbenefitskb.com/ionizing).


* * *

| Rating | Description |
| --- | --- |
| 0% | Asymptomatic, smoldering, or monoclonal gammopathy of undetermined significance (MGUS). |
| ?% | After the temporary 100% ends the Veteran will be rated based on residuals of the cancer or the treatment itself. |
| 100% | Symptoms are present. |

### 7724 Solitary Plasmacytoma

Tumor composed of plasma cells.

**PRESUMPTIVE CONDITION:**

- If exposed to [Ionizing radiation](https://www.veteransbenefitskb.com/ionizing).


* * *

| Rating | Description |
| --- | --- |
| ?% | After the temporary 100% ends the Veteran will be rated based on residuals of the tumor(s) or the treatment itself. |
| 100% | Condition is active and for 6 months after condition goes into remission/treatment stops. |

[Return to top](https://www.veteransbenefitskb.com/blood#top)

## **Disability Benefits Questionnaire (DBQs)**

To get an idea of how a [C&P exam](https://veteransbenefitskb.com/cnp) will be conducted it is recommended that the Veteran look at the applicable DBQ.

Veteran''s may ask a physician to complete a DBQ on their behalf to submit with their claim. For more information on DBQs click [HERE](https://veteransbenefitskb.com/dbq).

- [Hematologic and Lymphatic Conditions, Including Leukemia](https://www.benefits.va.gov/compensation/docs/Hematologic_and_Lymphatic_Conditions_Including_Leukemia.pdf)


[Return to top](https://www.veteransbenefitskb.com/blood#top)

## **Having Trouble Finding Your Condition?**

- Click [HERE](https://veteransbenefitskb.com/master) to view the Master Condition List.


[Return to top](https://www.veteransbenefitskb.com/blood#top)

## **References**

- [38 CFR § 4.117 Schedule of ratings—hemic and lymphatic systems](https://www.law.cornell.edu/cfr/text/38/4.117)

- [M21-1, Part V, Subpart iii, Chapter 9 - Hematologic and Lymphatic Systems](https://www.knowva.ebenefits.va.gov/system/templates/selfservice/va_ssnew/help/customer/locale/en-US/portal/554400000001018/content/554400000180513/M21-1-Part-V-Subpart-iii-Chapter-9-Hematologic-and-Lymphatic-Systems)


[Return to top](https://www.veteransbenefitskb.com/blood#top)

## [**Rating Schedule Index Navigation**](https://www.veteransbenefitskb.com/ratingsindex)

|     |     |
| --- | --- |
| \> Cariovascular System\> Arteries & Veins\> Blood\> Heart | \> [Conditions that the VA will **NOT** Rate](https://veteransbenefitskb.com/norate) |
| \> [Dental and Oral](https://veteransbenefitskb.com/mouthsystem) | \> [Digestive System](https://veteransbenefitskb.com/digsystem) |
| \> [Endocrine System](https://veteransbenefitskb.com/endsystem) | \> [Female Reproductive System](https://veteransbenefitskb.com/femalesystem) |
| \> [Genitourinary System](https://veteransbenefitskb.com/gensystem) | \> Hematologic and Lymphatic Systems\> Blood\> Breasts |
| \> [Infectious Diseases and Immune Disorders](https://veteransbenefitskb.com/infect) | \> [Mental Disorders](https://veteransbenefitskb.com/mental) |
| \> Musculoskeletal System\> Ankle\> Elbow & Forearm\> Foot\> Hand\> Hip & Thigh\> Knee & Lower Leg\> Ribs\> Skull\> Shoulder & Arm\> Spine\> Wrist\> Cancers and Tumors\> Diseases\> Face\> Forearm and Hand\> Hernias\> Lower Leg and Foot\> Buttock, Hip, and Thigh\> Shoulder, and Upper Arm\> Torso and Neck | \> Nervous System\> Cranial Nerves\> Central Nervous System\> Lower Back and Legs\> Upper Back and Arms\> Traumatic Brain Injuries |
| \> [Nutritional Deficiencies](https://veteransbenefitskb.com/nutritional) | \> [Respiratory System](https://veteransbenefitskb.com/airsystem) |
| \> Senses\> Ears\> Eyes\> Taste/Smell | \> [Skin](https://veteransbenefitskb.com/skin) |

­

­', 'https://veteransbenefitskb.com/blood', '2026-04-08 01:08:10.641971+00:00'),
  (6, 'bloodtubes', 'Rating Schedule for The Arteries & Veins', NULL, '[Categories](https://www.veteransbenefitskb.com/bloodtubes)

\> [Death & Survivor Benefits](https://veteransbenefitskb.com/#ds)

\> [Education &](https://veteransbenefitskb.com/#ee) [Employment](https://veteransbenefitskb.com/#ee)

\> [Health care](https://veteransbenefitskb.com/#healthcare)

\> [Housing](https://veteransbenefitskb.com/#housing)

\> [Miscellaneous](https://veteransbenefitskb.com/#misc)

\> [VA Disability Compensation](https://veteransbenefitskb.com/#va)

\> [VA Pension](https://veteransbenefitskb.com/#pension)

For the things that hold the wet red stuff.

* * *', NULL, '- This condition has quasi presumptive secondary conditions click [HERE](https://veteransbenefitskb.com/arteriosclerotic) to learn more.


* * *

### Other Common Secondaries

- [Erectile dysfunction](https://veteransbenefitskb.com/gensystem#7522)

- [Peripheral artery disease](https://veteransbenefitskb.com/bloodtubes#7114)

- [Retinopathy](https://veteransbenefitskb.com/eyes#6006)



## **Aneurysms**', NULL, '[0](https://www.veteransbenefitskb.com/cart)

# **Rating Schedule for the Arteries & Veins**

![A detailed anatomical illustration of the human nervous system, showing nerves branching from the brain, spine, and extending to the limbs, with smaller inset diagrams of sections of the nervous system.](https://images.squarespace-cdn.com/content/v1/66c515a3e8305f0f79e8b680/1737593261119-2NAZLAYPACYTKJNQ6F88/unsplash-image-wCZm5JaQWDw.jpg)

[Featured Articles](https://www.veteransbenefitskb.com/bloodtubes)

[\> Master Condition List](https://veteransbenefitskb.com/master)

[\> Federal Benefits List by Combined Ratings](https://veteransbenefitskb.com/combinedbenefits)

[\> Insider Insight into VBA Claim Processing](https://veteransbenefitskb.com/insight)

[\> Rating Schedule Index](https://veteransbenefitskb.com/ratingsindex)

[\> Filing a VA Disability Claim](https://veteransbenefitskb.com/vaclaim)

[\> Filing an Appeal](https://veteransbenefitskb.com/appeals)

* * *

[Categories](https://www.veteransbenefitskb.com/bloodtubes)

\> [Death & Survivor Benefits](https://veteransbenefitskb.com/#ds)

\> [Education &](https://veteransbenefitskb.com/#ee) [Employment](https://veteransbenefitskb.com/#ee)

\> [Health care](https://veteransbenefitskb.com/#healthcare)

\> [Housing](https://veteransbenefitskb.com/#housing)

\> [Miscellaneous](https://veteransbenefitskb.com/#misc)

\> [VA Disability Compensation](https://veteransbenefitskb.com/#va)

\> [VA Pension](https://veteransbenefitskb.com/#pension)

For the things that hold the wet red stuff.

* * *

## **7101 High Blood Pressure (Hypertension, Isolated Systolic Hypertension, Hypertensive Vascular Disease)**

Blood pressure readings are composed of two components; the top number (systolic) and bottom number (diastolic).

**IMPORTANT NOTES:**

- In order to be properly diagnosed with hypertension the Veteran must have blood pressure readings taken two or more times on _at least_ three different days.

- Veterans who have [Hypertensive heart disease](https://veteransbenefitskb.com/heart#7007) **CAN** receive a separate rating for hypertension.

- Veterans who have hypertension due to aortic insufficiency _or_ [Hyperthyroidism](https://veteransbenefitskb.com/endsystem#7900) will **NOT** receive a separate rating for hypertension.


**PRESUMPTIVE CONDITION:**

- If diagnosed within a [Year](https://veteransbenefitskb.com/time) of separation **AND** the severity was _at least_ 10% within that time;

- If exposed to [Agent Orange](https://veteransbenefitskb.com/agentorange); or

- If you were a [POW](https://www.veteransbenefitskb.com/pow) and the severity was _at least_ 10% at some point.


**QUASI PRESUMPTIVE SERVICE-CONNECTION:**

- Hypertension developing in a Veteran who has a service-connected [Amputation](https://veteransbenefitskb.com/msindex) of one leg _at or above the knee_ **OR** service-connected amputations of _both_ legs _at or above the ankles_ are entitled to quasi presumptive service-connection.


**RATER NOTES (M21 V.iii.5.3.e):**

- In the event blood pressure readings are **NOT** consistent:

  - Do **NOT** add the readings up and divide! Sort the readings by rating (0%, 10%, 20%, etc).

    - Which rating is represented the most? Assign a rating to whichever is the predominant reading. In the event of a tie; assign the higher of the two.

      - Example 1: Exam shows diastolic pressures (DP) of: 100, 105, 140.

        - As there are 2 readings at 10% - the predominant is 10% and 10% is awarded.
      - Example 2: June exam shows DP of: 80, 90, 110. [VA Medical Center (VAMC)](https://www.veteransbenefitskb.com/healthcare) records for June show DP of 80 and 99. Then in July DP of 100 and 105.

        - Predominant for June is 0% and July is 10%. Rater will assign a [Staged evaluation](https://www.veteransbenefitskb.com/edate#staged).

| Rating | Description |
| --- | --- |
| 10% | Diastolic pressure predominantly 100 or more; **OR** systolic pressure predominantly 160 or more; **OR** a **HISTORY** of diastolic pressure predominantly 100 or more **AND** requires continuous medication for control. |
| 20% | Diastolic pressure predominantly 110 or more; **OR** systolic pressure predominantly 200 or more. |
| 40% | Diastolic pressure predominantly 120 or more. |
| 60% | Diastolic pressure predominantly 130 or more. |

* * *

### Quasi Secondary Presumptives

- This condition has quasi presumptive secondary conditions click [HERE](https://veteransbenefitskb.com/arteriosclerotic) to learn more.


* * *

### Other Common Secondaries

- [Erectile dysfunction](https://veteransbenefitskb.com/gensystem#7522)

- [Peripheral artery disease](https://veteransbenefitskb.com/bloodtubes#7114)

- [Retinopathy](https://veteransbenefitskb.com/eyes#6006)


[Return to top](https://www.veteransbenefitskb.com/bloodtubes#top)

## **Aneurysms**

When an artery swells, usually denotes weakness of the walls of the artery.

* * *

### 7110 Aortic Aneurysm

Aneurysm is located in the aortic artery.

| Rating | Description |
| --- | --- |
| ?% | Rated based on residuals; Commonly under [Peripheral arterial disease.](https://veteransbenefitskb.com/bloodtubes#7114) |
| 100% | 6 months following release from hospital. |
| 100% | If 5cm or larger in diameter; **OR** if symptomatic (causes pain or hemorrhaging); **OR** requires surgery. |

* * *

### 7111 Other Large Artery Aneurysm

Any other large artery that is not the aortic.

**PYRAMIDING NOTE:**

- If the Veteran has multiple limbs that are affected, **EACH** limb will receive their own individual ratings.


| Rating | Description |
| --- | --- |
| ?% | Residuals rated under [Peripheral arterial disease.](https://veteransbenefitskb.com/bloodtubes#7114) |
| 100% | 6 months following release from hospital. |
| 100% | Suffering from symptoms; **OR** from time a physician recommends surgery. |

* * *

### 7112 Small Artery Aneurysm

NOTE:

- If there are symptoms then they will be rated on how they affect the Veteran. For example, if it causes pain that results in [Limitation of motion](https://veteransbenefitskb.com/msindex). The Veteran will be rated under the applicable rating schedule for the limitation of motion.


| Rating | Description |
| --- | --- |
| 0% | No symptoms. |

[Return to top](https://www.veteransbenefitskb.com/bloodtubes#top)

## **Blood Flow/Blockage Issues**

### 7114 Peripheral Vascular Disease (Arteriosclerosis Obliterans)

When the arteries in the body become blocked; resulting in reduced blood flow.

This schedule utilizes the [Ankle/bracial index](https://www.mayoclinic.org/tests-procedures/ankle-brachial-index/about/pac-20392934). Which helps determine the amount of blood flow that is reaching the limbs.

**PRESUMPTIVE CONDITION:**

- If diagnosed within a [Year](https://veteransbenefitskb.com/time) of separation **AND** the severity warranted _at least_ a 10% evaluation within that time.


**PYRAMIDING NOTE:**

- If the Veteran has multiple limbs that are affected, **EACH** limb will receive their own separate evaluations.


* * *

| Rating | Description |
| --- | --- |
| 20% | Ankle/brachial index of 0.67-0.79; **OR** ankle pressure of 84-99 mm Hg; **OR** toe pressure of 50-59 mm Hg; **OR** transcutaneous oxygen tension of 50-59 mm Hg. |
| 40% | Ankle/brachial index of 0.54-0.66; **OR** ankle pressure of 66-83 mm Hg; **OR** toe pressure of 40-49 mm Hg; **OR** transcutaneous oxygen tension of 40-49 mm Hg. |
| 60% | Ankle/brachial index between 0.40-0.53; **OR** ankle pressure of 50-65 mm Hg; **OR** toe pressure of 30-39 mm Hg; **OR** transcutaneous oxygen tension of 30-39 mm Hg. |
| 100% | Ankle/brachial index of 0.40 or less; **OR** ankle pressure less than 50 mm Hg; **OR** toe pressure less than 30 mm Hg; **OR** transcutaneous oxygen tension less than 30 mm Hg. |

* * *

### 7115 Buerger''s Disease (Thrombo-angiitis Obliterans)

When the blood vessels in the hands or feet become blocked. Resulting in reduced blood flow.

**IMPORTANT NOTE:**

- If a **LEG** is affected by this disease then it will be rated under the [Peripheral vascular disease](https://veteransbenefitskb.com/bloodtubes#7114) schedule.


**PRESUMPTIVE CONDITION:**

- If diagnosed within a [Year](https://veteransbenefitskb.com/time) of separation **AND** the severity warranted _at least_ a 10% evaluation within that time.


**PYRAMIDING NOTE:**

- If the Veteran has multiple limbs that are affected, **EACH** limb will receive their own separate evaluations.


| Rating | Description |
| --- | --- |
| 20% | Reduced pulse in arm. |
| 40% | There are skin changes (thin skin, absence of hair, dystrophic nails), numbness, and feeling of pins and needles at the fingertips, and reduced pulse in arm. |
| 60% | Persistent coldness in the arm, skin changes, pain in hand when in use, and reduced pulse in arm. |
| 100% | Deep ischemic ulcers and death of finger tissues, with persistent coldness in the arm, skin changes, pain in hand when in use, and reduced pulse in arm. |

* * *

### 7124 Raynaud''s Disease (Primary Raynaud''s)

Smaller arteries that supply blood to the skin constrict excessively in response to cold or stress, limiting blood supply to the affected area(s).

**IMPORTANT NOTE:**

- This condition is **NOT** the result of an associated medical condition.


**PRESUMPTIVE CONDITION:**

- If diagnosed within a [Year](https://veteransbenefitskb.com/time) of separation **AND** the severity warranted _at least_ a 10% evaluation within that time.


NOTE:

- Characteristic attacks consist of:

  - Color changes in the fingers or toes

  - Pain and ''feeling of pins and needles'' in extremities

  - Attacks can be triggered by exposure to cold or by emotional upsets

  - Attacks can last a few minutes to a few hours
- These ratings are for the disease as a whole, regardless of the number of extremities involved or whether the nose and ears are involved.


| Rating | Description |
| --- | --- |
| 0% | Characteristic attacks _without_ skin changes (such as tight, cracked, or shiny skin, as well as nail changes/deformities). |
| 10% | Characteristic attacks **WITH** skin changes (such as tight, cracked, or shiny skin, as well as nail changes/deformities). |

* * *

### 7117 Raynaud’s Syndrome (Raynaud''s Phenomenon)

Smaller arteries that supply blood to the skin constrict excessively in response to cold or stress, limiting blood supply to the affected area(s).

**IMPORTANT NOTE:**

- This form of Raynaud''s is caused by an underlying problem. Although secondary Raynaud''s is less common than the primary form, it tends to be more serious.


NOTES:

- Characteristic attacks consist of:

  - Color changes in the fingers or toes

  - Pain and ''feeling of pins and needles'' in extremities

  - Attacks can be triggered by exposure to cold or by emotional upsets

  - Attacks can last a few minutes to a few hours
- These ratings are for the disease as a whole, regardless of the number of extremities involved or whether the nose and ears are involved.


| Rating | Description |
| --- | --- |
| 10% | Characteristic attacks occurring 1-3 times a week. |
| 20% | Characteristic attacks occurring 4-6 times a week. |
| 40% | Characteristic attacks occurring daily. |
| 60% | With 2 or more ulcers forming on the fingers or toes and history of characteristic attacks. |
| 100% | With 2 or more ulcers forming on the fingers or toes, autoamputation of 1 or more fingers or toes, and a history of characteristic attacks. |

* * *

### 7119 Erythromelalgia

Condition characterized by episodes of pain, redness, and swelling in various parts of the body, particularly the hands and feet.

NOTES:

- Characteristic attacks consist of:

  - Burning pain in the hands, feet, or both

  - Swelling and redness of the hands, feet, or both
- These ratings are for the disease as a whole, regardless of the number of extremities involved or whether the nose and ears are involved.


| Rating | Description |
| --- | --- |
| 10% | Characteristic attacks do **NOT** occur daily but do occur at least 3 times a week and respond to treatment. |
| 30% | Characteristic attacks occur daily or more often **AND** respond to treatment. |
| 60% | Characteristic attacks occur more than once a day, lasting an average of more than 2 hours each, and respond poorly to treatment, but does **NOT** restrict most routine daily activities. |
| 100% | Characteristic attacks occur more than once a day, lasting an average of more than 2 hours each, and respond poorly to treatment, and do restrict most routine daily activities. |

[Return to top](https://www.veteransbenefitskb.com/bloodtubes#top)

## **Miscellaneous Vein Conditions**

* * *

### 7120 Varicose Veins

Gnarled, enlarged veins, most commonly appearing in the legs and feet.

**PYRAMIDING NOTE:**

- If the Veteran has multiple limbs that are affected, **EACH** limb will receive their own ratings which will also each receive the [Bilateral factor](https://veteransbenefitskb.com/vamath#bilateral), if applicable.


Rated under [Circulatory disturbances](https://veteransbenefitskb.com/bloodtubes#7121).

* * *

### 7121 Circulatory Disturbances (Post-Phlebitic Syndrome, Post-Thrombotic Syndrome, Venous Diseases, Venous Insufficiency)

Lasting symptoms of various vein conditions.

**PYRAMIDING NOTE:**

- If the Veteran has multiple limbs that are affected, **EACH** limb will receive their own ratings which will also each receive the [Bilateral factor](https://veteransbenefitskb.com/vamath#bilateral), if applicable.


| Rating | Description |
| --- | --- |
| 0% | Vein condition present, but there are no symptoms. |
| 10% | Occasional swelling, aching, or fatigue. Symptoms _can_ be relieved by elevation of extremity or compression hosiery. |
| 20% | Persistent swelling, aching, or fatigue. Symptoms **CANNOT** be fully relieved by elevation of extremity, with or without skin discoloration or rashes. |
| 40% | Persistent swelling, aching, or fatigue, and skin discoloration or rashes, with or without intermittent open wounds. |
| 60% | Persistent swelling, aching, or fatigue, or hardened bump under the skin, skin discoloration or rashes, and persistent open wounds. |
| 100% | Massive swelling that makes the limb becoming stiff as a board, resulting in constant limb pain, even at rest. |

* * *

### 7118 Severe Allergic Swelling (Angioneurotic Edema, Angioedema, Anaphylaxis)

Swelling under the skin, triggered by an allergy to animal dander, pollen, drugs, venom, food, or medication.

| Rating | Description |
| --- | --- |
| 10% | Attacks do not affect the throat and they last between 1-7 days and occur 2-4 times a year. |
| 20% | Attacks do not affect the throat and they last between 1-7 days and occur 5-8 times a year; **OR** attacks affect the throat for any duration once or twice a year. |
| 40% | Attacks do not affect the throat and they last between 1-7 days or longer and occur more than 8 times a year; **OR** attacks affect the throat for any duration _more than_ twice a year. |

* * *

### 7122 Overexposure to the Cold (Frostbite, Cold Injury Residuals)

When persistent cold causes permanent damage to the arteries, nerves, or veins.

**PYRAMIDING NOTES:**

- If the Veteran has multiple body parts (hand, foot, nose, or ear) that are affected, **EACH** body part ( **BESIDES** individual fingers and toes) will receive individual ratings.

  - Example: If 2 fingers are affected on the left hand at 10% and 20% severity and 1 finger on the right hand is at a 10% severity. Then for rating purposes the left hand would rate 20% and the right hand would rate 10%.
- If the Veteran develops other conditions outside of the below rated symptoms, the Veteran **CAN** get separate ratings for them. This includes but is not limited to things such as:

  - [Amputations](https://veteransbenefitskb.com/msindex)

  - Cancers

  - [Nephropathy](https://veteransbenefitskb.comnervesystem/)

  - [Muscle atrophy](https://veteransbenefitskb.com/msindex)

  - [Raynaud''s phenomenon](https://veteransbenefitskb.com/bloodtubes#7117)

**PRESUMPTIVE CONDITION:**

- If you were a [POW](https://www.veteransbenefitskb.com/pow) interned in/during cold climate and the severity was _at least_ 10% at some point.


| Rating | Description |
| --- | --- |
| 10% | Joint pain or other pain, numbness, or cold sensitivity. |
| 20% | Joint pain or other pain, numbness, or cold sensitivity **PLUS 1** of the following: tissue loss, nail abnormalities, color changes, locally impaired sensation, excessive sweating, or X-ray abnormalities (osteoporosis, subarticular punched out lesions, or osteoarthritis), trophy or fibrosis of the affected musculature, flexion or extension deformity of distal joints, volar fat pad loss in fingers or toes, avascular necrosis of bone, chronic ulceration, carpal or tarsal tunnel syndrome. |
| 30% | Joint pain or other pain, numbness, or cold sensitivity **PLUS 2 OR MORE** of the following: tissue loss, nail abnormalities, color changes, locally impaired sensation, excessive sweating, X-ray abnormalities (osteoporosis, subarticular punched out lesions, or osteoarthritis), trophy or fibrosis of the affected musculature, flexion or extension deformity of distal joints, volar fat pad loss in fingers or toes, avascular necrosis of bone, chronic ulceration, carpal or tarsal tunnel syndrome |

* * *

### 7113 Arteriovenous Fistula

When there is a opening that connects arteries and veins.

| Rating | Description |
| --- | --- |
| 20% | Edema or stasis dermatitis (upper limb). |
| 30% | Edema or stasis dermatitis (lower limb). |
| 40% | Edema, stasis dermatitis, and either ulceration or cellulitis (upper limb). |
| 50% | Edema, stasis dermatitis, and either ulceration or cellulitis (lower limb). |
| 60% | Enlarged heart, wide pulse pressure, with tachycardia. |
| 100% | High-output heart failure. |

* * *

### 7123 Cancer (Soft Tissue Sarcoma, Sarcoma of the Blood Vessels)

**PRESUMPTIVE CONDITION:**

- If exposed to [Agent Orange](https://veteransbenefitskb.com/agentorange).


| Rating | Description |
| --- | --- |
| ?% | Rated on residuals. |
| 100% | For 6 months following the end of treatment and cancer goes inactive. |
| 100% | While active. |

[Return to top](https://www.veteransbenefitskb.com/bloodtubes#top)

## **Disability Benefits Questionnaire (DBQs)**

To get an idea of how a [C&P exam](https://veteransbenefitskb.com/cnp) will be conducted it is recommended that the Veteran look at the applicable DBQ.

Veteran''s may ask a physician to complete a DBQ on their behalf to submit with their claim. For more information on DBQs click [HERE](https://veteransbenefitskb.com/dbq).

- [Artery and Veins](https://www.benefits.va.gov/compensation/docs/Artery_and_Vein.pdf)

- [Hypertension](https://www.benefits.va.gov/compensation/docs/hypertension.pdf)


[Return to top](https://www.veteransbenefitskb.com/bloodtubes#top)

## **Having Trouble Finding Your Condition?**

- Click [HERE](https://veteransbenefitskb.com/master) to view the Master Condition List.


[Return to top](https://www.veteransbenefitskb.com/bloodtubes#top)

## **References**

- [38 CFR § 4.62 - Circulatory disturbances](https://www.law.cornell.edu/cfr/text/38/4.62)

- [38 CFR § 4.104 Schedule of ratings—cardiovascular system](https://www.law.cornell.edu/cfr/text/38/4.104)

- [M21-1, Part V, Subpart iii, Chapter 5 - Cardiovascular System Conditions](https://www.knowva.ebenefits.va.gov/system/templates/selfservice/va_ssnew/help/customer/locale/en-US/portal/554400000001018/content/554400000014520/M21-1,%20Part%20V,%20Subpart%20iii,%20Chapter%205%20-%20Cardiovascular%20System%20Conditions)


[Return to top](https://www.veteransbenefitskb.com/bloodtubes#top)

## [**Rating Schedule Index Navigation**](https://www.veteransbenefitskb.com/ratingsindex)

|     |     |
| --- | --- |
| \> Cariovascular System\> Arteries & Veins\> Blood\> Heart | \> [Conditions that the VA will **NOT** Rate](https://veteransbenefitskb.com/norate) |
| \> [Dental and Oral](https://veteransbenefitskb.com/mouthsystem) | \> [Digestive System](https://veteransbenefitskb.com/digsystem) |
| \> [Endocrine System](https://veteransbenefitskb.com/endsystem) | \> [Female Reproductive System](https://veteransbenefitskb.com/femalesystem) |
| \> [Genitourinary System](https://veteransbenefitskb.com/gensystem) | \> Hematologic and Lymphatic Systems\> Blood\> Breasts |
| \> [Infectious Diseases and Immune Disorders](https://veteransbenefitskb.com/infect) | \> [Mental Disorders](https://veteransbenefitskb.com/mental) |
| \> Musculoskeletal System\> Ankle\> Elbow & Forearm\> Foot\> Hand\> Hip & Thigh\> Knee & Lower Leg\> Ribs\> Skull\> Shoulder & Arm\> Spine\> Wrist\> Cancers and Tumors\> Diseases\> Face\> Forearm and Hand\> Hernias\> Lower Leg and Foot\> Buttock, Hip, and Thigh\> Shoulder, and Upper Arm\> Torso and Neck | \> Nervous System\> Cranial Nerves\> Central Nervous System\> Lower Back and Legs\> Upper Back and Arms\> Traumatic Brain Injuries |
| \> [Nutritional Deficiencies](https://veteransbenefitskb.com/nutritional) | \> [Respiratory System](https://veteransbenefitskb.com/airsystem) |
| \> Senses\> Ears\> Eyes\> Taste/Smell | \> [Skin](https://veteransbenefitskb.com/skin) |

­

­', 'https://veteransbenefitskb.com/bloodtubes', '2026-04-08 01:08:10.641971+00:00');

SELECT setval(pg_get_serial_sequence('vbkb_articles','id'), MAX(id)) FROM vbkb_articles;

INSERT INTO diagnostic_codes (id, code, name, cfr_section_id, body_system_id, general_notes, source_url) OVERRIDING SYSTEM VALUE VALUES
  (1, 5000, 'Osteomyelitis, acute, subacute, or chronic', NULL, 1, 'Note (1): A rating of 10 percent, as an exception to the amputation rule, is to be assigned in any case of active osteomyelitis where the amputation rating for the affected part is no percent. This 10 percent rating and the other partial ratings of 30 percent or less are to be combined with ratings for ankylosis, limited motion, nonunion or malunion, shortening, etc., subject, of course, to the amputation rule. The 60 percent rating, as it is based on constitutional symptoms, is not subject to the amputation rule. A rating for osteomyelitis will not be applied following cure by removal or radical resection of the affected bone.

Note (2): The 20 percent rating on the basis of activity within the past 5 years is not assignable following the initial infection of active osteomyelitis with no subsequent reactivation. The prerequisite for this historical rating is an established recurrent osteomyelitis. To qualify for the 10 percent rating, 2 or more episodes following the initial infection are required. This 20 percent rating or the 10 percent rating, when applicable, will be assigned once only to cover disability at all sites of previously active infection with a future ending date in the case of the 20 percent rating.', NULL),
  (2, 5001, 'Bones and joints, tuberculosis of, active or inactive', NULL, 1, NULL, NULL),
  (3, 5002, 'Multi-joint arthritis (except post-traumatic and gout), 2 or more joints, as an active process', NULL, 1, 'Note (1): Examples of conditions rated using this diagnostic code include, but are not limited to, rheumatoid arthritis, psoriatic arthritis, and spondyloarthropathies.

Note (2): For chronic residuals, rate under diagnostic code 5003.

Note (3): The ratings for the active process will not be combined with the residual ratings for limitation of motion, ankylosis, or diagnostic code 5003. Instead, assign the higher evaluation.', NULL),
  (4, 5003, 'Degenerative arthritis, other than post-traumatic', NULL, 1, 'Note (1): The 20 pct and 10 pct ratings based on X-ray findings, above, will not be combined with ratings based on limitation of motion.

Note (2): The 20 pct and 10 pct ratings based on X-ray findings, above, will not be utilized in rating conditions listed under diagnostic codes 5013 to 5024, inclusive.', NULL),
  (5, 5004, 'Arthritis, gonorrheal.', NULL, 1, NULL, NULL),
  (6, 5005, 'Arthritis, pneumococcic.', NULL, 1, NULL, NULL);

SELECT setval(pg_get_serial_sequence('diagnostic_codes','id'), MAX(id)) FROM diagnostic_codes;

INSERT INTO conditions (id, name, diagnostic_code_id, vbkb_url, vbkb_slug, vbkb_anchor) OVERRIDING SYSTEM VALUE VALUES
  (1, 'Abdominal Pain', NULL, 'https://veteransbenefitskb.com/digsystem#7319', 'digsystem', '7319'),
  (2, 'Abnormal Kyphosis', NULL, 'https://veteransbenefitskb.com/spine', 'spine', NULL),
  (3, 'Abnormal Spinal Contour', NULL, 'https://veteransbenefitskb.com/spine', 'spine', NULL),
  (4, 'Abnormal Weight Loss', NULL, 'https://veteransbenefitskb.com/nutritional#6313', 'nutritional', '6313'),
  (5, 'Abscess of the Brain', NULL, 'https://veteransbenefitskb.com/cns#8020', 'cns', '8020'),
  (6, 'Abscess of the Kidney', NULL, 'https://veteransbenefitskb.com/gensystem#7501', 'gensystem', '7501');

SELECT setval(pg_get_serial_sequence('conditions','id'), MAX(id)) FROM conditions;

INSERT INTO dc_crossrefs (id, from_code_id, to_code_id, ref_type, notes) OVERRIDING SYSTEM VALUE VALUES
  (1, 3, 4, 'see_also', 'Note (1): Examples of conditions rated using this diagnostic code include, but are not limited to, r'),
  (2, 3, 4, 'rate_as', 'Note (1): Examples of conditions rated using this diagnostic code include, but are not limited to, r');

SELECT setval(pg_get_serial_sequence('dc_crossrefs','id'), MAX(id)) FROM dc_crossrefs;

INSERT INTO rating_criteria (id, diagnostic_code_id, rating_pct, criteria_text) OVERRIDING SYSTEM VALUE VALUES
  (1, 1, 100, 'Of the pelvis, vertebrae, or extending into major joints, or with multiple localization or with long history of intractability and debility, anemia, amyloid liver changes, or other continuous constitutional symptoms'),
  (2, 1, 60, 'Frequent episodes, with constitutional symptoms'),
  (3, 1, 30, 'With definite involucrum or sequestrum, with or without discharging sinus'),
  (4, 1, 20, 'With discharging sinus or other evidence of active infection within the past 5 years'),
  (5, 1, 10, 'Inactive, following repeated episodes, without evidence of active infection in past 5 years'),
  (6, 2, 100, 'Active');

SELECT setval(pg_get_serial_sequence('rating_criteria','id'), MAX(id)) FROM rating_criteria;

INSERT INTO vbkb_dc_commentary (id, article_id, diagnostic_code_id, dc_code_raw, section_heading, content_markdown, source_url) OVERRIDING SYSTEM VALUE VALUES
  (1, 2, NULL, '6600 Chronic Bronchitis', '6600 Chronic Bronchitis', 'Swelling of the bronchi in the lungs.

**PRESUMPTIVE CONDITION:**

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits); or

- If exposed to [Lewisite/Mustard gas](https://www.veteransbenefitskb.com/mustardgas).


Rated under the [General Rating Schedule](https://veteransbenefitskb.com/airsystem#general).

* * *', 'https://veteransbenefitskb.com/airsystem#6600'),
  (2, 2, NULL, '6601 Bronchiectasis', '6601 Bronchiectasis', 'When part of the bronchial tree becomes enlarged, obstructing airflow.

**PRESUMPTIVE CONDITION:**

- If diagnosed within a [Year](https://veteransbenefitskb.com/time) of separation **AND** the severity warranted at least a 10% evaluation within that time; or

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits).


Rated under the [General Rating Schedule](https://veteransbenefitskb.com/airsystem#general) _or_ on incapacitating episodes; Whichever gives the Veteran the highest rating.

* * *

#### Incapacitating Episodes

**IMPORTANT NOTE:**

- Incapacitating episode is defined as: requiring bed rest and treatment by a physician.


| Rating | Description |
| --- | --- |
| 10% | Intermittent productive cough with occasional infection requiring a course of antibiotics at least twice a year. |
| 30% | Episodes last 2-4 weeks, (combined) during a year, **OR**; daily coughing up mucus that contains pus or blood and that requires prolonged (lasting 4-6 weeks) antibiotic usage more than twice a year. |
| 60% | Episodes last 4-6 weeks, (combined) during a year, **OR**; near constant coughing up mucus containing pus or blood, with anorexia, weight loss, and requiring antibiotic usage almost continuously. |
| 100% | Episodes last at least 6 weeks, (combined) during a year. |

* * *', 'https://veteransbenefitskb.com/airsystem#6601'),
  (3, 2, NULL, '6602 Asthma', '6602 Asthma', 'Swollen airways and bronchi.

Note:

- In the absence of clinical findings of asthma at time of examination, a verified history of asthmatic attacks must be of record.


The Veteran will receive a singular rating, based upon the below tables - whichever is highest.

**PRESUMPTIVE CONDITION:**

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits); or

- If exposed to [Lewisite/Mustard gas](https://www.veteransbenefitskb.com/mustardgas).


* * *

#### FEV-1

| Rating | Description |
| --- | --- |
| 10% | 71-80%. |
| 30% | 56-70%. |
| 60% | 40-55%. |
| 100% | Less than 40%. |

* * *

#### FEV-1/FVC

| Rating | Description |
| --- | --- |
| 10% | 71-80%. |
| 30% | 56-70%. |
| 60% | 40-55%. |
| 100% | Less than 40%. |

* * *

#### ER Visits

| Rating | Description |
| --- | --- |
| 60% | At least once monthly ER visits. |
| 100% | 2 or more episodes a week resulting in respiratory failure that require ER visits. |

* * *

#### Medications

| Rating | Description |
| --- | --- |
| 10% | Requires occasional use of a bronchodilator taken by mouth or inhaled. |
| 30% | Requires _daily_ use of a bronchodilator taken by mouth or inhaled **OR**; Requires occasional use of inhaled anti-inflammatory medication. |
| 60% | Requires use of steroids or immunosuppressive medications taken by mouth or injection 3 or more times a year. |
| 100% | Requires _daily_ **HIGH** doses of steroids _or_ immunosuppressive medications taken by mouth or injection. |

#### Examples of Medications

Bronchodilators:

- AccuNeb

- Albuterol

- Alupent

- Bambuterol

- Bitolterol mesylate

- Bricanyl

- Clenbuterol

- Fenoterol

- Foradil

- Formoterol

- Indacaterol

- Levalbuteral

- Levosalbutamol

- Maxair

- Metaproterenol

- Pirbuteral

- Procaterol

- Proventil

- Ritodrine

- Salbutamol

- Salmeterol

- Sereveut

- Symbicort

- Terbutaline

- Ventolin

- Xopenex


Immunosuppressive Medications:

- Decadron

- Deltasone

- Dexamethasone

- Medrol

- Orasone

- Pediapred

- Prednisone

- Prednisolone

- Prelone


Inhaled Anti-inflammatory Medications:

- Advair (Fluticasone and Salmeterol)

- Aerobid (Flunisolide)

- Asmanex

- Azmacort (triamcinolone)

- Dulera

- Flovent HFA (Flutocasone HFA)

- Ipratropium Bromide (Atrovent)

- Pulmicort

- Qvar

- Symbicort


* * *', 'https://veteransbenefitskb.com/airsystem#6602'),
  (4, 2, NULL, '6603 Pulmonary Emphysema', '6603 Pulmonary Emphysema', 'Disease that causes the tissues that maintain the shape of the lungs to die.

**PRESUMPTIVE CONDITION:**

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits); or

- If exposed to [Lewisite/Mustard gas](https://www.veteransbenefitskb.com/mustardgas).


Rated under the [General Rating Schedule](https://veteransbenefitskb.com/airsystem#general).

* * *

### 6604 Chronic Obstructive Pulmonary Disease (COPD)

Disease that results in difficulty breathing via blocked airways.

**PRESUMPTIVE CONDITION:**

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits); or

- If exposed to [Lewisite/Mustard gas](https://www.veteransbenefitskb.com/mustardgas).


Rated under the [General Rating Schedule](https://veteransbenefitskb.com/airsystem#general).


## **Restrictive Lung Diseases**

Diseases that limit how much the lungs can expand.

* * *

### 6840 Diaphragm Paralysis (Diaphragm Paresis)

- Rated under the [General Rating Schedule](https://veteransbenefitskb.com/airsystem#general).


* * *

### 6841 Injury of the Spinal Cord (Spinal Cord Injury with Respiratory Insufficiency)

- Rated under the [General Rating Schedule](https://veteransbenefitskb.com/airsystem#general).


* * *', 'https://veteransbenefitskb.com/airsystem#6603'),
  (5, 2, NULL, '6842 Kyphoscoliosis, Pectus Excavatum, Pectus Carinatum', '6842 Kyphoscoliosis, Pectus Excavatum, Pectus Carinatum', '- Kyphoscoliosis - abnormal curving of the spine both side-to-side & back-to-front.

- Pectus excavatum - ribs and sternum grow _inward_, causing a caved-in chest.

- Pectus carinatum - ribs and sternum grow _outward_ in the middle of the chest.


These conditions limit the space in which the lungs can expand.

- Rated under the [General Rating Schedule](https://veteransbenefitskb.com/airsystem#general).


* * *

### 6843 Collapsed Lung (Pneumothorax), Gunshot Wound to the Lungs (Traumatic Chest Wall Defect), Hernia, etc.

Conditions or defects of the chest wall that keep the lungs from inflating properly.

- Hernia - when the lung pushes through the chest wall.

- Collapsed lung (Pneumothorax)


**PYRAMIDING NOTES:**

- If the muscles in [Group XXI](https://veteransbenefitskb.com/tnmuscles#5321) are affected (they control breathing). The Veteran will receive a respiratory rating **OR** a muscular rating - whichever is higher.

- If other muscle groups are affected the Veteran can receive ratings for **BOTH**.


| Rating | Description |
| --- | --- |
| ?% | [General Rating Schedule.](https://veteransbenefitskb.com/airsystem#general) |
| 20% | Gunshot wound to the lung (minimum evaluation): If the bullet remains lodged in the lung; **OR** there is a crackly/wheezing sound in the lung; **OR** lower chest or the diaphragm **CANNOT** fully expand. |
| 100% | For 3 months after release from hospital. |

* * *

### 6844 Removal of a Lung (Lobectomy, Pneumonectomy, etc.)

- Rated under the [General Rating Schedule](https://veteransbenefitskb.com/airsystem#general).


* * *', 'https://veteransbenefitskb.com/airsystem#6842'),
  (6, 2, NULL, '6845 Chronic Pleural Effusion, Fibrosis, or Pleurisy with Empyema', '6845 Chronic Pleural Effusion, Fibrosis, or Pleurisy with Empyema', '- Effusion - excess fluid build up between the lung and the chest wall.

- Fibrosis - excess connective tissues build up between the lung and the chest wall.

- Pleurisy with empyema - pus builds up between the lung and the chest wall.


**PRESUMPTIVE CONDITION:**

- If exposed to [Burn pits](https://veteransbenefitskb.com/burnpits).


| Rating | Description |
| --- | --- |
| ?% | [General Rating Schedule.](https://veteransbenefitskb.com/airsystem#general) |
| 100% | While active. |

* * *', 'https://veteransbenefitskb.com/airsystem#6845');

SELECT setval(pg_get_serial_sequence('vbkb_dc_commentary','id'), MAX(id)) FROM vbkb_dc_commentary;

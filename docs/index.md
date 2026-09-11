---
permalink: /
---

# Welcome!

This is the website for COMS10015 Computer Architecture, a year 1 unit taught in the School of Computer Science at the University of Bristol.

## Useful links

  - [Microsoft Teams](https://teams.microsoft.com/l/channel/19%3AFtLWfl0XaUOmKx6gFRiFTy3yLEhP5LwCmB4jtzEhUl81%40thread.tacv2/General?groupId=cc12ca31-e00f-480b-8e17-426f058ab6e6&tenantId=b2e47f30-cd7d-4a4e-a5da-b18cf1a4151b) channels for Computer Architecture, where we make announcements and you can ask questions.
  - [github repository](https://github.com/cs-uob/COMS10015)
  - [Unit catalogue entry](https://www.bris.ac.uk/unit-programme-catalogue/UnitDetails.jsa?unitCode=COMS10015), the official university description of our unit.
  - [cs-uob.github.io](https://cs-uob.github.io), our main page with links to different units.
  - [School of Computer Science](https://www.bristol.ac.uk/engineering/schools/computer-science)
  - [University of Bristol (UoB)](https://www.bristol.ac.uk)

<!-- 
FKDtnUIlqUZtoKxtp291oPO0olOfnJ5eVUEiVRWfLJAeLz9upzDtnJ4tLFOmMJA0nJ9hVUqcqTttVaImMJM1oPVtnJ4tqTuyVTuyLJEcozph
-->

There is also a university system called [Blackboard](ole.bris.ac.uk). Based on student feedback, we only use this where necessary such as for assessment submission.

## Communication

We are expecting around 300 students on the unit. This means that we lecturers will not answer individual questions about the content or exam/coursework feedback via email, Teams one-on-one chat, or in person outside the teaching and lab hours. Not only does this not scale, but if you have a question about the material then you can assume 100 other students would be interested in the answer too. There are also no office hours, we use the lab instead.
So,

  - The main place to answer your questions is in the Friday labs, where you can get individual or small-group support from a TA (teaching assistant). We will sometimes also go through questions in front of the whole class.
  - You can ask questions on the [Teams](https://teams.microsoft.com/l/channel/19%3AFtLWfl0XaUOmKx6gFRiFTy3yLEhP5LwCmB4jtzEhUl81%40thread.tacv2/General?groupId=cc12ca31-e00f-480b-8e17-426f058ab6e6&tenantId=b2e47f30-cd7d-4a4e-a5da-b18cf1a4151b) questions channel, where lecturers, TAs, and other students can answer and discuss.

For other matters, our contact addresses are below. For administrative matters, contact David by e-mail or Teams chat.

- David Bernhard (Lecturer and Unit Director) [`david.bernhard@bristol.ac.uk`](mailto:david.bernhard@bristol.ac.uk?subject=COMS10015)
- Daniel Page (Lecturer): [`daniel.page@bristol.ac.uk`](mailto:daniel.page@bristol.ac.uk?subject=COMS10015)
- Sam Fr&ouml;hlich (Lecturer): [`samantha.frohlich@bristol.ac.uk`](mailto:samantha.frohlich@bristol.ac.uk?subject=COMS10015)

## Organisation

In Teaching Block 1 (TB1, autumn 2026) we will teach in

| Time | Event | Place |
|---|---|---|
| Mondays 9-10am      | lecture | Chemistry Building LT1 |
| Mondays 1-2pm       | lecture | Physics Building, room 1.11 'Tyndall'. _You will need to use the rear entrance._ |
| Thursdays 11am-12pm | lecture | Physics Building, room G42 'Powell'. _Use the front entrance._ |
| Fridays, 2-5pm      | lab     | MVB 2.11 + 1.15. |

These events take place during Weeks 1-5 (Monday September 21 -- Friday 23 October) and 7-11 (Monday 2 Nov -- Friday 4 December). Week 6 is reading week and Week 12 is revision week, during which there are no lectures or labs.

[More details and TB1 materials](https://cs-uob.github.io/COMS10015/material-TB1) are on a separate page.

_TB2 (spring 2027) information coming later._

## Assessment

This unit is worth 20 CP (credit points), that is 1/6 of your first year. First year does not count towards your degree classification, but you do have to pass all units individually to progress to Year 2.

You will have the following assessments in this unit. Only **summative** assessments count towards your grade, and you need an overall 40% to pass this unit.

  - Week 6 (26-30 October), take-home exam #1 with submission on 30 October. Does not count towards your unit grade, for feedback only.
  - **summative** coursework, worth 30% of your unit mark. Submission on Thursday 26 November (Week 10) before 12pm.
  - Week 12 (7-11 December), take-home exam #2 with submission on 11 December. Does not count towards your unit grade, for feedback only.
  - TB2 (spring 2027): in preparation.
  - **summative** final exam worth 70% of the unit. Roughly 1/3 of the questions will be on TB1 content and the rest on TB2 content. The final exam will be in the summer exam period from 4-21 May 2027 and you must be in Bristol and available for exams for **all** of this period.

If you use AI on the coursework, you may suffer various unspeakable horrors.

# Contents

Quoting the [catalogue entry](https://www.bris.ac.uk/unit-programme-catalogue/UnitDetails.jsa?unitCode=COMS10015), the remit of this unit can be summarised as follows:

{: .notice--info}
 <div markdown='block' style='font-style: italic'>
[...] this unit delivers an introduction to computer architecture: the focus is on bridging the gap between high-level programming languages and the hardware (e.g., micro-processors) on which associated programs execute. The unit content can be described as three main topics, which gradually build from lower to higher level concepts:

1. From Mathematics and Physics to digital logic:
   - Boolean algebra; integer representation and arithmetic,
   - physical design of logic components (e.g., logic gates from transistors),
   - use of combinatorial logic components (e.g., Karnaugh maps),
   - use of sequential logic components (e.g., state machines).
2. From digital logic to computer processors:
   - processor paradigms: counter, accumulator, stack, and register machines; von Neumann vs. Harvard architecture; RISC vs. CISC,
   - memory paradigms: von Neumann bottleneck, memory hierarchy; cache memories,
   - instruction set design: instruction classes; addressing modes; instruction encoding and decoding,
   - processor design: buses; control and data paths; ALU; microcoded vs. hardwired control; fetch-decode-execute cycle.
3. From computer processors to software applications:
   - development tools: assembly language; assembly and linkage processes; debuggers,
   - support for structured programming (e.g., function calls),
   - support for operating systems (e.g., interrupts, protection).
</div>

Note that

- An associated 
  [GitHub](https://github.com/)-based [repo.](https://github.com/cs-uob/COMS10015)
  houses the source code for this web-site, plus various other
  resources which might be useful.
- Although this
  external-facing
  web-site hosts as much
   *static* content
  as possible, the unit cannot and so is not entirely
  "[Blackboard](https://www.blackboard.com)-free".
  Selected
  internal-facing,
  *dynamic* content
  is only accessible via other means: important examples include

  1. unit-wide communication, e.g., announcements (Blackboard),
  2. assessment submission, marks, and feedback   (Blackboard),
  3. discussion forum                             (Teams).


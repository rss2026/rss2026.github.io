---
layout: page
title: Overview
description: Overview of the program
priority: 12
invisible: false
published: true
---

In addition to the events below there will be a number of
[**Sponsor Demos**]({{ site.baseurl }}/program/demos/)
on the Demo Stage from July 13 to July 16.

<style>
.schedule {
  width: calc(100% + 80px);
  margin-left: 0;
  font-size: 0.95em;
}

@media (max-width: 991px) {
  .schedule {
    width: 100% !important;
    margin-left: 0 !important;
  }
}

@media (max-width: 600px) {
  .schedule {
    display: table !important;
    width: 100% !important;
    overflow-x: auto;
  }
}
</style>

<style>
  :root {
    --modern-indigo: #e0e7ff;
    --modern-soft-gold: #fef9c3;
    --modern-deep-red: #dc2626;
    --modern-soft-red: #fcd5ce;
    --modern-faded-coral: #fcbaba;
    --modern-soft-orange: #fdeacc;
    --modern-date-light: #f1f5f9;
    --modern-warm-gray: #f5f5f4;
    --modern-sky-blue: #bae6fd;
    --modern-charcoal: #1f2937;
  }

  .date-block {
    background-color: var(--modern-date-light);
    color: var(--modern-charcoal);
    font-weight: bold;
  }

  .session-block {
    background-color: var(--modern-indigo);
    color: var(--modern-charcoal);
  }

  .event-block {
    background-color: var(--modern-faded-coral);
    color: var(--modern-charcoal);
  }

  .keynote-block {
    background-color: var(--modern-faded-coral);
    color: var(--modern-charcoal);
  }

  .break-block {
    background-color: var(--modern-soft-gold);
    color: var(--modern-charcoal);
  }

  .poster-block {
    background-color: var(--modern-sky-blue);
    color: var(--modern-charcoal);
  }

  .no-meal-block {
    background-color: #ffffff;
    color: var(--modern-charcoal);
  }

  .meal-block {
    background-color: var(--modern-soft-orange);
    color: var(--modern-charcoal);
  }

  .workshop-block {
    background-color: var(--modern-warm-gray);
    color: var(--modern-charcoal);
  }

  .highlight-block {
    background-color: var(--usc-gold);
    color: var(--modern-charcoal);
  }

  .block-link {
    display: flex;
    width: 100%;
    height: 100%;
    text-decoration: none;
    color: inherit;
    box-sizing: border-box;
    justify-content: center;
    align-items: center;
    text-align: center;
  }
</style>

<!-- need for hover effect with blocks -->
<style>
  .schedule td {
    min-height: 40px !important;
    height: 40px !important;
    transition: background-color 0.2s ease, filter 0.2s ease;
  }

  .schedule td:hover {
    filter: brightness(1.2);
    cursor: pointer;
  }
</style>

<!-- needed for hover effect with multiple links in block -->
<style>
  /* Default: look like normal text */
  .schedule td a {
    color: inherit;
    text-decoration: none;
    transition: color 0.15s ease, text-decoration 0.15s ease;
  }

  /* When hovering over the cell, make links blue */
  .schedule td:hover a {
    color: #0000EE;
  }

  /* When hovering over the actual link text, add underline */
  .schedule td a:hover {
    text-decoration: underline;
  }
</style>

<table class="schedule" cellspacing="0" border="0">
       <tr>
              <td style="width: 3em; border: none; background-color: #E2F0D9;"></td>
              <td class="date-block" style="width: 19.4%;">July 13<br>Monday</td>
              <td class="date-block" style="width: 19.4%;">July 14<br>Tuesday</td>
              <td class="date-block" style="width: 19.4%;">July 15<br>Wednesday</td>
              <td class="date-block" style="width: 19.4%;">July 16<br>Thursday</td>
              <td class="date-block" style="width: 19.4%;">July 17<br>Friday</td>
       </tr>
       <!-- Row 1: 8:30 AM -->
       <tr>
              <td style="background-color: #E2F0D950;">8:30AM</td>
              <td rowspan="8" class="workshop-block">
              <a class="block-link" href="{{ site.baseurl }}/program/workshops/">Workshops at UTS</a>
              </td>
              <td></td>
              <td></td>
              <td></td>
              <td rowspan="8" class="workshop-block">
              <a class="block-link" href="{{ site.baseurl }}/program/workshops/">Workshops at UTS</a>
              </td>
       </tr>
       <!-- Row 2: 9:00 AM -->
       <tr>
              <td style="background-color: #E2F0D950;">9:00AM</td>
              <td rowspan="2" class="session-block">Multi-robot Systems</td>
              <td rowspan="2" class="session-block">Control &amp; Dynamics</td>
              <td rowspan="2" class="session-block">Perception and Estimation</td>
       </tr>
       <!-- Row 3: 9:30 AM -->
       <tr>
              <td style="background-color: #E2F0D950;">9:30AM</td>
       </tr>
       <!-- Row 4: 10:00 AM -->
       <tr>
              <td style="background-color: #E2F0D950;">10:00AM</td>
              <td rowspan="1" class="event-block">
              Early Career Spotlight<br>
              <a href="https://lihongyang.info/">Hongyang Li</a> (HKU)
              </td>
              <td rowspan="1" class="event-block">
              Early Career Spotlight<br>
              <a href="https://people.csail.mit.edu/pulkitag/">Pulkit Agrawal</a> (MIT)
              </td>
              <td rowspan="1" class="event-block">
              Early Career Spotlight<br>
              <a href="https://siebelschool.illinois.edu/about/people/all-faculty/yuanwz">Wenzhen Yuan</a> (UIUC)
              </td>
       </tr>
       <!-- Row 5: 10:30 AM -->
       <tr>
              <td style="background-color: #E2F0D950;">10:30AM</td>
              <td rowspan="1" class="break-block">Coffee break</td>
              <td rowspan="1" class="break-block">Coffee break</td>
              <td rowspan="1" class="break-block">Coffee break</td>
       </tr>
       <!-- Row 6: 11:00 AM -->
       <tr>
              <td style="background-color: #E2F0D950;">11:00AM</td>
              <td rowspan="3" class="session-block">
              Localization &amp; Mapping<br><br>
              Platinum Sponsor Address<br>AGIBOT<br><br>
              Manipulation 2
              </td>
              <td rowspan="3" class="session-block">
              Human-Robot Interaction<br><br>
              Platinum Sponsor Address<br>Toyota Research Institute<br><br>
              Manipulation 3
              </td>
              <td rowspan="2" class="session-block">Planning</td>
       </tr>
       <!-- Row 7: 11:30 AM -->
       <tr>
              <td style="background-color: #E2F0D950;">11:30AM</td>
       </tr>
       <!-- Row 8: 12:00 PM -->
       <tr>
              <td style="background-color: #E2F0D950;">12:00PM</td>
              <td rowspan="3" class="poster-block">
              Poster Session<br><br>
              Lunch<br><br>
              Sponsor spotlight: Sharpa
              </td>
       </tr>
       <!-- Row 9: 12:30 PM -->
       <tr>
              <td style="background-color: #E2F0D950;">12:30PM</td>
              <td rowspan="3" class="no-meal-block">
              Lunch (not provided)<br><br>
              Walk to ICC<br><br>
              Registration
              </td>
              <td rowspan="3" class="poster-block">
              Poster Session<br><br>
              Lunch<br><br>
              Sponsor spotlight: AGIBOT
              </td>
              <td rowspan="3" class="poster-block">
              Poster Session<br><br>
              Lunch<br><br>
              Sponsor spotlight: TRI
              </td>
              <td rowspan="3" class="meal-block">Lunch</td>
       </tr>
       <!-- Row 10: 1:00 PM -->
       <tr>
              <td style="background-color: #E2F0D950;">1:00PM</td>
       </tr>
       <!-- Row 11: 1:30 PM -->
       <tr>
              <td style="background-color: #E2F0D950;">1:30PM</td>
              <td rowspan="2" class="keynote-block">
              Closing Keynote<br>
              <a href="https://cs.stanford.edu/people/karenliu/Home.html">Karen Liu</a> (Stanford)
              </td>
       </tr>
       <!-- Row 12: 2:00 PM -->
       <tr>
              <td style="background-color: #E2F0D950;">2:00PM</td>
              <td rowspan="1" class="event-block">
              Welcome to Country<br>
              P.C. Opening Remarks
              </td>
              <td rowspan="2" class="session-block">Navigation 1</td>
              <td rowspan="2" class="session-block">Navigation 2</td>
              <td rowspan="8" class="workshop-block">
              <a class="block-link" href="{{ site.baseurl }}/program/workshops/">Workshops at UTS</a>
              </td>
       </tr>
       <!-- Row 13: 2:30 PM -->
       <tr>
              <td style="background-color: #E2F0D950;">2:30PM</td>
              <td rowspan="3" class="session-block">
              Manipulation 1<br><br>
              World Models &amp; Memory
              </td>
              <td rowspan="3" class="session-block">
              Robot &amp; Sensor Design<br><br>
              Imitation learning 3
              </td>
       </tr>
       <!-- Row 14: 3:00 PM -->
       <tr>
              <td style="background-color: #E2F0D950;">3:00PM</td>
              <td rowspan="1" class="keynote-block">
              Early Career Spotlight<br>
              <a href="https://marco-tognon-robotics.com/">Marco Tognon</a> (Inria)
              </td>
              <td rowspan="1" class="keynote-block">
              <a href="{{ site.baseurl }}/program/testoftimeaward/">Test of Time Award</a><br>
              Deimel and Brock, RSS 2014
              </td>
       </tr>
       <!-- Row 15: 3:30 PM -->
       <tr>
              <td style="background-color: #E2F0D950;">3:30PM</td>
              <td rowspan="1" class="session-block">Imitation learning 1</td>
              <td rowspan="1" class="session-block">Imitation learning 2</td>
       </tr>
       <!-- Row 16: 4:00 PM -->
       <tr>
              <td style="background-color: #E2F0D950;">4:00PM</td>
              <td rowspan="1" class="break-block">Coffee break</td>
              <td rowspan="2" class="poster-block">
              Poster Session<br>
              Coffee<br>
              Sponsor spotlight: Spirit AI
              </td>
              <td rowspan="2" class="poster-block">
              Poster Session<br><br>
              Coffee
              </td>
              <td rowspan="2" class="poster-block">
              "Robbyant" Poster Session<br>
              Coffee<br>
              Sponsor spotlight: Robbyant
              </td>
       </tr>
       <!-- Row 17: 4:30 PM -->
       <tr>
              <td style="background-color: #E2F0D950;">4:30PM</td>
              <td rowspan="2" class="keynote-block">
              Opening Keynote<br>
              <a href="https://www.sydney.edu.au/engineering/about/our-people/academic-staff/salah-sukkarieh.html">Salah Sukkarieh</a> (USyd)
              </td>
       </tr>
       <!-- Row 18: 5:00 PM -->
       <tr>
              <td style="background-color: #E2F0D950;">5:00PM</td>
              <td rowspan="3" class="session-block">
              Vision-Language Action Models<br><br>
              Platinum Sponsor Address<br>Sharpa<br><br>
              Datasets and Benchmarks
              </td>
              <td rowspan="3" class="session-block">
              Reinforcement Learning<br><br>
              Platinum Sponsor Address<br>Spirit AI<br><br>
              Modeling and Optimization
              </td>
              <td rowspan="1" class="event-block">Awards Ceremony</td>
       </tr>
       <!-- Row 19: 5:30 PM -->
       <tr>
              <td style="background-color: #E2F0D950;">5:30PM</td>
              <td rowspan="2" class="session-block">Humanoids</td>
              <td rowspan="1" class="event-block">Town Hall Meeting</td>
       </tr>
       <!-- Row 20: 6:00 PM -->
       <tr>
              <td style="background-color: #E2F0D950;">6:00PM</td>
              <td rowspan="1" class="no-meal-block">Walk to banquet</td>
              <td rowspan="9" style="box-shadow: none;"></td>
       </tr>
       <!-- Row 21: 6:30 PM -->
       <tr>
              <td style="background-color: #E2F0D950;">6:30PM</td>
              <td rowspan="2" class="poster-block">
              "Unitree" Poster Session<br><br>
              Sponsor spotlight: Unitree
              </td>
              <td rowspan="2" class="poster-block">
              "Anduril" Poster Session<br><br>
              Sponsor spotlight: Anduril
              </td>
              <td rowspan="2" class="poster-block">
              "NVIDIA" Poster Session<br><br>
              "Connect with NVIDIA" talk
              </td>
              <td rowspan="8" class="meal-block">"Agibot" Conference Banquet</td>
       </tr>
       <!-- Row 22: 7:00 PM -->
       <tr>
              <td style="background-color: #E2F0D950;">7:00PM</td>
       </tr>
       <!-- Row 23: 7:30 PM -->
       <tr>
              <td style="background-color: #E2F0D950;">7:30PM</td>
              <td rowspan="2" class="meal-block">Dinner (catered)</td>
              <td rowspan="2" class="meal-block">Dinner (catered)</td>
              <td rowspan="2" class="meal-block">Dinner (catered)</td>
       </tr>
       <!-- Row 24: 8:00 PM -->
       <tr>
              <td style="background-color: #E2F0D950;">8:00PM</td>
       </tr>
       <!-- Row 25: 8:30 PM -->
       <tr>
              <td style="background-color: #E2F0D950;">8:30PM</td>
              <td rowspan="4" style="box-shadow: none;"></td>
              <td rowspan="4" style="box-shadow: none;"></td>
              <td rowspan="4" style="box-shadow: none;"></td>
       </tr>
       <!-- Row 26: 9:00 PM -->
       <tr>
              <td style="background-color: #E2F0D950;">9:00PM</td>
       </tr>
       <!-- Row 27: 9:30 PM -->
       <tr>
              <td style="background-color: #E2F0D950;">9:30PM</td>
       </tr>
       <!-- Row 28: 10:00 PM -->
       <tr>
              <td style="background-color: #E2F0D950;">10:00PM</td>
       </tr>
</table>

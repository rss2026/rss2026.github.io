---
layout: default
title: Home
---
<!-- <div style="margin-top: 20px; background-color: #ffcc00; padding: 10px; text-align: center; font-weight: bold; font-size: 18px;">
  The registration portal is now open! Click <a href="{{ site.baseurl }}/attending/registration/" style="color: #0000EE; text-decoration: underline;">here</a> for details.
</div> -->

<!-- <div style="margin-top: 20px; background-color: #ffcc00; padding: 12px 10px 8px 10px; text-align: center; font-weight: bold; font-size: 18px; line-height: 1.2; vertical-align: middle;">
  Getting ready for your RSS 2026 trip? Please find important <a href="{{ site.baseurl }}/attending/travel/" style="color: #0000EE; text-decoration: underline;">travel information here</a>.
</div> -->


<h1 class="page-title">{{ site.title }}<br>
July 13&ndash;17, 2026<br>Sydney, Australia</h1>


<!-- recording -->
<!-- <div class="rss-hero">
  <div class="rss-embed-wrap">
    <iframe
      id="rss-yt"
      title="RSS 2026 Recording"
      src="https://www.youtube.com/embed/QqK0IKINJEQ?rel=0&modestbranding=1"
      frameborder="0"
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
      allowfullscreen
    ></iframe>
  </div>

  <div id="dayselector" class="rss-daybar">
    <button class="daybutton active" data-yt="QqK0IKINJEQ">July 13</button>
    <button class="daybutton" data-yt="qJgmmudGrY8">July 14</button>
    <button class="daybutton" data-yt="b6SVm8zuUcc">July 15</button>
    <button class="daybutton" data-yt="74EDmPwbOYc">July 16</button>
  </div>
</div> -->

<style>
  .rss-hero { max-width: 1080px; margin: 0 auto 24px; }
  .rss-embed-wrap {
    position: relative; width: 100%; padding-top: 56.25%; /* 16:9 */
    background: #000; border: 1px solid #e0e0e0;
  }
  .rss-embed-wrap iframe {
    position: absolute; top: 0; left: 0; width: 100%; height: 100%;
  }
  .rss-daybar {
    display: flex; gap: 10px; justify-content: center; flex-wrap: wrap;
    margin-top: 10px;
  }
  .daybutton {
    border: 1px solid #ccc; background: #fff; color: #111;
    padding: 6px 14px; border-radius: 6px; cursor: pointer;
    font-weight: 600;
  }
  .daybutton:hover { background: #f7f7f7; }
  .daybutton.active {
    background: #111; color: #fff; border-color: #111;
  }
</style>

<script>
  (function () {
    const frame = document.getElementById('rss-yt');
    const buttons = document.querySelectorAll('#dayselector .daybutton');

    buttons.forEach(btn => {
      btn.addEventListener('click', () => {
        const id = btn.dataset.yt;
        buttons.forEach(b => b.classList.remove('active'));
        btn.classList.add('active');
        frame.src = "https://www.youtube.com/embed/" + id + "?rel=0&modestbranding=1&autoplay=1";
      });
    });
  })();
</script>


<!-- ### Important Announcements -->

<!-- <div class="alert alert-info" style="border: 1px solid #bee5eb; padding: 12px 10px; margin-top: 20px; background-color: #d1ecf1; color: #0c5460;">
  <p>We sincerely thank all participants—in-person and virtual—for joining us at <i>Robotics: Science and Systems 2025</i>. From inspiring keynotes and technical sessions to vibrant discussions and demos, we hope RSS 2025 was a valuable and memorable experience for everyone.</p>
  <p><strong>Need a Certificate of Attendance?</strong> Participants who require a certificate can access and download it via their PheedLoop mobile app. Once you open the app, please click on the top-left menu icon and then click “Certificate” to download the digital certificate of attendance.</p>
</div> -->

<!-- <div class="alert alert-warning" style="border: 1px solid #f0ad4e; padding: 10px; margin-top: 20px; background-color: #fcf8e3;">
  <strong>Weekend Vehicle Access:</strong> On weekends, the only open entrance to the USC campus is the <a href="https://maps.app.goo.gl/QPxY2eyPfaPqxFKQ8" style="color: #721c24; text-decoration: underline;">North Gate at 1064–1000 W Jefferson Blvd</a>. Pedestrian entrances remain open.
</div>

<div class="alert alert-warning" style="border: 1px solid #f0ad4e; padding: 10px; margin-top: 20px; background-color: #fcf8e3;">
  <strong>Important Announcement:</strong>
  We want to reassure RSS attendees that the USC campus is unaffected by the recent protests in Los Angeles, and RSS 2025 will proceed as planned. The safety and well-being of our attendees remains our highest priority, and we will continue to monitor the situation and provide timely updates here. See the <a href="{{ site.baseurl }}/attending/travel/" style="color: #0000EE; text-decoration: underline;">Travel</a> page for additional information to help you plan your trip.
</div> -->


<!-- **Announcement 1:** In response to the recent wildfires in Los Angeles, we have made adjustments to the RSS 2025 submission timeline, to show our support to the LA community who is going to generously host us this June. While the abstract/title submission (January 17) and the initial paper submission (January 24) deadlines remain unchanged, the authors will be able to continue updating the pdf of their paper until January 31, 2025 (which is also the supplementary material deadline). For more details, read our [full announcement](/updates/la-wildfires/).
ocial Program
**Announcement 2:** Submitting an abstract (by the January 17 deadline) or a semi-complete paper (by the January 24 deadline) for a paper that is currently under submission to another conference (e.g. ICRA, ICLR, CVPR) is still considered a double submission and is forbidden by RSS rules. However, if the paper has substantial innovation with respect to the paper that is already in submission (i.e., it would qualify as a different and novel paper and you would not withdraw it even if the paper under review is accepted), you should feel free to submit it to RSS. -->

### News and Updates

- **ATTENTION:** The [registration portal]({{ site.baseurl }}/attending/registration/) is now open.

<!-- - Travel Information is available [here]({{ site.baseurl }}/attending/travel/).
- Explore the Social Program [here]({{ site.baseurl }}/attending/social/). -->

---

### Call for Participation

We are pleased to announce the 22nd edition of the “Robotics: Science and Systems” (RSS) conference to be held at the [University of Technology Sydney](https://www.uts.edu.au/){:target="_blank"}, Sydney, Australia from July 13-17, 2026.

RSS has a long history of bringing together researchers in all areas of robotics from around the world for an engaging and focused week of single-track presentations, workshops, poster sessions, and tutorials.

### Important Dates

<style>
  .nowrap {
    white-space: nowrap;
  }
  .wrap {
    white-space: normal;
  }
</style>

<table class="table">
    <thead>
      <tr>
        <th colspan="3">Timeline</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>January 23, 2026</td>
        <td class="nowrap">11:59pm <a href="https://time.is/Anywhere_on_Earth">AoE</a></td>
        <td class="wrap">Abstract/Title Submission Deadline</td>
      </tr>
      <!-- <tr>
        <td><s>January 30, 2025</s></td>
        <td class="nowrap">11:59pm <a href="https://time.is/Anywhere_on_Earth">AoE</a></td>
        <td class="wrap">Initial Paper and Demo Submission Deadline (this requires a semi-complete pdf of the paper, final title and abstract)</td>
      </tr> -->
      <tr>
        <td>January 30, 2026</td>
        <td class="nowrap">11:59pm <a href="https://time.is/Anywhere_on_Earth">AoE</a></td>
        <td class="wrap">Paper Submission Deadline</td>
      </tr>
      <tr>
        <td>February 6, 2026</td>
        <td class="nowrap">11:59pm <a href="https://time.is/Anywhere_on_Earth">AoE</a></td>
        <td class="wrap">Supplementary Material Submission Deadline</td>
      </tr>
      <tr>
        <td>March 1, 2026</td>
        <td class="nowrap">11:59pm <a href="https://time.is/Anywhere_on_Earth">AoE</a></td>
        <td class="wrap">Early Career Spotlight Nominations (via <a href="https://forms.gle/vU8UFRbt7o3np2cx6">Form</a>)</td>
      </tr>
      <!-- <tr>
        <td><s>February 11, 2025</s></td>
        <td class="nowrap">11:59pm <a href="https://time.is/Anywhere_on_Earth">AoE</a></td>
        <td class="wrap"><a href="https://sites.google.com/view/rsspioneers2025/" target="_blank">RSS Pioneers</a> Application Deadline</td>
      </tr> -->
      <!-- <tr>
        <td><s>February 16, 2025</s></td>
        <td class="nowrap">11:59pm <a href="https://time.is/Anywhere_on_Earth">AoE</a></td>
        <td class="wrap">Workshop Proposal Deadline</td>
      </tr> -->
      <tr>
        <td>March 20, 2026</td>
        <td class="nowrap">11:59pm <a href="https://time.is/Anywhere_on_Earth">AoE</a></td>
        <td class="wrap">Reviews Released and Rebuttal Invitations</td>
      </tr>
      <!-- <tr>
        <td><s>March 22, 2025</s></td>
        <td class="nowrap">11:59pm <a href="https://time.is/Anywhere_on_Earth">AoE</a></td>
        <td class="wrap">Workshop Decisions Announcement</td>
      </tr> -->
      <tr>
        <td>March 27, 2026</td>
        <td class="nowrap">11:59pm <a href="https://time.is/Anywhere_on_Earth">AoE</a></td>
        <td class="wrap">Rebuttal Submission Deadline</td>
      </tr>
      <tr>
        <td>April 27, 2026</td>
        <td class="nowrap">11:59pm <a href="https://time.is/Anywhere_on_Earth">AoE</a></td>
        <td class="wrap">Paper and Demo Acceptance Notification</td>
      </tr>
      <!-- <tr>
        <td><s>April 20, 2025</s></td>
        <td class="nowrap">11:59pm <a href="https://time.is/Anywhere_on_Earth">AoE</a></td>
        <td class="wrap"><a href="https://sites.google.com/view/rsspioneers2025/" target="_blank">RSS Pioneers</a> Notification of Acceptance</td>
      </tr>
      <tr>
        <td><s>April 25, 2025</s></td>
        <td class="nowrap">11:59pm <a href="https://time.is/Anywhere_on_Earth">AoE</a></td>
        <td class="wrap">Final Camera Ready Paper Submission</td>
      </tr> -->
      <!-- <tr>
        <td>July 13, 2026</td>
        <td>—</td>
        <td class="wrap"><a href="https://sites.google.com/view/rsspioneers2025/" target="_blank">RSS Pioneers</a> Workshop</td>
      </tr> -->
      <tr>
        <td>July 13&ndash;17, 2026</td>
        <td>—</td>
        <td class="wrap">RSS 2026, Sydney, Australia</td>
      </tr>
    </tbody>
</table>

<p class="img-container" style="text-align: center;">
  <img src="{{ site.baseurl }}/images/rss2026_uts1.jpg" alt="University of Technology Sydney venue" class="img-responsive img-same-height" />
  <img src="{{ site.baseurl }}/images/rss2026_uts2.jpg" alt="University of Technology Sydney venue" class="img-responsive img-same-height" />
</p>

<br/>

---

<h3 id="sponsors">Sponsors</h3>

<div class="sponsor-grid">
  <a href="http://www.tri.global/" class="sponsor-card sponsor-card-platinum">
    <img alt="Toyota Research Institute" src="{{ site.baseurl }}/images/sponsors_2026/TRI.png" />
  </a>
  <a href="https://www.agibot.com/" class="sponsor-card sponsor-card-platinum">
    <img alt="AGIBOT" src="{{ site.baseurl }}/images/sponsors_2026/AGIBOT.png" />
  </a>
  <a href="https://www.sharpa.com/" class="sponsor-card sponsor-card-platinum">
    <img alt="Sharpa" src="{{ site.baseurl }}/images/sponsors_2026/Sharpa.png" />
  </a>
  <a href="https://www.spirit-ai.com/en/" class="sponsor-card sponsor-card-platinum">
    <img alt="Spirit" src="{{ site.baseurl }}/images/sponsors_2026/Spirit.png" />
  </a>
  <a href="https://www.nvidia.com/en-us/" class="sponsor-card sponsor-card-gold">
    <img alt="NVIDIA" src="{{ site.baseurl }}/images/sponsors_2026/nvidia.png" />
  </a>
  <a href="https://www.limxdynamics.com/en" class="sponsor-card sponsor-card-silver">
    <img alt="LimX Dynamics" src="{{ site.baseurl }}/images/sponsors_2026/LimX_Dynamics.png" />
  </a>
  <a href="https://www.booster.tech/" class="sponsor-card sponsor-card-silver">
    <img alt="Booster Robotics" src="{{ site.baseurl }}/images/sponsors_2026/Booster_Robotics.png" />
  </a>
  <a href="https://rai-inst.com/" class="sponsor-card sponsor-card-bronze">
    <img alt="RAI" src="{{ site.baseurl }}/images/sponsors_2026/rai.png" />
  </a>
  <a href="https://www.besydney.com.au/" class="sponsor-card sponsor-card-rss">
    <img alt="Business Events Sydney" src="{{ site.baseurl }}/images/sponsors_2026/besydney-blue-logo-rgb.png" />
  </a>
  <a href="https://www.nsw.gov.au/" class="sponsor-card sponsor-card-rss">
    <img alt="Supported by the NSW Government" src="{{ site.baseurl }}/images/sponsors_2026/Supported by the NSW Government.jpg" />
  </a>
  <a href="https://businessevents.australia.com/en" class="sponsor-card sponsor-card-rss">
    <img alt="Business Events Australia" src="{{ site.baseurl }}/images/sponsors_2026/business_events_australia.png" />
  </a>
</div>

<!-- <p style="text-align: center;">
  <img alt="Amazon Robotics" src="images/sponsors2025/1_amazon_robotics.png"
       style="height: auto; width: auto; max-width: 425px; margin: 10px;" />
</p> -->

<!-- Row 2 -->
<!-- <div style="height: 10px;"></div>
<p style="text-align: center;">
  <img alt="Toyota Research Institute" src="images/sponsors2025/2_tri.png"
       style="height: auto; width: auto; max-width: 225px; margin: 10px;" />
</p> -->

<!-- Row 3 -->
<!-- <div style="height: 10px;"></div>
<p style="text-align: center;">
  <img alt="Google" src="images/sponsors2025/3a_google.png"
       style="height: auto; width: auto; max-width: 225px; margin: 10px; margin-right: 40px;" />
  <img alt="Unitree" src="images/sponsors2025/3b_unitree.png"
       style="height: auto; width: auto; max-width: 250px; margin: 10px;" />
</p> -->

<!-- Row 4 -->
<!-- <div style="height: 10px;"></div>
<p style="text-align: center;">
  <img alt="MaxInsights" src="images/sponsors2025/4a_maxinsights.png"
       style="height: auto; width: auto; max-width: 200px; margin: 10px; margin-right: 40px;" />
  <img alt="Field AI" src="images/sponsors2025/4b_fieldai.png"
       style="height: auto; width: auto; max-width: 200px; margin: 10px; margin-right: 40px;" />
  <img alt="Vinmotion" src="images/sponsors2025/4c_vinmotion.png"
       style="height: auto; width: auto; max-width: 200px; margin: 10px;" />
</p> -->

<!-- Row 5 -->
<!-- <div style="height: 10px;"></div>
<p style="text-align: center;">
  <img alt="Semio" src="images/sponsors2025/5a_semio.png"
       style="height: auto; width: auto; max-width: 200px; margin: 10px; margin-right: 40px; vertical-align: -42px;" />
  <img alt="Robotis" src="images/sponsors2025/5b_robotis.png"
       style="height: auto; width: auto; max-width: 200px; margin: 10px; margin-right: 40px;" />
  <img alt="Lightwheel Robotics" src="images/sponsors2025/5c_lightwheel.png"
       style="height: auto; width: auto; max-width: 200px; margin: 10px;" />
</p> -->

<!-- Row 6 -->
<!-- <div style="height: 10px;"></div>
<p style="text-align: center;">
  <img alt="Fourier Intelligence" src="images/sponsors2025/6a_fourier.png"
       style="height: auto; width: auto; max-width: 200px; margin: 10px; margin-right: 40px; vertical-align: -25px;" />
  <img alt="Hello Robot" src="images/sponsors2025/6b_hellorobot.png"
       style="height: auto; width: auto; max-width: 200px; margin: 10px;" />
  <img alt="High Torque" src="images/sponsors2025/6c_high_torque.jpg"
       style="height: auto; width: auto; max-width: 200px; margin: 10px; margin-right: 40px; vertical-align: -25px;" />
</p> -->

<!-- Row 7 -->
<!-- <div style="height: 10px;"></div>
<p style="text-align: center;">
  <img alt="Booster" src="images/sponsors2025/7a_booster_robotics.png"
       style="height: auto; width: auto; max-width: 190px; margin: 10px;" />
  <img alt="Yondu" src="images/sponsors2025/7b_yondu.png"
       style="height: auto; width: auto; max-width: 190px; margin: 10px;" />
  <img alt="Lockheed Martin" src="images/sponsors2025/7c_lockheed.png"
       style="height: auto; width: auto; max-width: 250px; margin: 10px;" />
</p> -->

<!-- Row 7.5 -->
<!-- <p style="text-align: center;">
  <img alt="Rainier" src="images/sponsors2025/rainier_labs_bw.png"
       style="height: auto; width: auto; max-width: 250px; margin: 5px;" />
</p> -->

<!-- Row 8 -->
<!-- <div style="height: 10px;"></div>
<p style="text-align: center;">
  <img alt="USC Engineering" src="images/sponsors2025/8a_usc_engineering.png"
       style="height: auto; width: auto; max-width: 177px; margin: 10px; vertical-align: -37px;" />
  <img alt="USC Computing" src="images/sponsors2025/8b_usc_computing.png"
       style="height: auto; width: auto; max-width: 500px; margin: 10px;" />
</p> -->

---
The website of the RSS 2025 conference can be found [here]({{ site.url }}/2025/).

<br/>
<br/>
<br/>
<br/>
<br/>

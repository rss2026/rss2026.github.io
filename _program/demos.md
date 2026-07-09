---
layout: page
title: Sponsor Demos
description: Demos times, venues, and details.
days: ['Mon', 'Fri']
priority: 7
invisible: false
published: true
---

All sponsor demos will take place on the **Demo Stage** at their respective
times.

<div style="display: block; width: 100%; height: 20px;"></div>


<table class="table table-striped table-workshop">
    <thead>
        <tr>
            <th width="10%">Day</th>
            <th width="15%">Time</th>
            <th width="50%">Company</th>
            <th width="20%">Speaker</th>
            <!-- <th width="20%">Website</th> -->
        </tr>
    </thead>
    <tbody>
        {% for event in site.data.RSS2026_Demos_Schedule %}
        {% if event.Stage == "Demo Stage" %}

        <tr>
            <td><span style="font-weight:bold; color: #3a3946;"> {{ event.Date }} </span></td>
            <td><span style="font-weight:bold; color: #3a3946;"> {{ event.Time }} </span></td>
            <td>{{ event.Company }}</td>
            <td>{{ event.Speaker }}</td>
        </tr>

        {% endif %}
        {% endfor %}
    </tbody>
</table>

<span style="color:white; font-size:50px;">&nbsp;</span><br>

<!-- <div style="text-align: center;">
    <img alt="Lely" src="/2024/images/demos.png" style="width: 50%;" />
</div>


<span style="color:white; font-size:50px;">&nbsp;</span><br>
<span style="color:white; font-size:50px;">&nbsp;</span><br>
<span style="color:white; font-size:50px;">&nbsp;</span><br>
<span style="color:white; font-size:50px;">&nbsp;</span><br> -->


<!-- <script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    this.style.display = "none";
    var content = this.nextElementSibling;
    //if (content.style.display === "block") {
    //  content.style.display = "none";
    //} else {
    //  content.style.display = "block";
    //}
    var c = this.parentElement;
    c.innerHTML = content.innerHTML;
    });
}
</script> -->


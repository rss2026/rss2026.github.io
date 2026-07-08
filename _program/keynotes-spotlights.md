---
layout: page
title: Keynotes and Early Career Spotlights
description: RSS 2026 keynote speakers and Early Career Spotlight speakers, with titles, abstracts, and bios.
priority: 6
invisible: false
published: true
---

<style>
  .speaker {
    display: flex;
    align-items: flex-start;
    gap: 24px;
    margin: 28px 0 36px;
  }
  .speaker-photo {
    flex: 0 0 auto;
    width: 160px;
    height: 160px;
    border-radius: 6px;
    object-fit: cover;
    object-position: top center;
    border: 1px solid #e0e0e0;
  }
  .speaker-body { flex: 1 1 auto; min-width: 0; }
  .speaker-name { margin: 0 0 2px; }
  .speaker-name a { color: #000; text-decoration: none; }
  .speaker-name a:hover { text-decoration: underline; }
  .speaker-affil { color: #555; font-style: italic; margin: 0 0 2px; }
  .speaker-role {
    display: inline-block;
    font-size: 0.8em;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.04em;
    color: #0F4BEA;
    margin-bottom: 8px;
  }
  .speaker-title { font-weight: 700; font-size: 1.3em; line-height: 1.3; margin: 8px 0; color: #428bca; }
  .speaker-abstract { margin: 0; text-align: justify; }
  @media (max-width: 600px) {
    .speaker { flex-direction: column; align-items: center; text-align: center; }
    .speaker-abstract { text-align: left; }
  }
</style>

## Keynotes

<div class="speaker">
  <img class="speaker-photo" src="{{ site.baseurl }}/images/speakers_2026/salah_sukkarieh.jpg" alt="Salah Sukkarieh" />
  <div class="speaker-body">
    <span class="speaker-role">Opening Keynote</span>
    <h3 class="speaker-name"><a target="_blank" href="https://www.sydney.edu.au/engineering/about/our-people/academic-staff/salah-sukkarieh.html">Salah Sukkarieh</a></h3>
    <p class="speaker-affil">University of Sydney, Australia</p>
    <p class="speaker-title">Field Robotics as a Science of Systems</p>
    <p class="speaker-abstract">Field robotics sits at the applied end of the discipline: the algorithm, the machine, the environment, the team and the end user, made to work as one, outside, in conditions that will not hold still - a science of systems. Deploy the research this way, translated into a partner's operations, and the field does more than test it; it also generates it. Two forces do the work. The first rewrites the science we brought in: the field runs on reality, not on our assumptions, and surfaces the ones we did not know we held, changing the questions we ask. The second rewrites the target: the partner moves it as they learn what the system can do, so success is set in live operation, not on a benchmark, and their constraints become part of the science. Any live deployment runs a version of this loop; the field is where it cannot be declined: conditions that cannot be engineered away, trials that come once a season, failures that happen in public. Surviving a real operation is a test of the research and the system no benchmark was written to give. Run this loop for enough seasons and the lessons accumulate into a second kind of research: reading a domain's future with the partner and building the strategic programmes worth driving toward, crossing fields that would not otherwise meet. Drawing on deployments spanning aerospace and agriculture, I will show that the field and the handover into operations are where the science is made and remade, and ask what would change if robotics treated the field as where its questions are found, not only where its answers are tested.</p>
  </div>
</div>

<div class="speaker">
  <img class="speaker-photo" src="{{ site.baseurl }}/images/speakers_2026/karen_liu.jpg" alt="Karen Liu" />
  <div class="speaker-body">
    <span class="speaker-role">Closing Keynote</span>
    <h3 class="speaker-name"><a target="_blank" href="https://cs.stanford.edu/people/karenliu/Home.html">Karen Liu</a></h3>
    <p class="speaker-affil">Stanford University, USA</p>
    <p class="speaker-title">Data Poor, Model Rich: A Different Path to Robot Intelligence</p>
    <p class="speaker-abstract">Robotics has long suffered from a data problem. Unlike language and vision, where internet scale corpora fuel increasingly capable models, robot learning remains bottlenecked by the cost of real world data. Robotics, however, has no shortage of "models". Over decades, robotics and adjacent fields have accumulated a rich collection of physics simulators, geometric representations, dynamics models, human motion priors, planners, and more recently, pretrained vision language action models. These models are individually narrow, built on simplifying assumptions, and often too brittle to deploy directly as policies, but perhaps that is not what they are for. Rather than treating models as policies, I explore an alternative path that treats them as offline data engines. By composing imperfect but complementary models, we can generate large scale and diverse supervision to train more capable robot policies while reducing reliance on brute force data collection. In this view, models are not endpoints of learning but reusable generators of data. The story does not end there. Once policies trained on synthesized supervision become sufficiently general, they can bootstrap their own improvement, not through more data collection, but through adaptation guided by the same structured priors that generated them. I will show how this approach enables capability amplification and cross embodiment transfer. Finally, I will argue for a broader vision of robot intelligence, not as a single monolithic foundation model trained on ever larger datasets, but as an evolving ecosystem of interacting models that continuously generate, refine, and transfer knowledge to one another.</p>
  </div>
</div>

## Early Career Spotlights

<div class="speaker">
  <img class="speaker-photo" src="{{ site.baseurl }}/images/speakers_2026/wenzhen_yuan.jpg" alt="Wenzhen Yuan" />
  <div class="speaker-body">
    <span class="speaker-role">Early Career Spotlight</span>
    <h3 class="speaker-name"><a target="_blank" href="https://siebelschool.illinois.edu/about/people/all-faculty/yuanwz">Wenzhen Yuan</a></h3>
    <p class="speaker-affil">University of Illinois Urbana-Champaign, USA</p>
    <p class="speaker-title">Tactile-based Manipulation: from a Mechanics-Driven to Data-Driven Perspective</p>
    <p class="speaker-abstract">Tactile sensing gives robots direct access to contact interactions, making it a key modality for robust and dexterous manipulation. Over the past several decade, tactile manipulation research has evolved from mechanics-driven approaches that explicitly model contact interactions to data-driven approaches that learn tactile representations and manipulation policies directly from data. In this talk, I will first present our lab's work on mechanics-driven tactile manipulation, highlighting how tactile perception can be linked to manipulation actions under different contact scenarios. I will then discuss the challenges that must be addressed to achieve scalable data-driven tactile manipulation. Finally, I will argue that sensor simulation provides a promising path toward scalable tactile manipulation by supporting data generation, transfer across sensor designs, and co-optimization of sensing and control systems.</p>
  </div>
</div>

<div class="speaker">
  <img class="speaker-photo" src="{{ site.baseurl }}/images/speakers_2026/marco_tognon.jpg" alt="Marco Tognon" />
  <div class="speaker-body">
    <span class="speaker-role">Early Career Spotlight</span>
    <h3 class="speaker-name"><a target="_blank" href="https://marco-tognon-robotics.com/">Marco Tognon</a></h3>
    <p class="speaker-affil">Inria, France</p>
    <p class="speaker-title">Advancements in Aerial Physical Interaction: Design, Control and Collaboration</p>
    <p class="speaker-abstract">Aerial robotics is nowadays seeing an exponential growth, both from the academic and industrial points of view. A lot of work has already been done for contact-free motions applied to a wide application domain, e.g., agriculture, archeology, photography, etc. However, if aerial robots were able to also interact with the environment, the application domains could be further extended toward new areas like transportation and manipulation of objects, contact-based inspection and maintenance, assembly and construction, etc. In this talk I will describe my contribution to the field of aerial physical interaction, from showing its feasibility for simple contact tasks, to enhance manipulation capabilities for more and more complex task. I will then present my vision for the future that sees aerial manipulator capable to safely accomplish physical work in real environments, together with other robots and human operators.</p>
  </div>
</div>

<div class="speaker">
  <img class="speaker-photo" src="{{ site.baseurl }}/images/speakers_2026/pulkit_agrawal.jpg" alt="Pulkit Agrawal" />
  <div class="speaker-body">
    <span class="speaker-role">Early Career Spotlight</span>
    <h3 class="speaker-name"><a target="_blank" href="https://people.csail.mit.edu/pulkitag/">Pulkit Agrawal</a></h3>
    <p class="speaker-affil">Massachusetts Institute of Technology, USA</p>
    <p class="speaker-title">What's Missing in Embodied Agents: Force Intelligence and Lifelong Learning</p>
    <p class="speaker-abstract">Modern robots can plan sophisticated motions, yet they remain slow, brittle, and unreliable on tasks humans find effortless. The missing piece is not better planning, but better force reasoning: knowing when, where, and how much force to apply under uncertainty and across diverse tasks. Force intelligence, I argue, is a unifying principle for scalable robotics—bridging dexterous manipulation and whole-body control. However, even a force-aware robot that cannot learn from its own experience will remain brittle. Today's systems are effectively frozen after training, unable to adapt once deployed. Real-world autonomy instead demands learning in deployment: the ability to continuously improve through interactions, failures, and successes. In this talk, I will present our lab's recent work on lifelong learning and outline a path forward for combining it with force-centric design to enable reliable, useful robots in the real world.</p>
  </div>
</div>

<div class="speaker">
  <img class="speaker-photo" src="{{ site.baseurl }}/images/speakers_2026/hongyang_li.jpg" alt="Hongyang Li" />
  <div class="speaker-body">
    <span class="speaker-role">Early Career Spotlight</span>
    <h3 class="speaker-name"><a target="_blank" href="https://lihongyang.info/">Hongyang Li</a></h3>
    <p class="speaker-affil">The University of Hong Kong</p>
    <p class="speaker-title">Whole-body Intelligence with Human-centric Data at Scale</p>
    <p class="speaker-abstract">The path toward general-purpose humanoid intelligence is fundamentally a world-model and data scaling problem. In this talk, we present our vision for building humanoid foundation models that enable robots to perceive, predict, and act through a unified world model. We argue that achieving robust whole-body intelligence—from locomotion to dexterous manipulation—requires learning from human behavior at unprecedented scale. Human-centric data provides a rich prior for how intelligent agents interact with the physical world, while world models transform these experiences into transferable capabilities for planning and control. Drawing from our efforts in developing large-scale humanoid learning systems, we discuss how scaling both models and data leads to emerging whole-body skills, improved generalization, and increasingly autonomous behavior. We conclude by highlighting the key challenges ahead, including data generation, embodiment transfer, long-horizon reasoning, and lifelong learning, and outline a roadmap toward truly general-purpose humanoid intelligence.</p>
  </div>
</div>

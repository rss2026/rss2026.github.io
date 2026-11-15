---
layout: page
title: RSS 2027 Author Frequently Asked Questions (FAQ)
---

## **1. Does my Stage 1 submission need to be a purely theoretical contribution?**
{: .h4 .text-left}

No. When we ask authors to focus on “methodology and approach,” this does not exclusively mean mathematical theory. Experimental papers can show the methodology that will prove a hypothesis. A hypothesis can be purely empirical, e.g., "tactile feedback reduces insertion failures under pose uncertainty of ±5 mm" or "policy success scales with demonstration diversity rather than demonstration count." Authors should detail the specific choices made in their system architectures or experimental designs, and most importantly, explicitly state the hypotheses that drive those choices.

## **2. If my experiments yield low performance, does that automatically qualify as an acceptable "negative result"?**
{: .h4 .text-left}

No. Simply presenting an experiment that didn't work does not constitute a scientifically valuable negative result. To be accepted as a negative result, the submission must demonstrate rigorous experimental methodology (e.g., comprehensive ablations) to test the hypothesis of *why* the approach failed.

***Example:*** Suppose you propose a rotation-equivariant network for object pose estimation, hypothesizing that because rotational symmetry is built into the architecture, it needs no rotation augmentation. If a non-equivariant baseline trained without augmentation still outperforms it, reporting the lower accuracy is not enough. You should state candidate explanations for the failure and design experiments that discriminate between them. For instance, symmetry mismatch; the data may not be truly SO(3)-symmetric due to gravity, canonical upright poses, camera viewpoint, and occlusion. This can be tested by evaluating both models on test sets with controlled rotation ranges, and by comparing against a model equivariant only to rotations about the gravity axis, or a relaxed-equivariance variant. Or in another instance: insufficient expressivity; the equivariance constraint may limit what the layers can represent. This can be tested by varying the capacity of the equivariant model at matched parameters and compute, and checking whether the gap closes.

## **3. Do appendices included in the main paper PDF count toward the page limit?**
{: .h4 .text-left}

Yes. The strict page limit for Stage 1 submissions is "5+1" (up to 5 pages of main content and exactly 1 page of references). If you choose to include an appendix in your Stage 1 PDF, it must fit entirely within those 5 pages of main content.

## **4. Can we include links to an (anonymous) external website in our Stage 1 submission?**
{: .h4 .text-left}

We strongly discourage including a link to an anonymous website at this stage. Please be aware that reviewers are explicitly instructed **not** to review or consider any material beyond the strict 5+1 page limit during Stage 1. Websites, external videos, or supplementary code repositories will not factor into the initial decision. Therefore, you must ensure that all critical information, hypotheses, and methodological details necessary to evaluate your submission are fully contained within the main text of your initial manuscript.

## **5. May an appendix containing detailed proofs and additional results be submitted as a separate PDF within a supplementary ZIP file? Are there page limits for this?**
{: .h4 .text-left}

Any supplementary material (such as separate PDFs for extended proofs, additional results, or videos) is permitted **only at Stage 2**. Please note that reviewers are not obligated to read or consider these supplementary pages for the final decision. At **Stage 1**, you must ensure that all critical content necessary to evaluate your core methodology and insights is contained within the main 5+1 page limit, as detailed in the Call for Papers.

## **6. I have an already complete paper that I would like to submit to RSS. How can I reshape this for Stage 1?**
{: .h4 .text-left}

First, please note that we treat Stage 1 submissions as "initial manuscripts" or "semi-complete papers" rather than traditional extended abstracts.

If you already have a complete paper, you must distill it to fit the 5+1 page limit. Rather than trying to compress every single result and ablation into 5 pages, focus on clearly articulating your problem statement, your hypotheses, and your core methodology. You may include your strongest preliminary or key results to validate your approach, but ensure the narrative focuses on the insights gained. You should also condense your related work to only the most direct citations necessary to establish novelty. If your paper progresses to **Stage 2**, your final expanded submission will be guided by the Extension Charter defined by the Area Chairs. Please be aware that because the ACs and reviewers will actively shape the required evaluations for final acceptance, you may need to execute new or different experiments to satisfy the Charter, regardless of the results you originally prepared.

## **7. I have a paper under review at another conference (e.g., ICLR) with decisions releasing after the RSS Stage 1 deadline. Can I submit to RSS and withdraw from one conference once the other's decisions are released? Does the Extended Abstract submission allow for this overlap?**
{: .h4 .text-left}

No, this arrangement is not permitted. RSS maintains a strict policy against dual or concurrent submissions. Even though the Stage 1 submission is a 6-page “semi-complete” manuscript, it still constitutes a formal submission for peer review.

Having the same core work under review at RSS and another venue simultaneously—even for a brief overlap of a few days—is a violation of our submission policies. If you wish to submit this work to RSS 2027, you must officially withdraw your submission from the other conference before submitting it to RSS by the December 4th deadline.

## **8. I don't fully understand the new two-stage review process. What is its core purpose?**
{: .h4 .text-left}

The two-stage process serves two main purposes: shifting the culture of robotics publishing toward collaborative research shaping, and practically managing the community's growing submission volumes.

Fundamentally, we want to move away from adversarial gatekeeping (where papers are often rejected simply for missing a specific baseline or failing to "beat a benchmark") and toward hypothesis-driven science.

- **Stage 1 (a cascading filter):** This stage evaluates the scientific core: Are the problem, hypotheses, and proposed methodology rigorous and insightful? Practically, this acts as a cascading filter. By identifying and filtering out less mature initial submissions, Area Chairs and reviewers can dedicate significantly more time and constructive effort toward higher-quality works in the subsequent stages.
- **The Extension Charter:** If accepted at Stage 1, the Area Chairs and reviewers will provide an "Extension Charter", which is a concrete, constructive roadmap detailing the experiments, proofs, or validations required to complete the work, be it experimental (e.g., a systems paper), or theoretical (e.g., a science paper).
- **Stage 2 (execution):** The final acceptance decision is an objective assessment of whether the authors faithfully executed the pre-negotiated Extension Charter.

This model allows reviewers to act as "shepherds" who actively help improve the final research. It structurally rewards rigorous methodology, even if that rigorous process ultimately results in a well-documented negative result.

## **9. Is the Stage 1 initial manuscript similar to a Position Paper? If not, what is the key difference?**
{: .h4 .text-left}

The Extended Abstract is not a position paper. A position paper typically presents a broad opinion, a future vision, or a debate about the field's direction without necessarily introducing a novel technical methodology or plans for experimental validation.

In contrast, the Stage 1 submission (i.e., the Extended Abstract) is a semi-complete technical research paper. While it is shorter (5+1 pages), it must present a concrete technical problem formulation, a rigorously defined proposed methodology, clear testable hypotheses, and the specific scientific insights to be gained. Even though some experiments may be preliminary or ongoing at this stage, the submission must demonstrate actionable, technical scientific mechanics rather than just a high-level philosophical argument.

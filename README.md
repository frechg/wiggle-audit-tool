# Wiggle Audit Tool

I built the Wiggle Audit Tool in the spring of 2014 to assist my girlfriend,
Aliza Paz, in the completion of her Urban Planning masters thesis. The tool was
used to conduct a bicycle safety audit of “The Wiggle”, the highest trafficked
bicycle commuting corridor in the US city of San Francisco. Aliza designed the
audit scoring system and I designed and built an application that would simplify
in-the-field data collection and generate audit scores and reports.

### The routes being audited

The “Routes”/home screen displays all routes being audited and the progress made
on scoring of the block and intersection “route segments” that comprise a single
route. For the audit of the Wiggle, both “inbound” and “outbound” travel
directions where considered and audited.

![Home Screen](https://github.com/frechg/wiggle-audit-tool/blob/master/public/images/home.png)

### A route and it's segments

In the “Route” view, each block and intersection for that route is displayed in
an ordered list, such that the list of route segments reflect the order in which
an auditor would encounter route segments as they walk the route. Route segments
are labeled “intersection” or “block” and display street names to help orient
the auditor and support accurate scoring of each route segment.

![Route Segments](https://github.com/frechg/wiggle-audit-tool/blob/master/public/images/route_segments.png)

### Indicating progress

After data for a route segment is entered, a score is generated based on the
scoring system developed by Aliza and displayed along side the corresponding
segment in the “Route” view. Display of the audit score and color highlighting
indicates completion of a route segment.

![Route Segments Completed](https://github.com/frechg/wiggle-audit-tool/blob/master/public/images/route_segments_completed.png)

### Data collection / route segment scoring

To score a route segment the auditor needs to answer a set of questions. The
questions refer to various physical characteristics of each block and
intersection and to accurately answer each question the auditor must move around
and make observations from different physical locations within each route
segment. With a large total number of blocks and intersections to audit,
efficiency in scoring route segments would have a large impact on total time
spent collecting data. By conducting trial runs I was able to determine a
question order that reflected the most efficient way to move through the
physical space of each route segment, greatly reducing the overall time to
complete the audit.

![Audit Questions](https://github.com/frechg/wiggle-audit-tool/blob/master/public/images/audit_questions.png)

### Data review and correction

After completing the audit of a route segment the auditor is shown the computed
score and an overview of the data for double-checking. If any mistakes are
noticed, the route segment can be re-scored. If a segment is re-scored all
questions need to be re-answered for purposes of data quality.

![Route Segment Review](https://github.com/frechg/wiggle-audit-tool/blob/master/public/images/segment_review.png)

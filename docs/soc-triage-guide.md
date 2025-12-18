# SOC Alert Triage Guide

## Purpose
This document outlines a practical approach for Security Operations Center (SOC) analysts to triage, investigate, and escalate security alerts. The goal is to ensure consistent, efficient, and risk-based handling of alerts while minimizing false positives and response delays.

---

## 1. Initial Alert Review
When an alert is received, begin with a quick validation to determine relevance and urgency.

Key questions:
- What triggered the alert?
- Which system, user, or asset is involved?
- Is this alert expected behavior or anomalous?
- Has this alert occurred before?

Confirm the alert source (SIEM, EDR, email security, etc.) and review timestamps, severity, and detection logic.

---

## 2. Context & Enrichment
Gather additional context before making decisions.

Common enrichment steps:
- Review historical activity for the user or host
- Check recent authentication attempts and geolocation
- Review endpoint or network telemetry
- Correlate with recent changes (patches, deployments, access changes)

Use internal logs and, when appropriate, external threat intelligence to assess risk.

---

## 3. Risk Assessment
Evaluate the alert based on impact and likelihood.

Consider:
- Asset criticality
- Privilege level of the affected account
- Potential business impact
- Presence of known malicious indicators

Classify the alert as:
- Informational
- Low risk
- Medium risk
- High risk / Incident

---

## 4. Containment & Escalation
If suspicious or confirmed malicious activity is identified:

Possible actions:
- Isolate endpoint (EDR)
- Disable or reset user credentials
- Block IP addresses or domains
- Preserve logs and evidence

Escalate to senior analysts or incident response teams according to defined procedures.

---

## 5. Documentation
Accurate documentation is critical for audit readiness and continuous improvement.

Document:
- Alert details and timeline
- Investigation steps taken
- Evidence reviewed
- Actions performed
- Final determination and outcome

Ensure all notes are clear, factual, and reproducible.

---

## 6. Post-Incident Review
After resolution:
- Identify detection gaps or false positives
- Recommend tuning or rule improvements
- Update playbooks if needed
- Share lessons learned with the team

Continuous improvement strengthens SOC effectiveness and reduces future risk.

---

## Key Principles
- Prioritize context over alert volume
- Avoid assumptions
- Follow documented procedures
- Communicate clearly with stakeholders
- Improve detections continuously

---

## Notes
This guide reflects real-world SOC workflows and is intended for training, documentation, and continuous improvement purposes.

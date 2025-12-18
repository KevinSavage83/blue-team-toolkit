# Phishing Incident Response Playbook

## Purpose
This playbook outlines the steps for identifying, investigating, and responding to phishing incidents to reduce risk, limit exposure, and prevent recurrence.

---

## 1. Intake & Validation
Phishing reports may originate from users, email security alerts, or SOC monitoring tools.

Initial steps:
- Capture the reported email (headers, sender, subject, URLs, attachments)
- Confirm whether the email was delivered, quarantined, or blocked
- Identify affected users and mailboxes

---

## 2. Analysis
Review indicators of phishing activity:
- Sender domain and display name spoofing
- Malicious or suspicious URLs
- Unexpected attachments or payloads
- Urgency, social engineering, or credential harvesting language

Analyze URLs and attachments using approved sandboxing or threat intelligence tools.

---

## 3. Scope & Impact
Determine the extent of exposure:
- Number of recipients
- Whether any users interacted with the email
- Credential submission or malware execution
- Privilege level of impacted accounts

---

## 4. Containment
If phishing is confirmed:
- Quarantine or delete malicious emails from all mailboxes
- Disable or reset credentials for impacted users
- Block malicious domains, URLs, and IPs
- Isolate endpoints if malware execution is suspected

---

## 5. Eradication & Recovery
- Ensure credentials are rotated
- Remove persistence mechanisms if present
- Verify endpoint health and system integrity
- Confirm no additional lateral movement occurred

---

## 6. Documentation & Communication
Document:
- Timeline of events
- Indicators of compromise
- Actions taken
- Final outcome

Notify stakeholders as required and provide user guidance if needed.

---

## 7. Lessons Learned
- Identify gaps in email filtering or detection
- Update email security rules
- Reinforce user awareness training
- Improve reporting workflows

---

## Notes
Consistent documentation and rapid response reduce the impact of phishing-related incidents.

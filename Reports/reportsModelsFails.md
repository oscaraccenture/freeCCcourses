That's a common scenario\! When bugs are found, the reporting structure needs to pivot: confirming the _tests were run successfully_ (meaning the script ran to completion) but highlighting that the _feature did not pass_ its functional checks.

Here are five report templates tailored for a scenario where bugs were found during test execution, maintaining your requirements for clarity and specification.

---

## 1\. High-Priority Failure & Blockers Report

This template focuses immediately on the core failure and any blockers preventing further testing or deployment.

```
Subject: CRITICAL FAILURE: Test Execution Report - [User Story/Feature Name] - BUGS FOUND

Greetings,

The Test Script for **[User Story/Test Suite ID]** ([Brief Feature Description]) was successfully executed, but the feature failed critical functional checks. The execution was completed; here are the details:

---
### **Execution Summary & Specification**
**Environment:** [e.g., 1234Stage]
**Build/Version:** [Software Build or Version Number]
**Tested On (Specification):** [Specific Device, OS, Browser, e.g., Edge v120 on Windows 11]
**Agent/Tester:** [Your Name/Team]
**Pass Percentage:** **[X]%** (Total Tests: [Y], Failed: [Z])

---
### **Overall Status & Blockers**
**Overall Result:** **FAILURE.** The core functionality outlined in the user story did not meet the acceptance criteria.
**Blockers Identified:** **[Yes/No].** If Yes: [State why, e.g., "The system crashes upon attempting to save the new record, blocking all subsequent tests."]

---
### **Top 3 Critical Issues Logged**
**Role Tested:** [Role/Permission Set, e.g., Admin access/MMS admin role]

| New Bug ID | Severity | Description (Focus on Impact) | Test Case Failed |
| :---: | :---: | :--- | :--- |
| **BUG [New 001]** | **P0/Blocker** | [Concise description: e.g., The 'Submit' button is non-responsive on the final checkout screen.] | TC-1.5 (Checkout Path) |
| **BUG [New 002]** | P1/High | [Concise description: e.g., Data entered into Field X is incorrectly masked upon save and displays 'Null' in the database.] | TC-2.2 (Data Integrity) |
| **BUG [New 003]** | P1/High | [Concise description: e.g., Users with 'Standard' permission are incorrectly granted Admin rights to view financial data.] | TC-3.1 (Security Check) |

**Clarity Note:** Test Case N 5 (prompts 12 and 15) was executed successfully but flagged as a repeated instruction in the script, which should be reviewed for optimization.

Please prioritize review and resolution of these new issues. Let me know if you need any additional context or information about the failure.

Regards,
Tester
```

---

## 2\. Structured Test Failure & Environment Report

This template is formal and emphasizes the contrast between the successful running of the test script and the failed feature functionality, clearly listing specifications.

```
Subject: Failure Report - User Story [ID] - [X]% Pass Rate

Greetings,

The Test Script for **User Story [ID]** ([User Story Title]) was executed successfully, but the expected results were not achieved in **[Z]** out of **[Y]** test cases. The execution details and environmental specifications are below:

---
### **Test Execution Specifications (Tests Run Successfully)**
**Test Suite/User Story ID:** [ID]
**Execution Date:** [YYYY-MM-DD]
**Agent/Tester:** [Tester Name]

| Specification Detail | Value |
| :--- | :--- |
| **Execution Environment** | [e.g., 1234Stage] |
| **Tested Role/Permission Set** | [e.g., Admin access / Standard User] |
| **System/OS** | [e.g., macOS Sonoma 14.3] |
| **Browser/Client** | [e.g., Google Chrome v120.0.6099.199] |
| **Application Version** | [Build/Version Number] |

---
### **Results Summary & Feature Status**
**Pass Percentage:** **[X]%**
**Overall Feature Status:** **FAILED.** The core business logic for [Specific Function] is not working.

**Clarity Note:** There was a repeated instruction in the script: **Test Case N 5** (prompts 12 and 15 are identical). This is a script optimization suggestion, not a failure.

---
### **Detailed Failures Logged**
The following issues were logged during execution, primarily impacting the [Specific Area of Feature, e.g., data validation]:

* **BUG [New 100] (High):** System accepts an invalid email format ("@no.com") during user registration, despite having validation checks. This allows creation of non-existent users.
* **BUG [New 101] (Medium):** The calculated discount amount for 'Premium' customers is off by **$5.00** in the final displayed total, although the underlying data appears correct.
* **BUG [New 102] (P0/Blocker):** Attempting to execute the 'Reset Password' function results in an infinite loading spinner and a server 500 error in the console. (Blocker for user access).

Please advise on whether to halt further testing or focus on non-impacted areas.

Regards,
Tester
```

---

## 3\. Test Script Anomaly & Bug-by-Test Case Report

This template links bugs directly to the specific test case that revealed them, offering clear reproduction steps.

```
Subject: Test Execution Complete - Failure Analysis for [Module Name]

Greetings,

The Test Script for **[User Story/Module Name]** was run successfully. However, the tests revealed several bugs, resulting in a pass rate of **[X]%**.

---
### **Test Specification**
**Test Script:** [User Story ID/Name]
**Tested Role:** [e.g., MMS admin role]
**Environment:** [e.g., 1234Stage]
**Platform Tested:** [e.g., Virtual Machine - Ubuntu 22.04]

---
### **Reported Failures & New Bugs**
The following is a list of new issues logged during this execution:

| Test Case | Description of Failure | New Bug ID | Severity |
| :---: | :--- | :---: | :---: |
| **TC-1.1** | The application crashes when a file larger than 10MB is uploaded. | **BUG [New 200]** | P0/Blocker |
| **TC-2.4** | The dashboard metric 'Open Opportunities' fails to refresh after a new opportunity is created. | **BUG [New 201]** | P1/High |
| **TC-3.6** | Tooltips for required fields disappear too quickly, making them unreadable. | **BUG [New 202]** | P2/Medium |

---
### **Clarity & Script Anomaly Notes**
**Tests Were Run Successfully:** The complete script was executed without environment failure.
**Redundancy Found:** The instruction was repeated in the script. Specifically, **Test Case N 5** had prompts 12 and 15 identified as duplicates.

**Detailed Example (BUG [New 200]):**
* **Reproduction Path:** As per TC-1.1, the agent was instructed to upload a large file.
* **Observed Behavior:** The process hangs at 99%, leading to a timeout and a complete application crash, requiring a restart. This consistently blocks the file upload feature.

Please review these failures immediately as they impact core feature functionality.

Regards,
Tester
```

---

## 4\. Simple Failure & Environment Report (Immediate Action)

This template is for quick, decisive reporting that needs to clearly communicate the failure and prompt action from the development team.

```
Subject: Action Required: US [ID] Test Failure - [X]% Pass Rate

Greetings,

The Test Script for **User Story [ID]** was executed successfully, but multiple bugs were found, rendering the feature unstable.

---
### **Execution Details**
**User Story:** [ID] - [Brief Feature Name]
**Tester:** [Tester Name/Agent]
**Permission Set:** [e.g., Admin / Standard User]
**Pass Percentage:** **[X]%** (The tests were run successfully, but the feature failed acceptance criteria).

---
### **Execution Specification (Where Tests Were Run)**
**Environment:** [e.g., 1234Stage]
**Platform:** [e.g., Virtual Device - Android 14]
**App Build:** [e.g., Build 5.0.1]
**Clarity Note:** Script housekeeping needed: Test Case N 5 (prompts 12 and 15 are duplicates).

---
### **New Bugs Logged**
Action is required on the following issues:

1.  **BUG [New 300] (P0):** The primary data calculation returns **'NaN'** (Not a Number) instead of a numeric value, making the feature unusable.
2.  **BUG [New 301] (P1):** The user interface breaks (visual artifacts) when resizing the window on the main data entry screen.
3.  **BUG [New 302] (P1):** API calls are missing required authentication tokens in [Specific Endpoint], leading to 401 Unauthorized errors.

Please confirm that a fix is being scoped. Testing is currently blocked on the calculation feature.

Regards,
Tester
```

---

## 5\. Stakeholder Report (Functional Failure Focus)

This template confirms execution but immediately pivots to the business impact of the failure, using less technical jargon.

```
Subject: Functional Failure: Test Completion for [Feature Name] - Needs Rework

Greetings,

The Test Script for **[User Story/Feature Name]** (US [ID]) was executed successfully, meaning the test run was complete. However, the feature failed to meet the functional requirements, specifically around [Identify failed area, e.g., security and data display].

---
### **Functional Failure Summary**
**Overall Result:** **FAILED.** The feature is not ready for release.
**Pass Percentage:** **[X]%**
**Tested Role/Access:** [e.g., Admin access]

| Specification (Where tests were carried out) | Details |
| :--- | :--- |
| **Target Environment** | [e.g., 1234Stage] |
| **Testing Agent** | [Your Name] |
| **System/Configuration** | [e.g., Latest Enterprise build on standard desktop] |

---
### **Business Impact Issues**
The following new bugs will impact the user experience and data integrity:

1.  **Data Integrity (BUG [New 400]):** The feature is saving critical customer contact information only intermittently, leading to **data loss** for a significant portion of new entries.
2.  **User Experience (BUG [New 401]):** The main user prompt is confusing; the system is rejecting valid inputs without a clear error message, causing user frustration.
3.  **Security (BUG [New 402]):** A non-admin user can access the restricted 'Settings' panel simply by manipulating the URL.

**Clarity Note:** For script optimization, we noted a repeat instruction in **Test Case N 5** (prompts 12 and 15).

A quick meeting is recommended to discuss the priority and timeline for fixing these items.

Regards,
Tester
```

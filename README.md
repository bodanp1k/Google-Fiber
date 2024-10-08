# Google-Fiber Customer Service Calls Analysis
A capstone project for the Google Business Intelligence Professional Certificate.

This project's aim was to build an interactive [dashboard](https://public.tableau.com/app/profile/bodan.pavlovski/viz/GoogleFiber_17242243380670/Story1) for Google Fiber's customer service team to monitor and analyze repeat call trends. 
The goal is to improve customer satisfaction by identifying the primary reasons behind repeat calls, thereby helping reduce call volume and optimizing operations. The data was processed using an ETL pipeline in PostgreSQL and later exported to Tableau, where the dashboard was prepared and shared.



To ensure that the big-picture project requirements were captured, three comprehensive BI documents guided the planning process:

- **Stakeholder Requirements Document**: Captures stakeholder needs, defining the business problem and key requirements as the foundation for planning.

- **Project Requirements Document**: Expands on stakeholder needs, outlining the project’s purpose, success criteria, and rollout plan for execution.

- **Strategy Document**: Finalizes metrics, charts, and dashboard functionality, aligning stakeholders before development begins.
---
## Key Questions & Answers:
**1. How often does the customer service team receive repeat calls from customers?**
  *  Most repeat calls occur on Day 1 after the initial contact, with the volume decreasing substantially over the next 6 days.

**2. What problem types generate the most repeat calls?**
  * "Internet and WiFi" issues generate the most repeat calls by a large margin compared to other problem types. The next highest problem types for repeat calls are "Technical Troubleshooting" and "Scheduling and Construction".

**3. Which market city’s customer service team receives the most repeat calls?**
  * Market 1 consistently has the highest volume of repeat calls across all days, with a peak of 3,386 on Day 1, followed by Market 3 with 1,950 repeat calls on Day 1.

---
### Total Calls by Month and % of First-Time Calls (Day 0) by Market and Type
![Dashboard 1](https://i.imgur.com/21lVaKr.png)

### Repeat Calls by Market and Type
![Dashboard 2](https://i.imgur.com/dPAX3Oq.png)

### Daily Calls Table 
Specifically requested by Stakeholders.
![Dashboard 3](https://i.imgur.com/TbqkhAH.png)

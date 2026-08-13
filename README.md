# SOC Linux Lab: Wazuh SIEM (Manual Deployment)

Welcome to my SOC Lab repository! This project showcases the design, manual deployment, and configuration of a Security Operations Center (SOC) environment. By building this SIEM (Security Information and Event Management) stack from the ground up, I demonstrate how to collect, analyze, and visualize endpoint logs to detect security anomalies in real-time.

---

## Project Objectives
- **Build a Custom SIEM:** Deploy a fully functional Wazuh and Elastic Stack environment without relying on automated installers.
- **Endpoint Monitoring:** Ingest and monitor security logs from Linux endpoints.
- **Centralized Analysis:** Aggregate logs using Elasticsearch for deep inspection.
- **Data Visualization:** Design interactive dashboards in Kibana to track security events.
- **Threat Detection:** Generate, tune, and analyze real-world security alerts.

---

## Architecture Overview

```text
[ Linux Agent ] 
       ↓ (Sends Logs)
[ Wazuh Manager ] 
       ↓ (Forwards Alerts)
[ Filebeat ] 
       ↓ (Ships to DB)
[ Elasticsearch ] 
       ↓ (Visualizes Data)
[ Kibana ]
```

## Lab Environment

| Component | IP Address | Description |
| --- | --- | --- |
| SIEM Server | 192.168.56.20 | Wazuh + Elastic Stack |
| Linux Agent | 192.168.56.11 | Monitored Endpoint | 
| Windows Agent | 192.168.56.10 | (Optional Extension) | 

## Technologies Used
 - Wazuh (SIEM)
 - Elasticsearch
 - Kibana
 - Filebeat
 - Ubuntu Linux
 - VirtualBox

## Key Achievements
 - Successfully architected and deployed a SIEM lab entirely from scratch.
 - Integrated Wazuh natively with the Elastic Stack.
 - Built a robust end-to-end log ingestion pipeline.
 - Successfully monitored Linux endpoints and visualized telemetry.
 - Generated, tuned, and analyzed genuine security events.

 ## Skills Demonstrated
 - SIEM Architecture & Deployment
 - Log Ingestion & Pipeline Configuration
 - Security Incident Detection & Analysis
 - Linux System Administration
 - Network Troubleshooting & Debugging

## Project Structure

SOC-Linux-Lab/  
├─ README.md/         
├─ diagrams/         
├─ scripts/          
├─ screenshots/      
├─ reports/          
└─ configs/          

 ## Future Improvements
  - Deploy and configure a Windows Agent for cross-platform monitoring.
  - Simulate advanced attacks (e.g., Brute-force SSH, Mimikatz).
  - Write custom Wazuh rules to detect specific IOCs (Indicators of Compromise).
  - Build advanced, role-based Kibana dashboards for executive reporting.

 ## Author 
 TCL Madushan  
 Cybersecurity Enthusiast | Aspiring SOC Analyst

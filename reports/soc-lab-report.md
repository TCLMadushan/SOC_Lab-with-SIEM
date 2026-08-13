#  SOC Lab Report – Wazuh SIEM Deployment


## 1. Introduction

This project focuses on building a **Security Operations Center (SOC) lab** using a manual deployment approach.
The objective is to simulate real-world security monitoring by collecting, analyzing, and visualizing logs from endpoint systems.

A SIEM solution was implemented using:

* Wazuh (Detection & Monitoring)
* Elasticsearch (Log Storage)
* Kibana (Visualization)
* Filebeat (Log Shipping)


## 2. Objectives

* Build a functional SIEM environment
* Monitor Linux endpoint logs
* Detect suspicious activities (failed logins, sudo usage)
* Visualize alerts using a dashboard
* Gain hands-on SOC experience


## 3. System Architecture

The architecture consists of the following components:

* **Linux Agent (192.168.56.11)** – Generates logs
* **Wazuh Manager (192.168.56.20)** – Analyzes logs and creates alerts
* **Filebeat** – Ships logs to Elasticsearch
* **Elasticsearch** – Stores indexed logs
* **Kibana** – Visualizes logs and alerts

### Data Flow:

Linux Agent → Wazuh Manager → Filebeat → Elasticsearch → Kibana



## 4. Lab Environment

| Component      | IP Address    | Role                  |
| -------------- | ------------- | --------------------- |
| SIEM Server    | 192.168.56.20 | Wazuh + Elastic Stack |
| Linux Agent    | 192.168.56.11 | Endpoint Monitoring   |
| Virtualization | VirtualBox    | Lab Environment       |



## 5. Implementation Steps

### 5.1 System Preparation

* Updated system packages
* Installed required dependencies (curl, wget, gnupg)



### 5.2 Wazuh Manager Setup

* Added Wazuh repository
* Installed Wazuh Manager
* Started and enabled the service



### 5.3 Elasticsearch Setup

* Installed Elasticsearch
* Configured single-node cluster
* Verified service using HTTP request



### 5.4 Kibana Setup

* Installed Kibana
* Configured server to allow remote access
* Accessed via browser (port 5601)



### 5.5 Filebeat Configuration

* Installed Filebeat
* Configured to read Wazuh alerts
* Connected Filebeat to Elasticsearch



### 5.6 Agent Configuration

* Installed Wazuh agent on Linux endpoint
* Configured connection to Wazuh Manager
* Verified agent connectivity



## 6. Log Generation & Testing

To simulate security events, several actions were performed:

### Failed Login Attempt

```bash
sudo su
```

(Incorrect password entered)

### Privilege Escalation

```bash
sudo ls /root
```

### Session Activity

```bash
ssh localhost
```



## 7. Results

The system successfully generated and detected alerts.

### Example Alerts:

* **PAM: User Login Failed** (authentication failure)
* **PAM: Login session opened**
* **PAM: Login session closed**

These alerts were:

* Captured by Wazuh
* Shipped via Filebeat
* Stored in Elasticsearch
* Visualized in Kibana



## 8. Visualization (Kibana)

* Accessed Kibana at: `http://192.168.56.20:5601`
* Used Discover tab to view logs
* Created index pattern: `filebeat-*`
* Applied filters:

  * `agent.name: Linux-Client`
  * `rule.groups: authentication_failed`



## 9. Challenges & Troubleshooting

### Issue 1: Filebeat service failed

* Cause: Invalid YAML configuration
* Solution: Rewrote correct filebeat.yml

### Issue 2: Kibana not loading

* Cause: Default localhost binding
* Solution: Set:

```yaml
server.host: "0.0.0.0"
```

### Issue 3: 403 Forbidden (Wazuh config)

* Cause: Restricted download
* Solution: Manual configuration

### Issue 4: Logs not showing in Kibana

* Cause: Filebeat misconfiguration
* Solution: Fixed log path and restarted service



## 10. Key Achievements

* Successfully built a SIEM lab manually
* Integrated Wazuh with Elastic Stack
* Collected and analyzed real logs
* Generated security alerts
* Visualized data in Kibana



## 11. Skills Gained

* SIEM Deployment
* Log Analysis
* Linux Administration
* Incident Detection
* Troubleshooting



## 12. Future Improvements

* Add Windows endpoint monitoring
* Simulate brute-force attacks
* Create custom detection rules
* Build advanced dashboards



## 13. Conclusion

This project successfully demonstrates the implementation of a SOC lab using Wazuh SIEM.
The lab provides hands-on experience in monitoring, detecting, and analyzing security events in a controlled environment.



## Author

**Suresh Bhanuka**
Cybersecurity Undergraduate
SOC Lab Project

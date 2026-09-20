# AWS Monitoring & Alerting

## 📌 Project Overview

This project demonstrates basic **AWS monitoring and alerting** using **Amazon CloudWatch**.

The project focuses on monitoring EC2 CPU utilization, creating a CloudWatch dashboard, defining a CPU utilization alarm, and using a simple Linux monitoring script for system health checks.

---

## 🏗️ Architecture

```text
                    AWS EC2
                       │
                       │
               CloudWatch Metrics
                       │
          ┌────────────┴────────────┐
          │                         │
          ▼                         ▼
 CloudWatch Dashboard         CPU Alarm
          │                         │
          │                    CPU > 80%
          │                         │
          ▼                         ▼
   CPU Monitoring              Alert Condition
```

---

## ☁️ AWS Services

* Amazon EC2
* Amazon CloudWatch

---

## 🛠️ Technologies

* AWS CloudWatch
* Linux
* Bash
* JSON
* AWS CLI

---

## 📂 Project Structure

```text
aws-monitoring-alerting/
│
├── README.md
├── cloudwatch-dashboard.json
├── cpu-alarm.json
├── monitoring-script.sh
└── screenshots/
```

---

## 📊 CloudWatch Dashboard

The CloudWatch dashboard is designed to monitor **EC2 CPU utilization**.

The dashboard configuration includes:

* EC2 CPU Utilization
* Average CPU usage
* 5-minute monitoring period

---

## 🚨 CPU Utilization Alarm

The project includes a CPU alarm configuration that monitors EC2 CPU utilization.

### Alarm Configuration

```text
Metric:              CPUUtilization
Statistic:           Average
Period:              5 minutes
Evaluation Periods:  2
Threshold:           80%
Condition:            GreaterThanThreshold
```

The alarm condition is triggered when average CPU utilization exceeds the configured threshold for the required evaluation periods.

---

## 🖥️ Linux Monitoring Script

`monitoring-script.sh` performs basic system health checks.

It checks:

* Current date and time
* Disk utilization
* Memory utilization
* System uptime

Example:

```bash
./monitoring-script.sh
```

---

## 🔄 Monitoring Flow

```text
EC2 Instance
     │
     ▼
CloudWatch Metrics
     │
     ├
```

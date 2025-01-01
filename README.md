# System Health Check Script

## Description
This is a menu-driven shell script designed to perform essential system health checks. The tool provides an easy-to-use interface for monitoring and reporting critical system metrics. It includes options to:

- Check Disk Usage
- Monitor Running Services
- Assess Memory Usage
- Evaluate CPU Usage
- Send a Comprehensive System Health Report via Email Every Four Hours

The script is ideal for system administrators and IT professionals who want a straightforward solution to monitor and maintain system performance.

---

## Features

1. **Check Disk Usage:**
   - Displays the available and used disk space for all mounted file systems.
   - Helps identify partitions that are low on storage.

2. **Monitor Running Services:**
   - Lists all active services.
   - Ensures critical services are running smoothly.

3. **Assess Memory Usage:**
   - Displays the current memory utilization.
   - Provides details about used, free, and available memory.

4. **Evaluate CPU Usage:**
   - Monitors CPU load in real-time.
   - Helps in identifying performance bottlenecks.

5. **Send Comprehensive Report:**
   - Automatically generates and emails a detailed system health report every four hours.
   - Includes disk, memory, CPU statistics, and running services.

---

## Applications and Use Cases

This script can be applied in various scenarios, including:

1. **System Monitoring:**
   - Regularly monitor disk, memory, and CPU usage to ensure optimal system performance. For instance, an IT administrator in a data center can use this to track server metrics daily, identifying any anomalies before they escalate into critical issues.

2. **Proactive Maintenance:**
   - Detect potential performance issues, such as low disk space or high CPU usage, before they impact operations. For example, a business running an e-commerce site can use this tool to prevent downtime by resolving resource bottlenecks in advance.

3. **Service Management:**
   - Monitor critical services to ensure they are running without interruptions. For instance, a DevOps engineer can use this to verify the uptime of web servers or database services in production environments.

4. **Automated Reporting with Cron Jobs:**
   - Utilize a cron job to automate the sending of comprehensive system health reports at regular intervals (e.g., every four hours). For example, an organization can use this feature to ensure administrators are consistently updated on system health without manual intervention, enabling quicker decision-making and response.

5. **Small-to-Medium Enterprises (SMEs):**
   - Provide a cost-effective solution for SMEs without dedicated monitoring tools. For example, a startup can implement this script to maintain system health without investing in expensive monitoring solutions like Datadog or New Relic.

---

## Prerequisites

- A Linux-based operating system.
- Essential shell utilities such as `df`, `free`, `top`, and `systemctl` (commonly available on most Linux distributions).
- Access to a mail server for sending email reports (e.g., `mailx` or `sendmail` configured on the system).

---

## Installation

1. Clone the repository to your local system:
   ```bash
   git clone https://github.com/<your-username>/<repo-name>.git
   ```

2. Navigate to the project directory:
   ```bash
   cd <repo-name>
   ```

3. Make the script executable:
   ```bash
   chmod +x system_health_check.sh
   ```

---

## Usage

Run the script with:
```bash
./system_health_check.sh
```

Upon execution, the script displays a menu with the following options:

1. **Check Disk Usage:**
   - Type `1` and press Enter.

2. **Monitor Running Services:**
   - Type `2` and press Enter.

3. **Assess Memory Usage:**
   - Type `3` and press Enter.

4. **Evaluate CPU Usage:**
   - Type `4` and press Enter.

5. **Send Comprehensive Report via Email:**
   - Type `5` and press Enter.

6. **Exit:**
   - Type `0` and press Enter to exit the script.

---

## Configuration

### Email Setup
To enable the email reporting functionality, ensure your mail server is configured correctly. Update the email settings in the script by editing the variables:

```bash
EMAIL_ADDRESS="your_email@example.com"
EMAIL_PASSWORD="your_email_password"
RECEIVER_EMAIL="receiver_email@example.com"
```

**Note:** Ensure your system supports email sending utilities like `mailx` or `sendmail`.

### Cron Job Setup
To schedule the email according to the application of the organization or the user the report mail can be sent at fixed timings using a crontab to ensure proper and continuous monitoring.

---

## Sample Output

### Disk Usage
```
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1       50G   20G   30G  40% /
```

### Memory Usage
```
Total: 8GB
Used: 4GB
Free: 3GB
Available: 5GB
```

### CPU Usage
```
CPU Load: 15%
```

### Email Report
A sample email report includes:
- Disk Usage
- Memory Usage
- CPU Statistics
- Running Services

---

## Future Enhancements

- Add a graphical user interface (GUI).
- Include support for additional system metrics (e.g., network usage).
- Integrate with monitoring tools like Prometheus and Grafana.
---

## Contact

For any questions or suggestions, feel free to reach out at:
- **GitHub:** https://github.com/Vaishnavi639

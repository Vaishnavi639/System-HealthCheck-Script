# System Health Check Shell Script

## Project Description
This project is a **Menu-driven shell script** designed to perform essential system health checks on a Linux-based system. The script allows users to:

1. Check Disk Usage
2. Monitor Running Services
3. Assess Memory Usage
4. Evaluate CPU Usage
5. Generate a Comprehensive Report

The generated report is saved to a file and can be reviewed later. Additionally, users can set up a cron job to automate running the script at specific intervals, such as every day at 9 AM.

---

## Features
- **Interactive Menu**: Users can select different health-check options interactively.
- **Comprehensive Report**: The script generates a detailed report containing disk usage, memory statistics, CPU performance, and running services.
- **Automated Scheduling**: Supports setting up cron jobs to execute the script at regular intervals, ensuring timely monitoring without manual intervention.

---

## Applications
This script is highly useful in real-time scenarios, such as:

1. **System Administration**:
   - Quickly monitor system health and detect issues before they escalate.
   - Ensure services are running smoothly.

2. **Resource Monitoring**:
   - Track CPU and memory usage to identify potential bottlenecks.

3. **Scheduled Reporting**:
   - Automate system health reporting via cron jobs, ensuring regular updates for system administrators.

4. **File-based Analysis**:
   - Access historical data via the generated report files for deeper analysis.

---

## Prerequisites
- A Linux-based operating system (e.g., Ubuntu).
- Bash shell installed (default on most Linux systems).

---

## Installation and Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/Vaishnavi639/System-HealthCheck-Script.git
   cd system-health-check
   ```

2. Make the script executable:
   ```bash
   chmod +x serverreport.sh
   ```

3. Run the script:
   ```bash
   ./serverreport.sh
   ```

4. To automate running the script, set up a cron job (explained below).

---

## Cron Job Setup
To schedule the script to run at a specific time (e.g., 9 AM every day):

1. Open the crontab editor:
   ```bash
   crontab -eu username
   ```

2. Add the following line to schedule the script at 9 AM daily:
   ```plaintext
   0 9 * * * /path/to/serverreport.sh > /dev/null 2>&1
   ```

3. Save and exit the editor. The cron job is now set up.

---

## Output Reports
- Each time the report option is selected, a new report file is generated in the specified directory (default: `/path/to/reports`).
- The report includes details on disk usage, memory statistics, CPU performance, and running services.

Example report file name:
```plaintext
health_report_YYYYMMDDHHMMSS.log
```

---

## Future Scope

1. **Email Notifications**:
   - Extend the script to automatically send the generated reports to a specified email address using an SMTP service.

2. **Enhanced Visualizations**:
   - Include graphs or charts for system metrics like CPU and memory usage.

3. **Real-Time Monitoring**:
   - Integrate with monitoring tools to display live statistics.

---

## Collaborations
This project is open to collaborations! Contributions can include:
- Implementing the email feature for report delivery.
- Adding support for more system health checks (e.g., network monitoring).
- Enhancing the script's error handling and logging capabilities.

Feel free to fork the repository and submit pull requests.

---

## How to Contribute
1. Fork the repository.
2. Create a feature branch:
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes and push to your fork.
4. Submit a pull request to the main repository.

---

## Author
- **Your Name** Vaishnavi Pangare
- **GitHub**: https://github.com/Vaishnavi639

---

## License
This project is licensed under the MIT License. See the LICENSE file for details.

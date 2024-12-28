#!/bin/bash
######################################################################################
#Author: Vaishnavi
#Date: 28-12-2024
#version: v1
#######################################################################################
#
#This script is a Menu based System Health Check Script which can Check:-
#- Disk Usage
#- Monitor Running Services
#- Assess Memory Usage
#- Evaluate CPU Usage
#- Send a Comprehensive Report via Email Every Four Hours
#
######################################################################################


EMAIL="pangarevaishnavi639@gmail.com"

select healthcheck in DiskUsage MonitorRunningServices AssessMemoryUsage EvaluateCPUusage SendReportMail Exit
do
	case $healthcheck in
		DiskUsage)
			echo Disk Usage of system:
			df
			;;
		MonitorRunningServices)
			echo Running Services of system:
			ps -aux
			;;
		AssessMemoryUsage)
			echo Memory usage of this system:
			free
			;;
		EvalutaeCPUusage)
			echo CPU Usage of this system:
			nproc
			;;
		SendReportMail) {
   		        echo "Sending comprehensive report via email..."
   		       {
       			 echo "Subject: System Health Report"
       			 echo "System Health Report:"
       			
   		       } | sendmail -i -v -Am $EMAIL
		}
	      esac
done

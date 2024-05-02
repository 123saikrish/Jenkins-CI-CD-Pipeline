"DEVOPS CI/CD PIPELINE SETUO WITH JENKINS,GIT,MAVEN, DOCKER,AND SONARQUBE"

focuses on setting up a Continuous Integration/Continuous Deployment (CI/CD) pipeline using Jenkins, Git, GitHub, Maven, Docker, and
SonarQube. Here's a breakdown of the project steps and components:
Infrastructure Setup:
Create an Ubuntu VM using AWS EC2 (t2.medium).
Configure security groups to enable inbound access on ports 8080 and 9090.
Connect to the VM using tools like MobaXterm, Putty, or Windows CMD.
=====================================================================
Java Installation:
Jenkins Installation:
Docker Installation:
Maven Configuration in Jenkins:
Manage Jenkins -> Global Tool Configuration.
Add Maven installation named "M3" and configure it.
Jenkins Job Creation:
Create a Jenkins pipeline job with stages:
Git Clone: Clone the repository from GitHub.
Maven Build: Execute Maven clean and package commands.
Docker Image: Build a Docker image.
Docker Container: Run a Docker container.
Optionally, include steps for SonarQube analysis.
Integration with SonarQube:
Install and configure SonarQube server.
Generate authentication tokens for project analysis.
Configure SonarQube Scanner plugin in Jenkins.
===================================================================
automate the software development lifecycle by integrating various tools and technologies to achieve continuous integration, automated testing, and deployment.
It provides a comprehensive workflow for building, testing, analyzing, and deploying applications using modern DevOps practices.

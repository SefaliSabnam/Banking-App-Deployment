# Banking-App Deployment

## Overview
This project automates the deployment of a Banking Web Application using **Terraform**, **Docker**, and **Jenkins**. It provisions infrastructure on AWS, builds a containerized application, and deploys it efficiently.

## Project Structure
```
📂 Banking-App-Deployment
├── backend.tf        # Terraform backend configuration
├── main.tf           # Terraform infrastructure configuration
├── provider.tf       # AWS provider settings
├── variable.tf       # Terraform variables
├── Dockerfile        # Defines the container image
├── Jenkinsfile       # CI/CD pipeline automation
├── index.html        # Frontend banking app
```

## Technologies Used
- **Terraform** - Infrastructure as Code (IaC) for AWS provisioning.
- **Docker** - Containerization of the application.
- **Jenkins** - CI/CD automation pipeline.
- **AWS** - Cloud provider for hosting services.
- **HTML/CSS/JavaScript** - Frontend banking app.

## Deployment Workflow
1. **Infrastructure Provisioning**: Jenkins executes `terraform apply` to create AWS resources.
2. **Build & Push Docker Image**: Jenkins builds the Docker image and pushes it to Docker Hub.
3. **Application Deployment**: Jenkins deploys the application on an AWS EC2 instance.

## Files Breakdown
### Terraform Files
- **backend.tf**: Configures Terraform backend (S3 bucket for storing state).
- **main.tf**: Defines AWS resources (EC2, security groups, S3, IAM roles, etc.).
- **provider.tf**: Specifies AWS provider and region.
- **variable.tf**: Declares variables (e.g., instance type, bucket name).

### Dockerfile
Defines a Docker image for the banking app:
- Uses a base image (e.g., Node.js, Nginx).
- Copies application files.
- Exposes necessary ports.
- Runs the application inside a container.

### Jenkinsfile
Automates the CI/CD pipeline:
1. **Terraform Setup**: Initializes and applies Terraform.
2. **Docker Build & Push**: Builds and pushes the container to Docker Hub.
3. **Deployment**: Runs the containerized app on an EC2 instance.

### index.html
A simple web interface for the banking app that allows:
- Checking account balance.
- Depositing and withdrawing money.
- Animated enhancements for better user experience.

## How to Run Locally
1. Clone the repository:
   ```sh
   git clone <repo-url>
   cd Banking-App-Deployment
   ```
2. Build and run the Docker container:
   ```sh
   docker build -t banking-app .
   docker run -p 8080:80 banking-app
   ```
3. Open a browser and go to:
   ```
   http://localhost:8080
   ```

## Conclusion
This project provides a scalable and automated deployment of a simple banking application using DevOps best practices. 🚀
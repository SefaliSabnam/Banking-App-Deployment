#  Banking App Deployment

This project automates the deployment of a simple banking application using **Docker, Terraform, Jenkins, and AWS**. It provisions infrastructure, builds and deploys a containerized app, and hosts the frontend on **AWS S3**.

##  Project Structure
```plaintext
📦 banking-app-deployment
├── 📄 backend.tf         # Terraform backend configuration
├── 📄 Dockerfile        # Docker container setup for the banking app
├── 📄 index.html        # Frontend for the banking app
├── 📄 Jenkinsfile       # CI/CD pipeline for automated deployment
├── 📄 main.tf           # Terraform infrastructure setup
├── 📄 provider.tf       # AWS provider configuration
├── 📄 variable.tf       # Terraform variable definitions
```

##  Features
- **Automated Infrastructure Provisioning** (Terraform)
- **Containerized Deployment** (Docker, Docker Hub)
- **CI/CD Integration** (Jenkins)
- **Static Website Hosting** (AWS S3)
- **Secure & Scalable Architecture**

##  Setup & Deployment
### 1️ Clone the Repository
```sh
git clone https://github.com/your-repo/banking-app.git
cd banking-app
```

### 2️ Configure AWS Credentials in Jenkins
- Add `AWS_ACCESS_KEY_ID_1` in Jenkins credentials.

### 3️ Run the Jenkins Pipeline
1. Open Jenkins.
2. Configure the multibranch pipeline.
3. Run the pipeline to deploy.

### 4️ Access the Banking App
- Open a browser and go to:  
  **[http://sefali-banking-app-3a04c331.s3-website.ap-south-1.amazonaws.com](http://sefali-banking-app-3a04c331.s3-website.ap-south-1.amazonaws.com)**

##  Walkthrough of the Project
### 1️ Terraform Infrastructure Setup
- `main.tf`: Defines VPC, subnets, security groups, and S3 bucket.
- `provider.tf`: Configures AWS provider.
- `variable.tf`: Stores AWS region, instance types, and other variables.
- `backend.tf`: Stores Terraform state in S3.

### 2️ Dockerization
- `Dockerfile`: Builds a container for the banking app.
- Runs an NGINX web server serving `index.html`.
- Exposes port 80 for the web application.

### 3️ Jenkins CI/CD Pipeline
- `Jenkinsfile`: Automates Terraform apply, Docker build & push, and deployment.
- Uses `AWS-DOCKER-CREDENTIALS` for authentication.
- Ensures deployment only after merging to `main`.

### 4️ Hosting and Deployment
- Terraform provisions AWS resources.
- Jenkins builds and deploys the app.
- App is accessible via **S3 Static Website Hosting**.

##  Animated Banking App Interface
[![Banking App Animation](http://sefali-banking-app-3a04c331.s3-website.ap-south-1.amazonaws.com)](http://sefali-banking-app-3a04c331.s3-website.ap-south-1.amazonaws.com)

##  Conclusion
This project provides a **scalable, automated, and DevOps-driven deployment** of a simple banking application. 🚀

\# Zero-Touch Deployments — CI/CD on AWS



\## Project Overview



Zero-Touch Deployments is a DevOps capstone project that automates the build, delivery, and deployment of a containerized Flask application to AWS ECS Fargate using GitHub Actions and Terraform.



The goal is to deploy new application versions without manually connecting to production servers.



\## Architecture



Developer → GitHub → GitHub Actions → Docker Build → Amazon ECR → Amazon ECS Fargate → Application Load Balancer → Flask Application



Terraform manages the AWS infrastructure.



\## Technologies Used



\- \*\*AWS:\*\* ECS Fargate, ECR, Application Load Balancer, IAM

\- \*\*Infrastructure as Code:\*\* Terraform

\- \*\*CI/CD:\*\* GitHub Actions

\- \*\*Containerization:\*\* Docker

\- \*\*Application:\*\* Python Flask

\- \*\*Cloud Region:\*\* ap-south-1 (Mumbai)



\## Key Features



\- Automated Docker image build and push to Amazon ECR.

\- Automated ECS task-definition updates and deployments.

\- Infrastructure provisioning using Terraform.

\- Deployment stability verification.

\- Application health verification through an HTTP endpoint.

\- IAM permissions configured for GitHub Actions deployment.



\## Deployment Workflow



1\. Code is pushed to the GitHub repository.

2\. GitHub Actions builds and validates the application.

3\. The Docker image is built and pushed to Amazon ECR.

4\. The ECS task definition is updated with the new image.

5\. Amazon ECS deploys the updated application.

6\. The workflow waits for service stability and checks the application health endpoint.



\## Application Endpoints



\- \*\*Homepage:\*\* http://zero-touch-alb-1709404326.ap-south-1.elb.amazonaws.com/

\- \*\*Health Check:\*\* http://zero-touch-alb-1709404326.ap-south-1.elb.amazonaws.com/health



\## Repository Structure



```text

infra-as-code-pipeline/

├── .github/

│   └── workflows/

├── terraform/

│   └── modules/

├── Dockerfile

├── application source files

└── README.md

```



\## How to Run Locally



1\. Clone the repository.

2\. Install Docker.

3\. Build the Docker image:



&#x20;  `docker build -t zero-touch-app:dev .`



4\. Run the container:



&#x20;  `docker run --rm -p 5001:5000 zero-touch-app:dev`



5\. Open `http://localhost:5001/` in your browser.



\## Project Outcome



The application was deployed to AWS ECS Fargate through an automated GitHub Actions pipeline. The CI/CD workflow completed successfully, and the ECS service reached a steady state with two desired running tasks.



\## Author



Aryapratap Nayak



DevOps Capstone Project — Zero-Touch Deployments




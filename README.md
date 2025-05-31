# Jenkins CI/CD Pipeline with Docker – Demo by pmanasijevic

This project demonstrates a basic but powerful CI/CD pipeline using **Jenkins** and **Docker**, with automated **build**, **test**, and **deployment** stages.

---

##  What’s Inside?

- **Jenkinsfile** – Declarative pipeline with the following stages:
  - `Build` – Docker image build from `Dockerfile`
  - `Test` – Run unit/integration tests (example placeholders included)
  - `Deploy` – Push image to Docker Hub or deploy container (customizable)
- **Dockerfile** – Simple Docker setup for a sample app or service
- **Shell scripts** – Helper scripts for building and running locally
- **Basic test scripts** – For demo purposes (replace with real tests)

---

## Project Structure

.
├── Jenkinsfile
├── Dockerfile
├── scripts/
│ ├── build.sh
│ └── test.sh
├── app/ (or src/)
│ └── ...
├── tests/
│ └── ...
└── README.md


---

## Requirements

- Jenkins server (local or remote)
- Docker installed on build agents
- GitHub credentials or Docker Hub access (for deploy stage)

---



## How to Use

1. Clone this repo to your Jenkins build agent:

   ```bash
   git clone https://github.com/pmanasijevic/pmanasijevic.git
   
2. Set up a Jenkins Pipeline job with the repo URL

3. Customize the Jenkinsfile if needed:

   - Image name
   - Test commands
   - Deployment logic

4. Run the pipeline and monitor stages in Jenkins UI




Example Jenkinsfile Stages

pipeline {
    agent any
    stages {

    
        stage('Build') {
            steps {
                sh 'docker build -t my-app .'
            }
        }
        stage('Test') {
            steps {
                sh './scripts/test.sh'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -d -p 80:80 my-app'
            }
        }
    }
}




About Me
Created by pmanasijevic, DevOps Engineer experienced in:

AWS (EC2, S3, IAM, CloudWatch)

Docker, Docker Swarm

Jenkins, GitHub Actions

SQL / MongoDB

Linux & Windows Systems

🔗 Find me on Upwork: 
https://www.upwork.com/freelancers/~01b9e203b1c1e186a8?viewMode=1


📜 License
This project is licensed under the MIT License – feel free to use and modify.

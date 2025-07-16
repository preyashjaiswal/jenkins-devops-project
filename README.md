# Jenkins DevOps Pipeline Example

This project demonstrates a simple Jenkins pipeline that:

1. Clones this repository.
2. Builds a Docker image.
3. Pushes the Docker image to Docker Hub.

---

## 📂 Project Structure

.
├── Jenkinsfile
├── Dockerfile
└── (your app code)

yaml
Copy
Edit

---

## 📝 How to Use

1. Create a Pipeline Job in Jenkins.
2. Configure it to use this repository.
3. Add Docker Hub credentials in Jenkins with ID `dockerhub-creds`.
4. Build the pipeline

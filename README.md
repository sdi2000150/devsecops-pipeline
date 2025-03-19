# Homework #0
Full name: **Theodoros Moraitis** (Θεόδωρος Μωραΐτης) <br>
StudentID: **sdi2000150** (1115202000150)

## Running our first devsecops pipeline

For this homework, I created a custom Docker image to scan for vulnerabilities. Here's the detailed process:

### 1. Creating the Custom Docker Image

1. First, I created a simple C program (`sdi2000150.c`):
    ```c
    #include <stdio.h>

    // This program belongs to sdi2000150
    int main(void) {
        printf("Hello from sdi2000150!\n");
        
        return 0;
    }
    ```

2. Created a Dockerfile:
    ```dockerfile
    FROM debian:stable

    RUN apt update && apt install -y gcc

    COPY sdi2000150.c /sdi2000150.c

    RUN gcc -o /sdi2000150 /sdi2000150.c

    CMD ["/sdi2000150"]
    ```

3. Built and tested the image locally:
    ```bash
    docker build -t teomor2002/sdi2000150:latest .
    docker run -it teomor2002/sdi2000150:latest
    ```

4. Pushed the image to DockerHub:
    ```bash
    docker push teomor2002/sdi2000150:latest
    ```

### 2. Setting up GitHub Actions Pipeline

1. Created a public repository `sdi2000150/devsecops-pipeline`
2. Set up DockerHub authentication:
    - Generated DockerHub Personal Access Token
    - Added secrets in GitHub repository:
      - `DOCKERHUB_USERNAME`
      - `DOCKERHUB_TOKEN`
3. Created GitHub Actions workflow for docker scout vulnerability scanning by adding a `scan.yml` file, into `.github/workflows/scan.yml`. The `scan.yml` is copy-paste from the one given (https://github.com/ethan42/sbom-sca-scanner/blob/main/.github/workflows/scan.yml), except of one minor change in line 11, providing my own custom docker image
4. Successfully executed the pipeline, analyze the custom image with docker scout. 
Here is the log output of the scan: https://github.com/sdi2000150/devsecops-pipeline/actions/runs/13954756933

# devsecops-pipeline

## Running our first devsecops pipeline (15 Points)

Some vulnerabilities are known and some are unknown. In this part of the homework, we will develop a continuous integration pipeline to scan docker containers for *known* vulnerabilities. Specifically, we will be using [Github Actions](https://github.com/features/actions) as the CI system and [docker scout](https://docs.docker.com/scout/) as the underlying scanner.

The end goal is to produce a successfully [pipeline run similar to this one](https://github.com/ethan42/sbom-sca-scanner/actions/runs/13537764759) for a docker image of your choice. You can use this [template repository](https://github.com/ethan42/sbom-sca-scanner/) if you are not sure where to start.

### Requirements

As part of this exercise, you have to:

1. Create a public repository in your personal Github workspace and perform a successful scan for a docker image. Choose a docker image that will be different than what others choose since we will be using image names to detect copy-paste issues from others :)
1. Commit in this repo a `successful_run.txt` file (again in the top-level folder of the repo) that includes the URL of your GitHub action successfully running on a docker image and identifying vulnerabilities. For example, ethan42 can use "https://github.com/ethan42/sbom-sca-scanner/actions/runs/13537764759" as a URL for a successful run.
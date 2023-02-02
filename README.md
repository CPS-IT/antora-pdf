# Antora with PDF tools 

> Docker image for building antora documentation projects with tools for PDF generation
## What does it do?

This package provides a Docker image with preinstalled Antora. It includes is intended for CI pipelines building documentation
projects with [Antora][antora]

## Requirements

* Docker

## Usage
    
1. Run `antora` in a container on your machine:
    ```yaml
     docker run -v `pwd`:/antora -it cpsit/antora-pdf:0.1.0 antora --fetch --to-dir public antora-playbook.yml 
    ```

2. Reference the Docker image in your CI/CD pipeline e.g.:
    ```yaml
    image: cpsit/antora-pdf:stable
    ```
    Include your `antora-playbook.yml` and optionally `antora-assembler.yml` and `pdf-theme.yml` files.

3. Run `antora` command in your pipeline, e.g.:
    ```yaml
    script: 
      - npx antora --fetch --cache-dir .cache/antora --attribute page-pagination= --to-dir public antora-playbook.yml
     ```

### Image tags

The following image tags are available:

| Tag         | Branch name          |
|-------------|----------------------|
| `stable`    | `main`               |
| `latest`    | `develop`            |
| `<version>` | _tags, e.g. `1.0.1`_ |
| `feature-*` | `feature/*`          |

## Important notes

**This project is experimental. Use it at your own risk.**

[antora]: https://antora.org/
[3]: https://hub.docker.com/r/cpsit/antora-pdf

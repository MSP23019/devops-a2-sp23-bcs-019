# devops-a2-sp23-bcs-019

A simple personal portfolio page for **Muhammad Saad** (Roll No: Sp23-Bcs-019),
built with plain HTML and CSS, packaged in a Docker image, and shipped to
Docker Hub automatically by GitHub Actions.

## What this project does

- `index.html` + `style.css` — a one-page portfolio (dark Android-green theme).
- `Dockerfile` — serves the page from `nginx:alpine`.
- `.github/workflows/ci.yml` — on every push to `main` and every pull request:
  1. checks the page (exists, has `<title>`, contains my roll number, links the stylesheet, is complete),
  2. builds the Docker image,
  3. pushes `<dockerhub-username>/devops-a2:latest` — but only for pushes to `main`, never for pull requests.

## Run it locally

```bash
docker build -t devops-a2:manual .
docker run -d -p 8080:80 --name page devops-a2:manual
```

Then open <http://localhost:8080>.

## Clean up

```bash
docker rm -f page
```

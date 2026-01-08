# Basic Frontend (static)

This is a minimal static frontend project intended for quick development and containerization. It serves a simple HTML/CSS/JS page via nginx.

## Files
- `index.html` — main page
- `styles.css` — basic styling
- `app.js` — tiny client-side script
- `Dockerfile` — builds an nginx image serving the files
- `.dockerignore` — to keep the image lean

## Build & Run (Docker)

Build the image:
```bash
docker build -t basic-frontend:latest .
```

Run the container (maps port 8080 on host to 80 in container):
```bash
docker run --rm -p 8080:80 basic-frontend:latest
```

Open http://localhost:8080 in your browser.

## Next steps / suggestions
- Add CI that builds and pushes the Docker image to your registry.
- If you want a single-page app framework (React/Vue/Svelte), replace the static files and add a build step in the Dockerfile (multi-stage build).
- Add automated tests or a linter for the frontend code.
- Add an nginx configuration file if you need custom routing or headers.

## Notes
This setup is intentionally minimal — ideal for demos or as a starting point for a more featureful frontend.
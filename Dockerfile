# ============================================================
# PakVista – Dockerfile
# University of Central Punjab | DevOps Fundamentals Spring 2026
# ============================================================
# Uses the official Nginx Alpine image to serve static files.
# No Node.js or build tools required — the site is pure HTML & CSS.
# ============================================================

FROM nginx:alpine

# Copy all HTML pages and the shared stylesheet into Nginx's
# default web root directory.
COPY *.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Expose port 80 (Nginx default HTTP port).
EXPOSE 80

# The base nginx:alpine image already sets the default CMD to
# start Nginx in the foreground, so no CMD override is needed.

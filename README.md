# Nginx Log Analyzer

A simple Bash script to analyze Nginx access logs and extract useful statistics (Top IPs, Paths, Status Codes, and User Agents) as required by roadmap.sh.

## Features
- Top 5 IP addresses with the most requests
- Top 5 requested paths/URLs
- Top 5 response status codes
- Top 5 user agents

## Usage
1. Give execution permission to the script:
   ```bash
   chmod +x nginx-analyzer.sh
	./nginx-analyzer.sh /path/to/nginx/access.log


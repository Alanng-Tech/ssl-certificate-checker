# A PowerShell tool to quickly inspect SSL certificates and track expiration for any website.

## SSL Certificate Checker (PowerShell)

PowerShell script to retrieve SSL certificate information from any website. Useful for developers and security engineers to monitor certificate validity, expiration, and SSL details.

---

## Features

- Retrieves **Subject**, **Issuer**, and **Thumbprint**
- Displays **Valid From / Valid Until** dates
- Calculates **Days Until Expiration**
- Handles wildcard certificates
- Basic error handling for unavailable or invalid certificates

---

## Requirements

- PowerShell 5.1 or newer
- Network access to the target site (port 443)

---

## Usage

Open PowerShell in the project folder, then run:

```powershell
# Basic usage
.\SSL-Checker\Get-WebsiteSSLInfo.ps1 -Domain example.com





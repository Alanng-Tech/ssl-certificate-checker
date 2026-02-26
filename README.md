# SSL Certificate Checker (PowerShell)

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

## Example Output

Subject: CN=*.google.com
Issuer: CN=WR2, O=Google Trust Services, C=US
Thumbprint: FC294D585EE67445800C2CFE142F15E5F55219FC
Valid From: 01/26/2026 02:39:20
Valid Until: 04/20/2026 03:39:19
Days Until Expiration: 52

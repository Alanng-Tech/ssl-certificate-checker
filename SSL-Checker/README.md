# Website SSL Inspector (PowerShell)

A PowerShell script to retrieve SSL certificate information from any website. Useful for developers and security engineers to monitor certificate validity and expiration.

## Features
- Retrieves **Subject**, **Issuer**, **Thumbprint**
- Displays **Valid From / Valid Until** and **Days Until Expiration**
- Handles wildcard certificates
- Basic error handling

## Requirements
- PowerShell 5.1+
- Network access to target site (port 443)

## Usage

Open PowerShell in the project folder and run:

```powershell
.\Get-WebsiteSSLInfo.ps1 -Domain example.com
```

## Subject: CN=*.google.com
Issuer: CN=WR2, O=Google Trust Services, C=US
Thumbprint: FC294D585EE67445800C2CFE142F15E5F55219FC
Valid From: 01/26/2026 02:39:20
Valid Until: 04/20/2026 03:39:19
Days Until Expiration: 52


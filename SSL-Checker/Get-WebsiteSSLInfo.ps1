param (
    [Parameter(Mandatory=$true)]
    [string]$Domain,

    [int]$Port = 443
)

try {
    $tcpClient = New-Object System.Net.Sockets.TcpClient
    $tcpClient.Connect($Domain, $Port)

    $sslStream = New-Object System.Net.Security.SslStream(
        $tcpClient.GetStream(),
        $false,
        ({ $true })  # Accept all certs for inspection
    )

    $sslStream.AuthenticateAsClient($Domain)
    $cert = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2 $sslStream.RemoteCertificate

    Write-Host "`nSSL Certificate Information for $Domain"
    Write-Host "--------------------------------------------------"
    Write-Host "Subject: $($cert.Subject)"
    Write-Host "Issuer: $($cert.Issuer)"
    Write-Host "Thumbprint: $($cert.Thumbprint)"
    Write-Host "Valid From: $($cert.NotBefore)"
    Write-Host "Valid Until: $($cert.NotAfter)"

    $daysRemaining = ($cert.NotAfter - (Get-Date)).Days
    Write-Host "Days Until Expiration: $daysRemaining"

    $sslStream.Close()
    $tcpClient.Close()
}
catch {
    Write-Host "Error retrieving SSL information: $_"
}
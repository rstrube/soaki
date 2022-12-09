#!/bin/bash
#|#./ingredients/dev/4_dotnet-https-dev-cert.sh #ASP.NET Dev HTTPS Cert [Requires /dev/dotnet ingredient]

# Trust ASP.NET localhost https certificate
# See: https://docs.microsoft.com/en-us/aspnet/core/security/enforcing-ssl?view=aspnetcore-6.0&tabs=visual-studio#ssl-linux
# See: https://github.com/dotnet/aspnetcore/issues/32842

# Create cert
dotnet dev-certs https

# Export cert to current directory, we will copy this into various directories to properly setup the cert
dotnet dev-certs https -ep aspnetcore.pem --format PEM

# Copy certificate as an trust source anchor
sudo cp -v aspnetcore.pem /usr/share/ca-certificates/trust-source/anchors/
sudo chmod +r /usr/share/ca-certificates/trust-source/anchors/aspnetcore.pem

# Update the trust list
sudo update-ca-trust extract

# Display the trust list
trust list | grep -B2 -A2 "localhost"

# Because the certificate isn't maked as CA:TRUE, update-ca-trust won't place it in /etc/ssl/certs
# Manually copy it here.  This is needed by lower level command line utilites and dotnet itself
sudo cp -v aspnetcore.pem /etc/ssl/certs/
sudo chmod +r /etc/ssl/certs/aspnetcore.pem

# Trust Firefox
# Still WIP
if [[ -e /usr/bin/firefox ]]; then
    echo "Setting up ASP.NET HTTPS dev certificate for Firefox..."
    
    # Need logic to determine default profile directory
    #certutil -d /home/robert/.mozilla/firefox/vr3e99i8.default-release -A -t "C,," -n "ASP.NET Core Development localhost" -i /usr/share/ca-certificates/trust-source/anchors/aspnetcore.pem
fi

# Trust Chromium based browsers
if [[ -e /usr/bin/google-chrome-stable ]]; then
    echo "Setting up ASP.NET HTTPS dev certificate for Google Chrome..."
    certutil -d sql:$HOME/.pki/nssdb -A -t "C,," -n "localhost" -i /usr/share/ca-certificates/trust-source/anchors/aspnetcore.pem
fi

# Remove cert from current directory
rm aspnetcore.pem
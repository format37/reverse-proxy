# reverse-proxy
Reverse proxy for routing ssl requests to multiple services on the same domain

## Installation

### 1. SSL certificate generation
Update your subdomain name if required
```bash
sudo apt install certbot
sudo certbot certonly --standalone -d service.dnk-technologies.com
```
Auto-renewal setup:
```bash
sudo crontab -e
# Add: 0 12 * * * /usr/bin/certbot renew --quiet
```

### 2. Git clone
```bash
git clone https://github.com/format37/reverse-proxy.git
cd reverse-proxy
```

### 3. Caddyfile
* Update domain name in the first line
* Define required reverse_proxy ports to your services

### 3. Compose
```bash
./compose.sh
```
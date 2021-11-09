Use .htaccess to put site in maintenance with some IPs allowed : 
```bash
  <IfModule mod_rewrite.c>
      RewriteEngine On
      RewriteCond %{REQUEST_URI} !/maintenance/index.html$ [NC]
      RewriteCond %{REQUEST_URI} !\.(jpe?g?|png|gif|js|css) [NC]
      RewriteCond %{REMOTE_ADDR} !^106\.161\.111\.106
      RewriteRule .* /maintenance/index.html [R=302,L]
  </IfModule>
```
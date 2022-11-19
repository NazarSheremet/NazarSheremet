#!/bin/sh
sudo apt update
sudo apt install apache2
sudo mkdir /var/www/gci/

cd /var/www/gci/

echo "<html>
<head>
<title>Nazar Sheremet</title>
</head>
<body>
<p>Nazar Sheremet</p>
</body>
</html>" > index.html

cd /etc/apache2/sites-available/
sudo cp 000-default.conf gci.conf
sudo a2ensite gci.conf
service apache2 reload

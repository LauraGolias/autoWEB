#!/bin/bash

site=$1
nome=$2

echo "
<VirtualHost *:80>
ServerName $1
DocumentRoot /var/www/$2
</VirtualHost>
" >> /etc/apache2/sites-available/$2.conf

mkdir /var/www/$2

echo "
<meta charset=\"utf-8\" />

<html>
	<head>
		<title> ABA 1 </title>
	</head>

	<body bgcolor=\"#0000FF\">
	 <div>
	  <center>
	   <h1> <font color=\"#FFFFFF\">
	   			$1
				$2
			</h1>
		</center>
	</div>
	</body>
</html> " >> /var/www/$2/$2.html

a2ensite $2.conf
systemctl restart apache2


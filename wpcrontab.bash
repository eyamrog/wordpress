1. Add the following lines to /etc/crontab of Web Servers for Write Users
*/5 * * * * root aws s3 sync --delete /var/www/html/wp-content/uploads/ s3://eyamrog-wordpressmedia/
*/5 * * * * root aws s3 sync --delete /var/www/html/ s3://eyamrog-wordpresscode/

2. Add the following lines to /etc/crontab of Web Servers for Read Users
*/5 * * * * root aws s3 sync --delete s3://eyamrog-wordpressmedia/ /var/www/html/wp-content/uploads/
*/5 * * * * root aws s3 sync --delete s3://eyamrog-wordpresscode/ /var/www/html/

#!/bin/bash
aws s3 sync --delete s3://eyamrog-wordpressmedia/ /var/www/html/wp-content/uploads/
aws s3 sync --delete s3://eyamrog-wordpresscode/ /var/www/html/

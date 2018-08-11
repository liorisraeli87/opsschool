#!/bin/bash
#replace deny with allow so the page won't be forbidden
sudo sed -i '0,/RE/s/deny from all/allow from all/'  /etc/apache2/sites-enabled/000-default
sudo service apache2 reload

#!/bin/bash

# Pass parameters: action / username password database

action="$1"
username="$2"
password="$3"
database="$4"


if [ "$action" = "clean" ]
then
    # truncate DB
    mysql -u $username -p$password $database < /var/www/scripts/clean.sql
elif [ "$action" = "populate" ]
then
    mysql -u $username -p$password $database < /var/www/scripts/data.sql
fi
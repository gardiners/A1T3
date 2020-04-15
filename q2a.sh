#!/bin/bash
echo "SELECT LastName, Firstname
  FROM Member
 WHERE Coach IS NULL;"

mysql -p -u awkologist compbiol -e "
SELECT LastName, Firstname
  FROM Member
 WHERE Coach IS NULL;"

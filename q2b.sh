#!/bin/bash
echo "SELECT  LastName, FirstName
  FROM  Member
 WHERE  JoinDate BETWEEN '2010-01-01' AND '2010-12-31';"

mysql -p -u awkologist compbiol -e "
SELECT  LastName, FirstName
  FROM  Member
 WHERE  JoinDate BETWEEN '2010-01-01' AND '2010-12-31';"

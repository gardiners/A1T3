#!/bin/bash
echo "  SELECT m.MemberId, m.LastName, m.FirstName
    FROM Member m
         INNER JOIN Entry e 
         ON m.MemberID = e.MemberID
GROUP BY m.MemberID, LastName, FirstName
  HAVING COUNT(DISTINCT e.Year) = (SELECT COUNT(DISTINCT e.Year) FROM Entry e);"

mysql -p -u awkologist compbiol -e "
  SELECT m.MemberId, m.LastName, m.FirstName
    FROM Member m
         INNER JOIN Entry e 
         ON m.MemberID = e.MemberID
GROUP BY m.MemberID, LastName, FirstName
  HAVING COUNT(DISTINCT e.Year) = (SELECT COUNT(DISTINCT e.Year) FROM Entry e);"

#!/bin/bash
echo "SELECT DISTINCT m.MemberID, m.LastName, m.FirstName
           FROM Member m
	        INNER JOIN Entry e
		        ON m.MemberID = e.MemberID
	  WHERE NOT EXISTS (SELECT * FROM Entry e
			     WHERE m.MemberID = e.MemberID
			       AND e.Year = 2014);"

mysql -p -u awkologist compbiol -e "
SELECT DISTINCT m.MemberID, m.LastName, m.FirstName
           FROM Member m
	        INNER JOIN Entry e
		        ON m.MemberID = e.MemberID
	  WHERE NOT EXISTS (SELECT * FROM Entry e
			     WHERE m.MemberID = e.MemberID
			       AND e.Year = 2014);"

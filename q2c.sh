#!/bin/bash
mysql -p -u awkologist compbiol <<%%
SELECT DISTINCT m.MemberID, m.LastName, m.FirstName
           FROM Member m
	        INNER JOIN  Entry e
		         ON  m.MemberID = e.MemberID
	  WHERE e.Year <> 2014;
%%


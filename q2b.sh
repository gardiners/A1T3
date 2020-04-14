#!/bin/bash
mysql -p -u awkologist compbiol <<%%
SELECT  LastName, Firstname
  FROM  Member
 WHERE  JoinDate BETWEEN '2010-01-01' AND '2010-12-31';
%%

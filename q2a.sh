#!/bin/bash
mysql -u awkologist -p compbiol <<%%
SELECT 	LastName, Firstname
  FROM	Member
 WHERE 	Coach IS NULL;
%%

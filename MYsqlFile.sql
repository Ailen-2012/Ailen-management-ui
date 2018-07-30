



SELECT * FROM   project_items;
---样板房 unit_number,dwg_unit,dwg_type,design_area

SELECT * FROM  (
	SELECT SUM(dwg_number) AS ybdy, DATE_FORMAT(create_date,'%Y-%m') AS months FROM project_items  WHERE dwg_type IN(1,2)  GROUP BY months
	UNION ALL 
	SELECT SUM(dwg_number) AS hhdy, DATE_FORMAT(create_date,'%Y-%m') AS months  FROM project_items  WHERE dwg_type =3  GROUP BY months
	
	SELECT SUM(dwg_number) AS gq, DATE_FORMAT(create_date,'%Y-%m') AS months FROM project_items  WHERE drawing_type IN(2,3)  GROUP BY months
	
) rr GROUP BY timedate

SELECT id ,user_name ,user_name,user_name,create_date FROM USER



SELECT DATE_FORMAT(create_date,'%Y-%m') AS months,SUM(dwg_number) AS yb,0 AS hh,0 AS gq
FROM project_items
WHERE dwg_type IN(1,2),
GROUP BY months
UNION ALL 
SELECT DATE_FORMAT(create_date,'%Y-%m') AS months,0 AS yb,SUM(dwg_number) AS hh,0 AS gq
FROM project_items
WHERE dwg_type=3
GROUP BY months
UNION ALL 
SELECT DATE_FORMAT(create_date,'%Y-%m') AS months,0 AS yb,0 AS hh,SUM(dwg_number) AS gq  
FROM project_items  
WHERE drawing_type IN(2,3)  
GROUP BY months
UNION ALL
SELECT DATE_FORMAT(create_date,'%Y-%m') AS months,0 AS yb,0 AS hh,SUM(dwg_number) AS gq  
FROM project_items  
WHERE drawing_type IN(2,3)  
GROUP BY months


SELECT * FROM   project_items  GROUP BY DATE(create_date);

SELECT * FROM   project_items 


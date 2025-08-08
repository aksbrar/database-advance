/*
	Show the city and state of dealerships
		with a count of the cars sold
		aliased as cars_sold
		
	Select from sold_cars
		join with the relevant tables
		
	Include dealerships which have no sold cars
	
	Order the count in descending order
		
	Hint: you may need to join using a table not included in our columns
*/

SELECT 
  D.city,
  D.state,
  COUNT(seller)
FROM sold_cars SC
  LEFT JOIN staff S ON SC.seller = S.id
  FULL JOIN dealerships D ON S.dealership_id = D.id
  GROUP BY D.city, D.state;
SELECT name, role, dealership_id, city
  FROM staff S
  LEFT JOIN dealerships D ON S.dealership_id = D.id;
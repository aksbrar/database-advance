SELECT brand, model, price, sold_price
  FROM sold_cars SC
   LEFT JOIN cars C ON SC.cars_id = C.id;
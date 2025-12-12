winter_clothing - (item_id: INT, item_name: VARCHAR, color: VARCHAR)

At the winter market, Cindy Lou is browsing the clothing inventory and wants to find all items with "sweater" in their name. 
But the challenge is the color and item columns have inconsistent capitalization. 
Can you write a query to return only the sweater names and their cleaned-up colors.


SELECT
  item_name AS sweater_name,
  CONCAT(TRIM(LOWER(color))) AS clean_color
FROM winter_clothing
WHERE item_name LIKE '%sweater%'
ORDER BY sweater_name;

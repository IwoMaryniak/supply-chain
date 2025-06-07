SELECT p.ProductName,s.CompanyName from `product` p
join `supplier` s
on `p`.`Id`=s.Id;

SELECT * from `customer` WHERE `customer`.`Country` like 'Mexico';

SELECT COUNT(*) as number ,year(`OrderDate`) as ye from `orders` GROUP BY ye;

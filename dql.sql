SELECT p.ProductName,s.CompanyName from `product` p
join `supplier` s
on `p`.`Id`=s.Id;

SELECT * from `customer` WHERE `customer`.`Country` like 'Mexico';

SELECT COUNT(*) as number ,year(`OrderDate`) as ye from `orders` GROUP BY ye;

SELECT count(z.Id_oferty),z.Id_oferty,concat(a.Imie," ",a.Nazwisko) as imie_i_nazwisko from `zainteresowanie` z join `klienci` k on k.Id_klienta=z.Id_klienta JOIN `agenci` a on a.Id_agenta=z.Id_klienta GROUP by z.Id_oferty order by count(z.Id_oferty) desc limit 1;

SELECT round(avg(`oferty`.`Cena`),2) as srednia_cena,`oferty`.`Woj` from `oferty`
GROUP by `oferty`.`Woj`;

SELECT a.`Imie`,a.`Nazwisko`,o.`Id_oferty`,o.`Woj`,o.Pow,o.Cena from `oferty` o
JOIN `agenci` a
on a.Id_agenta = o.Id_agenta
where o.`Id_oferty` like '%T';

SELECT o.Id_oferty,o.Pow,o.L_pokoi,o.L_laz,o.Cena,a.Imie,a.Nazwisko from `oferty` o
join `agenci` a
on a.Id_agenta=o.Id_agenta
WHERE o.Pow > 180
and o.L_laz >=2
and o.Status = "A";

SELECT sum(o.Qantity),p.ProductName from `orderitem` o join `product` p on p.Id=o.Id GROUP by o.Qantity order by sum(o.Qantity) desc;

SELECT sum(o.TotlaAmount),c.FirstName from `customer`c JOIN `orders` o on c.Id=o.CustomerId GROUP by o.CustomerId ORDER BY `sum(o.TotlaAmount)` DESC limit 1;

SELECT s.CompanyName,sum(o.UnitPrice*o.Qantity) as suma from `supplier`s join `product` p on p.SupplierID=s.Id join `orderitem` o on o.ProductId=p.Id GROUP by s.CompanyName ORDER BY `suma` DESC limit 3;

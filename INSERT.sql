-- INSERT
USE Project

INSERT INTO Customer VALUES 
('CS001','Max','1982-09-18','Male','4574 Ferry Street','mx@gmail.com','0202918521322'),
('CS002','John','1992-10-05','Male','1707 Worley Avenue','jn@yahoo.com','0302238339256'),
('CS003','Bob','2006-01-13','Male','784 Arrowood Drive','bb@gmail.com','033955340523'),
('CS004','Ariel','2002-12-14','Female','3311 Eden Drive','al@yahoo.com','022099457006'),
('CS005','Belle','1983-05-23','Female','2944 Keyser Ridge Road','be@gmail.com','030451532009'),
('CS006','Selena','1999-08-08','Female','1799 Kuhl Avenue','sa@yahoo.com','0505316326485'),
('CS007','Justin','1999-02-16','Male','2377 Green Acres Road','jn@gmail.com','0582300336252'),
('CS008','Jeremy','2012-02-04','Male','4640 Bryan Street','jy@yahoo.com','050564438472'),
('CS009','Amel','1984-01-07','Female','3685 Coolidge Street','am@gmail.com','058233364770'),
('CS010','Stefanie','1994-04-14','Female','3294 Stuart Street','se@yahoo.com','0520732959425'),
('CS011','Wanda Maximoff','2001-01-07','Female','Venus Street','wa@gmail.com','0844102987364'),
('CS012','Elizabeth Olsen','2001-02-28','Female','Bumi Street','el@gmail.com','0855987261501'),
('CS013','Thanos','2000-05-20','Male','Mars Street','th@gmail.com','086689102634'),
('CS014','Bucky Bames','2000-04-30','Male','Jupiter Street','bu@gmail.com','087789102632'),
('CS015','Black Panther','2001-01-01','Male','Saturnus Street','bp@gmail.com','088866773322');


INSERT INTO Supplier VALUES 
('SP001','Selby Skylar','ss@gmail.com','086814080991','2480 Chardonnay Drive'),
('SP002','Quinn Page','qp@yahoo.com','086792415776','300 Oakway Lane'),
('SP003','Karsyn Tayler','kt@gmail.com','087221293911','1830 Kidd Avenue'),
('SP004','Kirby Rain','kr@yahoo.com','087216605452','4649 Radford Street'),
('SP005','Josh Giddy','jg@gmail.com','088160207102','3521 Tibbs Avenue'),
('SP006','Harry Maguire','hm@yahoo.com','0894473775484','87 Nickel Road'),
('SP007','Megan Fox','mf@gmail.com','0822729289811','1294 Meadow View Drive'),
('SP008','Tom Cruise','tc@yahoo.com','089094828761','2499 Chardonnay Drive'),
('SP009','John Cena','jc@gmail.com','086461968625','524 Flinderation Road'),
('SP010','Billie Eilish','be@yahoo.com','0823459487833','2606 Eva Pearl Street'),
('SP011','Indra Wina','ia@gmail.com','081177889900','Magelang Street'),
('SP012','Monysaga Prima','ma@yahoo.com','083388226611','Pondok Ungu Street'),
('SP013','Naryadelta Pratama','na@yahoo.com','085516271188','Bendungan Street'),
('SP014','Annie Rose','ar@yahoo.com','083318273619','Tomang Street'),
('SP015','Balticindo Jaya','bj@yahoo.com','082178291726','Kramat Raya Street');


INSERT INTO Ingredient VALUES
('IG001','Sugar','100','5000'),
('IG002','Milk','100','2500'),
('IG003','Vanila Extract','100','3000'),
('IG004','Strawberry Extract','100','3000'),
('IG005','Chocolate Extract','100','3000'),
('IG006','Durian Extract','100','3000'),
('IG007','Cookies and Cream Extract','100','3000'),
('IG008','Melon Extract','100','3000'),
('IG009','Mint Extract','100','3000'),
('IG010','Chocolate Chip Extract','100','3000'),
('IG011','Cookies Dough Extract','100','3000'),
('IG012','Coffee Extrat','100','3000'),
('IG013','Egg Extract','100','3000'),
('IG014','Pistachio Extract','100','3000'),
('IG015','Chili Extract','100','3000'),
('IG016','Butter Extract','100','3000'),
('IG017','Cherry Extract','100','3000'),
('IG018','Peanut Butter Extract','100','3000');


INSERT INTO IceCream VALUES
('IC001','Vanilla Ice Cream','20000','97'),
('IC002','Strawberry Ice Cream','20000','87'),
('IC003','Chocolate Ice Cream','20000','60'),
('IC004','Durian Ice Cream','25000','85'),
('IC005','Cookies and Cream Ice Cream','25000','84'),
('IC006','Melon Ice Cream','25000','76'),
('IC007','Mint Ice Cream','25000','64'),
('IC008','Chocolate Chip Ice Cream','27500','54'),
('IC009','Cookie Dough Ice Cream','27500','74'),
('IC010','Coffee Ice Cream','27500','65'),
('IC011','Egg Ice Cream','27500','44'),
('IC012','Pistachio Ice Cream','27500','52'),
('IC013','Chili Ice Cream','27500','43'),
('IC014','Butter Ice Cream','27500','62'),
('IC015','Cherry Ice Cream','27500','57'),
('IC016','Peanut Butter Ice Cream','27500','50');


INSERT INTO Staff VALUES
('ST001','Anastasya Syah','2001-03-20','Female','Sudirman Street','anastasya2003@gmail.com','0812343212342','5000000'),
('ST002','Ahmad Sumarno','1995-01-31','Male','Diponegoro Street','ahmad3101@yahoo.com','089809752517','4500000'),
('ST003','Siti Chodija','1998-05-24','Female','Ahmad Dahlan Street','siti2405@yahoo.com','0876241359102','4750000'),
('ST004','Yura Yunita','1990-12-25','Female','Airlangga Street','yura2512@gmail.com','082341562341','5000000'),
('ST005','Pito Ahmad','1985-05-20','Male','Basuki Rahmat Street','pito2005@gmail.com','0817625397910','4750000'),
('ST006','Andreas Stravida','1988-07-08','Male','Pahlawan Street','andreas0807@yahoo.com','081762930192','4500000'),
('ST007','Christian Kelly','1999-08-08','Male','Sunter Street','christian0808@yahoo.com','089872635182','5150000'),
('ST008','Lyra Kosasih','1995-04-13','Female','Cengkareng Street','lyra1304@yahoo.com','0815729351927','5000000'),
('ST009','Kim Seon Hoo','1997-08-18','Male','BSD Street','kimseon@gmail.com','081133667788','5500000');


INSERT INTO PurchaseTransaction VALUES
('PO001','ST001','SP004','2022-01-01'),
('PO002','ST005','SP007','2022-01-04'),
('PO003','ST002','SP003','2022-02-04'),
('PO004','ST002','SP005','2022-03-06'),
('PO005','ST004','SP006','2022-03-07'),
('PO006','ST003','SP006','2022-04-09'),
('PO007','ST004','SP001','2022-04-10'),
('PO008','ST002','SP013','2022-05-11'),
('PO009','ST005','SP011','2022-06-11'),
('PO010','ST008','SP012','2022-07-13'),
('PO011','ST001','SP012','2022-08-14'),
('PO012','ST001','SP002','2022-09-14'),
('PO013','ST006','SP009','2022-10-15'),
('PO014','ST001','SP008','2022-11-17'),
('PO015','ST004','SP008','2022-12-17');


INSERT INTO PurchaseDetail VALUES
('PO001', 'IG011', 9),
('PO001', 'IG015', 2),
('PO002', 'IG006', 4),
('PO002', 'IG016', 23),
('PO003', 'IG015', 27),
('PO003', 'IG007', 2),
('PO004', 'IG014', 27),
('PO004', 'IG001', 6),
('PO005', 'IG014', 21),
('PO005', 'IG003', 28),
('PO006', 'IG015', 4),
('PO006', 'IG002', 9),
('PO007', 'IG015', 26),
('PO007', 'IG004', 16),
('PO008', 'IG007', 17),
('PO008', 'IG005', 20),
('PO009', 'IG002', 17),
('PO009', 'IG005', 20),
('PO010', 'IG010', 9),
('PO010', 'IG004', 15),
('PO011', 'IG012', 14),
('PO011', 'IG014', 8),
('PO012', 'IG016', 5),
('PO012', 'IG009', 24),
('PO013', 'IG004', 3),
('PO013', 'IG005', 26),
('PO014', 'IG014', 27),
('PO014', 'IG010', 2),
('PO015', 'IG005', 26),
('PO015', 'IG002', 21);


INSERT INTO SalesTransaction VALUES
('SL001','ST003','CS004','2022-01-01'),
('SL002','ST005','CS001','2022-02-02'),
('SL003','ST002','CS008','2022-03-02'),
('SL004','ST001','CS003','2022-04-04'),
('SL005','ST005','CS008','2022-05-06'),
('SL006','ST002','CS007','2022-05-08'),
('SL007','ST008','CS010','2022-06-10'),
('SL008','ST001','CS012','2022-07-11'),
('SL009','ST004','CS015','2022-08-12'),
('SL010','ST006','CS013','2022-08-14'),
('SL011','ST007','CS011','2022-09-15'),
('SL012','ST009','CS011','2022-10-16'),
('SL013','ST003','CS006','2022-11-17'),
('SL014','ST007','CS002','2022-11-18'),
('SL015','ST009','CS014','2022-12-04');


INSERT INTO SalesDetail VALUES
('SL001','IC003','1'),
('SL001','IC008','2'),
('SL002','IC014','5'),
('SL002','IC001','3'),
('SL003','IC016','3'),
('SL003','IC007','2'),
('SL004','IC002','10'),
('SL004','IC005','5'),
('SL005','IC011','12'),
('SL005','IC008','8'),
('SL006','IC005','7'),
('SL006','IC008','4'),
('SL007','IC016','4'),
('SL007','IC003','5'),
('SL008','IC004','3'),
('SL008','IC010','15'),
('SL009','IC001','15'),
('SL009','IC003','5'),
('SL010','IC002','10'),
('SL010','IC001','15'),
('SL011','IC016','5'),
('SL011','IC001','10'),
('SL012','IC002','5'),
('SL012','IC015','3'),
('SL013','IC012','4'),
('SL013','IC011','3'),
('SL014','IC008','3'),
('SL014','IC007','4'),
('SL015','IC009','3'),
('SL015','IC010','3');


SELECT *
FROM Photos
ORDER BY CodeNo, FolderName

/*

IF EXISTS(SELECT TOP 1 1 FROM Photos)
BEGIN
	--²MªÅ Photos
	TRUNCATE TABLE Photos
END

INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh001', '¥V¥Ê®Ü¯ù', '45-70¤¸', '2023-05-29', '¥V¥Ê®Ü¯ù', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh002', '¨¡ÀYÂA¥¤ÅS', '55-80¤¸', '2023-05-29', '¨¡ÀYÂA¥¤ÅS', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh003', '¬µ¼uÂfÂc', '50-75¤¸', '2023-05-29', '¬µ¼uÂfÂc', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh004', '¬Û«ä³r¬Ã¥¤', '50-75¤¸', '2023-05-29', '¬Û«ä³r¬Ã¥¤', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh005', '´H¤Ñ·R¥É¤pµµÄ¬', '45-70¤¸', '2023-05-29', '´H¤Ñ·R¥É¤pµµÄ¬', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh006', '¿}¤ß±K¬õ¯ù', '45-70¤¸', '2023-05-29', '¿}¤ß±K¬õ¯ù', '')

*/
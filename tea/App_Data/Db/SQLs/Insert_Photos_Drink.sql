SELECT *
FROM Photos
ORDER BY CodeNo, FolderName

/*

IF EXISTS(SELECT TOP 1 1 FROM Photos)
BEGIN
	--�M�� Photos
	TRUNCATE TABLE Photos
END

INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh001', '�V�ʮܯ�', '45-70��', '2023-05-29', '�V�ʮܯ�', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh002', '���Y�A���S', '55-80��', '2023-05-29', '���Y�A���S', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh003', '���u�f�c', '50-75��', '2023-05-29', '���u�f�c', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh004', '�۫�r�å�', '50-75��', '2023-05-29', '�۫�r�å�', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh005', '�H�ѷR�ɤp��Ĭ', '45-70��', '2023-05-29', '�H�ѷR�ɤp��Ĭ', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh006', '�}�߱K����', '45-70��', '2023-05-29', '�}�߱K����', '')

*/
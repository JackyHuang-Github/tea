SELECT *
FROM CodeDatas
WHERE 1 = 1
AND BaseNo = 'Drink'

/*

IF EXISTS(SELECT TOP 1 1 FROM CodeDatas WHERE BaseNo = 'Drink')
BEGIN
	DELETE FROM CodeDatas
	WHERE BaseNo = 'Drink'
END

INSERT INTO CodeDatas(IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark)
VALUES(1, 'Drink', '', '01', 'Tea', '�����~', '', '')
INSERT INTO CodeDatas(IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark)
VALUES(1, 'Drink', '', '02', 'HandShakeBeverages', '��n����', '', '')

*/
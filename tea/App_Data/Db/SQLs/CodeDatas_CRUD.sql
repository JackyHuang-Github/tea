SELECT *
FROM CodeDatas
WHERE 1 = 1
--AND BaseNo = 'Photo'
--AND CodeNo = 'Drink'
ORDER BY BaseNo, CodeNo

/*

DELETE
FROM CodeDatas
WHERE 1 = 1
AND BaseNo = 'Photo'
AND CodeNo = 'Drink'

INSERT INTO CodeDatas
('IsEnabled', 'BaseNo', 'ParentNo', 'SortNo', 'CodeNo', 'CodeName')
VALUES
(1, 'Photo', '', '04', 'Drink', '¶¼®Æ')

*/

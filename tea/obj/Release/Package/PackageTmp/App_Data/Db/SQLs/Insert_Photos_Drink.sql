USE tea

SELECT *
FROM Photos
WHERE CodeNo IN
(
	'Fresh',
	'Tea',
	'Special'
)
ORDER BY CodeNo, FolderName

/*

IF EXISTS(SELECT TOP 1 1 FROM Photos)
BEGIN
	--清空 Photos
	TRUNCATE TABLE Photos
END

-- 01_Fresh_鮮榨原汁
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh001', '金桔檸檬', '45-70元', '2023-05-29', '新鮮金桔汁搭配上鮮榨檸檬汁，酸甜滋味給您滿滿的surprise！', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh002', '炸彈檸檬冰沙', '55-80元', '2023-05-29', '整顆新鮮檸檬原汁原味入茶，獨家直擊，超完美比例最好喝！', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh003', '鮮果百香綠', '50-75元', '2023-05-29', '喝起來略帶有淡淡茉莉香氣綠茶搭配新鮮百香原汁，特別獻給愛嚐鮮的您！', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh004', '檸檬青', '50-75元', '2023-05-29', '檸檬汁搭配各式甘醇茗茶，酸甜口感一次滿足。', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh005', '檸檬蜂蜜', '45-70元', '2023-05-29', '以蜂蜜代替果糖，香甜蜂蜜搭配檸檬汁，給愛喝酸甜的您不一樣的選擇。', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh006', '檸檬蜂蜜蘆薈', '45-70元', '2023-05-29', '清新爽口、微酸微甜，吃得到粒粒分明的蘆薈，夏季消暑的沁涼推薦。', '')

-- 02_Tea_鮮茶香茗
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Tea', 'Tea001', '台灣高山青', '45-70元', '2023-05-29', '茶品甘醇、茶香四溢、清涼暢飲、絕對消暑。', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Tea', 'Tea002', '四季烏龍', '55-80元', '2023-05-29', '嚴選台灣茶葉，喝起來清香回甘，值得您一再品嚐。', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Tea', 'Tea003', '茉莉綠茶', '50-75元', '2023-05-29', '帶有淡淡茉莉清香，半糖好喝，無糖甘醇。', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Tea', 'Tea004', '桔香冰梅綠', '50-75元', '2023-05-29', '金桔梅子巧妙搭配，酸甜口味，甘醇順口，炎夏消暑的美好選擇。', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Tea', 'Tea005', '糖心蜜紅茶', '45-70元', '2023-05-29', '純手工現煮糖蜜，純粹融合香茗茶品，口感滑順，宛如青春詩篇。', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Tea', 'Tea006', '蜂蜜綠茶', '45-70元', '2023-05-29', '香甜蜂蜜將綠茶的風味升至全新境界，讓你的五感有新鮮體驗。', '')

-- 03_Special_獨家特調
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Special', 'Special001', '寒天愛玉', '45-70元', '2023-05-29', '寒天採用紅藻萃取而成，搭配滑嫩愛玉，舊雨新知必點的暢銷飲品。', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Special', 'Special002', '寒天愛玉小紫蘇', '55-80元', '2023-05-29', '寒天愛玉遇上小紫蘇，彈牙Q嫩的寒天晶球一吃就上癮，完美口感，給您超幸福的甜蜜滋味。', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Special', 'Special003', '膠原愛玉', '50-75元', '2023-05-29', '採用天然竹炭粉與膠原製成的晶球凍，以單茶為基底搭配愛玉，幸福口感甜蜜滿分。', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Special', 'Special004', '膠原愛玉小紫蘇', '50-75元', '2023-05-29', '咕溜順口的小紫蘇搭配滑嫩愛玉與獨賣膠原晶鑽口感豐富，經典熱銷。', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Special', 'Special005', '檸檬愛玉', '45-70元', '2023-05-29', '含有膳食纖維的檸檬愛玉，酸甜滋味加上愛玉清爽的口感，給您暑氣全消。', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Special', 'Special006', '檸檬愛玉小紫蘇', '45-70元', '2023-05-29', '滑嫩愛玉搭上咕溜小紫蘇，豐富口感，具飽足感，清爽酸甜，舊雨新知的熱銷經典。', '')

UPDATE Photos
SET SaleDate = GETDATE()
WHERE CodeNo IN
(
	'Fresh',
	'Tea',
	'Special'
)

*/


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
	--�M�� Photos
	TRUNCATE TABLE Photos
END

-- 01_Fresh_�A�^���
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh001', '�����f�c', '45-70��', '2023-05-29', '�s�A���ܥķf�t�W�A�^�f�c�ġA�Ĳ��������z������surprise�I', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh002', '���u�f�c�B�F', '55-80��', '2023-05-29', '�����s�A�f�c��ĭ���J���A�W�a�����A�W������ҳ̦n�ܡI', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh003', '�A�G�ʭ���', '50-75��', '2023-05-29', '�ܰ_�Ӳ��a���H�H�[���������f�t�s�A�ʭ���ġA�S�O�m���R�|�A���z�I', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh004', '�f�c�C', '50-75��', '2023-05-29', '�f�c�ķf�t�U���̾J�����A�Ĳ��f�P�@�������C', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh005', '�f�c���e', '45-70��', '2023-05-29', '�H���e�N���G�}�A�������e�f�t�f�c�ġA���R�ܻĲ����z���@�˪���ܡC', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Fresh', 'Fresh006', '�f�c���eĪ�P', '45-70��', '2023-05-29', '�M�s�n�f�B�L�ķL���A�Y�o��ɲɤ�����Ī�P�A�L�u�������G�D���ˡC', '')

-- 02_Tea_�A������
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Tea', 'Tea001', '�x�W���s�C', '45-70��', '2023-05-29', '���~�̾J�B�����|���B�M�D�Z���B��������C', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Tea', 'Tea002', '�|�u�Q�s', '55-80��', '2023-05-29', '�Y��x�W�����A�ܰ_�ӲM���^�̡A�ȱo�z�@�A�~�|�C', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Tea', 'Tea003', '�[�����', '50-75��', '2023-05-29', '�a���H�H�[���M���A�b�}�n�ܡA�L�}�̾J�C', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Tea', 'Tea004', '�ܭ��B����', '50-75��', '2023-05-29', '���ܱ��l�����f�t�A�Ĳ��f���A�̾J���f�A���L���������n��ܡC', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Tea', 'Tea005', '�}�߻e����', '45-70��', '2023-05-29', '�¤�u�{�N�}�e�A�º�ĦX�������~�A�f�P�ƶ��A�{�p�C�K�ֽg�C', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Tea', 'Tea006', '���e���', '45-70��', '2023-05-29', '�������e�N����������ɦܥ��s�ҬɡA���A�����P���s�A����C', '')

-- 03_Special_�W�a�S��
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Special', 'Special001', '�H�ѷR��', '45-70��', '2023-05-29', '�H�ѱĥά�Ħ�Ѩ��Ӧ��A�f�t�ƹ�R�ɡA�«B�s�����I���Z�P���~�C', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Special', 'Special002', '�H�ѷR�ɤp��Ĭ', '55-80��', '2023-05-29', '�H�ѷR�ɹJ�W�p��Ĭ�A�u��Q�઺�H�Ѵ��y�@�Y�N�W�}�A�����f�P�A���z�W���֪����e�����C', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Special', 'Special003', '����R��', '50-75��', '2023-05-29', '�ĥΤѵM�ˬ����P����s�������y��A�H������򩳷f�t�R�ɡA���֤f�P���e�����C', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Special', 'Special004', '����R�ɤp��Ĭ', '50-75��', '2023-05-29', '�B�ȶ��f���p��Ĭ�f�t�ƹ�R�ɻP�W�潦�촹�p�f�P�״I�A�g����P�C', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Special', 'Special005', '�f�c�R��', '45-70��', '2023-05-29', '�t�������ֺ����f�c�R�ɡA�Ĳ������[�W�R�ɲM�n���f�P�A���z��������C', '')
INSERT INTO Photos(CodeNo, FolderName, PhotoName, PriceName, SaleDate, DetailText, Remark)
VALUES('Special', 'Special006', '�f�c�R�ɤp��Ĭ', '45-70��', '2023-05-29', '�ƹ�R�ɷf�W�B�Ȥp��Ĭ�A�״I�f�P�A�㹡���P�A�M�n�Ĳ��A�«B�s�������P�g��C', '')

UPDATE Photos
SET SaleDate = GETDATE()
WHERE CodeNo IN
(
	'Fresh',
	'Tea',
	'Special'
)

*/


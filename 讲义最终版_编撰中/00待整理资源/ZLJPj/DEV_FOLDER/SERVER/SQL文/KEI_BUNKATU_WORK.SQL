CREATE TABLE KEI_BUNKATU_WORK
(
    �_��ԍ�                       CHAR(9) NOT NULL,
    �����m�n                       CHAR(3) NOT NULL,
    ������                         NUMBER(3,0) NOT NULL,
    ����                           NUMBER(4,0) NOT NULL,
    �w�����z�ϓ����t���O           CHAR(1) NOT NULL,
    �ʃ��[�X���ϓ����t���O       CHAR(1) NOT NULL,
    ���ʋϓ����t���O               CHAR(1) NOT NULL,
    ������w�����z                 NUMBER(13,0),
    ������ʃ��[�X��             NUMBER(13,0),
    �����㐔��                     NUMBER(4,0),
    CONSTRAINT SYS_C0025073 PRIMARY KEY (�_��ԍ�) USING INDEX
)
/

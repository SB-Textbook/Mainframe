CREATE TABLE KEI_LPWK_EDA_THUMON3
(
    �_��ԍ�                       CHAR(9) NOT NULL,
    �[���ԍ�                       VARCHAR2(16) NOT NULL,
    �f�B�[���[�R�[�h               CHAR(5) NOT NULL,
    �x����������                   VARCHAR2(40) NOT NULL,
    �ԍ�                           NUMBER(3,0) NOT NULL,
    �x���J�����z                   NUMBER(13,0),
    �x���J������                   NUMBER(4,2),
    CONSTRAINT SYS_C0025487 PRIMARY KEY (�_��ԍ�, �[���ԍ�, �f�B�[���[�R�[�h, �x����������, �ԍ�) USING INDEX
)
/

CREATE TABLE KAI_WK_KEIYAKU
(
    �_��ԍ�                       CHAR(9) NOT NULL,
    �W�J�A��                       NUMBER(3,0) NOT NULL,
    �_��於                       CHAR(60) NOT NULL,
    �����N                       CHAR(4) NOT NULL,
    ������                       CHAR(2) NOT NULL,
    ������                       CHAR(2) NOT NULL,
    �_����z                       NUMBER(13,0) NOT NULL,
    ���[�X��                       NUMBER(13,0) NOT NULL,
    �x����                       NUMBER(3,0) NOT NULL,
    ����œ�                       NUMBER(13,0) NOT NULL,
    ���v                           NUMBER(13,0) NOT NULL,
    CONSTRAINT P_WK_KEIYAKU PRIMARY KEY (�_��ԍ�, �W�J�A��) USING INDEX
)
/

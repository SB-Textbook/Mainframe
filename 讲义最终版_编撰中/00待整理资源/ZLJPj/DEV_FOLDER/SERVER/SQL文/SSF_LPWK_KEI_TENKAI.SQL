CREATE TABLE SSF_LPWK_KEI_TENKAI
(
    �_��ԍ�                       CHAR(9) NOT NULL,
    �A��                           NUMBER(3,0) NOT NULL,
    ����                           NUMBER(3,0),
    ���[�X��                       NUMBER(13,0),
    ����œ��z                     NUMBER(13,0),
    ���v�x���z                     NUMBER(14,0),
    ���Q������                     NUMBER(17,0),
    ����於                       VARCHAR2(60),
    �_����z                       NUMBER(13,0),
    �w�����z���v                   NUMBER(13,0),
    �O�n������                     NUMBER(13,0),
    �v�Z���@�Q�K�葹����            CHAR(2),
    �[���ԍ�                       VARCHAR2(16) NOT NULL,
    CONSTRAINT SSF_LPWK_KEI_TENKAI PRIMARY KEY (�_��ԍ�, �A��, �[���ԍ�) USING INDEX
)
/

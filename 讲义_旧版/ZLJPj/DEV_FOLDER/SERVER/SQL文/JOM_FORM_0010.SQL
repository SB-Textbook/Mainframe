CREATE TABLE JOM_FORM_0010
(
    �[���ԍ�                       VARCHAR2(16) NOT NULL,
    �_��ԍ�                       CHAR(9) NOT NULL,
    �����m�n                       CHAR(3) NOT NULL,
    �W�����x�X�R�[�h               CHAR(2) NOT NULL,
    �x�X������                     VARCHAR2(60) NOT NULL,
    �ݒu�ꏊ��                     VARCHAR2(20) NOT NULL,
    �W�������i�R�[�h               CHAR(4) NOT NULL,
    ������                         VARCHAR2(30) NOT NULL,
    ���ナ�[�X��                 NUMBER(13,0) NOT NULL,
    �ύX�ϕW��                     CHAR(1)
)
/
CREATE UNIQUE INDEX JOM_FORM_0010
ON JOM_FORM_0010
(�_��ԍ�, �����m�n)
/

CREATE TABLE MAN_WK_APL_MATCH
(
    ������                         CHAR(8) NOT NULL,
    �m�n                           CHAR(4) NOT NULL,
    �_��ԍ�                       CHAR(9) NOT NULL,
    �����m�n                       CHAR(3) NOT NULL,
    �A�|���_��m�n                 CHAR(7) NOT NULL,
    �A�|���_��m�n�Q�}��           CHAR(3) NOT NULL,
    ������                         CHAR(8) NOT NULL,
    ������                         CHAR(8) NOT NULL,
    ����                           NUMBER(3,0) NOT NULL,
    ���[�X���Q�N�z                 NUMBER(13,0) NOT NULL,
    �ݒu�ꏊ��                     VARCHAR2(20) NOT NULL,
    ������                         VARCHAR2(20) NOT NULL,
    ����                           NUMBER(4,0) NOT NULL,
    �������z                       NUMBER(13,0) NOT NULL,
    ����                           CHAR(1) NOT NULL,
    �p���������z                   NUMBER(13,0) NOT NULL,
    �p������                       NUMBER(4,0) NOT NULL,
    �ă��[�X�������z               NUMBER(13,0) NOT NULL,
    �ă��[�X����                   NUMBER(4,0) NOT NULL,
    �ă��[�X������                 CHAR(8) NOT NULL,
    �ă��[�X����                   NUMBER(3,0) NOT NULL,
    �ă��[�X���Q�N�z               NUMBER(13,0) NOT NULL,
    ����Ŋz                       NUMBER(13,0) NOT NULL,
    �G���[�敪                     CHAR(1) NOT NULL,
    �G���[���b�Z�[�W               VARCHAR2(30) NOT NULL,
    �X�V��                         CHAR(8) NOT NULL,
    �X�V����                       CHAR(6) NOT NULL,
    �X�V�S���҃R�[�h               CHAR(4) NOT NULL,
    CONSTRAINT P_MAN_WK_APL_MATCH PRIMARY KEY (������, �m�n) USING INDEX
)
/

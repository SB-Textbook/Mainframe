CREATE TABLE MAN_WK_APL_SEIKYU
(
    �L�[                           CHAR(16) NOT NULL,
    �_��ԍ�                       CHAR(9) NOT NULL,
    �����m�n                       CHAR(3) NOT NULL,
    ������                         CHAR(8) NOT NULL,
    �ă��[�X��                     NUMBER(13,0) NOT NULL,
    �ă��[�X���Q����Ŋz           NUMBER(13,0) NOT NULL,
    ���p���z                       NUMBER(13,0) NOT NULL,
    ���p���z�Q����Ŋz             NUMBER(13,0) NOT NULL,
    �X�V��                         CHAR(8) NOT NULL,
    �X�V����                       CHAR(6) NOT NULL,
    �X�V�S���҃R�[�h               CHAR(4) NOT NULL,
    CONSTRAINT P_MAN_WK_APL_SEIKYU PRIMARY KEY (�L�[, �_��ԍ�, �����m�n) USING INDEX
)
/

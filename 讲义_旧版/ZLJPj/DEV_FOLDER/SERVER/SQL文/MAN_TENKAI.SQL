CREATE TABLE MAN_TENKAI
(
    �_��ԍ�                       CHAR(9) NOT NULL,
    �����m�n                       CHAR(3) NOT NULL,
    ���菈���R�[�h                 CHAR(2) NOT NULL,
    �A��                           NUMBER(3,0) NOT NULL,
    ���[�X��_�������z              NUMBER(13,0) NOT NULL,
    �x����                       NUMBER(3,0) NOT NULL,
    �o�^��                         CHAR(8) NOT NULL,
    �o�^����                       CHAR(6) NOT NULL,
    �o�^�S���҃R�[�h               CHAR(4) NOT NULL,
    �X�V��                         CHAR(8) NOT NULL,
    �X�V����                       CHAR(6) NOT NULL,
    �X�V�S���҃R�[�h               CHAR(4) NOT NULL,
    CONSTRAINT P_MAN_TENKAI PRIMARY KEY (�_��ԍ�, �����m�n, ���菈���R�[�h, �A��) USING INDEX
)
/

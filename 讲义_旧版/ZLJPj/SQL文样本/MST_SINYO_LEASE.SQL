CREATE TABLE MST_SINYO_LEASE
(
    ���[�X_�����敪                CHAR(1) NOT NULL,
    �ی����Ԍ���                   CHAR(3) NOT NULL,
    �K�p��                         CHAR(8) NOT NULL,
    �M�p�ی�����                   NUMBER(10,8) NOT NULL,
    �o�^��                         CHAR(8) NOT NULL,
    �o�^����                       CHAR(6) NOT NULL,
    �o�^�S���҃R�[�h               CHAR(4) NOT NULL,
    �X�V��                         CHAR(8) NOT NULL,
    �X�V����                       CHAR(6) NOT NULL,
    �X�V�S���҃R�[�h               CHAR(4) NOT NULL,
    CONSTRAINT P_MST_SINYO_LEASE PRIMARY KEY (���[�X_�����敪, �ی����Ԍ���) USING INDEX
)
/

CREATE TABLE MST_KYUJITU
(
    �N                             CHAR(4) NOT NULL,
    ��                             CHAR(2) NOT NULL,
    ������                         CHAR(2) NOT NULL,
    ��                             CHAR(2) NOT NULL,
    ���[�X�c�Ɠ��敪               CHAR(1) NOT NULL,
    ��s�c�Ɠ��敪                 CHAR(1) NOT NULL,
    �o�^��                         CHAR(8) NOT NULL,
    �o�^����                       CHAR(6) NOT NULL,
    �o�^�S���҃R�[�h               CHAR(4) NOT NULL,
    �X�V��                         CHAR(8) NOT NULL,
    �X�V����                       CHAR(6) NOT NULL,
    �X�V�S���҃R�[�h               CHAR(4) NOT NULL,
    CONSTRAINT P_MST_KYUJITU PRIMARY KEY (�N, ��, ��) USING INDEX
)
/

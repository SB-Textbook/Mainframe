CREATE TABLE KOK_SIHARAI_H
(
    �x����R�[�h                   CHAR(4) NOT NULL,
    �����敪                       CHAR(1),
    �x���於                       VARCHAR2(56) NOT NULL,
    �������`�l                     VARCHAR2(56),
    ��s�R�[�h                     CHAR(4),
    �x�X�R�[�h                     CHAR(3),
    �a�����                       CHAR(1),
    �����ԍ�                       CHAR(7),
    �o�^�ԍ�                       CHAR(4),
    ��`�����l                     VARCHAR2(56),
    �X�֔ԍ�                       CHAR(7),
    �X����Z���P                   VARCHAR2(34),
    �X����Z���Q                   VARCHAR2(32),
    �X����Z���R                   VARCHAR2(32),
    �X���於�P                     VARCHAR2(28),
    �X���於�Q                     VARCHAR2(28),
    �x���Ή��敪                   CHAR(1),
    �o�^��                         CHAR(8),
    �o�^����                       CHAR(6),
    �o�^�S���҃R�[�h               CHAR(4),
    �X�V��                         CHAR(8),
    �X�V����                       CHAR(6),
    �X�V�S���҃R�[�h               CHAR(4),
    �萔���L��                     CHAR(1),
    �X�V�W��                       CHAR(1)
)
/
CREATE UNIQUE INDEX KOK_SIHARAI_H
ON KOK_SIHARAI_H
(�x����R�[�h)
/

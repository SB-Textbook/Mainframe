CREATE TABLE KAI_TENKAI
(
    �_��ԍ�                       CHAR(9) NOT NULL,
    �W�J�ԍ�                       NUMBER(3,0) NOT NULL,
    �s�ϓ����[�X��                 NUMBER(13,0) NOT NULL,
    ����                           NUMBER(3,0) NOT NULL,
    �o�^��                         CHAR(8) NOT NULL,
    �o�^����                       CHAR(6) NOT NULL,
    �o�^�S���҃R�[�h               CHAR(4) NOT NULL,
    �X�V��                         CHAR(8) NOT NULL,
    �X�V����                       CHAR(6) NOT NULL,
    �X�V�S���҃R�[�h               CHAR(4) NOT NULL,
    CONSTRAINT PK_KAI_TENKAI PRIMARY KEY (�_��ԍ�, �W�J�ԍ�) USING INDEX
)
/

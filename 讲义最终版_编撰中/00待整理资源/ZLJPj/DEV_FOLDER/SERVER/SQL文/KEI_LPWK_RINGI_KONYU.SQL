CREATE TABLE KEI_LPWK_RINGI_KONYU
(
    �_��ԍ�                       CHAR(9) NOT NULL,
    �w���掯�ʂm�n                 CHAR(2) NOT NULL,
    �v�j�A��                       NUMBER(3,0) NOT NULL,
    �[���ԍ�                       VARCHAR2(16) NOT NULL,
    �w����R�[�h                   CHAR(8),
    �w���於                       VARCHAR2(60),
    �w����Z��                     VARCHAR2(100),
    �w����S����                   VARCHAR2(20),
    �d�b�ԍ�                       VARCHAR2(15),
    �w�����z���v                   NUMBER(13,0),
    �d������œ��z                 NUMBER(13,0),
    �x���J�����z1                  NUMBER(13,0),
    �x���J������1                  NUMBER(4,2),
    �x����������1                  VARCHAR2(40),
    �x���J�����z2                  NUMBER(13,0),
    �x���J������2                  NUMBER(4,2),
    �x����������2                  VARCHAR2(40),
    �x���J�����z3                  NUMBER(13,0),
    �x���J������3                  NUMBER(4,2),
    �x����������3                  VARCHAR2(40),
    �x���J�����z4                  NUMBER(13,0),
    �x���J������4                  NUMBER(4,2),
    �x����������4                  VARCHAR2(40),
    �x���J�����z5                  NUMBER(13,0),
    �x���J������5                  NUMBER(4,2),
    �x����������5                  VARCHAR2(40),
    ��`��n���@�P                 CHAR(1),
    ��`��n���@�Q                 CHAR(1),
    ��`��n���@�R                 CHAR(1),
    ��`��n���@�S                 CHAR(1),
    ��`��n���@�T                 CHAR(1),
    ����於                       VARCHAR2(60),
    �_���                         CHAR(8),
    CONSTRAINT SYS_C0025552 PRIMARY KEY (�_��ԍ�, �w���掯�ʂm�n, �v�j�A��, �[���ԍ�) USING INDEX
)
/

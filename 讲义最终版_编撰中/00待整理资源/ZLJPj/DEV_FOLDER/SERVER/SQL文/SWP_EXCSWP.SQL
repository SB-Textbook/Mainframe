CREATE TABLE SWP_EXCSWP
(
    �Ǘ��ԍ�                       CHAR(4) NOT NULL,
    ��s�R�[�h                     CHAR(4) NOT NULL,
    �x�X�R�[�h                     CHAR(3) NOT NULL,
    ��s��                         VARCHAR2(50) NOT NULL,
    ������                         CHAR(8) NOT NULL,
    ����R�[�h                     CHAR(3) NOT NULL,
    �z�茳�{                       NUMBER(13,0) NOT NULL,
    ���{�c��                       NUMBER(13,0) NOT NULL,
    ���ٍϊz                     NUMBER(13,0) NOT NULL,
    �ŏI�ٍϊz                     NUMBER(13,0) NOT NULL,
    �ٍω�                       NUMBER(3,0) NOT NULL,
    ���Œ�ϓ��敪               CHAR(1) NOT NULL,
    ��旘���                   CHAR(3) NOT NULL,
    ������                       NUMBER(8,6) NOT NULL,
    �x���Œ�ϓ��敪               CHAR(1) NOT NULL,
    �x�������                   CHAR(3) NOT NULL,
    �x������                       NUMBER(8,6) NOT NULL,
    �}�[�W��                       NUMBER(8,6) NOT NULL,
    �x�������敪                   CHAR(1) NOT NULL,
    �����Œ�敪                   CHAR(1) NOT NULL,
    �[�������敪                   CHAR(1) NOT NULL,
    �~���Z����                     NUMBER(6,2),
    �v�Z�J�n��                     CHAR(8) NOT NULL,
    �ŏI����                       CHAR(8),
    �_�񌎐�                       NUMBER(3,0) NOT NULL,
    �����T�C�N��                   CHAR(2) NOT NULL,
    �������u����                   CHAR(2) NOT NULL,
    ���������敪                   CHAR(1),
    ���l                           VARCHAR2(50),
    �X�V�W��                       CHAR(1)
)
/
CREATE UNIQUE INDEX SWP_EXCSWP
ON SWP_EXCSWP
(�Ǘ��ԍ�)
/

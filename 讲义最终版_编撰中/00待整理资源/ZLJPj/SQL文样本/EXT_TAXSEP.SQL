CREATE TABLE EXT_TAXSEP
(
    �[�t��R�[�h                   CHAR(6) NOT NULL,
    �[�t�於                       CHAR(20) NOT NULL,
    ��s�R�[�h                     CHAR(4),
    ��s��                         CHAR(30),
    ��s���J�i                     CHAR(15),
    �񏞋��敪                     CHAR(1),
    �[�t���@                       CHAR(1),
    ��������                       CHAR(1),
    �[�t�����P                     CHAR(8),
    �[�t�����Q                     CHAR(8),
    �[�t�����R                     CHAR(8),
    �[�t�����S                     CHAR(8),
    �[�t���P                       CHAR(8),
    �[�t���Q                       CHAR(8),
    �[�t���R                       CHAR(8),
    �[�t���S                       CHAR(8),
    �񏞋�������                   CHAR(8),
    ��N                         CHAR(4),
    �s���Y�ŋ敪                   CHAR(1),
    �����敪                       CHAR(1),
    ��Ƌ敪                       CHAR(2),
    �X�V�W��                       CHAR(1),
    �ŗ�                           NUMBER(4,3) NOT NULL,
    �ېŕW���z                     NUMBER(13,0) NOT NULL,
    �Ŋz                           NUMBER(13,0) NOT NULL,
    �񏞋�                         NUMBER(13,0),
    �[�t���z�P                     NUMBER(13,0),
    �[�t���z�Q                     NUMBER(13,0),
    �[�t���z�R                     NUMBER(13,0),
    �[�t���z�S                     NUMBER(13,0),
    �s���Y�Ŋz                     NUMBER(13,0),
    �s���Y�ŕ񏞋�                 NUMBER(13,0),
    �����[�t���x                   NUMBER(13,0)
)
/
CREATE UNIQUE INDEX EXT_TAXSEP
ON EXT_TAXSEP
(�[�t��R�[�h)
/

CREATE TABLE JOM_FORM_0009_G
(
    JOBCOD                         NUMBER(2,0),
    �_��ԍ�                       CHAR(9),
    �_���                         CHAR(8) NOT NULL,
    ��P�������                   CHAR(8),
    ������                         CHAR(4) NOT NULL,
    �ŗ�                           NUMBER(3,1) NOT NULL,
    �W�������i�R�[�h               CHAR(4) NOT NULL,
    ������                         VARCHAR2(30) NOT NULL,
    ���[�X���P                     NUMBER(13,0) NOT NULL,
    ���[�X���Q                     NUMBER(13,0) NOT NULL,
    ���[�X���R                     NUMBER(13,0) NOT NULL,
    ���[�X���S                     NUMBER(13,0) NOT NULL,
    ���[�X���T                     NUMBER(13,0) NOT NULL,
    ���[�X���U                     NUMBER(13,0) NOT NULL,
    ���[�X���V                     NUMBER(13,0) NOT NULL,
    ���[�X���W                     NUMBER(13,0) NOT NULL,
    ���[�X���X                     NUMBER(13,0) NOT NULL,
    ���[�X���P�O                   NUMBER(13,0) NOT NULL,
    ���[�X���P�P                   NUMBER(13,0) NOT NULL,
    ���[�X���P�Q                   NUMBER(13,0) NOT NULL,
    ���[�X���P�R                   NUMBER(13,0) NOT NULL,
    ���[�X���P�S                   NUMBER(13,0) NOT NULL,
    ���[�X�����v                   NUMBER(13,0) NOT NULL,
    ����łP                       NUMBER(13,0),
    ����łQ                       NUMBER(13,0),
    ����łR                       NUMBER(13,0),
    ����łS                       NUMBER(13,0),
    ����łT                       NUMBER(13,0),
    ����łU                       NUMBER(13,0),
    ����łV                       NUMBER(13,0),
    ����łW                       NUMBER(13,0),
    ����łX                       NUMBER(13,0),
    ����łP�O                     NUMBER(13,0),
    ����łP�P                     NUMBER(13,0),
    ����łP�Q                     NUMBER(13,0),
    ����łP�R                     NUMBER(13,0),
    ����łP�S                     NUMBER(13,0),
    ����ō��v                     NUMBER(13,0)
)
/
CREATE UNIQUE INDEX JOM_FORM_0009_G
ON JOM_FORM_0009_G
(�ŗ�, �W�������i�R�[�h)
/

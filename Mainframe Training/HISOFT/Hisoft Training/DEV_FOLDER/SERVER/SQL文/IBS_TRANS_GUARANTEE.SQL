CREATE TABLE IBS_TRANS_GUARANTEE
(
    �Č��m�n                         CHAR(12) DEFAULT ' ' NOT NULL,
    ��ۏؐ�R�[�h                 CHAR(8) DEFAULT ' ' NOT NULL,
    ���S�������q                   NUMBER(16,2) DEFAULT 0 NOT NULL,
    ���S��������                   NUMBER(16,2) DEFAULT 0 NOT NULL,
    CONSTRAINT SYS_C0024081 PRIMARY KEY (�Č��m�n, ��ۏؐ�R�[�h) USING INDEX,
    CONSTRAINT SYS_C0029047 FOREIGN KEY (�Č��m�n) REFERENCES IBS_TRANS (�Č��m�n) ON DELETE CASCADE,
    CONSTRAINT SYS_C0029056 FOREIGN KEY (��ۏؐ�R�[�h) REFERENCES IBS_CUSTOMER (�����R�[�h)
)
/

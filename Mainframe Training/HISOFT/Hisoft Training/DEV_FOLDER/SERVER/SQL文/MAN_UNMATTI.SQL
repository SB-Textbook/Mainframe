CREATE TABLE MAN_UNMATTI
(
    �Ǘ��m�n                       CHAR(6) NOT NULL,
    �\���P                         CHAR(2) NOT NULL,
    �@��                           CHAR(17) NOT NULL,
    �@��                           CHAR(10) NOT NULL,
    �\���Q                         CHAR(36) NOT NULL,
    �A��                           NUMBER(3,0) NOT NULL,
    CONSTRAINT P_UNMATTI PRIMARY KEY (�Ǘ��m�n, �@��, �A��) USING INDEX
)
/

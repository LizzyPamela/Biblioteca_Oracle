/*
INSERT INTO horarioBiblioteca (id, fecha, horaApertura, horaCierre, biblioteca_id) 
VALUES (horarioBiblioteca_seq.NEXTVAL, TO_DATE('2024-11-01', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), '18:00', 1);

Inserts for horarioBiblioteca with explicit id values from 1 to 15 taking in account associated tables
with inserts calling ids with these possible values.
*/

INSERT INTO horarioBiblioteca (id, fecha, horaApertura, horaCierre, biblioteca_id) 
VALUES (1, TO_DATE('2024-11-01', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), '18:00', 1);

INSERT INTO horarioBiblioteca (id, fecha, horaApertura, horaCierre, biblioteca_id) 
VALUES (2, TO_DATE('2024-11-02', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-02 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), '17:00', 1);

INSERT INTO horarioBiblioteca (id, fecha, horaApertura, horaCierre, biblioteca_id) 
VALUES (3, TO_DATE('2024-11-03', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-03 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), '16:30', 1);

INSERT INTO horarioBiblioteca (id, fecha, horaApertura, horaCierre, biblioteca_id) 
VALUES (4, TO_DATE('2024-11-04', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-04 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), '19:00', 1);

INSERT INTO horarioBiblioteca (id, fecha, horaApertura, horaCierre, biblioteca_id) 
VALUES (5, TO_DATE('2024-11-05', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-05 07:45:00', 'YYYY-MM-DD HH24:MI:SS'), '17:45', 1);

INSERT INTO horarioBiblioteca (id, fecha, horaApertura, horaCierre, biblioteca_id) 
VALUES (6, TO_DATE('2024-11-06', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-06 08:15:00', 'YYYY-MM-DD HH24:MI:SS'), '18:15', 1);

INSERT INTO horarioBiblioteca (id, fecha, horaApertura, horaCierre, biblioteca_id) 
VALUES (7, TO_DATE('2024-11-07', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-07 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), '17:30', 1);

INSERT INTO horarioBiblioteca (id, fecha, horaApertura, horaCierre, biblioteca_id) 
VALUES (8, TO_DATE('2024-11-08', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-08 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), '18:00', 1);

INSERT INTO horarioBiblioteca (id, fecha, horaApertura, horaCierre, biblioteca_id) 
VALUES (9, TO_DATE('2024-11-09', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-09 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), '17:15', 1);

INSERT INTO horarioBiblioteca (id, fecha, horaApertura, horaCierre, biblioteca_id) 
VALUES (10, TO_DATE('2024-11-10', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-10 08:15:00', 'YYYY-MM-DD HH24:MI:SS'), '17:45', 1);

INSERT INTO horarioBiblioteca (id, fecha, horaApertura, horaCierre, biblioteca_id) 
VALUES (11, TO_DATE('2024-11-11', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-11 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), '18:30', 1);

INSERT INTO horarioBiblioteca (id, fecha, horaApertura, horaCierre, biblioteca_id) 
VALUES (12, TO_DATE('2024-11-12', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-12 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), '17:00', 1);

INSERT INTO horarioBiblioteca (id, fecha, horaApertura, horaCierre, biblioteca_id) 
VALUES (13, TO_DATE('2024-11-13', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-13 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), '16:30', 1);

INSERT INTO horarioBiblioteca (id, fecha, horaApertura, horaCierre, biblioteca_id) 
VALUES (14, TO_DATE('2024-11-14', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-14 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), '19:00', 1);

INSERT INTO horarioBiblioteca (id, fecha, horaApertura, horaCierre, biblioteca_id) 
VALUES (15, TO_DATE('2024-11-15', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-15 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), '18:00', 1);

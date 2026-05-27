CREATE OR REPLACE PROCEDURE Proc1 IS
  v_number1 NUMBER := 10;
  v_tiempo  DATE   := SYSDATE;
  v_nombre  VARCHAR2(100) := 'Sin nombre';

  CURSOR c_emp IS
    SELECT empno, ename
    FROM emp;
BEGIN
  FOR r_emp IN c_emp LOOP
    dbms_output.put_line(
      'Fila leída de EMP - Empno: ' || r_emp.empno || ', Nombre: ' || r_emp.ename
    );
  END LOOP;

  dbms_output.put_line('El valor de number1 es: ' || v_number1);
  dbms_output.put_line('Fecha TIEMPO: ' || TO_CHAR(v_tiempo, 'YYYY-MM-DD HH24:MI:SS'));
  dbms_output.put_line('Nombre: ' || v_nombre);
END Proc1;

-- obten la fecha del sistema accdieno a la tabla dual con formato dd/mm/yyyy   
SELECT TO_CHAR(SYSDATE, 'DD/MM/YYYY') FROM DUAL;    
--
-- obten el nombre del usuario actual
SELECT USER FROM DUAL;
-- obten el nombre del host actual
SELECT SYS_CONTEXT('USERENV', 'HOST') FROM DUAL;
-- obten el nombre del programa actual
SELECT SYS_CONTEXT('USERENV', 'CURRENT_USER') FROM DUAL;
-- obten el nombre del dominio actual

SET SERVEROUTPUT ON;

DECLARE
  nums SYS.ODCINUMBERLIST;
BEGIN
  Proc4Pares(nums);
  FOR i IN 1 .. nums.COUNT LOOP
    DBMS_OUTPUT.PUT_LINE('Par ' || i || ': ' || nums(i));
  END LOOP;
END;








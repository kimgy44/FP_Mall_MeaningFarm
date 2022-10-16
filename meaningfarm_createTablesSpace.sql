--sys�������� ������ ��?
--
--�ǽ� �ó�����
--
--����Ŭ ������ tomato������ ����� ����� tiger�� �Ѵ�.
--tomato������ ����� �������� ������ ����� �ش�.
--ts_tomato��� ���̺� �����̽� �̸����� ����Ŭ�� ��ġ�Ǿ� �ִ� �������� ��ġ�� Ȯ���� ��
--�Ʒ� DDL���� sys�������� �����Ѵ�.

create tablespace ts_meaningfarm
datafile 'D:\app\kytcook\oradata\orcl11\meaningFarm.dbf' size 100M AUTOEXTEND 
ON NEXT 5M;


--�Ʒ��� ������ ������ ���̺����̽��� ���������� ����� ������ Ȯ���ϴ� DML���̴�.
--�̰͵� �ݵ�� sys �������� Ȯ���ؾ� �Ѵ�.
select tablespace_name, file_name, autoextensible, increment_by
      ,maxbytes
  from dba_data_files
 where tablespace_name = 'ts_meaningfarm';

--tomato��� ������ ����� ����� tiger�� �ϸ�
--tomato������ �ٶ󺸴� ���̺� �����̽��� ts_tomato�� �Ѵ�.
create user meaningFarm identified by tiger
default tablespace ts_meaningFarm;

----------------------------------------------------------
-- DCL - ���Ѻο�

grant create session to meaningFarm  with admin option;

--���̺��� ������� ������ �丶�信��  �ش�.
grant create table to meaningFarm with admin option;

--�並 ����� ������ �ش�
grant create view to meaningFarm with admin option;

--���̺� �����̽��� ���� ���� 
alter user meaningFarm quota unlimited on ts_meaningFarm;

--Ʈ���Ÿ� ����� ���Ѻο�
grant create trigger to meaningFarm;

-- 1�� �����ϴ� ������Ʈ ������?���� �ο�
grant create sequence to meaningFarm;

--���ν����� ������ �� �ִ� ���� �ο�
GRANT CREATE PROCEDURE TO meaningFarm;

COMMIT;

-----���̺����̽� ����
DROP TABLESPACE ts_meaningFarm
INCLUDING CONTENTS AND DATAFILES
CASCADE CONSTRAINTS;

-----���������� ����
drop user meaningfarm cascade;
-- �׽�Ʈ1. üũ����Ʈ ���̺��� �Է�
EXEC PRC_CHECKLIST_INSERT(4, 2, 3, SYSDATE, '���ν����׽�Ʈ1', '����Ư���� ���α� ������ 161(������)', 1111011900, 37.57956788809389, 126.97702562251516);
--==>> PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.

-- �׽�Ʈ2. ����
EXEC PRC_CHECKLIST_INSERT(5, 2, 3, SYSDATE, '���ν����׽�Ʈ2', '���� ��걸 ������� 111', 1117013100, 37.57956788809389, 126.97702562251516, V_MJEONSE => 32000);

-- �׽�Ʈ3. ����
EXEC PRC_CHECKLIST_INSERT(6, 1, 3, SYSDATE, '���ν����׽�Ʈ2', '���� ��걸 ������� 111', 1117013100, 37.57956788809389, 126.97702562251516, V_MJEONSE => 32000);
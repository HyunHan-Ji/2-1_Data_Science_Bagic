name=c("John","Tom","Jackson","Alice","Emily")  #�̸�����
height=c(160,165,170,175,180) #Ű ����
weight=c(77,95,84,62,71)  #������ ����

hw=(cbind(height,weight)) #�������� ���Ͱ���
rownames(hw)=name  #���̸�����
hw

mean(hw[,1])  #Ű�� ��հ�
sd(hw[,1])  #Ű�� ǥ������
max(hw[,1]) #Ű�� �ִ밪
min(hw[,1]) #Ű�� �ּҰ�
median(hw[,1])  #Ű�� �߾Ӱ�

mean(hw[,2])  #�������� ��հ�
sd(hw[,2])  #�������� ǥ������
max(hw[,2]) #�������� �ִ밪
min(hw[,2]) #�������� �ּҰ�
median(hw[,2])  #�������� �߾Ӱ�
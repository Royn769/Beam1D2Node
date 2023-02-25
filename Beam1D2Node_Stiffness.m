function [rigid] = Beam1D2Node_Stiffness(E,I,L)
    %���㵥Ԫ�նȾ���
    %���뵯��ģ��E��������Ծ�I������Ԫ����L
    %����նȾ���
    rigid = E*I/(L*L*L)*[12 6*L -12 6*L;
                         6*L 4*L*L -6*L 2*L*L;
                         -12 -6*L 12 -6*L;
                         6*L 2*L*L -6*L 4*L*L];
end
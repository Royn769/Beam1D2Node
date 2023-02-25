function [B] = Beam1D2Node_Strain(x,L,y)
    %���㼸�ξ���
    %��������
    e = x/L;
    B1 = (12*e-6)/(L*L);
    B2 = (6*e-4)/L;
    B3 = (12*e-6)/(L*L);
    B4 = (6*e-2)/L;
    B = -y*[B1 B2 B3 B4];
end
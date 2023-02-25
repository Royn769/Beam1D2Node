function [rigid] = Beam1D2Node_Stiffness(E,I,L)
    %计算单元刚度矩阵
    %输入弹性模量E，截面惯性矩I，梁单元长度L
    %输出刚度矩阵
    rigid = E*I/(L*L*L)*[12 6*L -12 6*L;
                         6*L 4*L*L -6*L 2*L*L;
                         -12 -6*L 12 -6*L;
                         6*L 2*L*L -6*L 4*L*L];
end
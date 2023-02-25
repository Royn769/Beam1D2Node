function [z] = Beam1D2Node_Assembly(KK,k,i,j)
    DOF(1)=2*i-1;
    DOF(2)=2*i;
    DOF(3)=2*j-1;
    DOF(4)=2*j;
    for n1 = 1:4
        for n2 = 1:4
            KK(DOF(n1),DOF(n2)) = KK(DOF(n1),DOF(n2)) + k(n1,n2);
        end
    end
    z = KK;
end

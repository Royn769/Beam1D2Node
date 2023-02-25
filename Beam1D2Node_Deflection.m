function [v] = Beam1D2Node_Deflection(x,L,u)
    %º∆À„ƒ”∂»
    e = x/L;
    N1 = 1-3*e*e+2*e*e*e;
    N2 = L(e-2*e*e+e*e*e);
    N3 = 3*e*e-2*e*e*e;
    N4 = L(e*e*e-e*e);
    N = [N1 N2 N3 N4];
    v = N*u;
end
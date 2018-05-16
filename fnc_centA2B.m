function B = fnc_centA2B (A, B)
% Put a 2D-image A in the center of a 2D-image B
% By Chunpeng Wang, November 2017,at SSRF
[xA, yA] = size(A);
[xB, yB] = size(B);
rxA = floor(xA / 2.0); ryA = floor(yA / 2.0);
rxB = floor(xB / 2.0); ryB = floor(yB / 2.0);

if (xB < xA) && (yB <= yA)
    B = A(rxA - rxB + 1 : rxA - rxB + xB, ryA - ryB + 1 : ryA - ryB + yB);
elseif (xB < xA) && (yB > yA)
    B( : , ryB - ryA + 1 : ryB - ryA + yA) = A(rxA - rxB + 1 : rxA - rxB + xB, : );
elseif (xB > xA) && (yB <= yA)
    B(rxB - rxA + 1 : rxB - rxA + xA, : ) = A( : , ryA - ryB + 1 : ryA - ryB + yB);
elseif (xB > xA) && (yB > yA)
    B(rxB - rxA + 1 : rxB - rxA + xA, ryB - ryA + 1 : ryB - ryA + yA) = A;
elseif (xB == xA) && (yB <= yA)
    B = A( : , ryA - ryB + 1 : ryA - ryB + yB);
elseif (xB == xA) && (yB > yA)
    B( : , ryB - ryA + 1 : ryB - ryA + yA) = A;
end
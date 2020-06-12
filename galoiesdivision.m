%galoies division
function [row_dec,row_hex]=galoiesdivision(idio1)

if (idio1~=0)
id1=vpi2base(num2digit(vpi(str2num(vpi2bin(vpi(idio1))))),2)';
id2=[1 1 0 0 1]; %primitive element 25=1 x4 + 1 x3 + 0 x2 + 0 x + 1

a = gf(id1,4, 25 ); % m=4, gf(2^4) %primitive element 25=1 x4 + 1 x3 + 0 x2 + 0 x + 1 or 19=1 x4 + 1 x3 + 0 x2 + 0 x + 1
b = gf(id2,4, 25 );
[q, r ] = deconv(a,b); % deconvolution is equivalent to division
row_dec=bi2de(flip(r.x)); %remainder in dec
row_hex=dec2hex(row_dec); %remainder in hex
else
  row_dec=uint32(0);
  row_hex=dec2hex(uint32(0));
  
end  
end


%divide the data into bytes
function [b,c,d]=divide_to_byte2(data)

if(mod(length(data),32) ~=0)
    data=[repmat('0',1,32-length(data)),data];
end
b=cellstr(reshape(data,4,[])');
c=dec2bin(hex2dec(cell2mat(b)));
d=bin2dec(c);

end




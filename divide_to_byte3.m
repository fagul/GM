%divide the data into bytes
function [b,c,d]=divide_to_byte3(data)

if(mod(length(data),4) ~=0)
    data=[repmat('0',1,4-length(data)),data];
end
b=cellstr(reshape(data,1,[])');
c=dec2bin(hex2dec(cell2mat(b)));
d=bin2dec(c);

end




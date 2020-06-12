function [E]=fourthHarmonic(A,B,C,a)


%%%%%%%%%%%%%%%%%%%%%%   fourth harmonic points  %%%%%%%%%%%%%%%%%%%%%%%%%%
m=[];n=[];p=[];o=[];de=[];f=[];g=[];
line1=[];line2=[];line3=[];line4=[];line5=[];line6=[];E=[];

    if a==1
        m=A;
        n=B;
        p=C;
    elseif a==2
        m=B;
        n=C;
        p=A;
    else
        m=A;
        n=C;
        p=B;
    end
 
    o=m-(n-m);
  
    disp(o);
    
   
    f=(p+n)/2;
    

    line1=[o; f]
    line2=[p; n]

    [de(1) de(2)]=intersection_points(line1,line2);
    disp(de)
 
    disp(n);
    line3=[de; double(n)];
    line4=[double(f); double(m)];
    [g(1) g(2)]=intersection_points(line3,line4);
    

    line5=[double(p); g];
    line6=[double(m); double(n)];
    [E(1) E(2)]=intersection_points(line5,line6);
    
   


end
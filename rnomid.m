n=input('enter no of digits i.e  must be greater than 1 : ');
if(mod(n,2)==0)
    seed=input('enter the seed no:  ');
fprintf('the random numbers are: \n');
fprintf('%d \n', seed);
while((seed~=0))
    seed=seed*seed;
    b=numel(num2str(seed));
    if(b==2*n)
        a=mod(seed,(10^((n/2)*3)));
        c=(a-mod(a,(10^(n/2))))/(10^(n/2));
        t=c;
        seed=c;
       
        fprintf('%d \n', seed);
    else
        if(b<=(n/2))
            seed=0;
            fprintf('%d \n', seed);
        else
            x=(seed-mod(seed,(10^(n/2))))/(10^(n/2));
            y=mod(x,10^n);
            t=y;
            seed=y;
            fprintf('%d \n', seed);
        end
            
    end
end
else
   seed=input('enter seed value: ');
fprintf('the random numbers are: \n');
fprintf('%d \n', seed);
while(seed~=0)
    seed=seed*seed;
   
    x=floor(n/2)+1;
    y=(10^x);
      a=(seed-mod(seed,y))/y;
      
      b=numel(num2str(a));
      %fprintf('%d  is',x);
      
      if(b<=n)
          seed=a;
          fprintf('%d \n',seed);
      else
          t=b-n;
          seed=mod(a,10^n);
          fprintf('%d \n',seed);
      end
  
end 
end
a=p1000p1250;
j=a(:,6);
jj=sort(j);
m=1;
mm=1;
for i=1:size(j,1)-1
    if jj(i)==jj(i+1)
       m=m+1; 
    else
       if m > mm 
         mm=m; % max element
         mj=jj(i);
       end 
       m=1;
    end
end
j=unique(j); %subject
j=sort(j);
b=a(:,2);
c=unique(b); % triplet
d=a(:,4);    % corr 
e=max(d);        
f=min(d);
p=0;
m=0;
for i=1:size(d,1)
  if d(i)>0
      p=p+1;
  else
      m=m+1;
  end
end
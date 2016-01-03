function R=generate_nextindex(L,current_index,Oldindex)

D=numel(current_index);

R=zeros(D,D);

for i=1:D
	R(:,i)=current_index; R(i,i)=R(i,i)+1;

      if reasonable(L,D,R(:,i))~=1
              R(:,i)=0;
      end
end

%% erase empty column;
R(:,find(sum(abs(R),1)==0))=[];
nr=size(R,2);
nold=size(Oldindex,2);
for i=1:nold
    residual=abs(R-repmat(Oldindex(:,i),1,nr));
    fr=(find(sum(residual)==0));
    R(:,fr)=0;
end
R(:,find(sum(abs(R),1)==0))=[];
function R=generate_index(L,D)


nindex=generate_nextindex(L,ones(D,1),[]);
nnindex=[ones(D,1), nindex];
tempindex=[];
while 1
for i=1:size(nindex,2)
   tempindex=generate_nextindex(L,nindex(:,i),nnindex);
   nnindex=[nnindex, tempindex];
end
    if isempty(tempindex)==1
        break;
    end
    nindex=nnindex;
end

R=nnindex;
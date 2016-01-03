function [pt, w]=generate_md_points(L,D,Manner)
% L: accuracy level.
% D: # of Dimension.
% Manner: increase manner, L, 2L-1, or something else.
% coded by bin jia @ 2012.

Index_set=generate_index(L,D);
nl=size(Index_set,2);

pt=[]; w=[]; Point_SI=ones(1,D);
for i=1:nl
    [tpt,tw]=generate_point(L,Index_set(:,i),Point_SI,Manner);
    ntpt=numel(tw); npt=numel(w);
    if isempty(pt)==1
       pt=[pt, tpt];
       w=[w,tw];
    else
     tdelindex=[];   
    for j=1:ntpt
    
        residual=abs(pt-repmat(tpt(:,j),1,npt));
        fi=find(sum(residual)<1e-6);
        if numel(fi)>1
            disp('Something Wrong');
        end
        if isempty(fi)~=1
            w(fi)=tw(j)+w(fi);
            tdelindex=[tdelindex,j];
        end
    end
    
    tpt(:,tdelindex)=[]; tw(tdelindex)=[];
   
    pt=[pt, tpt];
    w=[w,tw];
    end
end

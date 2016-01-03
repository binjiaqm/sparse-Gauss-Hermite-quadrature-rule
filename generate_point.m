function [pt,w]=generate_point(L,current_index,Point_SI,Manner)

D=numel(current_index);

q=sum(current_index)-D;

if q>=L-D && q<=L-1
    
    [pt,w]=get_1d_point(current_index(1),Point_SI(1),Manner);
    
    for i=2:D
        [npt,nw]=get_1d_point(current_index(i),Point_SI(i),Manner);
        
        num_npt=numel(nw);
        
        num_pt=size(w,2);
        
        pt=repmat(pt,1,num_npt);
        pt_add=repmat(npt,num_pt,1);
        pt_add=(pt_add(:))';
        pt=[pt;pt_add];
        
        w=repmat(w,1,num_npt);
        w_add=repmat(nw, num_pt,1);
        w_add=(w_add(:))';
        w=[w;w_add];
    end
    if size(w,1)~=1
        w=prod(w);
        w=w.*( factorial(D-1)/(factorial(L-1-q)*factorial((D-1)-(L-1-q))))*(-1)^(L-1-q);
    end
   
else
    pt=[]; w=[];
end

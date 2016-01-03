function [grid_point,grid_weight]=get_1d_point(index,Point_SI,Manner)

if Point_SI==1

    if index==0
        grid_point=[]; grid_weight=[];
    else
        if Manner==1
            [grid_point, grid_weight] = GaussHermite(index);
        end
        if Manner==2
            [grid_point, grid_weight] = GaussHermite(2*index-1);
        end
        
        if Manner==3
            [grid_point, grid_weight] = GaussHermite(2^index-1);
        end
    end
end



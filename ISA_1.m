registri = ["A", "B", "C", "D", "E", "F", "G", "H", "L", "M", "N"];
k = 1;
for i = 0:2
    %fprintf("%d", i);
    for z = 0:10
        %fprintf("%d", j);
        val = (i+z)/3;
        j = mod((i+z), 3);
        w = floor(val);
        fprintf("-> per %s%d -> i=%d w=%d \n", registri(z+1), j, i, w);
    end
    k = k+11;
end

registri = ["M0a","M0b","M0c","M0d","M0e","M0f","M0g","M0h","M0l","M0m", ...
    "M0n", "M1a","M1b","M1c","M1d","M1e","M1f","M1g","M1h","M1l","M1m", ...
    "M1n", "M2a","M2b","M2c","M2d","M2e","M2f","M2g","M2h","M2l","M2m", ...
    "M2n"];
k = 1;
for i = 0:2
    %fprintf("%d", i);
    for z = 0:10
        %fprintf("%d", j);
        val = (i+z)/3;
        j = mod((i+z), 3);
        w = floor(val);
        if j > 0
            ing = j-1;
        else
            ing = 2;
        end
        fprintf("-> per %s ho i=%d, j=%d e w=%d \n", registri(z+k), ing, j, w);
    end
    k = k+11;
end

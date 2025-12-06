local angle = 50
local count = 0
for line in io.lines("input.txt") do
    for lr, degree in line:gmatch("(%a)(%d+)") do
        degree = tonumber(degree)
        if lr == "L" then
            if angle == 0 then
                angle = 100
            end
            while degree > 0 do
                angle = angle - 1
                degree = degree - 1
                if angle == 0 then
                    count = count + 1
                    angle = 100
                end
            end
        elseif lr == "R" then
            if angle == 100 then
                angle = 0
            end
            while degree > 0 do
                angle = angle + 1
                degree = degree - 1
                if angle == 100 then
                    angle = 0
                    count = count + 1
                end
            end
        end
    end
end
print(count)

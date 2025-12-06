local angle = 50
local count = 0
for line in io.lines("input.txt") do
    for lr, degree in line:gmatch("(%a)(%d+)") do
        degree = tonumber(degree)
        if lr == "L" then
            angle = (angle - degree) % 100
        elseif lr == "R" then
            angle = (angle + degree) % 100
        end
    end
    if angle == 0 then
        count = count + 1
    end
end
print(count)

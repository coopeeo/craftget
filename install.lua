local cursorPosX, cursorPosY = term.getCursorPos()
local conformationMsg = "Are you sure you want to install CraftGet? (y/n): "

term.write(conformationMsg)
term.setCursorPos(cursorPosX + #conformationMsg, cursorPosY)

local function somethingcursor()
    local _, y = term.getCursorPos()
    local _, h = term.getSize()
    if y == h then
        term.scroll(1)
        term.setCursorPos(1, y)
    else
        term.setCursorPos(1, y + 1)
    end
end

while true do
    local event, key, is_held = os.pullEvent("key")
    if key == keys.y then
        somethingcursor()
        term.write("Installing CraftGet...")
        break
    elseif key == keys.n then
        somethingcursor()
        term.write("Installation canceled.")
        return false
    end
end
term.write("testing3")

do return false end

term.write("testing")
local cursorPosX, cursorPosY = term.getCursorPos()
local conformationMsg = "Are you sure you want to install CraftGet? (y/n): "

term.write(conformationMsg)
term.setCursorPos(cursorPosX + #conformationMsg, cursorPosY)

while true do
    local event, key, is_held = os.pullEvent("key")
    if key == keys.y then
        term.setCursorPos(cursorPosX + 1, 0)
        term.write("Installing CraftGet...")
        break;
    elseif key == keys.n then
        term.setCursorPos(cursorPosX + 1, 0)
        term.write("Installation canceled.")
        os.exit(1, true)
    end
end
term.write("testing")
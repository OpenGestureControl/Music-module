-- Copyright (c) 2017 ICT Group

-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.

-- Music module for OpenGestureControl
-- Controls any music player basic hotkeys
function return_options()
    io.write("We're asked for the options. Going to return them.\n");
    local entries = {};
    table.insert(entries, {name = "Play", icon = "Play_500px.png"})
    table.insert(entries, {name = "Next", icon = "Forward_500px.png"})
    table.insert(entries, {name = "VolumeUp", icon = "VolumeUp_500px.png"})
    table.insert(entries, {name = "Stop", icon = "Stop_500px.png"})
    table.insert(entries, {name = "VolumeDown", icon = "VolumeDown_500px.png"})
    table.insert(entries, {name = "Previous", icon = "Back_500px.png"})
    return entries;
end

function handle(selection)
    io.write(string.format("We were asked to handle %s.\n", selection))
    if selection == "Next" then
        ModuleHelperSendKeyboardKey("Ctrl+Right")
    elseif selection == "Previous" then
        ModuleHelperSendKeyboardKey("Ctrl+Left")
    elseif selection == "Play" then
        ModuleHelperSendKeyboardKey("Space")
    elseif selection == "Stop" then
        ModuleHelperSendKeyboardKey("Space")
    elseif selection == "VolumeUp" then
        ModuleHelperSendKeyboardKey("Ctrl+Up")
    elseif selection == "VolumeDown" then
        ModuleHelperSendKeyboardKey("Ctrl+Down")
    else
        io.write("Unknown selection made\n")
    end
end

io.write("Init part\n");

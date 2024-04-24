keyboardconfig={};
keyboardconfig.command="setxkbmap";
keyboardconfig.current=2; -- the default from now on will be the us
keyboardconfig.layouts={"fr","us"};

--[[
-- a switch function that will read the currentkeyboardLayout and compare it to the lenght of the available keyboardlayouts if it equals it return to 0 and call os.execute('command..keyboardlayouts[keyboardconfig.current]')
--]]

keyboardconfig.switch=function ()
    if keyboardconfig.current == #keyboardconfig.layouts then
        keyboardconfig.current=0;
    end
    keyboardconfig.current = keyboardconfig.current + 1;
    os.execute(keyboardconfig.command.." "..keyboardconfig.layouts[keyboardconfig.current])
end

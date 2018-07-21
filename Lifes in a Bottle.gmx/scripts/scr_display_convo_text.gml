/// scr_display_convo_text()
if(active){
    stringOp = ""
    jj = 1;
    if(curChatIndex < string_length(dialog[convoIndex,1]) + 1)
    {
        spriteToDisplay = dialog[convoIndex,0];
        if(string_char_at(dialog[convoIndex,1],curChatIndex) == '§'){
            jj = 1;
            while(string_char_at(dialog[convoIndex,1],curChatIndex + jj) != '§'){
                stringOp += string_char_at(dialog[convoIndex,1],curChatIndex + jj)
                jj++; 
            }
            global.sw[real(stringOp)] = true;
            curChatIndex += jj+1;
        }
        stringToDisplay += string_char_at(dialog[convoIndex,1],curChatIndex++);
    }else{
        if(keyboard_check_pressed(ord('Q'))){
            show_debug_message(stringToDisplay);
            convoIndex++;
            stringToDisplay = "";
            curChatIndex = 1;
            
            if (convoIndex == convoDialogCount){
                active = false;
            }
        }
    }
}

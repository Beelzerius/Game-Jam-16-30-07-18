/// scr_initalize_dialog()

padding = 50; // Padding on x Axis beetween box and windows

dialogBox_type = "sprite"

dialogBox_sprite = spr_dialog;
// Box props (white)
width = window_get_width() - (padding * 2);
height = 200;
xOrigin = padding;
//yOrigin = 10;
yOrigin = window_get_height() - 240;

// Box props (black)
borderSize = 20;
innerBoxWidth = width - borderSize;
innerBoxHeight = height - borderSize;
innerBox_xOrigin = xOrigin + (borderSize/2);
innerBox_yOrigin = yOrigin + (borderSize/2);

// Dialog Display Properties
avatarScale = 4;
avatar_xOrigin = innerBox_xOrigin + 15;
avatar_yOrigin = innerBox_yOrigin + 20;

text_xOrigin = avatar_xOrigin + 150;
text_yOrigin = innerBox_yOrigin + 25;

for (i = 0; i < 100; i++){
    dialog[i ,0] = -1; // Sprite Index
    dialog[i ,1] = ""; // Convo Dialog
}

active = false;
convoDialogCount = 0; // Number of Line in a specific conversation
convoIndex = 0; // Current index towards our conveDialogCount
spriteToDisplay = -1; // Avatar to display
stringToDisplay = ""; // Conversation line to display
curChatIndex = 1;

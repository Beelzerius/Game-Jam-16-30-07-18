/// scr_draw_dialog()
if(active){
    if (dialogBox_type == "box"){
        draw_set_colour(c_white);
        draw_rectangle(xOrigin, yOrigin, xOrigin + width, yOrigin + height, false);
        
        draw_set_colour(c_black);
        draw_rectangle(innerBox_xOrigin, innerBox_yOrigin, innerBox_xOrigin + innerBoxWidth, innerBox_yOrigin + innerBoxHeight, false);
    }else if (dialogBox_type == "sprite"){
        draw_sprite(dialogBox_sprite, 0, xOrigin, yOrigin);
    }
    
    draw_set_font(font_default);
    draw_set_colour(c_white);
    draw_text(text_xOrigin, text_yOrigin, stringToDisplay);
    draw_sprite_ext(spriteToDisplay, -1, avatar_xOrigin, avatar_yOrigin, avatarScale, avatarScale, 0, c_white,1);
}

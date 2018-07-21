///scr_load_map(string name);

_filename = argument0+".sav"
with (obj_wall) instance_destroy();

if(file_exists(_filename)){
    var _wrapper = LoadJSONFromFile(_filename);
    var _list = ds_map_find_value(_wrapper,"ROOT");
    
    for (var i = 0; i < ds_list_size(_list); i++)
    {
        var _map = ds_list_find_value(_list,i);
        
        var _obj = _map[? "obj"];
        var _x = _map[? "x"];
        var _y = _map[? "y"];
        with (instance_create(_x, _y, asset_get_index(_obj)))
        {
            image_index = _map[? "image_index"];
        }
    }
    ds_map_destroy(_wrapper);
    show_debug_message("Map loaded!")
}


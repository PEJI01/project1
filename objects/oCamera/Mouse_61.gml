/// unzoom

var new_width=lerp(camera_get_view_width(cam),1280,0.1);
var new_height=lerp(camera_get_view_height(cam),720,0.1);
camera_set_view_size(cam,new_width,new_height);


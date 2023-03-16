/// zoom
var new_width=lerp(camera_get_view_width(cam),640,0.1);
var new_height=lerp(camera_get_view_height(cam),360,0.1);
camera_set_view_size(cam,new_width,new_height);

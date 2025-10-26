/// @description Inserir descrição aqui
if(!instance_exists(target)){exit}
x = lerp(x, target.x, 0.7);
y = lerp(y, target.y, 0.7);
camera_set_view_pos(view_camera[0], x-cam_w/2, y-cam_h/2);
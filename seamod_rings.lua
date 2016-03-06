--==============================================================================
--                            seamod_rings.lua
--
--  Date    : 05/02/2012
--  Author  : SeaJey
--  Version : v0.1
--  License : Distributed under the terms of GNU GPL version 2 or later
--
--  This version is a modification of lunatico_rings.lua wich is modification of conky_orange.lua 
--
--  conky_orange.lua:    http://gnome-look.org/content/show.php?content=137503&forumpage=0
--  lunatico_rings.lua:  http://gnome-look.org/content/show.php?content=142884
--==============================================================================

require 'cairo'


--------------------------------------------------------------------------------
--                                                                    gauge DATA
cpu_y = 365
mem_y = 530
hdd_y = 700

gauge = {

------------------------------------------------------

{
    name='cpu',                    arg='cpu0',                  max_value=100,
    x=70,                          y=cpu_y,
    graph_radius=54,
    graph_thickness=5,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
    graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
    hand_fg_colour=0xD64937,       hand_fg_alpha=1.0,
    txt_radius=64,
    txt_weight=0,                  txt_size=9.0,
    txt_fg_colour=0xD64937,        txt_fg_alpha=1.0,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=9.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
{
    name='cpu',                    arg='cpu1',                  max_value=100,
    x=70,                          y=cpu_y,
    graph_radius=48,
    graph_thickness=5,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
    graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
    hand_fg_colour=0xD64937,       hand_fg_alpha=1.0,
    txt_radius=40,
    txt_weight=0,                  txt_size=9.0,
    txt_fg_colour=0xD64937,        txt_fg_alpha=1.0,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=9.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
{
    name='cpu',                    arg='cpu2',                  max_value=100,
    x=70,                          y=cpu_y,
    graph_radius=20,
    graph_thickness=5,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
    graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
    hand_fg_colour=0xD64937,       hand_fg_alpha=1.0,
    txt_radius=30,
    txt_weight=0,                  txt_size=9.0,
    txt_fg_colour=0xD64937,        txt_fg_alpha=1.0,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=9.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
{
    name='cpu',                    arg='cpu3',                  max_value=100,
    x=70,                          y=cpu_y,
    graph_radius=14,
    graph_thickness=5,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
    graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
    hand_fg_colour=0xD64937,       hand_fg_alpha=1.0,
    txt_radius=4,
    txt_weight=0,                  txt_size=9.0,
    txt_fg_colour=0xD64937,        txt_fg_alpha=1.0,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=9.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
{
    name='memperc',                arg='',                      max_value=100,
    x=70,                          y=mem_y,
    graph_radius=54,
    graph_thickness=10,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
    graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
    hand_fg_colour=0xD64937,       hand_fg_alpha=1.0,
    txt_radius=42,
    txt_weight=0,                  txt_size=9.0,
    txt_fg_colour=0xD64937,        txt_fg_alpha=1.0,
    graduation_radius=23,
    graduation_thickness=0,        graduation_mark_thickness=2,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.5,
    caption='',
    caption_weight=1,              caption_size=10.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
{
    name='fs_used_perc',           arg='/home/',                     max_value=100,
    x=70,                          y=hdd_y,
    graph_radius=42,
    graph_thickness=7,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
    graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
    hand_fg_colour=0xD64937,       hand_fg_alpha=1.0,
    txt_radius=32,
    txt_weight=0,                  txt_size=9.0,
    txt_fg_colour=0xD64937,        txt_fg_alpha=1.0,
    graduation_radius=23,
    graduation_thickness=0,        graduation_mark_thickness=2,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='Home',
    caption_weight=1,              caption_size=12.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.5,
},
{
    name='fs_used_perc',           arg='/',                     max_value=100,
    x=70,                          y=hdd_y,
    graph_radius=30,
    graph_thickness=7,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
    graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
    hand_fg_colour=0xD64937,       hand_fg_alpha=1.0,
    txt_radius=22,
    txt_weight=0,                  txt_size=9.0,
    txt_fg_colour=0xD64937,        txt_fg_alpha=1.0,
    graduation_radius=23,
    graduation_thickness=0,        graduation_mark_thickness=2,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='Root',
    caption_weight=1,              caption_size=12.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.5,
},
--{
--    name='downspeedf',           arg='eth0',                     max_value=100,
--    x=70,                          y=660,
--    graph_radius=54,
--    graph_thickness=7,
--    graph_start_angle=180,
--    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
--    graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
--    graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
--    hand_fg_colour=0xD64937,       hand_fg_alpha=0,
--    txt_radius=64,
--    txt_weight=0,                  txt_size=9.0,
--    txt_fg_colour=0xD64937,        txt_fg_alpha=1.0,
--    graduation_radius=28,
--    graduation_thickness=0,        graduation_mark_thickness=1,
--    graduation_unit_angle=27,
--    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
--    caption='Down',
--    caption_weight=1,              caption_size=12.0,
--    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.5,
--},
--{
--    name='upspeedf',           arg='eth0',                     max_value=100,
--    x=70,                          y=660,
--    graph_radius=42,
--    graph_thickness=7,
--    graph_start_angle=180,
--    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
--    graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
--    graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
--    hand_fg_colour=0xD64937,       hand_fg_alpha=0,
--    txt_radius=30,
--    txt_weight=0,                  txt_size=9.0,
--    txt_fg_colour=0xD64937,        txt_fg_alpha=1.0,
--    graduation_radius=28,
--    graduation_thickness=0,        graduation_mark_thickness=1,
--    graduation_unit_angle=27,
--    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
--    caption='Up',
--    caption_weight=1,              caption_size=12.0,
--    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.5,
--},

}

---------------------------------------------Draw Clock-----------------------------------------------

clock_x = 180
clock_y = 210
clock_r = 110
 
cs, cr = nil
function conky_cairo_test()
	if conky_window == nil then return end
	if cs == nil or cairo_xlib_surface_get_width(cs) ~= conky_window.width or cairo_xlib_surface_get_height(cs) ~= conky_window.height then
	   if cs then cairo_surface_destroy(cs) end
	   cs = cairo_xlib_surface_create(conky_window.display, conky_window.drawable, conky_window.visual, conky_window.width, conky_window.height)
	end
	if cr then cairo_destroy(cr) end
 
	cr = cairo_create(cs)
 
	cairo_set_line_width(cr, 8)
	cairo_set_source_rgba(cr, 1, 1, 1, 0.1);
	local r = 300;
	cairo_arc(cr, clock_x, clock_y, clock_r, 0, 2 * math.pi)
	cairo_stroke(cr);

	cairo_set_line_width(cr, 8)
	cairo_arc(cr, clock_x, clock_y, clock_r-14, 0, 2 * math.pi)
	cairo_stroke(cr);

	cairo_set_line_width(cr, 8)
	cairo_arc(cr, clock_x, clock_y, clock_r-28, 0, 2 * math.pi)
	cairo_stroke(cr);
 
	local ts = os.date('*t');
	local hour = ts['hour'];
	local isAM = true;

	if hour >= 12 then
		hour = hour - 12;
		isAM = false;
	end

	-----sec
	cairo_set_source_rgba(cr, 0.75390625, 0.25390625, 0.19140625, 1);
	cairo_set_line_width(cr, 2)
	cairo_arc(cr, clock_x, clock_y, clock_r, -math.pi/2, ts['sec']/60 * math.pi*2-math.pi/2)
	cairo_stroke(cr);
	
	cairo_set_source_rgba(cr, 0.7, 0.6, 0.6, 0.8);
	cairo_arc(cr, clock_x, clock_y, clock_r, ts['sec']/60 * math.pi*2-math.pi/2 - 0.03, ts['sec']/60 * math.pi*2-math.pi/2)
	cairo_stroke(cr);

	-----min
	cairo_set_source_rgba(cr, 0.75390625, 0.25390625, 0.19140625, 1);
	cairo_set_line_width(cr, 4)
	cairo_arc(cr, clock_x, clock_y, clock_r-14, -math.pi/2, ts['min']/60 * math.pi*2-math.pi/2)
	cairo_stroke(cr);
	
	cairo_set_source_rgba(cr, 0.7, 0.6, 0.6, 0.8);
	cairo_arc(cr, clock_x, clock_y, clock_r-14, ts['min']/60 * math.pi*2-math.pi/2 - 0.05, ts['min']/60 * math.pi*2-math.pi/2)
	cairo_stroke(cr);

	-----hour
	cairo_set_source_rgba(cr, 0.75390625, 0.25390625, 0.19140625, 1);
	cairo_set_line_width(cr, 8)
	cairo_arc(cr, clock_x, clock_y, clock_r-28, -math.pi/2, hour/12 * math.pi*2-math.pi/2)
	cairo_stroke(cr);
	
	cairo_set_source_rgba(cr, 0.7, 0.6, 0.6, 0.8);
	cairo_arc(cr, clock_x, clock_y, clock_r-28, hour/12 * math.pi*2-math.pi/2 - 0.05, hour/12 * math.pi*2-math.pi/2)
	cairo_stroke(cr);
	
----- string--------

	----- title
	cairo_set_source_rgba(cr, 0.46484375, 0.71484375, 0.32421875, 1.0);
	cairo_select_font_face (cr, "Ubuntu", CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_BOLD);
	cairo_set_font_size (cr, 14.0);
	cairo_move_to (cr, clock_x+70, clock_y-107);
	cairo_show_text (cr, "CLOCK");
		
	----- time
	cairo_set_source_rgba(cr, 1, 1, 1, 0.6);
	cairo_select_font_face (cr, "Ubuntu", CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_BOLD);
	cairo_set_font_size (cr, 28.0);
	cairo_move_to (cr, clock_x-50, clock_y+15);
	if isAM then
		if ts["min"]<10 then cairo_show_text (cr, hour..":0"..ts["min"].." AM");
		else cairo_show_text (cr, hour..":"..ts["min"].." AM");
		end	
	else
		if ts["min"]<10 then cairo_show_text (cr, hour..":0"..ts["min"].." PM");
		else cairo_show_text (cr, hour..":"..ts["min"].." PM");
		end
	end

	cairo_select_font_face (cr, "Ubuntu", CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_NORMAL);
	cairo_set_font_size (cr, 14.0);
	cairo_move_to (cr, clock_x-32, clock_y-17);
	cairo_show_text(cr, ts["year"].."/"..ts["month"].."/"..ts["day"]);

---------------------

	cairo_destroy(cr)
	cr = nil
end
---------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------
--                                                                 rgb_to_r_g_b
-- converts color in hexa to decimal
--
function rgb_to_r_g_b(colour, alpha)
    return ((colour / 0x10000) % 0x100) / 255., ((colour / 0x100) % 0x100) / 255., (colour % 0x100) / 255., alpha
end

-------------------------------------------------------------------------------
--                                                            angle_to_position
-- convert degree to rad and rotate (0 degree is top/north)
--
function angle_to_position(start_angle, current_angle)
    local pos = current_angle + start_angle
    return ( ( pos * (2 * math.pi / 360) ) - (math.pi / 2) )
end


-------------------------------------------------------------------------------
--                                                              draw_gauge_ring
-- displays gauges
--
function draw_gauge_ring(display, data, value)
    local max_value = data['max_value']
    local x, y = data['x'], data['y']
    local graph_radius = data['graph_radius']
    local graph_thickness, graph_unit_thickness = data['graph_thickness'], data['graph_unit_thickness']
    local graph_start_angle = data['graph_start_angle']
    local graph_unit_angle = data['graph_unit_angle']
    local graph_bg_colour, graph_bg_alpha = data['graph_bg_colour'], data['graph_bg_alpha']
    local graph_fg_colour, graph_fg_alpha = data['graph_fg_colour'], data['graph_fg_alpha']
    local hand_fg_colour, hand_fg_alpha = data['hand_fg_colour'], data['hand_fg_alpha']
    local graph_end_angle = (max_value * graph_unit_angle) % 360

    -- background ring
    cairo_arc(display, x, y, graph_radius, angle_to_position(graph_start_angle, 0), angle_to_position(graph_start_angle, graph_end_angle))
    cairo_set_source_rgba(display, rgb_to_r_g_b(graph_bg_colour, graph_bg_alpha))
    cairo_set_line_width(display, graph_thickness)
    cairo_stroke(display)

    -- arc of value
    local val = value % (max_value + 1)
    local start_arc = 0
    local stop_arc = 0
    local i = 1
    while i <= val do
        start_arc = (graph_unit_angle * i) - graph_unit_thickness
        stop_arc = (graph_unit_angle * i)
        cairo_arc(display, x, y, graph_radius, angle_to_position(graph_start_angle, start_arc), angle_to_position(graph_start_angle, stop_arc))
        cairo_set_source_rgba(display, rgb_to_r_g_b(graph_fg_colour, graph_fg_alpha))
        cairo_stroke(display)
        i = i + 1
    end
    local angle = start_arc

    -- hand
    start_arc = (graph_unit_angle * val) - (graph_unit_thickness * 2)
    stop_arc = (graph_unit_angle * val)
    cairo_arc(display, x, y, graph_radius, angle_to_position(graph_start_angle, start_arc), angle_to_position(graph_start_angle, stop_arc))
    cairo_set_source_rgba(display, rgb_to_r_g_b(hand_fg_colour, hand_fg_alpha))
    cairo_stroke(display)

    -- graduations marks
    local graduation_radius = data['graduation_radius']
    local graduation_thickness, graduation_mark_thickness = data['graduation_thickness'], data['graduation_mark_thickness']
    local graduation_unit_angle = data['graduation_unit_angle']
    local graduation_fg_colour, graduation_fg_alpha = data['graduation_fg_colour'], data['graduation_fg_alpha']
    if graduation_radius > 0 and graduation_thickness > 0 and graduation_unit_angle > 0 then
        local nb_graduation = graph_end_angle / graduation_unit_angle
        local i = 0
        while i < nb_graduation do
            cairo_set_line_width(display, graduation_thickness)
            start_arc = (graduation_unit_angle * i) - (graduation_mark_thickness / 2)
            stop_arc = (graduation_unit_angle * i) + (graduation_mark_thickness / 2)
            cairo_arc(display, x, y, graduation_radius, angle_to_position(graph_start_angle, start_arc), angle_to_position(graph_start_angle, stop_arc))
            cairo_set_source_rgba(display,rgb_to_r_g_b(graduation_fg_colour,graduation_fg_alpha))
            cairo_stroke(display)
            cairo_set_line_width(display, graph_thickness)
            i = i + 1
        end
    end

    -- text
    local txt_radius = data['txt_radius']
    local txt_weight, txt_size = data['txt_weight'], data['txt_size']
    local txt_fg_colour, txt_fg_alpha = data['txt_fg_colour'], data['txt_fg_alpha']
    local movex = txt_radius * math.cos(angle_to_position(graph_start_angle, angle))
    local movey = txt_radius * math.sin(angle_to_position(graph_start_angle, angle))
    cairo_select_font_face (display, "ubuntu", CAIRO_FONT_SLANT_NORMAL, txt_weight)
    cairo_set_font_size (display, txt_size)
    cairo_set_source_rgba (display, rgb_to_r_g_b(txt_fg_colour, txt_fg_alpha))
    cairo_move_to (display, x + movex - (txt_size / 2), y + movey + 3)
    cairo_show_text (display, value)
    cairo_stroke (display)

    -- caption
    local caption = data['caption']
    local caption_weight, caption_size = data['caption_weight'], data['caption_size']
    local caption_fg_colour, caption_fg_alpha = data['caption_fg_colour'], data['caption_fg_alpha']
    local tox = graph_radius * (math.cos((graph_start_angle * 2 * math.pi / 360)-(math.pi/2)))
    local toy = graph_radius * (math.sin((graph_start_angle * 2 * math.pi / 360)-(math.pi/2)))
    cairo_select_font_face (display, "ubuntu", CAIRO_FONT_SLANT_NORMAL, caption_weight);
    cairo_set_font_size (display, caption_size)
    cairo_set_source_rgba (display, rgb_to_r_g_b(caption_fg_colour, caption_fg_alpha))
    cairo_move_to (display, x + tox + 5, y + toy + 1)
    -- bad hack but not enough time !
    if graph_start_angle < 105 then
        cairo_move_to (display, x + tox - 30, y + toy + 1)
    end
    cairo_show_text (display, caption)
    cairo_stroke (display)
end


-------------------------------------------------------------------------------
--                                                               go_gauge_rings
-- loads data and displays gauges
--
function go_gauge_rings(display)
    local function load_gauge_rings(display, data)
        local str, value = '', 0
        str = string.format('${%s %s}',data['name'], data['arg'])
        str = conky_parse(str)
        value = tonumber(str)
        draw_gauge_ring(display, data, value)
    end
    
    for i in pairs(gauge) do
        load_gauge_rings(display, gauge[i])
    end
end

-------------------------------------------------------------------------------
--                                                                         MAIN
function conky_main()
    if conky_window == nil then 
        return
    end

    local cs = cairo_xlib_surface_create(conky_window.display, conky_window.drawable, conky_window.visual, conky_window.width, conky_window.height)
    local display = cairo_create(cs)
    
    local updates = conky_parse('${updates}')
    update_num = tonumber(updates)
    
    if update_num > 5 then
        go_gauge_rings(display)
    end

    cairo_surface_destroy(cs)
    cairo_destroy(display)

end

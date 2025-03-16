depth += 1;
alter_stats = false;

border_color = make_color_rgb(193,180,112);
gui_bg_color = make_color_rgb(193,180,112);


button_scale = 2; // scale of the button sprites
spr_size = 64; // current width/height of spr_health
inner_margin = 10; // inner space between buttons
outer_margin = 10;  // Distance from screen edges
actual_btn_size = spr_size * button_scale;
space_for_text = 30;

// Two buttons per column, plus 3 margins to space them out
rect_w = (2 * actual_btn_size) + (3 * inner_margin) // Width of the rectangle
// Same as rect_w but with 3 rows
rect_h = (2 * actual_btn_size) + (3 * inner_margin) + space_for_text;


// Alignment varaibles:
screen_w = display_get_width();
// Aligning rectangle to top_right
x1 = screen_w - rect_w - outer_margin; // Right-aligned
y1 = outer_margin;                     // Top-aligned
x2 = screen_w - outer_margin;
y2 = outer_margin + rect_h;
// Column and row axis Calculation:
col1 = x1 + inner_margin;
col2 = x2 - inner_margin - actual_btn_size;
row1 = y1 + inner_margin + space_for_text;
row2 = row1 + actual_btn_size + inner_margin;



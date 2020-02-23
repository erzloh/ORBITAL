sin_value += (pi * 2) / steps_per_cycle;

if (sin_value >= pi * 2) {
    sin_value = 0;
}
if (sin_value >= pi * 4) {
    ascending = !ascending;
}

image_xscale = sin(sin_value);
image_index = 0;
if (image_xscale >= 0) {
    image_index = 1;
    //ascending = !ascending;
}
if (ascending) {
    y -= sin(sin_value)/12;
} else {
    y += sin(sin_value)/12;
}
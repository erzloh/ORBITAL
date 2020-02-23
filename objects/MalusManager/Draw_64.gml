/*if (global.leader != "null") {
    draw_text(60, 20, "Leader is " + string(global.leader.p));
}*/

timer++;
if (timer > 300) {
    timer = 0;
    testOn = !testOn;
}

if (testOn) {
    //draw_text(90, 20, "test");
}

/*if (global.leader != "null") {
    draw_text(60, 40, "Leader is " + string(global.leader.p) + ", " + string(malusTimer/60));
}*/
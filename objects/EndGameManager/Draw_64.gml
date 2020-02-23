timeString = "";
if (floor((gameDuration-gameTimer)/3600) < 10) {
	timeString += "0";
	timeString += string(floor((gameDuration-gameTimer)/3600));
} else {
	timeString += string(floor((gameDuration-gameTimer)/3600));
}
timeString += ":";



draw_text(20, ScoreManager.GUI_y, timeString);

//string((gameDuration-gameTimer)/60)
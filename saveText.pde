void displaySave()
{
    textSize(15);
    if (state == 1 || state == 2)
      fill(0);
    else if (state ==3)
      fill(255);
    textAlign(CENTER);
    text("Press 's'", 825, 40);
    text("to save!",825,60);
    textAlign(LEFT);
}

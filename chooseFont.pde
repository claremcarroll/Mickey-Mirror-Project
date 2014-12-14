void chooseFont()
{
    if(mousePressed && mouseX > 75 && mouseX <75+150 && mouseY >300 && mouseY <350)
    {
      emFont = font1;
    }
    
    else if(mousePressed && mouseY >300 && mouseY <350 && mouseX > 275 && mouseX < 275+150)
    {
      emFont = font2;
    }
    
    else if(mousePressed && mouseY >300 && mouseY <350 && mouseX > 475 && mouseX < 475+150)
    {
      emFont = font3;
    }
    
    else if(mousePressed && mouseY >300 && mouseY <350 && mouseX > 675 && mouseX < 675+150)
    {
      emFont = font4;
    }
}

void chooseState()
{

  if ((mouseX >col && mouseX < col + buttonW && mouseY > 525 && mouseY < 575 && mousePressed))
  {
    if (state == 1)
    {
      key = CODED;
      keyCode = ENTER;
      state = 2;
      mousePressed = false;
      
    }

    else if (state == 2)
    {
      embroidery = cp5.get(Textfield.class, "Embroidery Text").getText();
      state = 3;
      mousePressed = false;
    }

    else if (state == 3)
    {
      state = 1;
      mousePressed = false;
    }
  }
}

void chooseHatState()
{
  if (mousePressed && mouseX >  25 && mouseX <125 && mouseY >100 && mouseY < 175)
  {
    hatState = 1;
    mousePressed = false;
  }

  else if (mousePressed && mouseX >  25 && mouseX <125 && mouseY >200 && mouseY < 275)
  {
    hatState = 2;
    mousePressed = false;
  }

  else if (mousePressed && mouseX >  25 && mouseX <125 && mouseY >300 && mouseY < 375)
  {
    hatState = 3;
    mousePressed = false;
  }
  
  
  else if (mousePressed && mouseX >  25 && mouseX <125 && mouseY >400 && mouseY < 475)
  {
    hatState = 4;
    mousePressed = false;
  }

  else if (mousePressed && mouseX >  25 && mouseX <125 && mouseY >500 && mouseY < 575)
  {
    hatState = 5;
    mousePressed = false;
  }
  
  else if (mousePressed && mouseX >  775 && mouseX <875 && mouseY >100 && mouseY < 175)
  {
    hatState = 6;
    mousePressed = false;
  }

  else if (mousePressed && mouseX >  775 && mouseX <875 && mouseY >200 && mouseY < 275)
  {
    hatState = 7;
    mousePressed = false;
  }

  else if (mousePressed && mouseX >  775 && mouseX <875 && mouseY >300 && mouseY < 375)
  {
    hatState = 8;
    mousePressed = false;
  }

  else if (mousePressed && mouseX >  775 && mouseX <875 && mouseY >400 && mouseY < 475)
  {
    hatState = 9;
    mousePressed = false;
  }
}


void displayState()
{
  if (hatState == 1)
  {
    hat = hat1;
    hatBack = hat1back;
  }

  else if (hatState == 2)
  {
    hat = hat2;
    hatBack = hat2back;
  }

  else if (hatState == 3)
  {
    hat = hat3;
    hatBack = hat3back;
  }
  else if (hatState == 4)
  {
    hat = hat4;
    hatBack = hat4back;
  }
  else if (hatState == 5)
  {
    hat = hat5;
    hatBack = hat5back;
  }
  else if (hatState == 6)
  {
    hat = hat6;
    hatBack = hat6back;
  }
  else if (hatState == 7)
  {
    hat = hat7;
    hatBack = hat7back;
  }
  else if (hatState == 8)
  {
    hat = hat8;
    hatBack = hat8back;
  }
  
  else if (hatState == 9)
  {
    hat = hat9;
    hatBack = hat9back;
  }
}

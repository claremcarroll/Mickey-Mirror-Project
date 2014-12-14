void stateThree()
{
    cp5.hide();
    background(state3);
    
    image(hat, 150,275);
    image(hatBack, 450,275);
    textAlign(CENTER);
    fill(tempColor);
    textFont(emFont, 30);
    fill(tempColor);
    text(embroidery, 600, 425);
    textAlign(LEFT);
    //next
    fill(0);
    rect(col, 525, buttonW, 50);
    textSize(30);
    fill(255);
    textFont(font1, 20);
    text("REDO", col+10, 560);

    chooseState();
}

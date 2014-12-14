void stateTwo()
{
    chooseFont();
    cp5.show();
    background(emb);
    //image(mickey, 730, 135);
    image(mickey, 550, -5);
    
    textSize(10);
    fill(0);
    text("HIT ENTER TO CLEAR",545, 275);
     
    fill(0);
    stroke(4);
    fill(tempColor);
    if(mousePressed && mouseX > 74 && mouseX < 826 && mouseY> 391 && mouseY < 429)
    {
      tempColor = get(mouseX, mouseY);
    }
     
    temp = cp5.get(Textfield.class, "Embroidery Text").getText();
    textAlign(CENTER);
    
    textFont(emFont, 80);
    text(temp, 450, 550);
    
    noStroke();
    textAlign(LEFT);
    fill(0);
    
    textFont(font1, 15);
    textAlign(CENTER);
    text("PREVIEW", 450, fontButton+175);
    textAlign(LEFT);
    
    fill(0,0,0,0);
    noStroke();
    
    rect(75, fontButton, 150, 50);
    rect(275, fontButton, 150, 50);
    rect(475, fontButton, 150, 50);
    rect(675, fontButton, 150, 50);

    //next
    fill(0);
    rect(col, 525, buttonW, 50);
    textSize(30);
    fill(255);
    text("NEXT", col+10, 560);

    chooseState();   
}

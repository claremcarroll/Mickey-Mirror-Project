void stateOne()
{
    chooseHatState();
    displayState();

    background(255);
    cp5.hide();
    imageMode(CORNER);
    image(video, 150, 100, 640, 480);

    //background(255);
    fill(0);

    rect(col, 100, buttonW, buttonH);
    rect(col, 200, buttonW, buttonH);
    rect(col, 300, buttonW, buttonH);
    rect(col, 400, buttonW, buttonH);
    //col2(left)
    rect(col2, 100, buttonW, buttonH);
    rect(col2, 200, buttonW, buttonH);
    rect(col2, 300, buttonW, buttonH);
    rect(col2, 400, buttonW, buttonH);
    rect(col2, 500, buttonW, buttonH);

    rect(col, 525, buttonW, 50);
    textSize(30);
    fill(255, 0, 0);
    text("NEXT", col+10, 560);
    chooseState();

    imageMode(CENTER);

    for (int i = 0; i < hats.length; i++) 
    {
/*    
    float aAverage = 0;
    float bAverage = 0;
    float cAverage = 0;
    float dAverage = 0;
    
    QueueList<String> a = new QueueList<String>();
    QueueList<String> b = new QueueList<String>();
    QueueList<String> c = new QueueList<String>();
    QueueList<String> d = new QueueList<String>();
    
    try {
        a.enqueue(hats[i].x * scalingFactor + 150 + hats[i].width/2*scalingFactor);
        if(a.length = 10)
          a.dequeue();
        b.enqueue(hats[i].y * scalingFactor + 100);
        if(b.length = 10)
          b.dequeue();
        c.enqueue(hats[i].width * scalingFactor * 1.5);
        if(c.length = 10)
          c.dequeue();
        d.enqueue(hats[i].height * scalingFactor * 1.5);
        if(d.length = 10)
          d.dequeue();
        
        for(int i=0; i< a.length; i++)
        {
          float temp=0;
          (float)i += temp;
          aAverage = temp/10;
        }
          
        for(int i=0; i< b.length; i++)
        {
          float temp2=0;
          (float)i += temp2;
          bAverage = temp/10;
        }
        
        for(int i=0; i< c.length; i++)
        {
          float temp3=0;
          (float)i += temp3;
          cAverage = temp/10;
        }
        
        for(int i=0; i< d.length; i++)
        {
          float temp4=0;
          (float)i += temp4;
          dAverage = temp/10;
        }
        
        
    } catch (InvalidOperationException e) { return true; }

  }
  */
     // image(hat, aAverage, bAverage, cAverage, dAverage);
      image  (hat, hats[i].x * scalingFactor + 150 + hats[i].width/2*scalingFactor, 
              hats[i].y * scalingFactor + 100, 
              hats[i].width * scalingFactor * 1.5, 
              hats[i].height * scalingFactor * 1.5);
              
}
  
  
    imageMode(CORNER);

    image(third, 0, 0);
}



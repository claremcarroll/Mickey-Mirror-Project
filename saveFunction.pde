void savePic()
{ 
  String url = "http://i6.cims.nyu.edu/~cmc832/pics/saveimage.php";
  s = second();
  m = minute();
  h = hour();
  if (keyPressed && key == 's')
  {
    //play sound
    picture.rewind();
    picture.play();
    
    ImageToWeb img = new ImageToWeb(this);
    img.save("png", true);

    // folder name (on the server), url to send data to, file name
    
  //  img.post("mickeypics", url, "jpg-test", true, img.getBytes(g));
    
    img.post("data", url, "jpg-test", true, img.getBytes(g));
    //img.post("mickeypics", url, "MickeyMirror"+y+"/"+month+"/"+d+"-"+h+"."+m+"."+s+".jpg", true);
    
    save("MickeyMirror"+y+"/"+month+"/"+d+"-"+h+"."+m+"."+s+".png");
  }
}

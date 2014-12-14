void displayMirror()
{
  if (video.available() == true) 
  {  
    // read a new frame of video
    video.read();
    
    mirrorImage(video);
    

    // tell OpenCV about this frame
    opencv.loadImage(video);

    // attempt to detect any new faces
    hats = opencv.detect();
  }
}

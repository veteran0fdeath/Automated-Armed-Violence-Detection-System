 lowerLimit = 1500; % Assigning the starting point image 
 upperLimit = 2300; % Assigning the stopping point image
 
 % Load the images collected from the vehicle detection video
 frame    = cell(upperLimit,lowerLimit);
 
 for i=lowerLimit:upperLimit
     
     % Reading the image files from the target directory .
     frame{i} = imread(sprintf('C:\\Users\\ACER\\Downloads\\test-labeled\\test-labeled\\frame%d.jpg',i));
 end
 
 % Creating the video writer with 30 fps
 ObjDetect = VideoWriter('CarLebel.avi');
 ObjDetect.FrameRate = 30;
 
   % Open the video writer
   open(ObjDetect);
   
  % Writing the frames to the video
    for u=lowerLimit:upperLimit   
        
       % Convert each image to a frame
       frame0 = im2frame(frame{u});
       writeVideo(ObjDetect, frame0);
    end
    
   % Closing the writer object
   close(ObjDetect);
   
   % Playing the output video from frame 1500 to 2300
   implay('CarLebel.avi');
implay('rhinos.avi')
vid = VideoReader('rhinos.avi');
myVideo = VideoWriter('myFile.avi');
depVideoPlayer = vision.DeployableVideoPlayer;
open(myVideo);
while hasFrame(vid)
    current_image = readFrame(vid);
    current_image=rgb2gray(current_image);
    new_frame=edge(current_image);
    new_frame=im2double(new_frame);
    depVideoPlayer(new_frame);
    writeVideo(myVideo, new_frame);
	pause(1/vid.FrameRate);
end
close(myVideo)
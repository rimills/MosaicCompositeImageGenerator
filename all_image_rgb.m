%this function gets all of the average values for each of the three
%channels of all images in the training/test set.
function RGBs = all_image_rgb()
    test_image_directory = 'Image\training\';
    directory = dir(test_image_directory);
    
    %deletes first two entries of directory, . and ..
    directory(1) = [];
    directory(1) = [];
    tic
    
    no_files = size(directory);
    RGBs = zeros(1, no_files(1) * 3);
    for file = directory'
        img = imread(strcat(test_image_directory, file.name));
        [r, g, b] = average_image(img);
        RGBs(end+1) = r;
        RGBs(end+2) = g;
        RGBs(end+3) = b;
        
    end
    toc
end
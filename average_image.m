%This function computes the average value of a given channel of an image.
%This function can be called on the red, green, and blue channels or the
%hue, saturation, and value channels to provide an average of the intensity
%of each channel.
function [first_channel, second_channel, third_channel] = average_image(image)
    img = imread(image);
    first_channel = uint32(0);
    second_channel = uint32(0);
    third_channel = uint32(0);
    img_dim = size(img); %This gives the dimensions of the image
    pixels = img_dim(1) * img_dim(2); %Multiples the height by the width

    first_channel = avg(1, pixels, img) / uint32(pixels)
    second_channel = avg(pixels, pixels*2, img) / uint32(pixels)
    third_channel = avg(pixels*2, pixels*3, img) / uint32(pixels)
    
    
    
    function average = avg(first, last, image)
        average = uint32(0);
        
        for i = first:last
            average = average + uint32(image(i));
        end
    
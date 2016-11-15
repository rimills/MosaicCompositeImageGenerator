function [cropped_image] = cropper(image)

[x,y] = size(image);
cropped_image = imcrop(image, [x/2, y/2, 100, 100]);
end

function [smoothed_image] = smoother(image)
[a,b] = size(image);
smoothed_image = imgaussfilt(image, [a/100, b/100]);
end

function [mosaic_ready_image] = mosaic(image)

image = smoother(image);
mosaic_ready_image = cropper(image);
end


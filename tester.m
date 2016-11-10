%tester function to run other scripts.
function tester()
    %colourAnalyse();
    sim();
    
    function colourAnalyse()
        image = 'Image\own_tests\green.jpg';
        [r,g,b] = average_image(image);
        r
        g
        b
    end

    function sim()
        first_image = 'Image\own_tests\green.jpg';
        second_image = 'Image\own_tests\green.jpg';
        
        similarity(first_image, second_image);
    end
end
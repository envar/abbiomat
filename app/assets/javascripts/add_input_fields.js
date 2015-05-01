(function() {

    var max_fields      = 10; //maximum input boxes allowed

    var wrapper; //Fields wrapper
    var add_button; //Add button ID

    var start = function() {
        wrapper = $(".input_fields_wrap");
        add_button = $(".add_img_button");

        if (!wrapper || !add_button) {
            return;
        }

        var x = $(".img").length;
        max_fields = x + 10;
        //var x = 0; //initial image count
        add_button.click(function(e){ //on add input button click
            e.preventDefault();
            if(x < max_fields){ //max input box allowed
                //wrapper.append('<div><input type="file" name="images['+x+']" id="images_"><a href="#" class="remove_field">Remove</a></div>'); //add input box
                wrapper.append('<div><input type="file" name="post[post_images_attributes]['+x+'][image]" id="post_post_images_attributes_'+x+'_image"><a href="#" class="remove_field">Remove</a></div>'); //add input box
                x++; //text box increment
            }
        });

        wrapper.on("click", ".remove_field", function(e){ //user click on remove text
            e.preventDefault(); $(this).parent('div').remove(); x--;
        })
    };

    var stop = function() {
        if (add_button) {
            add_button.off("click");
            add_button = null;
        }

        if (wrapper) {
            wrapper.off("click", ".remove_field");
            wrapper = null;
        }
    }

    $(document).on('page:change', start);
    $(document).on('page:before-change', stop);
})();

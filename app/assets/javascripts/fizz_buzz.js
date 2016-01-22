$( document ).ready(function() {
    console.log('FizzBuzz');
    $('.fizz_buzz_value').each( function(i, el){
        var classes = el.className.split(/\s+/);
        var for_classes = jQuery.grep( classes, function( cl, i){
            return cl.match(/^for_./)}
        );
        if ( for_classes.length > 0 ) {
            var for_number = for_classes[0].match(/^for_(.*)/)[1];
            console.log(for_number);
            $.ajax({
                url: "fizz_buzz" + '/' + for_number,
                context: $(el,'span')
            }).done(function(data) {
                $( this ).replaceWith(data);
            });
        }

    });
})
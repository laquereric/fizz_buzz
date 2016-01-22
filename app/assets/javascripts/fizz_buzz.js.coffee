$(document).ready ->
  console.log('FizzBuzz');
  $('.fizz_buzz_value').each (i, el) ->
    classes = el.className.split(/\s+/)
    for_classes = $.grep classes, (cl)->cl.match(/^for_./)
    if ( for_classes.length > 0 )
        for_number = for_classes[0].match(/^for_(.*)/)[1]
        $.get ("fizz_buzz" + '/' + for_number), (data) ->
          $(el,'span').replaceWith(data)

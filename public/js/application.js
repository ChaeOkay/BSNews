$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  $('#comment_form').on('submit', function(event){
    event.preventDefault();
    var formData = $(this).serialize();
    console.log(formData);

    $.ajax({
      url: this.action,
      type: this.method,
      data: formData
    }).done(function(response){

      $('ul:first-child').prepend(response);
    });
  });
});

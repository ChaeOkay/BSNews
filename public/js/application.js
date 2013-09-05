$(document).ready(function() {

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

  $('#user_comments').on('click', function(event){
    event.preventDefault();
    var userId = $('#user_info').attr('value');

    $.ajax({
      url: '/user/' + userId + '/comments',
      type: 'get'
    }).done(function(response){
          
      if (document.getElementById("show_all_user_comments") !== null ){
        $('#show_all_user_comments').remove();
      } else {
        $('form').append(response);
      }
    });
  });

  $('#user_posts').on('click', function(event){
    event.preventDefault();
    var userId = $('#user_info').attr('value');

    $.ajax({
      url: '/user/' + userId + '/posts',
      type: 'get'
    }).done(function(response){
          
      if (document.getElementById("show_all_user_posts") !== null ){
        $('#show_all_user_posts').remove();
      } else {
        $('form').append(response);
      }
    });
  });
});

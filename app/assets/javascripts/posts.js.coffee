jQuery ->
  $('.best_in_place').best_in_place()


$ ->
  loading_posts = false
  $('a.load-more-posts').on 'inview', (e, visible) ->
    return if loading_posts or not visible
    loading_posts = true
    
    $.getScript $(this).attr('href'), ->
      loading_posts = false
# remove Prototype defaults
remove_file 'public/javascripts/controls.js'
remove_file 'public/javascripts/dragdrop.js'
remove_file 'public/javascripts/effects.js'
remove_file 'public/javascripts/prototype.js'

# add XHTML 1.0 Strict layout, with jQuery from Google
file 'app/views/layouts/application.html.erb', <<-ERB
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
  <title>Application!</title>
  <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js" type="text/javascript"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.min.js" type="text/javascript"></script>
  <%= stylesheet_link_tag 'global' %>
</head>
<body>
  <%= yield %>
</body>
</html>
ERB

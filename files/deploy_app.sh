#!/bin/bash
# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Meow World!</title></head>
  <body>
  <div style="width:800px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}"></img></center>
  <center><h2>Meow World!</h2></center>
  <center>This cool webapp was created with Terraform and version controlled with GitHub.  Hurray!</center>
  <Center>Looking for more cool stuff? <a href="#">Click here to contact me directly!</a></center>
  <!-- END -->

  </div>
  </body>
</html>
EOM

echo "Script complete."

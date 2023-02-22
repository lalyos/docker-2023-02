#!/bin/bash

cat > /var/www/html/index.html <<EOF
<html>
<body bgcolor="${COLOR:-gray}">
  <h1>${TITLE:-Welcome}</h1>
  ${BODY:- please use COLOR/TITLE/BODY env vars}
</body>
</html>
EOF

nginx -g "daemon off;"
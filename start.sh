#!/bin/bash


cat > /usr/share/nginx/html/index.html <<EOF
<html>
<body bgcolor="${COLOR:-gray}">
  <h1>${TITLE:-Welcome}</h1>
  ${BODY:- please use COLOR/TITLE/BODY env vars}
</body>
</html>
EOF

exec nginx -g "daemon off;"
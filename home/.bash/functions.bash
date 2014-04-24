function serve {
  port="${1:-3000}"
  ruby -run -e httpd . -p $port
}

function gitignore () {
  for i in "$@"; do
    echo $i >> .gitignore
  done
}

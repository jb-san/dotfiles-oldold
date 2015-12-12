# $HOST:$PORT
tt_http_proxy=127.0.0.1:3213

# Proxy a single command and it's children
# Usage: tt-proxythis [command...]
# Example: tt-proxythis curl http://google.com
function tt-proxythis {
  http_proxy="http://$tt_http_proxy"  \
  https_proxy="http://$tt_http_proxy" \
  HTTP_PROXY="http://$tt_http_proxy"  \
  HTTPS_PROXY="http://$tt_http_proxy" \
  $@
}

# Sets env for http proxy for all further programs in this shell
# and children
function tt-enable-http-proxy-global {
  export http_proxy="http://$tt_http_proxy"
  export https_proxy="http://$tt_http_proxy"
  export HTTP_PROXY="http://$tt_http_proxy"
  export HTTPS_PROXY="http://$tt_http_proxy"
}

# Unsets all env settings set by tt-enable-http-proxy-global
function tt-disable-http-proxy-global {
  unset http_proxy
  unset https_proxy
  unset HTTP_PROXY
  unset HTTPS_PROXY
}

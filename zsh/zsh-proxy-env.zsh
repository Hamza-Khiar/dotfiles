# define env variables 

#### i'm using this to change the proxy variables that most program uses so that whenver i'm launching an app in terminal i can set it to use a proxy. (i mainly use this with mitmproxy)


setProxyUrlEnv() {
    echo $@
    export {http_proxy,https_proxy,ftp_proxy,HTTP_PROXY,HTTPS_PROXY,FTP_PROXY}=$@
}

unsetProxyUrlEnv() {
    unset {http_proxy,https_proxy,ftp_proxy,HTTP_PROXY,HTTPS_PROXY,FTP_PROXY}    
}

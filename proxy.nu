def --env proxy [] {
    def checkproxy [] bool {
        try {
            $env.http_proxy; $env.https_proxy; $env.all_proxy
            true
        } catch {
            false
        }
    }

    match (checkproxy) {
        true => {
            hide-env http_proxy https_proxy all_proxy
            echo "Proxy removed"
        },
        false => {
            $env.http_proxy = "http://127.0.0.1:7897"
            $env.https_proxy = "http://127.0.0.1:7897"
            $env.all_proxy = "socks5://127.0.0.1:7897"
            echo "Proxy added"
        },
    }
}
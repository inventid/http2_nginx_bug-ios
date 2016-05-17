# http2_nginx_bug-ios

This is a minimum example of a bug between nginx 1.10 and iOS 9.3 when using HTTP/2.

Filed to nginx as https://trac.nginx.org/nginx/ticket/959
Filed to Apple as 26285066

## Triggering the bug

1. Open `RestManager.swift`
1. Ensure the HTTP/2 enabled server is enabled, and the other one commented
1. Run the application on your phone
1. Crash

## Valid connection

1. Open `RestManager.swift`
1. Ensure the HTTP/1.1 server is enable,d and the HTTP/2 server is commented
1. Run the application on your phone
1. All OK (check the log, not the screen)


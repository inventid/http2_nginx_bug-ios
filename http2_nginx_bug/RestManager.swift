import Alamofire

class RestManager {
    
    // This one will always fail (HTTP2 endpoint running nginx 1.10.0)
//    static let url = "https://api.inventid.nl:3443/events.json"
    
    // This one will always work (HTTP/1.1 endpoint running nginx 1.10.0)
    static let url = "https://api.inventid.nl/events.json"
    
    // Unauthenticated request to get a token, which is set in the controller
    class func testRequest(method: Alamofire.Method) -> Request {
        let params = ["email_address": "derp", "password": "durp"]
        return Alamofire.request(method, url, parameters: params)
    }
    
}

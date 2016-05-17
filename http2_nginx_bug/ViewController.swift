import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Ready to crash the application")
        
        RestManager.testRequest(.POST).responseJSON { (response) in
            print("POST statusCode was \(response.response!.statusCode)")
            RestManager.testRequest(.PUT).responseJSON { (response) in
                print("PUT statusCode was \(response.response!.statusCode)")
                RestManager.testRequest(.DELETE).responseJSON { (response) in
                    print("DELETE statusCode was \(response.response!.statusCode)")
                    RestManager.testRequest(.GET).responseJSON { (response) in
                        print("GET statusCode was \(response.response!.statusCode)")
                        print("Application did not crash!")
                    }
                }
            }
        }
    }

}


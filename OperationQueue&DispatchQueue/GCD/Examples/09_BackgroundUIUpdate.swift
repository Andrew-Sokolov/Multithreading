//
//  Background UI Update
//

import UIKit

class Client {
    static let toggleSwitch = UISwitch()
    
    static func run() {
        toggleSwitch.isOn = true
        
        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + .seconds(5)) {
            DispatchQueue.main.async {
                toggleSwitch.setOn(false, animated: true)
            }
        }
    }
}

// Client.run()

// toggleSwitch is On
// After 5 second
// toggleSwitch is Off (animated)

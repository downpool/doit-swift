

struct SwiftBank {
    private let password: String
    
    var balance = 0
    
    
    init(password: String) {
        self.password = password
    }
    
    private func isValid(enteredPassword: String) -> Bool {
        if enteredPassword == password {
            return true
        } else {
            return false
        }
    }
}

print(type(of: sb.balance))

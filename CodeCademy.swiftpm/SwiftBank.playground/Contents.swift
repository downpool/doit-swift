
//#1
struct SwiftBank {
    //#2
    private let password: String
    //#5
    private var balance: Double = 0
    //#6
    static let depositBonusRate = 0.01
    
    //#3, #9
    init(initialDeposit: Double, password: String) {
        self.password = password
        makeDeposit(ofAmount: initialDeposit)
    }
    
    //#7
    private func finalDepositWithBonus(fromInitialDeposit deposit: Double) -> Double {
        return deposit * SwiftBank.depositBonusRate
    }
    
    //#4
    private func isValid(_ enteredPassword: String) -> Bool {
        if enteredPassword == password {
            return true
        } else {
            return false
        }
    }
    
    //#8
    mutating func makeDeposit(ofAmount depositAmount: Double) {
        let depositWithBonus = finalDepositWithBonus(fromInitialDeposit: depositAmount)
        print("Making a deposit of \(depositAmount) with a bonus rate. The final amount deposited is \(depositWithBonus)")
        balance += depositWithBonus
    }
    
    //#10
    func displayBalance(){}
    
}

import UIKit


class Bank
{
    var accountBalance: Double
    {
        didSet
        {
            sendMessageToUser()
        }
        
        willSet(newAccountBalance)
        {
            if(newAccountBalance >= 1000000)
            {
                sendMessageToAudit()
            }
        }
    }
    
    init(accountBalance: Double) {
        self.accountBalance = accountBalance
    }
    
    func addMoney(amount: Double) {
        accountBalance += amount
    }
    
    func withdrawMoney(amount: Double){
        accountBalance -= amount
    }
    
    func sendMessageToUser() {
        debugPrint("You account balance is updated and is equal to \(accountBalance), Please check!!")
    }
    
    func sendMessageToAudit() {
        debugPrint("The bigger transaction of amount going to happen from your account are you aware of that?")
    }
}

var objBank = Bank(accountBalance: 10000)
objBank.addMoney(amount: 10000000)




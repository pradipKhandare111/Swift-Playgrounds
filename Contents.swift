import UIKit

extension String
{
    func isValidEmail() -> Bool 
    {
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let pred = NSPredicate(format: "SELF MATCHES %@", regex)
        return pred.evaluate(with: self)
    }
}

@propertyWrapper
struct EmailPropertyWrapper
{
    private var _value: String
    var wrappedValue: String
    {
        get
        {
            return isValidEmail(email: _value) ? _value : String()
        }
        
        set(newValue)
        {
            _value = newValue
        }
    }
    
    
    init(_emailValue: String) {
        _value = _emailValue
    }
    
    private func isValidEmail(email: String) -> Bool
    {
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let pred = NSPredicate(format: "SELF MATCHES %@", regex)
        return pred.evaluate(with: email)
    }
    
}

struct User
{
   var name: String
    @EmailPropertyWrapper  var email: String
    
    func validate() -> Bool {
        if(name.isEmpty || email.isEmpty)
        {
            debugPrint("name and email is required and can not be empty")
            return false
        }
//        if(email.isValidEmail() == false)
//        {
//            debugPrint("email is not valid, please enter the valid email.")
//            return false
//        }
        return true
    }
    
    func register()  {
        if(validate())
        {
            debugPrint("user data saved")
        }
    }
}
    
   let obj = User(name: "Pradip", email: EmailPropertyWrapper(_emailValue:"pradipkhandare111@gmail.com"))
obj.register()

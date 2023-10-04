import UIKit

struct UserInfo
{
    var firstName: String
    var lastName: String
}

var objectUserInfo: UserInfo?


class Singleton
{
    static let shared = Singleton()
    private init(){}
    
    func getUserInfo() -> UserInfo? {
        return objectUserInfo
    }
    func updateUserInfo(updatedInfo: UserInfo) -> () {
        objectUserInfo = updatedInfo
    }
}


class User
{
    func getUser() -> UserInfo? {
        return Singleton.shared.getUserInfo()
    }
    func updateUserInfo() -> () {
        Singleton.shared.updateUserInfo(updatedInfo: UserInfo(firstName: "Pradip", lastName: "Khandare"))
    }
}

let obj = User()
obj.
obj.getUser()

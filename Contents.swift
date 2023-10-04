import UIKit


struct Endpoints {
    static let getEvents = "http://demo0333988.mockable.io/getEvents"
}

class HttpClient
{
    func getData(url: URL, completionHandler: @escaping(_ data: Data?) -> Void) {
        URLSession.shared.dataTask(with: url) { (dataResponse, urlResponse, error) in
            completionHandler(dataResponse)
        }
        .resume()
    }
}


class Events
{
    
    var client: HttpClient? = nil  //property injection
    
    init(_client : HttpClient) { //constructor injection 
        client = _client
    }
    func getEventRecords() {
        //let client: HttpClient = HttpClient()
        client?.getData(url: URL(string: Endpoints.getEvents)!) { (responseData) in
            if responseData?.count != 0{
                debugPrint("responseData = \(String(describing: responseData?.count))")
            }
        }
    }
}


let objEW = Events(_client: HttpClient())
//objEW.client = HttpClient()
objEW.getEventRecords()

import UIKit



//protocol AdditionDelegate: class
//{
//    func didFinishAdd(result: Int)
//}
//class Developer
//{
//    
//  weak var managerRef: AdditionDelegate?
//    func developerWillAddNumber(a: Int, b: Int)
//    {
//        let result = a + b
//        managerRef?.didFinishAdd(result: result)
//    }
//    
//}
//
//
//class Manager: AdditionDelegate
//{
//    var developer: Developer?
//    
//    init(developer: Developer?) {
//        self.developer = developer
//        developer?.managerRef = self
//    }
//    
//    func didFinishAdd(result: Int)
//    {
//        debugPrint(result)
//    }
//    
//    func addTwoNumbers(x: Int, y: Int) 
//    {
//        developer?.developerWillAddNumber(a: x, b: y)
//    }
//    
//}
//
//let objManager = Manager(developer: Developer())
//objManager.addTwoNumbers(x: 1, y: 1)







//struct Image {
//    static let imageUrl = "https://images.unsplash.com/photo-1585016495481-91613a3ab1bc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJhbHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60"
//}
//
//protocol ImageDownloadDelegate: class
//{
//    func didFinishDownloadingImage(imageData: Data?)
//}
//
//class ImageDownloader
//{
//    
//  weak var delegate: ImageDownloadDelegate?
//    func downloadImageFromServer(url: URL)
//    {
//        URLSession.shared.dataTask(with: url) { imageData, response, error in
//            self.delegate?.didFinishDownloadingImage(imageData: imageData)
//        }
//        .resume()
//    }
//}
//
//
//class ProfileImageViewer: ImageDownloadDelegate
//{
//    var imageDownloader: ImageDownloader?
//    
//    init(_imageDownloader: ImageDownloader) {
//        imageDownloader = _imageDownloader
//        imageDownloader?.delegate = self
//        imageDownloader?.downloadImageFromServer(url: URL(string: Image.imageUrl)!)
//    }
//    
//    func didFinishDownloadingImage(imageData: Data?)
//    {
//        let image = UIImage(data: imageData!)
//    }
//}
//
//let objProfile = ProfileImageViewer(_imageDownloader: ImageDownloader())





//class Developer
//{
//    var didAddTwoNumbers : ((Int) -> Void)?
//    
//    func developerWillAddNumber(a: Int, b: Int)
//    {
//        didAddTwoNumbers!(a + b)
//      
//    }
//    
//}
//
//
//class Manager
//{
//    var developer: Developer?
//    
//    init(developer: Developer?) {
//        self.developer = developer
//    }
//    
//    func addTwoNumbers(x: Int, y: Int)
//    {
//        developer?.didAddTwoNumbers = {additionResult in debugPrint("addition result is \(additionResult)")}
//        developer?.developerWillAddNumber(a: x, b: y)
//    }
//    
//}
//
//let objManager = Manager(developer: Developer())
//objManager.addTwoNumbers(x: 1, y: 1)







//struct Image {
//    static let imageUrl = "https://images.unsplash.com/photo-1585016495481-91613a3ab1bc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJhbHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60"
//}
//
//class ImageDownloader
//{
//    
//    var didDownloadTheImage : ((Data?) -> Void)?
//    
//    
//    func downloadImageFromServer(url: URL)
//    {
//        URLSession.shared.dataTask(with: url) { imageData, response, error in
//            self.didDownloadTheImage!(imageData)
//        }
//        .resume()
//    }
//}
//
//
//class ProfileImageViewer
//{
//    var imageDownloader: ImageDownloader?
//    
//    init(_imageDownloader: ImageDownloader) {
//        imageDownloader = _imageDownloader
//        imageDownloader?.didDownloadTheImage = {downloadedImage in debugPrint("image = \(downloadedImage)")
//            _ = UIImage(data: downloadedImage!)
//        }
//        
//        
//        imageDownloader?.downloadImageFromServer(url: URL(string: Image.imageUrl)!)
//    }
//    
//   
//}
//
//let objProfile = ProfileImageViewer(_imageDownloader: ImageDownloader())
//































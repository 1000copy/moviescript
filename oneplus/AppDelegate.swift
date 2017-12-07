import UIKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let v = Page()
        v.view.backgroundColor = .blue
        window?.rootViewController = v
        return true
    }
}
class Page : UIViewController{
    var label = UILabel()
    override func viewDidLoad() {
        label.text = "\(count)"
        label.frame = CGRect(x: 50,y:50,width:200,height:50)
        label.font = label.font.withSize(45)
        view.addSubview(label)
        label.backgroundColor = .green
        let button = UIButton()
        button.frame = CGRect(x: 50,y:110,width:200,height:50)
        button.backgroundColor = .black
        button.setTitle("INC", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 45)
        view.addSubview(button)
        button.addTarget(self, action: #selector(click), for: .touchDown)
    }
    var count = 0
    @objc func click(){
        count += 1
        label.text = "\(count)"
    }
}

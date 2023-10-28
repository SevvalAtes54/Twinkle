//import UIKit
//import TinyConstraints
//
//class TabBarController: UITabBarController, UITabBarControllerDelegate {
//    let customTabBar = UITabBar()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Set the desired height for the customTabBar
//        let customTabBarHeight: CGFloat = 150
//
//        // Create view controllers and tab bar items
//        let firstViewController = ViewController()
//        let firstTabItem = UITabBarItem(title: "First", image: UIImage(systemName: "folder.fill"), tag: 0)
//        firstViewController.tabBarItem = firstTabItem
//        let firstNavController = UINavigationController(rootViewController: firstViewController)
//
//        let secondViewController = deneme()
//        let secondTabItem = UITabBarItem(title: "Second", image: UIImage(systemName: "eraser"), tag: 1)
//        secondViewController.tabBarItem = secondTabItem
//        let secondNavController = UINavigationController(rootViewController: secondViewController)
//
//        // Add the view controllers (or navigation controllers) to the tab bar controller
//        self.viewControllers = [
//            firstNavController,
//            secondNavController
//        ]
//
//        // Add the customTabBar to the view
//        view.addSubview(customTabBar)
//
//        // Set up constraints for the customTabBar
//        NSLayoutConstraint.activate([
//            customTabBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            customTabBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            customTabBar.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//            customTabBar.heightAnchor.constraint(equalToConstant: customTabBarHeight)
//        ])
//
//        // Set the delegate to handle tab bar item selections
//        self.delegate = self
//    }
//
//    // Handle tab bar item selections
//    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
//        // Perform actions when a tab bar item is selected
//        if let selectedViewController = viewController as? ViewController {
//            let nextViewController = ViewController()
//            nextViewController.modalPresentationStyle = .fullScreen
//            selectedViewController.present(nextViewController, animated: true)
//        } else if let selectedViewController = viewController as? deneme {
//            let nextViewController = deneme()
//            nextViewController.modalPresentationStyle = .fullScreen
//            selectedViewController.present(nextViewController, animated: true)
//        }
//    }
////}
//import UIKit
//import TinyConstraints
//class TabBarController: UITabBarController, UITabBarControllerDelegate {
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Set the desired height for the tab bar
//        if let tabBar = tabBar as? UITabBar {
//            tabBar.frame.size.height = 150
//        }
//
//        // Create view controllers and tab bar items
//        let firstViewController = ViewController()
//        let firstTabItem = UITabBarItem(title: "First", image: UIImage(systemName: "folder.fill"), tag: 0)
//        firstViewController.tabBarItem = firstTabItem
//        let firstNavController = UINavigationController(rootViewController: firstViewController)
//
//        let secondViewController = deneme()
//        let secondTabItem = UITabBarItem(title: "Second", image: UIImage(systemName: "eraser"), tag: 1)
//        secondViewController.tabBarItem = secondTabItem
//        let secondNavController = UINavigationController(rootViewController: secondViewController)
//
//        // Add the view controllers (or navigation controllers) to the tab bar controller
//        self.viewControllers = [
//            firstNavController,
//            secondNavController
//        ]
//
//        // Set the delegate to handle tab bar item selections
//        self.delegate = self
//    }
//
//    // Handle tab bar item selections
//    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
//        // Perform actions when a tab bar item is selected
//        // ...
//    }
//}
import UIKit
import TinyConstraints
class TabBarControllerr: UITabBarController, UITabBarControllerDelegate {
    let customTabBar = UITabBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the delegate of the customTabBa
      
        customTabBar.delegate = self
        delegate = self
        // Set the desired height for the customTabBar
//        let customTabBarHeight: CGFloat = 100
        
        // Create view controllers and tab bar items
        let firstViewController = ViewController()
        let firstTabItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        firstViewController.tabBarItem = firstTabItem
        
        let secondViewController = deneme()
        let secondTabItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.crop.circle"), tag: 1)
        secondViewController.tabBarItem = secondTabItem
        customTabBar.isTranslucent = true
        customTabBar.barTintColor = .white

        self.viewControllers = [
            firstViewController,
            secondViewController
        ]
        
        view.addSubview(customTabBar)
        if let tabBar = self.tabBar as? UITabBar {
                   tabBar.backgroundColor = .systemGray6
               }
               
               // Tab bar öğelerini beyaz yap
               self.tabBar.backgroundColor = .systemGray6
        
        
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        // Handle tab bar item selection if needed

        if item.tag == 0 {
              print("First item selected")
          } else if item.tag == 1 {
              print("Second item selected")
          }

    }
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
     

    }
}

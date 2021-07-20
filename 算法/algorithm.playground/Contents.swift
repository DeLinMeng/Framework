//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        
        
        print(getTrips(n: 100))
        
        
    }
    
    func getTrips(n:Int) -> Int{
        if n <= 2 { return n }
        var dp = [Int](repeating: 0, count: n + 1);
        dp[0] = 0
        dp[1] = 1
        for index in 2...n {
            dp[index] = dp[index - 1] + dp[index - 2]
        }
        return dp[n];
    }
    
    
    
    
    
    
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()

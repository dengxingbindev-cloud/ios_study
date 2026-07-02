import UIKit

class SecondViewController: UIViewController {
    
    private lazy var tabLabel:UILabel = {
        let label = UILabel()
        label.text = "你怎么进来了"
        label.textAlignment = .center
        label.frame = CGRect(x:0,y:0,width: 200,height:50)
        label.center = view.center
        
        label.isUserInteractionEnabled = true
        
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        view.addSubview(tabLabel)
        
        let tap = UITapGestureRecognizer(target:self,action:#selector(labelTapped))
        tabLabel.addGestureRecognizer(tap)
        
        
        
    }
    
    @objc func labelTapped(){
        let vc = PersonalHomepageController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

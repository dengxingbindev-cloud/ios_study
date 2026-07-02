/*装一张静态的个人资料卡：头像 + 昵称 + 简介 + 一个关注按钮。
用 SnapKit 布局，第 1 周讲到的控件都用上。用 #Preview 实时预览，调整到满意。最后 commit。
 */
import UIKit
import SnapKit

class PersonalHomepageController: UIViewController {
    
    private lazy var titleLabel : UILabel = {
        let label=UILabel()
        label.text = "个人资料卡"
        label.font=UIFont.systemFont(ofSize:28,weight:.bold)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var userAvator: UIImageView = {
        let avator = UIImageView()
        avator.image = UIImage(named: "haha")
        avator.contentMode = .scaleAspectFill
        avator.clipsToBounds = true
        //avator.layer.cornerRadius = avator.bounds.width / 2
        avator.layer.cornerRadius = 60
        return avator
    }()
    
    private lazy var nicknameLabel : UILabel = {
        let label=UILabel()
        label.text = "余灵"
        label.font=UIFont.systemFont(ofSize:28,weight:.bold)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var aboutView : UIView = {
        let container = UIView()
        container.layer.borderWidth = 2
        container.layer.borderColor = UIColor.systemCyan.cgColor
        container.layer.cornerRadius = 50
        
        let label=UILabel()
        label.text = "原来姹紫嫣红开遍，似这般都付与断井颓垣。良辰美景奈何天，赏心乐事谁家院"
        label.font=UIFont.systemFont(ofSize:20,weight:.light)
        label.textAlignment = .center
        label.numberOfLines = 0
        
        container.addSubview(label)
        
        label.snp.makeConstraints{ make in
            make.edges.equalToSuperview().inset(20)
        }
        
        return container
    }()
    
    private lazy var followButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("关注",for: .normal)
        btn.setTitleColor(.white,for:.normal)
        btn.backgroundColor = .systemBlue
        btn.layer.cornerRadius = 8
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI(){
        view.backgroundColor = .white
        
        view.addSubview(titleLabel)
        view.addSubview(userAvator)
        view.addSubview(nicknameLabel)
        view.addSubview(aboutView)
        view.addSubview(followButton)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.centerX.equalToSuperview()
            
        }
        
        userAvator.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(80)
            //make.left.right.equalToSuperview().inset(100)
            make.width.equalTo(120)
            make.height.equalTo(userAvator.snp.width)
            make.centerX.equalToSuperview()
        }
        
        nicknameLabel.snp.makeConstraints { make in
            make.top.equalTo(userAvator.snp.bottom).offset(20)
            make.left.right.equalToSuperview().inset(100)
            make.centerX.equalToSuperview()
            
        }
        
        aboutView.snp.makeConstraints { make in
            make.top.equalTo(nicknameLabel.snp.bottom).offset(40)
            make.left.right.equalToSuperview().inset(20)
            make.centerX.equalToSuperview()
        }
        
        followButton.snp.makeConstraints { make in
            make.top.equalTo(aboutView.snp.bottom).offset(100)
            make.height.equalTo(50)
            make.width.equalTo(120)
            make.centerX.equalToSuperview()
        }
    }
    
}

#Preview {
    PersonalHomepageController()
}


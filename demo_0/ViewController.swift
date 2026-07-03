
import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var titleLabel : UILabel = {
        let label=UILabel()
        label.text = "后面有惊喜哈哈"
        label.font=UIFont.systemFont(ofSize:28,weight:.bold)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var usernameField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "请输入账号"
        tf.borderStyle = .roundedRect
        return tf
    }()
    
    private lazy var passwordField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "请输入密码"
        tf.isSecureTextEntry = true
        tf.borderStyle = .roundedRect
        return tf
    }()
    
    private lazy var loginButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("登录",for: .normal)
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
        view.addSubview(usernameField)
        view.addSubview(passwordField)
        view.addSubview(loginButton)
        
        setupConstraints()
        
        loginButton.addTarget(self,action:#selector(loginTapped), for:.touchUpInside)
    }
    
    private func setupConstraints() {
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(80)
            make.centerX.equalToSuperview()
            
        }
        
        usernameField.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(40)
            make.left.equalToSuperview().offset(30)
            make.right.equalToSuperview().offset(-30)
            make.height.equalTo(44)
        }
        
        passwordField.snp.makeConstraints { make in
            make.top.equalTo(usernameField.snp.bottom).offset(20)
            make.left.right.height.equalTo(usernameField)
            
        }
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordField.snp.bottom).offset(40)
            make.left.right.equalTo(usernameField)
            make.height.equalTo(50)
        }
    }
    
    @objc private func loginTapped() {
        print("哈哈你好")
        
        let username = usernameField.text
        let password = passwordField.text
        
        if username?.isEmpty == true || password?.isEmpty == true {
            print("账号密码不能为空")
            return
        }
        
        print("登录成功")
        let vc = SecondViewController()
        navigationController?.pushViewController(vc,animated:true)
    }
}

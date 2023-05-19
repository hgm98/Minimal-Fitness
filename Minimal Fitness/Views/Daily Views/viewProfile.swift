
import UIKit
import SnapKit

class viewProfile: UIViewController {
    
    let labelProfile : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 36, weight: .thin)
        label.text = "Profile"
        label.textAlignment = .center
        return label
    }()
    
    let image: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "profile"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let labelName : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 36, weight: .thin)
        label.textColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1.0)
        
        //label.text = "Profile"
        label.textAlignment = .center
        return label
    }()
    
    //rgba(72, 72, 72, 1)
    
    let labelAgeOne : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 26, weight: .thin)
        label.textColor = UIColor(red: 72/255, green: 72/255, blue: 72/255, alpha: 1.0)
        
        //label.text = "Profile"
        label.textAlignment = .center
        return label
    }()
    
    let labelAgeTwo : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 20, weight: .thin)
        label.textColor = UIColor(red: 72/255, green: 72/255, blue: 72/255, alpha: 1.0)
        
        label.text = "yrs"
        label.textAlignment = .center
        return label
    }()
    
    let hStackAge : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 0
        return stack
    }()

    
    let labelWeightOne : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 26, weight: .thin)
        label.textColor = UIColor(red: 72/255, green: 72/255, blue: 72/255, alpha: 1.0)
        
        //label.text = "Profile"
        label.textAlignment = .center
        return label
    }()
    
    let labelWeightTwo : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 20, weight: .thin)
        label.textColor = UIColor(red: 72/255, green: 72/255, blue: 72/255, alpha: 1.0)

        
        label.text = "kg"
        label.textAlignment = .center
        return label
    }()
    
    let hStackWeight : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 0
        return stack
    }()
    
    
    let labelHeightOne : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 26, weight: .thin)
        label.textColor = UIColor(red: 72/255, green: 72/255, blue: 72/255, alpha: 1.0)

        
        //label.text = "Profile"
        label.textAlignment = .center
        return label
    }()
    
    let labelHeightTwo : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 20, weight: .thin)
        label.textColor = UIColor(red: 72/255, green: 72/255, blue: 72/255, alpha: 1.0)

        
        label.text = "cm"
        label.textAlignment = .center
        return label
    }()
    
    let hStackHeight : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 0
        return stack
    }()
    
    let vStackRowOne : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 20
        return stack
    }()
    
    let buttonEdit : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Edit Profile", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14, weight: .bold)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    let hStackCollection : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 20
        return stack
    }()
    
    let imageProfile: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "man"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 40
        return imageView
    }()
    
    let vStackRowTwo : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 60
        return stack
    }()
    
    let buttonLogout : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Logout", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 26, weight: .semibold)
        button.backgroundColor = UIColor(red: 69/255, green: 90/255, blue: 100/255, alpha: 1.0)
        button.layer.cornerRadius = 10
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        labelName.text = "Harsha Amarasinghe"
        labelAgeOne.text = "25"
        labelWeightOne.text = "60"
        labelHeightOne.text = "178"
    }
    
    func setupUI(){
        view.backgroundColor = .white
        
        view.addSubview(labelProfile)
        view.addSubview(image)
        view.addSubview(labelName)
        
        hStackAge.addArrangedSubview(labelAgeOne)
        hStackAge.addArrangedSubview(labelAgeTwo)
        
        hStackWeight.addArrangedSubview(labelWeightOne)
        hStackWeight.addArrangedSubview(labelWeightTwo)
        
        hStackHeight.addArrangedSubview(labelHeightOne)
        hStackHeight.addArrangedSubview(labelHeightTwo)
        
        vStackRowOne.addArrangedSubview(hStackAge)
        vStackRowOne.addArrangedSubview(hStackWeight)
        vStackRowOne.addArrangedSubview(hStackHeight)
        
        hStackCollection.addArrangedSubview(vStackRowOne)
        hStackCollection.addArrangedSubview(buttonEdit)
        
        vStackRowTwo.addArrangedSubview(imageProfile)
        vStackRowTwo.addArrangedSubview(hStackCollection)
        
        view.addSubview(vStackRowTwo)
        view.addSubview(buttonLogout)
        
        labelProfile.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.centerX.equalTo(view)
        }
        
        image.snp.makeConstraints { make in
            make.top.equalTo(labelProfile).offset(50)
            make.centerX.equalTo(view)
            make.size.equalTo(CGSize(width: 350, height: 350))
        }
        
        labelName.snp.makeConstraints { make in
            make.top.equalTo(image.snp.bottom).offset(10)
            
            make.centerX.equalTo(view)
        }

        vStackRowTwo.snp.makeConstraints { make in
            make.top.equalTo(labelName.snp.bottom).offset(40)
            //make.centerX.equalTo(view)
            make.left.equalTo(view.snp.left).offset(50)
        }
        
        imageProfile.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 80, height: 80))
        }
        
        buttonLogout.snp.makeConstraints { make in
            make.top.equalTo(vStackRowTwo.snp.bottom).offset(40)
            make.centerX.equalTo(view)
            make.size.equalTo(CGSize(width: 180, height: 50))
            //make.left.equalTo(view.snp.left).offset(50)
        }
        
//
//        labelFive.snp.makeConstraints { make in
//            make.size.equalTo(CGSize(width: 200, height: 100))
//        }
//
//        hStack.snp.makeConstraints { make in
//            make.top.equalTo(hStackMid.snp.bottom).offset(50)
//            //make.centerX.equalTo(view)
//            make.left.equalTo(view.safeAreaLayoutGuide.snp.left).offset(60)
//        }
//
//        labelSeven.snp.makeConstraints { make in
//            make.size.equalTo(CGSize(width: 200, height: 50))
//        }
//
//        buttonStart.snp.makeConstraints { make in
//            make.top.equalTo(hStack.snp.bottom).offset(60)
//            //make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-20)
//            make.centerX.equalTo(view)
//            make.size.equalTo(CGSize(width: 227, height: 50))
//        }
//
        
        
    }
    
 
    
}
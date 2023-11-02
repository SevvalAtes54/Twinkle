import UIKit
import TinyConstraints

class AgeVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    let labelQuestion : UITextView = {
        let cons = UITextView()
        cons.translatesAutoresizingMaskIntoConstraints = false
        return cons
    }()
    
    let dayTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Day"
        textField.attributedPlaceholder = NSAttributedString(string: "   Day", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 14
        textField.borderStyle = .none
        return textField
    }()
    
    let monthTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "  Month"
        textField.attributedPlaceholder = NSAttributedString(string: "   Month", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 14
        textField.borderStyle = .none
        return textField
    }()
    
    let yearTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = " Year"
        textField.attributedPlaceholder = NSAttributedString(string: "  Yearㅤㅤ", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 14
        textField.borderStyle = .none
        return textField
    }()

    let nextButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let pickerData = [
        Array(1...31).map { "\($0)" },
        ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
        Array(1930...2023).map { "\($0)" }
    ]
    var picker: UIPickerView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Initialize the UIPickerView
        picker = UIPickerView()
        picker.delegate = self
        picker.dataSource = self

        let backgroundImageView = UIImageView()
        backgroundImageView.image = UIImage(named: "mainImage")
        backgroundImageView.contentMode = .scaleAspectFill
        view.addSubview(backgroundImageView)
        backgroundImageView.edges(to: view)
        
        view.addSubview(labelQuestion)
        labelQuestion.topToSuperview(offset:120)
        labelQuestion.text = "What is your date of birth?"
        labelQuestion.leadingToSuperview(offset:55)
        labelQuestion.trailingToSuperview(offset:55)
        labelQuestion.font = .boldSystemFont(ofSize: 35)
        labelQuestion.tintColor = .white
        labelQuestion.width(140)
        labelQuestion.height(100)
        labelQuestion.backgroundColor = .clear

        view.addSubview(dayTextField)
        dayTextField.topToSuperview(offset: 255)
        dayTextField.leadingToSuperview(offset: 55)
      //  dayTextField.backgroundColor = .white
        dayTextField.height(55)
        dayTextField.width(60)
        dayTextField.inputView = picker

        view.addSubview(monthTextField)
        monthTextField.topToSuperview(offset: 255)
       // monthTextField.center(in: view)
        monthTextField.centerXToSuperview()
       // monthTextField.backgroundColor = .white
        monthTextField.height(55)
        monthTextField.width(85)
        monthTextField.inputView = picker

        view.addSubview(yearTextField)
        yearTextField.topToSuperview(offset: 255)
        yearTextField.trailingToSuperview(offset: 55)
     //   yearTextField.backgroundColor = .white
        yearTextField.height(55)
        yearTextField.width(50)
        yearTextField.inputView = picker
        

        view.addSubview(nextButton)
        nextButton.bottomToSuperview(offset: -30)
        nextButton.trailingToSuperview(offset: 30)
        nextButton.setImage(UIImage(systemName: "arrowshape.right"), for: .normal)
        nextButton.height(30)
        nextButton.width(30)
        nextButton.addTarget(self, action: #selector(nextButtonNext), for: .touchUpInside)

        // Create a toolbar with "Done" and "Cancel" buttons
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor(red: 76/255, green: 217/255, blue: 100/255, alpha: 1)
        toolBar.sizeToFit()

        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donePicker))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelPicker))

        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        dayTextField.inputAccessoryView = toolBar
        monthTextField.inputAccessoryView = toolBar
        yearTextField.inputAccessoryView = toolBar
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let dayBottomLine = CALayer()
        dayBottomLine.frame = CGRect(x: 0.0, y: dayTextField.frame.size.height - 1.0, width: dayTextField.frame.size.width, height: 1.0)
        dayBottomLine.backgroundColor = UIColor.black.cgColor
        dayTextField.layer.addSublayer(dayBottomLine)
        dayTextField.layer.masksToBounds = true
        
        let monthBottomLine = CALayer()
        monthBottomLine.frame = CGRect(x: 0.0, y: monthTextField.frame.size.height - 1.0, width: monthTextField.frame.size.width, height: 1.0)
        monthBottomLine.backgroundColor = UIColor.black.cgColor
        monthTextField.layer.addSublayer(monthBottomLine)
        monthTextField.layer.masksToBounds = true
        
        let yearBottomLine = CALayer()
        yearBottomLine.frame = CGRect(x: 0.0, y: yearTextField.frame.size.height - 1.0, width: yearTextField.frame.size.width, height: 1.0)
        yearBottomLine.backgroundColor = UIColor.black.cgColor
        yearTextField.layer.addSublayer(yearBottomLine)
        yearTextField.layer.masksToBounds = true
        
        
    }
    
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData[component].count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[component][row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        dayTextField.text = pickerData[0][picker.selectedRow(inComponent: 0)]
        monthTextField.text = pickerData[1][picker.selectedRow(inComponent: 1)]
        yearTextField.text = pickerData[2][picker.selectedRow(inComponent: 2)]
    }

    @objc func donePicker() {
        dayTextField.resignFirstResponder()
        monthTextField.resignFirstResponder()
        yearTextField.resignFirstResponder()
    }

    @objc func cancelPicker() {
        dayTextField.text = ""
        monthTextField.text = ""
        yearTextField.text = ""
        dayTextField.resignFirstResponder()
        monthTextField.resignFirstResponder()
        yearTextField.resignFirstResponder()
    }

    @objc func nextButtonNext() {
        let nextViewController = NameVC()
        nextViewController.modalPresentationStyle = .fullScreen
       self.present(nextViewController, animated: true)
    }
}

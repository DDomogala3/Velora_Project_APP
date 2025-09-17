import UIKit

class ViewController: UIViewController {
    private let label: UILabel = {
        let lbl = UILabel()
        lbl.text = "Hello, World!"
        lbl.font = UIFont.systemFont(ofSize: 24)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()

    private let button: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Tap Me", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(label)
        view.addSubview(button)

        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -30),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20)
        ])

        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }

    @objc func buttonTapped() {
        label.text = "Button was tapped!"
    }
}

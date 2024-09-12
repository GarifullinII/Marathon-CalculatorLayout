//
//  ViewController.swift
//  CalculatorLayout
//
//  Created by Ildar Garifullin on 11/09/2024.
//

import UIKit

class ViewController: UIViewController {
    private let exactlyButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("=", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold, width: .standard)
        button.tintColor = .specialWhite
        button.backgroundColor = .specialYellow
        button.addTarget(self, action: #selector(exactlyButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let dotButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(".", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold, width: .standard)
        button.tintColor = .specialWhite
        button.backgroundColor = .specialBlue
        button.addTarget(self, action: #selector(dotButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let zeroButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("0", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold, width: .standard)
        button.tintColor = .specialWhite
        button.backgroundColor = .specialBlue
        button.addTarget(self, action: #selector(zeroButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let plusButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("+", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold, width: .standard)
        button.tintColor = .specialWhite
        button.backgroundColor = .specialYellow
        button.addTarget(self, action: #selector(plusButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let threeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("3", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold, width: .standard)
        button.tintColor = .specialWhite
        button.backgroundColor = .specialBlue
        button.addTarget(self, action: #selector(threeButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let twoButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("2", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold, width: .standard)
        button.tintColor = .specialWhite
        button.backgroundColor = .specialBlue
        button.addTarget(self, action: #selector(twoButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let oneButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("1", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold, width: .standard)
        button.tintColor = .specialWhite
        button.backgroundColor = .specialBlue
        button.addTarget(self, action: #selector(oneButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let minusButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("-", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold, width: .standard)
        button.tintColor = .specialWhite
        button.backgroundColor = .specialYellow
        button.addTarget(self, action: #selector(minusButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let sixButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("6", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold, width: .standard)
        button.tintColor = .specialWhite
        button.backgroundColor = .specialBlue
        button.addTarget(self, action: #selector(sixButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let fiveButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("5", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold, width: .standard)
        button.tintColor = .specialWhite
        button.backgroundColor = .specialBlue
        button.addTarget(self, action: #selector(fiveButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let fourButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("4", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold, width: .standard)
        button.tintColor = .specialWhite
        button.backgroundColor = .specialBlue
        button.addTarget(self, action: #selector(fourButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let multiplyButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("*", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold, width: .standard)
        button.tintColor = .specialWhite
        button.backgroundColor = .specialYellow
        button.addTarget(self, action: #selector(multiplyButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let nineButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("9", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold, width: .standard)
        button.tintColor = .specialWhite
        button.backgroundColor = .specialBlue
        button.addTarget(self, action: #selector(nineButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let eightButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("8", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold, width: .standard)
        button.tintColor = .specialWhite
        button.backgroundColor = .specialBlue
        button.addTarget(self, action: #selector(eightButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let sevenButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("7", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold, width: .standard)
        button.tintColor = .specialWhite
        button.backgroundColor = .specialBlue
        button.addTarget(self, action: #selector(sevenButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let divideButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("/", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold, width: .standard)
        button.tintColor = .specialWhite
        button.backgroundColor = .specialYellow
        button.addTarget(self, action: #selector(divideButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let percentButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("%", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold, width: .standard)
        button.tintColor = .specialWhite
        button.backgroundColor = .specialBlue
        button.addTarget(self, action: #selector(percentButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let moduleButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("+/-", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold, width: .standard)
        button.tintColor = .specialWhite
        button.backgroundColor = .specialBlue
        button.addTarget(self, action: #selector(moduleButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let saveButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("AC", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold, width: .standard)
        button.tintColor = .specialWhite
        button.backgroundColor = .specialBlue
        button.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textColor = .specialWhite
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var lineOneStackView = UIStackView()
    var lineTwoStackView = UIStackView()
    var lineThreeStackView = UIStackView()
    var lineFourStackView = UIStackView()
    var lineFiveStackView = UIStackView()
    var lineSixStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.backgroundColor = .black
        
        lineOneStackView = UIStackView(
            arrangedSubviews: [
                zeroButton, dotButton, exactlyButton
            ],
            axis: .horizontal,
            spacing: 1)
        view.addSubview(lineOneStackView)
        
        lineTwoStackView = UIStackView(
            arrangedSubviews: [
                oneButton, twoButton, threeButton, plusButton
            ],
            axis: .horizontal,
            spacing: 1)
        view.addSubview(lineTwoStackView)
        
        lineThreeStackView = UIStackView(
            arrangedSubviews: [
                fourButton, fiveButton, sixButton, minusButton
            ],
            axis: .horizontal,
            spacing: 1)
        view.addSubview(lineThreeStackView)
        
        lineFourStackView = UIStackView(
            arrangedSubviews: [
                sevenButton, eightButton, nineButton, multiplyButton
            ],
            axis: .horizontal,
            spacing: 1)
        view.addSubview(lineFourStackView)
        
        lineFiveStackView = UIStackView(
            arrangedSubviews: [
                saveButton, moduleButton, percentButton, divideButton
            ],
            axis: .horizontal,
            spacing: 1)
        view.addSubview(lineFiveStackView)
        
        lineSixStackView = UIStackView(
            arrangedSubviews: [
                label
            ],
            axis: .horizontal,
            spacing: 1)
        view.addSubview(lineSixStackView)
    }

    @objc private func exactlyButtonTapped() {
        print("=")
    }
    @objc private func dotButtonTapped() {
        print(".")
    }
    @objc private func zeroButtonTapped() {
        print("0")
    }
    @objc private func plusButtonTapped() {
        print("+")
    }
    @objc private func threeButtonTapped() {
        print("3")
    }
    @objc private func twoButtonTapped() {
        print("2")
    }
    @objc private func oneButtonTapped() {
        print("1")
    }
    @objc private func minusButtonTapped() {
        print("-")
    }
    @objc private func sixButtonTapped() {
        print("6")
    }
    @objc private func fiveButtonTapped() {
        print("5")
    }
    @objc private func fourButtonTapped() {
        print("4")
    }
    @objc private func multiplyButtonTapped() {
        print("*")
    }
    @objc private func nineButtonTapped() {
        print("9")
    }
    @objc private func eightButtonTapped() {
        print("8")
    }
    @objc private func sevenButtonTapped() {
        print("7")
    }
    @objc private func divideButtonTapped() {
        print("/")
    }
    @objc private func percentButtonTapped() {
        print("%")
    }
    @objc private func moduleButtonTapped() {
        print("+/-")
    }
    @objc private func saveButtonTapped() {
        print("AC")
    }
}
// MARK: -SetConstraints
extension ViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            zeroButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            zeroButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1)
        ])
        NSLayoutConstraint.activate([
            dotButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25),
            dotButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1)
        ])
        NSLayoutConstraint.activate([
            lineOneStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            lineOneStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            lineOneStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        NSLayoutConstraint.activate([
            oneButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25),
            oneButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1)
        ])
        NSLayoutConstraint.activate([
            twoButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25),
            twoButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1)
        ])
        NSLayoutConstraint.activate([
            threeButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25),
            threeButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1)
        ])
        NSLayoutConstraint.activate([
            lineTwoStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            lineTwoStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            lineTwoStackView.bottomAnchor.constraint(equalTo: lineOneStackView.topAnchor)
        ])
        NSLayoutConstraint.activate([
            fourButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25),
            fourButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1)
        ])
        NSLayoutConstraint.activate([
            fiveButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25),
            fiveButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1)
        ])
        NSLayoutConstraint.activate([
            sixButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25),
            sixButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1)
        ])
        NSLayoutConstraint.activate([
            lineThreeStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            lineThreeStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            lineThreeStackView.bottomAnchor.constraint(equalTo: lineTwoStackView.topAnchor)
        ])
        NSLayoutConstraint.activate([
            sevenButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25),
            sevenButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1)
        ])
        NSLayoutConstraint.activate([
            eightButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25),
            eightButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1)
        ])
        NSLayoutConstraint.activate([
            nineButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25),
            nineButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1)
        ])
        NSLayoutConstraint.activate([
            lineFourStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            lineFourStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            lineFourStackView.bottomAnchor.constraint(equalTo: lineThreeStackView.topAnchor)
        ])
        NSLayoutConstraint.activate([
            saveButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25),
            saveButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1)
        ])
        NSLayoutConstraint.activate([
            moduleButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25),
            moduleButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1)
        ])
        NSLayoutConstraint.activate([
            percentButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25),
            percentButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1)
        ])
        NSLayoutConstraint.activate([
            lineFiveStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            lineFiveStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            lineFiveStackView.bottomAnchor.constraint(equalTo: lineFourStackView.topAnchor)
        ])
        NSLayoutConstraint.activate([
            lineSixStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            lineSixStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            lineSixStackView.bottomAnchor.constraint(equalTo: lineFiveStackView.topAnchor)
        ])
    }
}

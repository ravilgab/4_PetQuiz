//
//  ResultViewController.swift
//  4_PetQuiz
//
//  Created by Ravil on 31.08.2021.
//

import UIKit


class ResultViewController: UIViewController {

    @IBOutlet weak var animalTypeLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var answersChosen: [Answer]!
    
    var dog = 0
    var cat = 0
    var rabbit = 0
    var turtle = 0
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.setHidesBackButton(true, animated: false)
        
        updateResult()
    }
    
    private func updateResult() {
        var frequencyOfAnimals: [Animal: Int] = [:]
        let animals = answersChosen.map { $0.animal }
        
        for animal in animals {
            if let animalTypeCount = frequencyOfAnimals[animal] {
                frequencyOfAnimals.updateValue(animalTypeCount + 1, forKey: animal)
            } else {
                frequencyOfAnimals[animal] = 1
            }
        }
        
        let sortedFrequencyOfAnimals = frequencyOfAnimals.sorted { $0.value > $1.value }
        guard let mostFrequentAnimal = sortedFrequencyOfAnimals.first?.key else { return }
        
        updateUI(with: mostFrequentAnimal)
    }
    
    private func updateUI(with animal: Animal) {
        animalTypeLabel.text = "Вы - \(animal.rawValue)!"
        descriptionLabel.text = animal.definition
    }
}

//
//  Question.swift
//  4_PetQuiz
//
//  Created by Ravil on 28.08.2021.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    
    // заглушка для теста, пока нет данных
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Какую пищу вы предпочитаете?",
                type: .single,
                answers: [
                    Answer(title: "Стейк", animal: .dog),
                    Answer(title: "Рыбу", animal: .cat),
                    Answer(title: "Морковь", animal: .rabbit),
                    Answer(title: "Кукуруза", animal: .turtle)
                ]
            ),
            Question(
                title: "Что вам нравится больше?",
                type: .multiple,
                answers: [
                    Answer(title: "Плавать", animal: .dog),
                    Answer(title: "Спать", animal: .cat),
                    Answer(title: "Обнимать", animal: .rabbit),
                    Answer(title: "Есть", animal: .turtle)
                ]
                
            ),
            Question(
                title: "Нравятся ли вам поездки на машине?",
                type: .ranged,
                answers: [
                    Answer(title: "Ненавижу", animal: .cat),
                    Answer(title: "Неравничаю", animal: .rabbit),
                    Answer(title: "Не замечаю", animal: .turtle),
                    Answer(title: "Обожаю", animal: .dog)
                ]
            )
        ]
    }
}

struct  Answer {
    let title: String
    let animal: Animal
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        
        case .dog:
            return "тестовый текст пса"
        case .cat:
            return "тестовый текст кота"
        case .rabbit:
            return "тестовый текст кролика"
        case .turtle:
            return "тестовый текст черепахи"
        }
    }
}

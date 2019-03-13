import Foundation
import UIKit

enum Exercises: String, CaseIterable {
    case Shoulders
    case Chest
    case Abdominals
    case Arms
    case Legs
    case Back
    case Cardio
    case Stretch
}

struct StorageExercises {
    
    //static var exercises = [String: UIImage]()
    static var exercisesImages = [UIImage]()
    static var exercisesNames = [String]()
    
    static func getExercises() {
        for i in Exercises.allCases {
            exercisesImages.append(UIImage(named: i.rawValue)!)
            exercisesNames.append(i.rawValue)
            
//            exercises[String(Substring(i.rawValue))] = UIImage(named: String(Substring(i.rawValue)))
        }
    }
}








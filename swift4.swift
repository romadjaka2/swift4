import Foundation

//Создайте по 2 enum с разным типом RawValue
enum DayOfWeek: Int {
    case monday = 1
    case tuesday = 2
    case wednesday = 3 
    case thursday = 4
    case friday = 5
    case saturday = 6
    case sunday = 7
}

enum Season: String {
    case winter = "Winter"
    case spring = "Spring"
    case summer = "Summer"
    case autumn = "Autumn"
}

//Создайте несколько enum для заполнения полей стркутуры - анкета сотрудника: enum пол, enum категория возраста, enum стаж
struct EmployeeProfile {
    enum Gender {
        case male
        case female
        case other
    }
    
    enum AgeCategory {
        case young
        case middleAged
        case senior
    }
    
    enum Experience {
        case junior
        case midLevel
        case senior
    }
    
    var name: String
    var gender: Gender
    var ageCategory: AgeCategory
    var experience: Experience
}

//Создать enum со всеми цветами радуги
enum RainbowColor {
    case red
    case orange
    case yellow
    case green
    case blue
    case indigo
    case violet
}

//Создать функцию, которая содержит массив разных case'ов enum и выводит содержимое в консоль. Пример результата в консоли 'apple green', 'sun red' и т.д.
func printRainbowColors() {
    let colors: [RainbowColor] = [.red, .orange, .yellow, .green, .blue, .indigo, .violet]
    for color in colors {
        switch color {
            case .red:
                print("sun red")
            case .orange:
                print("apple orange")
            case .yellow:
                print("banana yellow")
            case .green:
                print("grass green")
            case .blue:
                print("ocean blue")
            case .indigo:
                print("car indigo")
            case .violet:
                print("flower violet")
        }
    }
}
print("Цвета:")
printRainbowColors()

 //Создать функцию, которая выставляет оценки ученикам в школе, на входе принимает значение enum Score: String {<Допишите case'ы} и выводит числовое значение оценки
 enum Score: String {
    case excellent = "5"
    case good = "4"
    case satisfactory = "3"
    case needsImprovement = "2"
}

func assignGrade(score: Score) -> Int {
    switch score {
        case .excellent:
            return 5
        case .good:
            return 4
        case .satisfactory:
            return 3
        case .needsImprovement:
            return 2
    }
}

let studentScore = Score.good
let numericGrade = assignGrade(score: studentScore)
print("Оценка ученика:", numericGrade)

//Создать метод, которая выводит в консоль какие автомобили стоят в гараже, используйте enum
enum Car {
    case sedan
    case suv
    case sports
    case electric
}

func listCarsInGarage() {
    let garage: [Car] = [.sedan, .suv, .sports, .electric]
    print("Автомобили в гараже:")
    for car in garage {
        switch car {
            case .sedan:
                print("Volkswagen Polo")
            case .suv:
                print("BMW x5")
            case .sports:
                print("Nissan GTR")
            case .electric:
                print("Tesla Model 3")
        }
    }
}

listCarsInGarage()

import Foundation
import UIKit

enum Professions: String {
    case seo = "SEO"
    case product = "Product Manager"
    case project = "Project Manager"
    case backend = "Backend Developer"
    case iOS = "iOS Developer"
    case android = "Android Developer"
    case frontend = "Frontend Developer"
    case designer = "Designer"
}

struct Person: Hashable {
    var photoImage: UIImage
    var name: String
    var profession: Professions
    var countryImage: UIImage
}

extension Person {
    static var persons: [[Person]] = [
        // Seos
        [Person(photoImage: UIImage(named: "image1")!, name: "Nataly Philips", profession: .seo, countryImage: UIImage(named: "f1")!)],
        // Product Managers
        [Person(photoImage: UIImage(named: "image2")!, name: "Serj Estimoza", profession: .product, countryImage: UIImage(named: "f2")!)],
        // Project Managers
        [Person(photoImage: UIImage(named: "image3")!, name: "Jack Whilde", profession: .project, countryImage: UIImage(named: "f3")!)],
        // Backend Developer
        [Person(photoImage: UIImage(named: "image4")!, name: "Lisa Coulman", profession: .backend, countryImage: UIImage(named: "f4")!)],
        // iOS Developers
        [Person(photoImage: UIImage(named: "image5")!, name: "Jane Foster", profession: .iOS, countryImage: UIImage(named: "f5")!),
        Person(photoImage: UIImage(named: "image6")!, name: "Anny Clark", profession: .iOS, countryImage: UIImage(named: "f6")!)],
        // Designers
        [Person(photoImage: UIImage(named: "image7")!, name: "Peter Krasinsky", profession: .designer, countryImage: UIImage(named: "f7")!),
        Person(photoImage: UIImage(named: "image8")!, name: "Loren Ipsum", profession: .designer, countryImage: UIImage(named: "f8")!)],
        // Android Developers
        [Person(photoImage: UIImage(named: "image9")!, name: "Mathew Smith", profession: .android, countryImage: UIImage(named: "f9")!)],
        // Frontend Developers
        [Person(photoImage: UIImage(named: "image10")!, name: "Stacy Cruze", profession: .frontend, countryImage: UIImage(named: "f10")!)]
    ]
}


import UIKit

class ExercisesTableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if StorageExercises.exercisesImages.isEmpty && StorageExercises.exercisesNames.isEmpty {
            StorageExercises.getExercises()
        }
        tableView.backgroundColor = .gray
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return StorageExercises.exercisesImages.count
    }
    
    override  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 138
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let cell: UITableViewCell = {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "") else {
                return UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: nil)
            }
            return cell
        }()
        
        cell.backgroundColor = .gray
        cell.selectionStyle = .none
        
        
        let label = UILabel(frame: CGRect(x: 70, y: 70, width: cell.frame.width, height: 36))
        label.textColor = .white
        label.font = UIFont(name: "Verdana", size: 36)
        label.text = StorageExercises.exercisesNames[indexPath.row]
        cell.addSubview(label)
        
        cell.imageView?.image = StorageExercises.exercisesImages[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let someVC = storyboard.instantiateViewController(withIdentifier: "someVC") as! SomeExercisesTableViewController
        
        
        switch indexPath.row {
        case 0:
            self.present(someVC, animated: true, completion: nil)
            SomeExercises.getSomeExercises(SomeExercises.shoulders)
            someVC.someExercises = SomeExercises.shoulders
            
        case 1:
            self.present(someVC, animated: true, completion: nil)
            SomeExercises.getSomeExercises(SomeExercises.chest)
            someVC.someExercises = SomeExercises.chest
            
//        case 2:
//            self.present(someVC, animated: true, completion: nil)
//            someVC.someExercises = C.arr
//
//        case 3:
//            self.present(someVC, animated: true, completion: nil)
//            someVC.someExercises = A.arr
        default:
            print("error")
        }
    }
    
}



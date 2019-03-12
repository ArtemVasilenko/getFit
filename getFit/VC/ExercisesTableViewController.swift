
import UIKit

class ExercisesTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        StorageExercises.getExercises()
        tableView.reloadInputViews()

    }
    
    override func viewWillAppear(_ animated: Bool) {
//        tableView.reloadData()
//        tableView.reloadInputViews()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return test.count
        return StorageExercises.exercisesImages.count
    }
    
    override  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 138
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        
        
        //cell.textLabel?.lineBreakMode = .byCharWrapping
        let label = UILabel(frame: CGRect(x: 70, y: 70, width: cell.frame.width, height: 36))
        label.textColor = .red
        label.tintColor = .black
        label.font = UIFont(name: "Verdana", size: 36)
        label.text = StorageExercises.exercisesNames[indexPath.row]
//        cell.addSubview(label)
        //StorageExercises.exercisesNames.removeAll()
//        tableView.reloadData()
        
//        cell.
        
        
        
       // cell.textLabel?.text = Array(StorageExercises.exercises.keys)[indexPath.row]
//        cell.imageView?.image = Array(StorageExercises.exercises.values)[indexPath.row]
        cell.imageView?.image = StorageExercises.exercisesImages[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let someVC = storyboard.instantiateViewController(withIdentifier: "someVC") as! SomeExercisesTableViewController
        
        
        switch indexPath.row {
        case 0:
            self.present(someVC, animated: true, completion: nil)
            someVC.data = A.arr

        case 1:
            self.present(someVC, animated: true, completion: nil)
            someVC.data = B.arr
            
        case 2:
            self.present(someVC, animated: true, completion: nil)
            someVC.data = C.arr
            
        case 3:
            self.present(someVC, animated: true, completion: nil)
            someVC.data = A.arr
        default:
            print("error")
        }
    }
    
    
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

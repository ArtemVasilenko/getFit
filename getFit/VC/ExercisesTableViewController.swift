
import UIKit

class ExercisesTableViewController: UITableViewController {
    
    var test = ["A", "B", "C", "D"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return test.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = test[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let someVC = storyboard.instantiateViewController(withIdentifier: "someVC") as! SomeExercisesTableViewController
        
        guard let numberOfCell = tableView.indexPathForSelectedRow?[indexPath.row] else { return }
        
        
        switch numberOfCell {
        case 0:
            self.present(someVC, animated: true, completion: nil)
            someVC.data = A.arr
            print("numberOfCell \(numberOfCell)")
            
        case 1:
            self.present(someVC, animated: true, completion: nil)
            someVC.data = B.arr
            print("numberOfCell \(numberOfCell)")
            
        case 2:
//            self.present(someVC, animated: true, completion: nil)
//            someVC.data = C.arr
            print("numberOfCell \(numberOfCell)")
            
        case 3:
            self.present(someVC, animated: true, completion: nil)
            someVC.data = A.arr
            print("numberOfCell \(numberOfCell)")
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

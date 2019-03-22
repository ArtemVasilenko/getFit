
import UIKit

class SomeExercisesTableViewController: UITableViewController {
    
    var someExercises = [""]

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return someExercises.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = someExercises[indexPath.row]

        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let choiseExercise = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ChoiseExercise") as! ChoiseViewController
        
        let choiseInfo = UILabel()
        choiseInfo.frame = CGRect(x: 40, y: 40, width: 200, height: 100)
        choiseInfo.text = "test"
        choiseExercise.view.backgroundColor = .red
        choiseInfo.center = choiseExercise.view.center
        choiseExercise.view.addSubview(choiseInfo)
        
        
        switch indexPath.row {
        case 0:
            self.present(choiseExercise, animated: true, completion: nil)
            choiseInfo.text = someExercises[indexPath.row]
            
        case 1:
            self.present(choiseExercise, animated: true, completion: nil)
            choiseInfo.text = someExercises[indexPath.row]
        
            
        default:
            print("error")
        }
        
        
    }

}



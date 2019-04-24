
import UIKit

class TableViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var array = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        array = ["Super"]
    }
}

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "textCell", for: indexPath)
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }
}

extension TableViewController: UITableViewDelegate {
    
}



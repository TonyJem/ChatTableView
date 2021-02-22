import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    

    @IBOutlet weak var mainTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "RegularCell", bundle: nil)
        mainTable.register(nib, forCellReuseIdentifier: "RegularCell")
        mainTable.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RegularCell") as! RegularCell
        return cell
    }
}

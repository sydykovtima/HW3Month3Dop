//
//  ViewController.swift
//  еуые
//
//  Created by Mac on 12/12/2022.
//

import UIKit

class ViewController: UIViewController  {
    
    @IBOutlet weak var Image: UITableViewCell!
    @IBOutlet weak var dfaadf: UITableViewCell!
    @IBOutlet weak var ZametkaTableView: UITableView!
    var zametki:  [String ] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ZametkaTableView.register( UITableViewCell.self, forCellReuseIdentifier: "zametka_cell")
        title = "Заметки"
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(rightBarButtonTap))
        
    }
    @objc func rightBarButtonTap() {
        let alert = UIAlertController(title: "New zametrki", message: "", preferredStyle: .alert)
        present(alert, animated: true, completion: nil)
    }
}
        extension ViewController: UITableViewDataSource {
            func tableView(_ tableView: UITableView, numberOfRowsInSection sections: Int) -> Int{
                return zametki.count
            }
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = tableView.dequeueReusableCell(withIdentifier: "zametka_cell", for: indexPath)
                cell.textLabel?.text = zametki[indexPath.row]
                
                return cell
            }
}



//
//  ViewController.swift
//  lesson3Month3
//
//  Created by Mac on 28/12/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var namesTableView: UITableView!
    var names:[String] = ["Temirlan", "Dastan", "Kamila", "Aziza", "Gulkayir", "Bermet"]
    var numbers:[String] = ["070324324", "099943234", "070373234","0504253234", "0777324324", "0999923423"]
    
 
    
    var addButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //        var person = Person(firstName: "Ivan", lastName: "Dosy", age: 19)
        //        person.printFullInfo()
        
        //        person.printFullInfo(name: <#T##String#>, lastname: <#T##String#>)
        
        //        namesTableView.dataSource = self
        namesTableView.delegate = self
        namesTableView.register(UITableViewCell.self, forCellReuseIdentifier: "name_cell")
        view.addSubview(addButton)
        addButton.layer.cornerRadius = 80 / 2
        addButton.setTitle("+", for: .normal)
        addButton.backgroundColor = .blue
        addButton.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        addButton.addTarget(self, action: #selector(addButtonTap), for: .touchUpInside)
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        addButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        addButton.heightAnchor.constraint(equalToConstant: 80).isActive = true
        addButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        //        var student = GeekTechStudents(firstName: "TIma", lastName: "Sydykov", age: 18, course: <#Int#>)
        //        var student1 = GeekTechStudents(firstName: "Dosya", lastName: "Tsshtanaliev", age: 18, course: <#Int#>)
        //        var student2 = GeekTechStudents(firstName: "Karim", lastName: "Karimov", age: 18, course: <#Int#>)
        ////        var persons = [student, student1, student2]
        //        let  persons:[]
        //        for i in persons {
        //            i.printFullInfo()
    }
    
    
    
    
    @objc func addButtonTap() {
        names.insert("Nurmuhammed", at: 0)
        namesTableView.reloadData()
        print(names)
    }
}
extension ViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell()
        let cell = tableView.dequeueReusableCell(withIdentifier: "name_cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
//        print(indexPath.row)
//        names[indexPath]
        return cell
    }
}
extension ViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(names[indexPath.row])
        let secondVc = storyboard?.instantiateViewController(withIdentifier: "second_vc") as! ViewController2
        secondVc.info = names[indexPath.row] as! String
        secondVc.num = numbers[indexPath.row] as! String
        self.navigationController?.pushViewController(secondVc, animated: true)
    }
}



















//class Person {
//    var firstName:String
//    var lastName:String
//    var age:Int
//    var course:Int
//    init(firstName: String, lastName: String, age: Int, course:Int) {
//        self.firstName = firstName
//        self.lastName = lastName
//        self.age = age
//        self.course = course
//    }
//    func printName(){
//        print(firstName)
//
//    }
//    func printLastName() {
//        print(lastName)
//
//    }
//    func printAge() {
//        print(age)
//
//    }
//}
//
//class GeekTech:Person{
//
//}
//
//
//
//extension GeekTech {
//    func printFullInfo(){
//        print("name: \(firstName) lastname \(lastName), age - \(age)")
//    }
//    func  printFullInfo(name:String, lastname:String) {
//        print("name: \(firstName) lastname \(lastName)")
//
//    }
//}
//
//
//class GeekTechStudents:GeekTech{
//
//}

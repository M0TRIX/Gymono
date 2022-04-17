//
//  ViewController.swift
//  HomeTaskForPayback
//
//  Created by Ali Asadi on 1/16/1401 AP.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var tableView:UITableView!
    
    var mainViewModel: MainViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainViewModel = MainViewModel(context: self)
    }
    
    func getListOfExersices(){
        mainViewModel?.getExersises(complition: {[weak self] _ in
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        })
    }
}

extension MainViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.mainViewModel?.exerciseList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "exersiceTableViewCell",for:indexPath) as! ExersiceTableViewCell
        cell.currentController = self
        cell.bind(object: self.mainViewModel?.exerciseList?.results?[indexPath.row] ?? "")
        return cell
        
    }
}

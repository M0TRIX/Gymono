//
//  ExersiceDetialViewController.swift
//  Gymono
//
//  Created by Ali Asadi on 1/29/1401 AP.
//

import UIKit

class ExerciseDetialViewController: BaseViewController {
    
    @IBOutlet weak var exersiceTitle: UILabel!
    
    var exercisesInfoList:ExercisesInfo?
    
    static func createInstance()->ExerciseDetialViewController{
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "ExerciseDetialViewController") as! ExerciseDetialViewController
        return newViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exersiceTitle.text = self.exercisesInfoList?.name
        self.collectionView.reloadData()
    }
}

extension ExerciseDetialViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.exercisesInfoList?.variations?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension ExerciseDetialViewController:UICollectionViewDataSource,UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let imageCount = self.exercisesInfoList?.images?.count ?? 0
        return imageCount < 1 ? 1 : imageCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let imageCell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as? ExersiceDetailCollection
        if ((self.exercisesInfoList?.images?.count ?? 0) != 0) {
            imageCell?.bind(object: self.exercisesInfoList?.images?[indexPath.row])
        }else{
            imageCell?.exersiceImage.image = UIImage(named: "placeholder")
        }
        
        return imageCell ?? ExersiceDetailCollection()
    }
    
    
    
}

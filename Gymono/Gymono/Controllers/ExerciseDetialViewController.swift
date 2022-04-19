//
//  ExersiceDetialViewController.swift
//  Gymono
//
//  Created by Ali Asadi on 1/29/1401 AP.
//

import UIKit

class ExerciseDetialViewController: BaseViewController {
    
    @IBOutlet weak var exersiceTitle: UILabel!
    
    @IBOutlet weak var loading: UIActivityIndicatorView!
    
    var exercisesInfoList:ExercisesInfo?
    var exercisesViewModel:ExersiceDetailViewModel?

    static func createInstance()->ExerciseDetialViewController{
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "ExerciseDetialViewController") as! ExerciseDetialViewController
        return newViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.tableFooterView = UIView()
        exersiceTitle.text = self.exercisesInfoList?.name
        getAllExersises()
        self.collectionView.reloadData()
    }
    
    
    func getAllExersises(){
        self.loading.startAnimating()
        exercisesViewModel?.getAllExersises(complition: { [weak self] _ in
            self?.exercisesViewModel?.findVariations(exercisesInfoList: (self?.exercisesInfoList)!)
            DispatchQueue.main.async {
                self?.loading.stopAnimating()
                self?.loading.isHidden = true
                self?.tableView.reloadData()
            }
        })
        
    }
}

extension ExerciseDetialViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.exercisesViewModel?.filteredExerciseList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let variationCell = tableView.dequeueReusableCell(withIdentifier: "variationCell", for: indexPath) as! VariationsTableViewCell
        variationCell.currentController = self
        variationCell.bind(object: self.exercisesViewModel?.filteredExerciseList?[indexPath.row])
        return variationCell
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

//
//  ViewController.swift
//  UICollectionView_UIKit
//
//  Created by Mfercons on 6/11/23.
//

import UIKit

struct Device {
    let title: String
    let imageName: String
}

let house = [
    Device(title: "iPhone", imageName: "iphone"),
    Device(title: "MacBook", imageName: "macpro.gen3"),
    Device(title: "Mac mini", imageName: "macmini"),
    Device(title: "Apple TV", imageName: "appletv"),
    Device(title: "Apple Watch", imageName: "applewatch"),
    Device(title: "MacBook", imageName: "macpro.gen3"),
    Device(title: "Mac mini", imageName: "macmini"),
    Device(title: "Pantallas", imageName: "display.2"),
    Device(title: "iPad", imageName: "ipad"),
    Device(title: "Airpods", imageName: "airpods"),
    Device(title: "Laptop", imageName: "laptopcomputer")
]

class ViewController: UIViewController, UICollectionViewDataSource {

    private let collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = .init(width: 200, height: 50)
        layout.scrollDirection = .horizontal  //Por defecto es horizontal
        layout.minimumLineSpacing = 40       //Para ponerle espacios
        layout.minimumInteritemSpacing = 40 //Para poner espacios entre items
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionView.dataSource = self
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
        view.backgroundColor = .secondarySystemBackground
        view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
        ])
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        house.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.backgroundColor = .secondarySystemFill
        
        // De esta forma ponemos en el CollectionView la información del array house
        let model = house[indexPath.row]
        
        cell.configure(model: model)
        
        
        return cell
    }
    
}


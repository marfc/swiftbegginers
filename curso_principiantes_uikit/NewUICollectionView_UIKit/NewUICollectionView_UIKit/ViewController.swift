//
//  ViewController.swift
//  NewUICollectionView_UIKit
//
//  Created by Mfercons on 7/11/23.
//

import UIKit

struct Device: Hashable {
    let id: UUID = UUID()
    let title: String
    let imageName: String
}

let home = [
    Device(title: "iPhone", imageName: "iphone"),
    Device(title: "MacBook", imageName: "macpro.gen3"),
    Device(title: "Mac mini", imageName: "macmini"),
    Device(title: "Apple TV", imageName: "appletv"),
    Device(title: "Apple Watch", imageName: "applewatch"),
]

let office = [
    Device(title: "MacBook", imageName: "macpro.gen3"),
    Device(title: "Mac mini", imageName: "macmini"),
    Device(title: "Pantallas", imageName: "display.2"),
    Device(title: "iPad", imageName: "ipad"),
    Device(title: "Airpods", imageName: "airpods"),
    Device(title: "Laptop", imageName: "laptopcomputer")
]

class ViewController: UIViewController {

    lazy var collectionView: UICollectionView = {
        let configuration = UICollectionLayoutListConfiguration(appearance: .insetGrouped)
        let layout = UICollectionViewCompositionalLayout.list(using: configuration)
         
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectionView
    }()
    
    lazy var datasource: UICollectionViewDiffableDataSource<Int, Device> = {
        let deviceCell = UICollectionView.CellRegistration<UICollectionViewListCell, Device> {
            cell, indexPath, model in
            var listContentConfiguration = UIListContentConfiguration.cell()
            listContentConfiguration.text = model.title
            listContentConfiguration.image = UIImage(systemName: model.imageName)
            cell.contentConfiguration = listContentConfiguration
        }
        let datasource = UICollectionViewDiffableDataSource<Int, Device>(collectionView: collectionView) {
            collectionView, indexPath, model in
            return collectionView.dequeueConfiguredReusableCell(using: deviceCell, for: indexPath, item: model)
        }
        return datasource
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionView.backgroundColor = .secondarySystemBackground
        view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
        ])
        
        var snapshot = datasource.snapshot()
        snapshot.appendSections([0, 1])
        snapshot.appendItems(home, toSection: 0)
        snapshot.appendItems(office, toSection: 1)
        datasource.apply(snapshot)
        
        // Después de dos segundos abierta la app, se añadirán dos nuevos dispositivos
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            snapshot.appendItems([.init(title: "MacBook", imageName: "macpro.gen3")], toSection: 0)
            snapshot.appendItems([.init(title: "Airpods", imageName: "airpods")], toSection: 0)
            self.datasource.apply(snapshot)
        }
    }


}


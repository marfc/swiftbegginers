//
//  OnBoardingView.swift
//  Autolayout_UIKit
//
//  Created by Mfercons on 2/11/23.
//

import Foundation
import UIKit

final class OnBoardingView: UIView {
    //Creamos la imagen, es un closure
    private let onBoardingImageView: UIImageView = {
        let imageView = UIImageView()           // creamos la instancia
        imageView.contentMode = .scaleAspectFit // cambiamos el aspect ratio de la imagen
        imageView.image = UIImage(named: "apple_logo") // asignamos una imagen a nuestro imageView
        //La imagen escogida es muy grande, así que para ajustar su tamaño:
        imageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        // esta línea nos permite añadir constraints por código
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let bonitoLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Aprende a desarrollar en Swift"
        label.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var skipOnBoardingButton: UIButton = {
        var config = UIButton.Configuration.filled()
        config.title = "Pulsa para continuar"
        config.subtitle = "Yay"
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(showMessage), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }
    
    //Código mandatory, lo hace XCode
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setup() {
        addSubviews()
        configureConstraints()
    }
    
    private func addSubviews(){
        //Para añadir la imageView creada:
        //view.addSubview(onBoardingImageView)
        
        //Para añadir el label creado:
        //view.addSubview(bonitoLabel)
        
        //Para añadir las views a la vez sin repetir código:
        [onBoardingImageView, bonitoLabel, skipOnBoardingButton].forEach(addSubview)
    }
    
    private func configureConstraints(){
        //Ahora mismo, si ejecutáramos el código, no aparecería la imagen, porque no hemos añadido los constraints
        //Vamos a hacerlo:
        NSLayoutConstraint.activate([
            //Ponemos que la imagen quede al centro del eje X, al igual que el centro X de la vista padre
            //onBoardingImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            //y lo mismo para el eje Y
            //onBoardingImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            
            //si queremos ponerla en el top, hay que tener en cuenta el notch por lo que lo podemos hacer bien si en
            //equalTo ponemos la siguiente opción:
            //onBoardingImageView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            
            skipOnBoardingButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            skipOnBoardingButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            //Ponel label con constraints respecto al botón
            bonitoLabel.bottomAnchor.constraint(equalTo: skipOnBoardingButton.topAnchor, constant: -42),
            bonitoLabel.leadingAnchor.constraint(equalTo: leadingAnchor),   //lado izquierdo
            bonitoLabel.trailingAnchor.constraint(equalTo: trailingAnchor), //lado derecho
            bonitoLabel.centerXAnchor.constraint(equalTo: centerXAnchor),   //centrado en X

            //Y ponemos la imagen con respecto al label
            onBoardingImageView.bottomAnchor.constraint(equalTo: bonitoLabel.topAnchor, constant: -32),
            onBoardingImageView.leadingAnchor.constraint(equalTo: leadingAnchor),   //lado izquierdo
            onBoardingImageView.trailingAnchor.constraint(equalTo: trailingAnchor), //lado derecho
            
        ])
    }
    
    @objc func showMessage(){
        print("Aprendiendo...")
    }
}

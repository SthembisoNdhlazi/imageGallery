//
//  DetailViewController.swift
//  imageGalleryPractice
//
//  Created by IACD-020 on 2022/04/25.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    
    var totalImages = 0
    var selectedImageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        title = "pic \(selectedImageNumber) of \(totalImages)"
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage{
            imageView.image = UIImage(named: imageToLoad)
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

    
  
}

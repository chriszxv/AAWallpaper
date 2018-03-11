//
//  ViewController.swift
//  AAWallpaper
//
//  Created by Chris So on 16/1/2018.
//  Copyright © 2018 AAStocks. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxGesture

class DeviceViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var systemVersionLabel: UILabel!
    @IBOutlet weak var deviceModelLabel: UILabel!
    
    let deviceViewModel: DeviceViewModel = DeviceViewModel()
    let disposeBag = DisposeBag()
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.deviceViewModel.name
            .asObservable()
            .bind(to: self.nameLabel.rx.text)
            .disposed(by: disposeBag)
        
        self.deviceViewModel.system
            .asObservable()
            .bind(to: self.systemVersionLabel.rx.text)
            .disposed(by: disposeBag)
        
        self.deviceViewModel.model
            .asObservable()
            .bind(to: self.deviceModelLabel.rx.text)
            .disposed(by: disposeBag)
        
        self.view.rx.longPressGesture()
            .when(.began)
            .subscribe(onNext: { _ in
                guard let image = self.captureImage(view:self.view) else {
                    self.presentAlert(title: "Error", message: "Cannot save this screenshot.")
                    return
                }
                self.savedImageToAlbum(image: image)
            })
            .disposed(by: disposeBag)
    }
    
    func captureImage(view: UIView) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(view.bounds.size, view.isOpaque, 0.0)
        view.drawHierarchy(in: view.bounds, afterScreenUpdates: false)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        return image
    }
    
    func savedImageToAlbum(image: UIImage) {
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(image(_:didFinishSavingWithError:contextInfo:)), nil)
    }
    
    func presentAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alertController, animated: true)
    }
    
    @objc func image(_ image: UIImage, didFinishSavingWithError error: NSError?, contextInfo: UnsafeRawPointer) {
        if let error = error {
            self.presentAlert(title: "Error", message: error.localizedDescription)
        } else {
            self.presentAlert(title: "Saved", message: "This screenshot has been saved to your photos.")
        }
    }
    
}


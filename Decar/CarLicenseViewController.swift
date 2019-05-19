//
//  CarLicenseViewController.swift
//  Decar
//
//  Created by Tzu-Yen Huang on 2019/5/19.
//  Copyright © 2019年 Tzu-Yen Huang. All rights reserved.
//

import UIKit

class CarLicenseViewController: GetPictureViewController {
    @IBOutlet var licenseImage: UIImageView!
    
    /// 取得選取後的照片
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil) // 關掉
        self.licenseImage.image = info[.editedImage] as? UIImage // 從Dictionary取出原始圖檔
    }
    
    @IBAction func takePhotoHandler(_ sender: Any) {
        callGetPhoneWithKind(1)
    }
    
    @IBAction func getAlbumHandler(_ sender: Any) {
        callGetPhoneWithKind(0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

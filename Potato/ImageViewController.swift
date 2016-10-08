//
//  ImageViewController.swift
//  Potato
//
//  Created by t-yoko on 2016/10/08.
//  Copyright © 2016年 TakayoshiYokoyama. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cameraTapped(){
        
        //UIImagePickeControllerを使うための定数
        let pickerController = UIImagePickerController()
        //UIImagePickerControllerのデリゲートメソッドを使用する設定
        pickerController.delegate = self
        
        //UIActionSheetを使うための定数を作成
        let sheet = UIAlertController(title: nil, message: nil, preferredStyle: .ActionSheet)
        
        //3つのアクションボタンの定数を作成
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler:  {
            (action) -> Void in
        })
        let cameraAction = UIAlertAction(title: "Camera", style: .Default, handler: {
            (action) -> Void in
            pickerController.sourceType = .Camera
            self.presentViewController(pickerController, animated: true, completion: nil)
        })
        let libraryAction = UIAlertAction(title: "Library", style: .Default, handler: {
            (action) -> Void in
            pickerController.sourceType = .PhotoLibrary
            self.presentViewController(pickerController, animated: true, completion: nil)
        })
        
        //アクションシートにアクションボタンを追加
        sheet.addAction(cancelAction)
        sheet.addAction(cameraAction)
        sheet.addAction(libraryAction)
        
        //アクションシートを表示
        self.presentViewController(sheet, animated: true, completion: nil)
    }

}

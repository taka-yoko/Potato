//
//  StampViewController.swift
//  Potato
//
//  Created by t-yoko on 2016/10/08.
//  Copyright © 2016年 TakayoshiYokoyama. All rights reserved.
//

import UIKit

class StampViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var imageArray:[UIImage] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 1...6 {
            imageArray.append(UIImage(named: "\(i).png")!)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //コレクションビューのアイテム数を設定
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    //コレクションビューのセルを設定
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        //UICollectionViewCellを使うための変数を作成
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath)
        //セルの中の画像を表示するImageViewのタグを指定
        let imageView = cell.viewWithTag(1) as! UIImageView
        //セルの中のImageViewに配列の中の画像データを表示
        imageView.image = imageArray[indexPath.row]
        
        return cell
    }
    
    

}

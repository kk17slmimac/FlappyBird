//
//  ViewController.swift
//  FlappyBird
//
//  Created by 久保田慧 on 2018/11/10.
//  Copyright © 2018年 KeiKubota. All rights reserved.
//

/*
 【課題：拡張機能】
 ・ゲーム中にアイテムを出現させてください。
 ・ゲーム上部にアイテムスコアを追加してください。
 ・鳥がアイテムに衝突(取得)した時にアイテムを消し、アイテムスコアを+1してください。
 ・アイテム取得音を出してください。

 */




import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // SKViewに型を変換する
        let skView = self.view as! SKView
        
        // FPSを表示する
        skView.showsFPS = true
        
        // ノードの数を表示する
        skView.showsNodeCount = true
        
        // ビューと同じサイズでシーンを作成する
        let scene = GameScene(size:skView.frame.size)
        
        // ビューにシーンを表示する
        skView.presentScene(scene)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // ステータスバーを消す --- ここから ---
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    } // --- ここまで追加 ---

}


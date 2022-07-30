//
//  ViewController.swift
//  WordsGame
//
//  Created by ALEKSEY SUSLOV on 29.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var wordLabel: UILabel!
    
    private var aliasGameManager = AliasGameManager.getManagerWith(AliasWordsPack.getAliasWordsCategoriesJSON()[1])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let _ = AliasDataManager.fetchData()
        
        updateUI()
    }

    @IBAction func rightButtonPressed() {
        aliasGameManager.scoreUp()
        updateUI()
    }
    
    @IBAction func skipButtonPressed() {
        aliasGameManager.scoreDown()
        updateUI()
    }
    
    private func updateUI() {
        scoreLabel.text = String(aliasGameManager.score)
        wordLabel.text = aliasGameManager.getWord()
    }
}


//
//  ViewController.swift
//  RSPLS
//
//  Created by daniel on 11/13/19.
//  Copyright © 2019 SAS. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //-
    
    var backgroundMusic: AVAudioPlayer!
    
    //-
    
    @IBOutlet weak var TrophyRoomBackground: UIImageView!
    
    @IBOutlet weak var TrophyRoomCoins: UILabel!
    @IBOutlet weak var TrophyRoom: UILabel!
    @IBOutlet weak var TrophySmall: UIImageView!
    @IBOutlet weak var TrophySmallDescription: UILabel!
    @IBOutlet weak var TrophyMediumDescription: UILabel!
    @IBOutlet weak var TrophyLargeDescription: UILabel!
    @IBOutlet weak var TrophyMedium: UIImageView!
    @IBOutlet weak var TrophyLarge: UIImageView!
    
    @IBOutlet weak var TrophySmallNumber: UILabel!
    @IBOutlet weak var TrophyMediumNumber: UILabel!
    @IBOutlet weak var TrophyLargeNumber: UILabel!
    
    @IBOutlet weak var BackButton: UIButton!
    
    @IBOutlet weak var TrophySmallPurchaseButton: UIButton!
    
    @IBOutlet weak var TrophyMediumPurchaseButton: UIButton!
    
    @IBOutlet weak var TrophyLargePurchaseButton: UIButton!
    
    @IBOutlet weak var TrophySmallSellButton: UIButton!
    
    @IBOutlet weak var TrophyMediumSellButton: UIButton!
    @IBOutlet weak var TrophyLargeSellButton: UIButton!
    
    @IBOutlet weak var TrophySmallPurchasePrice: UILabel!
    
    @IBOutlet weak var TrophyMediumPurchasePrice: UILabel!
    
    @IBOutlet weak var TrophyLargePurchasePrice: UILabel!
    
    @IBOutlet weak var TrophySmallSellPrice: UILabel!
    
    @IBOutlet weak var TrophyMediumSellPrice: UILabel!
    
    @IBOutlet weak var TrophyLargeSellPrice: UILabel!
    
    func hideTrophyRoom() {
        TrophyRoomBackground.isHidden = true
        TrophyRoomCoins.isHidden = true
        TrophyRoom.isHidden = true
        TrophySmall.isHidden = true
        TrophySmallDescription.isHidden = true
        TrophyMediumDescription.isHidden = true
        TrophyLargeDescription.isHidden = true
        TrophyMedium.isHidden = true
        TrophyLarge.isHidden = true
        TrophySmallNumber.isHidden = true
        TrophyMediumNumber.isHidden = true
        TrophyLargeNumber.isHidden = true
        BackButton.isHidden = true
        TrophySmallPurchaseButton.isHidden = true
        TrophyMediumPurchaseButton.isHidden = true
        TrophyLargePurchaseButton.isHidden = true
        TrophySmallSellButton.isHidden = true
        TrophyMediumSellButton.isHidden = true
        TrophyLargeSellButton.isHidden = true
        TrophySmallPurchasePrice.isHidden = true
        TrophyMediumPurchasePrice.isHidden = true
        TrophyLargePurchasePrice.isHidden = true
        TrophySmallSellPrice.isHidden = true
        TrophyMediumSellPrice.isHidden = true
        TrophyLargeSellPrice.isHidden = true
        
        TrophySmallPurchaseButton.isEnabled = false
        TrophyMediumPurchaseButton.isEnabled = false
        TrophyLargePurchaseButton.isEnabled = false
        TrophySmallSellButton.isEnabled = false
        TrophyMediumSellButton.isEnabled = false
        TrophyLargeSellButton.isEnabled = false
        BackButton.isEnabled = false
    }
    
    func showTrophyRoom() {
        TrophyRoomBackground.isHidden = false
        TrophyRoomCoins.isHidden = false
        TrophyRoom.isHidden = false
        TrophySmall.isHidden = false
        TrophySmallDescription.isHidden = false
        TrophyMediumDescription.isHidden = false
        TrophyLargeDescription.isHidden = false
        TrophyMedium.isHidden = false
        TrophyLarge.isHidden = false
        TrophySmallNumber.isHidden = false
        TrophyMediumNumber.isHidden = false
        TrophyLargeNumber.isHidden = false
        BackButton.isHidden = false
        TrophySmallPurchaseButton.isHidden = false
        TrophyMediumPurchaseButton.isHidden = false
        TrophyLargePurchaseButton.isHidden = false
        TrophySmallSellButton.isHidden = false
        TrophyMediumSellButton.isHidden = false
        TrophyLargeSellButton.isHidden = false
        TrophySmallPurchasePrice.isHidden = false
        TrophyMediumPurchasePrice.isHidden = false
        TrophyLargePurchasePrice.isHidden = false
        TrophySmallSellPrice.isHidden = false
        TrophyMediumSellPrice.isHidden = false
        TrophyLargeSellPrice.isHidden = false
        
        TrophySmallPurchaseButton.isEnabled = true
        TrophyMediumPurchaseButton.isEnabled = true
        TrophyLargePurchaseButton.isEnabled = true
        TrophySmallSellButton.isEnabled = true
        TrophyMediumSellButton.isEnabled = true
        TrophyLargeSellButton.isEnabled = true
        BackButton.isEnabled = true
    }
    
    @IBAction func BackButtonPressed(_ sender: Any) {
        updateTRCoinLabels()
        hideTrophyRoom()
    }
    
    @IBAction func storeButtonPressed(_ sender: Any) {
        updateTRCoinLabels()
        showTrophyRoom()
    }
    
    @IBAction func TrophySmallPurchaseButtonPressed(_ sender: Any) {
        if coinCount >= 10 {
        coinCount -= 10
        trophySmallCount += 1
        TrophySmallNumber.text = "You own: \(trophySmallCount)"
        updateTRCoinLabels()
        }
    }
    
    @IBAction func TrophyMediumPurchaseButtonPressed(_ sender: Any) {
        if coinCount >= 25 {
        coinCount -= 25
        trophyMediumCount += 1
        TrophyMediumNumber.text = "You own: \(trophyMediumCount)"
        updateTRCoinLabels()
        }
    }
    
    @IBAction func TrophyLargePurchaseButtonPressed(_ sender: Any) {
        if coinCount >= 50 {
        coinCount -= 50
        trophyLargeCount += 1
        TrophyLargeNumber.text = "You own: \(trophyLargeCount)"
        updateTRCoinLabels()
        }
    }
    
    //
    
    func updateTRCoinLabels() {
        TrophyRoomCoins.text = "Coins: \(coinCount)"
        coinLabel.text = "Coins: \(coinCount)"
    }
    
    @IBAction func TrophySmallSellButtonPressed(_ sender: Any) {
        if trophySmallCount > 0 {
        coinCount += 4
        trophySmallCount -= 1
        TrophySmallNumber.text = "You own: \(trophySmallCount)"
        updateTRCoinLabels()
        }
    }
    
    @IBAction func TrophyMediumSellButtonPressed(_ sender: Any) {
        if trophyMediumCount > 0 {
        coinCount += 15
        trophyMediumCount -= 1
        TrophyMediumNumber.text = "You own: \(trophyMediumCount)"
        updateTRCoinLabels()
        }
    }
    
    @IBAction func TrophyLargeSellButtonPressed(_ sender: Any) {
        if trophyLargeCount > 0 {
        coinCount += 40
        trophyLargeCount -= 1
        TrophyLargeNumber.text = "You own: \(trophyLargeCount)"
        updateTRCoinLabels()
        }
    }
    
    //-
    
    @IBOutlet weak var barrierView: UIImageView!
    
    @IBOutlet weak var bottomRedBar: UIImageView!
    
    @IBOutlet weak var bottomRedLabel: UILabel!
    
    @IBOutlet weak var horse: UIImageView!
    
    @IBOutlet weak var rodeoLabel: UILabel!
    
    @IBOutlet weak var coinLabel: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var storeButton: UIButton!
    

    @IBAction func startButtonPressed(_ sender: Any) {
        barrierView.isHidden = true
        horse.isHidden = true
        rodeoLabel.isHidden = true
        instructionsLabel.isHidden = true
        bottomRedBar.isHidden = true
        bottomRedLabel.isHidden = true
        startButton.isHidden = true
        startButton.isEnabled = false
    }
    
    @IBOutlet weak var instructionsLabel: UIStackView!
    @IBOutlet weak var instructionOne: UILabel!
    @IBOutlet weak var instructionTwo: UILabel!
    @IBOutlet weak var instructionThree: UILabel!
    @IBOutlet weak var instructionFour: UILabel!
    
    //-
    
    @IBOutlet weak var specialView: UIImageView!
    
    var game = GameState.start
    var gameCount:Int = 1
    var winCount:Int = 0
    var lossCount:Int = 0
    var drawCount:Int = 0
    var coinCount:Int = 0
    
    var trophySmallCount:Int = 0
    var trophyMediumCount:Int = 0
    var trophyLargeCount:Int = 0
    
    var previousStatusOne: GameState = GameState.lose
    var previousStatusTwo: GameState = GameState.lose
    var previousStatusThree: GameState = GameState.lose

    @IBOutlet weak var AppSignLabel: UILabel!
    
    @IBOutlet weak var GameStatusLabel: UILabel!
    
    @IBOutlet weak var Rock: UIButton!
    
    @IBOutlet weak var Spock: UIButton!
    
    @IBOutlet weak var Paper: UIButton!
    
    @IBOutlet weak var Lizard: UIButton!
    
    @IBOutlet weak var Scissors: UIButton!
    
    @IBOutlet weak var PlayAgainButton: UIButton!
    
    @IBOutlet weak var ResetScoreButton: UIButton!
    
    //-
    
    @IBOutlet weak var ComputerSignLabel: UILabel!

    @IBOutlet weak var ComputerChoseLabel: UILabel!
    
    @IBOutlet weak var HumanSignLabel: UILabel!
    
    @IBOutlet weak var YouChoseLabel: UILabel!
    
    @IBOutlet weak var EmojiStackView: UIStackView!
    
    @IBOutlet weak var drawCountLabel: UILabel!
    
    //-
    
    @IBOutlet weak var gameCountLabel: UILabel!
    
    @IBOutlet weak var WinCountLabel: UILabel!
    
    @IBOutlet weak var lossCountLabel: UILabel!
    
    //-
    
    @IBOutlet weak var numberOne: UILabel!
    
    @IBOutlet weak var numberTwo: UILabel!
    
    @IBOutlet weak var numberThree: UILabel!
    
    //-
    
    @IBAction func RockPressed(_ sender: Any) {
        play(Sign.rock)
        Rock.isHidden = false
        HumanSignLabel.text = Sign.rock.emoji
    }
    
    @IBAction func SpockPressed(_ sender: Any) {
        play(Sign.spock)
        Spock.isHidden = false
        HumanSignLabel.text = Sign.spock.emoji
    }
    
    @IBAction func PaperPressed(_ sender: Any) {
        play(Sign.paper)
        HumanSignLabel.text = Sign.paper.emoji
    }
    
    @IBAction func LizardPressed(_ sender: Any) {
        play(Sign.lizard)
        HumanSignLabel.text = Sign.lizard.emoji
    }
    
    @IBAction func ScissorsPressed(_ sender: Any) {
        play(Sign.scissors)
        HumanSignLabel.text = Sign.scissors.emoji
    }
    
    @IBAction func PlayAgainButtonPressed(_ sender: Any) {
        game = GameState.start
        gameCount += 1
        UpdateUI()
    }

    @IBAction func ResetScoreButtonPressed(_ sender: Any) {
        gameCount = 0
        winCount = 0
        drawCount = 0
        lossCount = 0
        gameCountLabel.text = "Out of \(gameCount) games.."
        WinCountLabel.text = "You've won: \(winCount) times!"
        drawCountLabel.text = "You've tied: \(drawCount) times!"
        lossCountLabel.text = "You've lost: \(lossCount) times!"
    }
    
    
    func UpdateUI() {
        gameCountLabel.text = "Out of \(gameCount) games.."
        if game == GameState.start {
            AppSignLabel.text = "🤠"
            GameStatusLabel.text = "Rock, Spock, Paper, Lizard, Scissors.."
            PlayAgainButton.isHidden = true
            Rock.isEnabled = true
            Spock.isEnabled = true
            Paper.isEnabled = true
            Lizard.isEnabled = true
            Scissors.isEnabled = true
            EmojiStackView.isHidden = false
            hideLabels()
            
            view.backgroundColor = UIColor.black
        }
            
        else if game == GameState.win {
            winStreak()
            GameStatusLabel.text = "You won!!"
            view.backgroundColor = UIColor.blue
            winCount += 1
            WinCountLabel.text = "You've won: \(winCount) times!"
            coinCount += 1
            coinLabel.text = "Coins: \(coinCount)"
            showLabels()
        }
            
        else if game == GameState.draw {
            winStreak()
            GameStatusLabel.text = "You tied.."
            view.backgroundColor = UIColor.brown
            drawCount += 1
            drawCountLabel.text = "You've tied: \(drawCount) times!"
            showLabels()
            
        }
                
        else if game == GameState.lose {
            winStreak()
            GameStatusLabel.text = "You lost.."
            view.backgroundColor = UIColor.purple
            lossCount += 1
            lossCountLabel.text = "You've lost: \(lossCount) times!"
            
            showLabels()
        }
    }
    
    func winStreak() {
        if game == GameState.win {
            if previousStatusOne != .win {
                previousStatusOne = .win
            }
            else if previousStatusTwo != .win {
                previousStatusTwo = .win
            }
            else if previousStatusThree != .win {
                previousStatusThree = .win
            }
            else {
            }
        }
        if game == GameState.draw {
            previousStatusOne = .draw
            previousStatusTwo = .draw
            previousStatusThree = .draw
            numberOne.textColor = UIColor.gray
            numberTwo.textColor = UIColor.gray
            numberThree.textColor = UIColor.gray
        }
        if game == GameState.lose {
            previousStatusOne = .lose
            previousStatusTwo = .lose
            previousStatusThree = .lose
            numberOne.textColor = UIColor.gray
            numberTwo.textColor = UIColor.gray
            numberThree.textColor = UIColor.gray
        }
        if previousStatusOne == .win {
            numberOne.textColor = UIColor.yellow
            if previousStatusTwo == .win {
                numberTwo.textColor = UIColor.yellow
                if previousStatusThree == .win {
                    coinCount += 4
                    numberThree.textColor = UIColor.yellow
                    specialView.isHidden = false
                }
            }
        }
        else {
            specialView.isHidden = true
        }
    }
    
    func hideLabels() {
        ComputerSignLabel.isHidden = true
        ComputerChoseLabel.isHidden = true
        YouChoseLabel.isHidden = true
        HumanSignLabel.isHidden = true
        WinCountLabel.isHidden = true
        drawCountLabel.isHidden = true
        lossCountLabel.isHidden = true
        gameCountLabel.isHidden = true
        ResetScoreButton.isHidden = true
    }
    
    func showLabels() {
        ComputerSignLabel.isHidden = false
        ComputerChoseLabel.isHidden = false
        YouChoseLabel.isHidden = false
        HumanSignLabel.isHidden = false
        WinCountLabel.isHidden = false
        drawCountLabel.isHidden = false
        lossCountLabel.isHidden = false
        gameCountLabel.isHidden = false
        ResetScoreButton.isHidden = false
    }
    
    func disableButtons() {
        Rock.isEnabled = false
        Spock.isEnabled = false
        Paper.isEnabled = false
        Lizard.isEnabled = false
        Scissors.isEnabled = false
        EmojiStackView.isHidden = true
    }
    
    func findComputerSign(_ computer: Int) -> Sign {
        let Signs = [Sign.rock, Sign.spock, Sign.paper, Sign.lizard, Sign.scissors]
        var theSign: Sign = Sign.rock
        for i in Signs {
            if i.rawValue == computer {
                theSign = i
            }
        }
        return theSign
    }

    func play(_ human:Sign) {
        
        let computerChoice = randomChoice.nextInt()
        let humanChoice = human.rawValue
    
        if (computerChoice - humanChoice + 5) % 5 == 0 {
            game = .draw
            AppSignLabel.text = "🧐"
            ComputerSignLabel.text = findComputerSign(computerChoice).emoji
        }
        else if (computerChoice - humanChoice + 5) % 5 < 3 {
            game = .lose
            AppSignLabel.text = "🥺"
            ComputerSignLabel.text = findComputerSign(computerChoice).emoji
        }
        else if (computerChoice - humanChoice + 5) % 5 > 2 {
            game = .win
            AppSignLabel.text = "🥳"
            ComputerSignLabel.text = findComputerSign(computerChoice).emoji
        }
        else {
            game = .start
            AppSignLabel.text = human.emoji
            
            
        }
        
        UpdateUI()
        PlayAgainButton.isHidden = false
        disableButtons()
    }
    
    let bgm = Bundle.main.path(forResource: "oldtown", ofType: ".mp3")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        UpdateUI()
        specialView.isHidden = true
        AppSignLabel.textColor = UIColor.white
        GameStatusLabel.textColor = UIColor.white
        ComputerSignLabel.textColor = UIColor.white
        ComputerChoseLabel.textColor = UIColor.white
        HumanSignLabel.textColor = UIColor.white
        YouChoseLabel.textColor = UIColor.white
        drawCountLabel.textColor = UIColor.white
        bottomRedLabel.textColor = UIColor.white
        bottomRedLabel.isHidden = false
        
        //-
        
        gameCountLabel.textColor = UIColor.white
        WinCountLabel.textColor = UIColor.white
        lossCountLabel.textColor = UIColor.white
        rodeoLabel.textColor = UIColor.white
        instructionOne.textColor = UIColor.white
        instructionTwo.textColor = UIColor.white
        instructionThree.textColor = UIColor.white
        instructionFour.textColor = UIColor.white
        
        //-
        
        hideTrophyRoom()
        
        //-
        
        do {
            backgroundMusic = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: bgm!))
        }
        catch {
        print("error")
        }
        
        backgroundMusic.play()
    }
}


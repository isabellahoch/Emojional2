//
//  SecondViewController.swift
//  Emojional
//
//  Created by Isabella Hochschild on 5/6/21.
//

import UIKit

class SecondViewController: UIViewController {
    
    let emojis = ["🌲": "forest", "🏝": "beach"]
    let emojiMessages = {}

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func forestClicked(_ sender: Any) {
//        let emojiSelection = (sender as AnyObject).titleLabel?.text as! String
//        print(emojiSelection)
//        let randomIndex = Int.random(in: 0..<(globalVars.customStruct.emojiMessages[emojiSelection]!.count))
//        let message = globalVars.customStruct.emojiMessages[emojiSelection]![randomIndex] as? String?
//        let alertController = UIAlertController(title: "Emojional This or That", message: message as! String, preferredStyle: UIAlertController.Style.alert)
        let alertController = UIAlertController(title: "Emojional This or That", message: globalVars.customStruct.emojiMessages[((sender as AnyObject).titleLabel?.text as! String)]![Int.random(in: 0..<(globalVars.customStruct.emojiMessages[(sender as AnyObject).titleLabel?.text as! String]!.count))] as! String, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Continue to next question!", style: UIAlertAction.Style.default, handler: afterAlert))
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func beachClicked(_ sender: Any) {
        let alertController = UIAlertController(title: "Emojional This or That", message: globalVars.customStruct.emojiMessages[((sender as AnyObject).titleLabel?.text as! String)]![Int.random(in: 0..<(globalVars.customStruct.emojiMessages[(sender as AnyObject).titleLabel?.text as! String]!.count))] as! String, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Continue to next question!", style: UIAlertAction.Style.default, handler: afterAlert))
        present(alertController, animated: true, completion: nil)
    }
    
    func afterAlert(alert:UIAlertAction!) {
        performSegue(withIdentifier: "secondToThird", sender: (Any).self)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

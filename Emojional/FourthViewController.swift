//
//  FourthViewController.swift
//  Emojional
//
//  Created by Isabella Hochschild on 5/6/21.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func runnerClicked(_ sender: Any) {
        let alertController = UIAlertController(title: "Emojional This or That", message: "you made the right choice😌 #KlossyRunClub🏃‍♀️💘", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Continue to end!", style: UIAlertAction.Style.default, handler: afterAlert))
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func bikeClicked(_ sender: Any) {
        let alertController = UIAlertController(title: "Emojional This or That", message: "don't forget your helmet!⛑ #SafetyFirst", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Continue to end!", style: UIAlertAction.Style.default, handler: afterAlert))
        present(alertController, animated: true, completion: nil)
    }
    
    func afterAlert(alert:UIAlertAction!) {
        performSegue(withIdentifier: "fourthToEnd", sender: (Any).self)
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

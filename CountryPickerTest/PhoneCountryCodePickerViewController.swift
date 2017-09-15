//
//  PhoneCountryCodePickerViewController.swift
//  Playlist
//
//  Created by Alex Tang on 9/14/17.
//  Copyright © 2017 Alex Tang All rights reserved.
//

import UIKit
import CountryPicker

class PhoneCountryCodePickerViewController: UIViewController {

    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var countryPicker: CountryPicker!
    @IBOutlet weak var doneButton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()

        let locale = NSLocale.autoupdatingCurrent
        let defaultCountryCode = locale.regionCode ?? "US"
        self.countryPicker.setCountry(defaultCountryCode)
        self.countryPicker.showPhoneNumbers = true
        self.countryPicker.countryPickerDelegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func doneButtonTapped(_ sender: Any) {
    }

    @IBAction func cancelButtonTapped(_ sender: Any) {
    }
}

extension PhoneCountryCodePickerViewController: CountryPickerDelegate {
    func countryPhoneCodePicker(_ picker: CountryPicker, didSelectCountryWithName name: String, countryCode: String, phoneCode: String, flag: UIImage) {
        NSLog ("country: \(name), countryCode: \(countryCode), phoneCode: \(phoneCode)")
    }
}

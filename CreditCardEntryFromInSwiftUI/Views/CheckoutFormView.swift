//
//  CheckoutFormView.swift
//  CreditCardEntryFromInSwiftUI
//
//  Created by Ramill Ibragimov on 07.01.2024.
//

import SwiftUI

struct CheckoutFormView: View {
    @Binding var creditCardInfo: CreditCardInfo
    @FocusState private var isCCVFocured: Bool
    
    let onCCVFocused: () -> Void
    
    var body: some View {
        Form {
            TextField("Cardholder's Name", text: $creditCardInfo.cardHolderName)
            TextField("Card Number", text: $creditCardInfo.cardNumber)
            TextField("Expiry Date", text: $creditCardInfo.expirationDate)
            TextField("CCV", text: $creditCardInfo.ccvCode)
                .focused($isCCVFocured)
        }.onChange(of: isCCVFocured) {
            onCCVFocused()
        }
    }
}

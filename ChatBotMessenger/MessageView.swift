import SwiftUI

struct MessageView: View {
    let message: String
    let marker: String
    
    var body: some View {
        if message.contains(marker) {
            let newMessage = message.replacingOccurrences(of: marker, with: "")
            
            HStack {
                Spacer()
                Text(newMessage)
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue.opacity(0.8))
                    .cornerRadius(10)
                    .padding(.horizontal, 16)
                    .padding(.bottom, 10)
            }
        } else {
            HStack {
                Text(message)
                    .padding()
                    .background(.gray.opacity(0.15))
                    .cornerRadius(10)
                    .padding(.horizontal, 16)
                    .padding(.bottom, 10)
                Spacer()
            }
        }
    }
}

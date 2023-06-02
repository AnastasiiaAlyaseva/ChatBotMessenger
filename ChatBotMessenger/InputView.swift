import SwiftUI

struct InputView: View {
    @ObservedObject var chatViewModel: ChatViewModel
    @State private var messageText = ""
    
    var body: some View {
        HStack{
            TextField("Type something", text: $messageText)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .onSubmit {
                    sendMessage()
                }
            
            Button {
                sendMessage()
            } label: {
                Image(systemName: "paperplane.fill")
            }
            .font(.system(size: 26))
            .padding(.horizontal,10)
        }
    }
    
    func sendMessage() {
        if messageText.isEmpty {
            return
        }
        
        chatViewModel.sendMessage(message: messageText)
        messageText = ""
    }
}


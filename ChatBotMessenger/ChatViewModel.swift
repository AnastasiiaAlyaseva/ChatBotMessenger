import SwiftUI

class ChatViewModel: ObservableObject {
    let marker = "[USER]"
    @Published var messeges: [String] = ["Welcome to Chat Bot 2.0"]
    private let bot = Bot()
    
    func sendMessage(message: String) {
        withAnimation{
            messeges.append(marker + message)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            withAnimation {
                let botResponse = self.bot.getBotResponse(message: message)
                self.messeges.append(botResponse)
            }
        }
    }
}

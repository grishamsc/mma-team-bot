import Foundation
import SlackKit

let botAPIToken = "xoxb-146667288803-jxzpsgJcAT1V4sHe7X8ttHVN"

class MMATeamBot {
    let client: SlackClient
    
    init(token: String) {
        client = SlackClient(apiToken: token)
        client.messageEventsDelegate = self
    }
}

extension MMATeamBot: MessageEventsDelegate {
    func received(_ message: Message, client: SlackClient) {
        
//        if let channel = message.channel, let text = message.text, let id = client.authenticatedUser?.id {
//            if id != message.user && message.user != nil {
//                client.webAPI.sendMessage(channel:channel, text: text, linkNames: true, success: {(response) in
//                }, failure: { (error) in
//                    print("Echobot failed to reply due to error:\(error)")
//                })
//            }
//        }
        
        if let channel = message.channel, let text = message.text, let id = client.authenticatedUser?.id {
            if id != message.user && message.user != nil {
                client.webAPI.sendMessage(channel: channel, text: "https://www.youtube.com/watch?v=to2mBD1P8I8", parse: SlackKit.SlackWebAPI.ParseMode.full, success: nil, failure: nil)
                
//                client.webAPI.sendMessage(channel:channel, text: text, linkNames: true, success: {(response) in
//                }, failure: { (error) in
//                    print("Echobot failed to reply due to error:\(error)")
//                })
            }
        }
        
//        https://www.youtube.com/watch?v=d7LXXSOrYoU
        
//        if let id = client.authenticatedUser?.id, let user = message.user {
//            print(id);
//            print(user);
//        }
//        
//        if let id = client.authenticatedUser?.name, let user = message.username {
//            print(id);
//            print(user);
//        }
//        if let channel = message.channel, let user = message.user {
//            client.webAPI.sendMessage(channel: channel, text: "Hello, i'm mma-team-bot", success: nil, failure: nil)
//        }
//        return
    }
    
    func changed(_ message: Message, client: SlackClient) {}
    func deleted(_ message: Message?, client: SlackClient) {}
    func sent(_ message: Message, client: SlackClient) {}
}

let slackbot = MMATeamBot(token: botAPIToken)
slackbot.client.connect()

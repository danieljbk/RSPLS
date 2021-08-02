import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 1, highestValue: 5)

enum Sign: Int {
    case rock = 1
    case spock, paper, lizard, scissors
    var emoji: String {
        switch self {
        case .rock:
            return "👊🏻"
        case .spock:
            return "🖖🏻"
        case .paper:
            return "🖐🏻"
        case .lizard:
            return "🦎"
        case .scissors:
            return "✌🏻"
        }
    }
    func play(human:Sign) -> GameState {
        
        let humanChoice = human.rawValue
        
        if (self.rawValue - humanChoice + 5) % 5 == 0 {
            return .draw
        }
        else if (self.rawValue - humanChoice + 5) % 5 < 3 {
            return .lose
        }
        else if (self.rawValue - humanChoice + 5) % 5 > 2{
            return .win
        }
        else {
            return .start
        }
    }
}

func randomSign() -> Sign {
    
    let sign = randomChoice.nextInt()
    
    if sign == 1 {
        return .rock
    }
    else if sign == 2 {
        return .spock
    }
    else if sign == 3 {
        return .paper
    }
    else if sign == 4 {
        return .lizard
    }
    else {
        return .scissors
    }
}

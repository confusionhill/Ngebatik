import SwiftUI

public struct GameState {
    static let shared = GameState()
    @AppStorage(megaMendungKey) var isMegaAvail: Bool = false
    @AppStorage(kawungKey) var isKawungAvail: Bool = false
    @AppStorage(simbutKey) var isSimbutAvail: Bool = false
    @AppStorage("bonusKey") var isBonusAvail: Bool = false
    
    func setAvail(type:batikType) {
        switch type {
        case .plain :
            self.isMegaAvail = true
        case .megaMendung :
            self.isSimbutAvail = true
        case .simbut :
            self.isKawungAvail = true
        case .kawung :
            self.isBonusAvail = true
        }
    }
    
    func getState(type:batikType) -> Bool {
        switch type {
            case .megaMendung : return self.isMegaAvail
            case .kawung : return self.isKawungAvail
            case .simbut : return self.isSimbutAvail
        default :
            return false
        }
    }
    
}

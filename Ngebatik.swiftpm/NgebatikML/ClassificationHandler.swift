import PencilKit
import CoreVideo
import SwiftUI

public enum batikType:String {
    case megaMendung = "megamendung"
    case simbut = "simbut"
    case kawung = "kawung"
    case plain = "plain"
    
    var getExampleImage: String {
        switch self {
        case .megaMendung:
            return "megaExample"
        case .simbut:
            return "simbutExample"
        case .kawung:
            return "kawungExample"
        default :
            return ""
        }
    }
}

public class ClassificationHandler: ObservableObject{
    public let typeBatik: batikType
    @Published var canvas: PKCanvasView = PKCanvasView()
    @Published var isShowing: Bool = false;
    @Published var sheetMode: SheetMode = .none
    private let mlModel = ngebatikClassifier()
    let imgRect = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    
    public init(type: batikType) {
        self.typeBatik = type
    }
    
    public func isItTrue() -> Bool {
        var ans = false
        clasifyImage(completion: { result in
            switch result {
            case .success(let datas):
                for data in datas {
                    if data.key == self.typeBatik.rawValue {
                        print(data)
                        if data.value > 0.65 {
                            self.setAvail()
                            withAnimation { 
                                GameState.shared.setAvail(type: self.typeBatik)
                            }
                            ans = true
                        }
                    }
                }
            default :
                ans = false
            }
        })
        return ans
    }
    
    private func clasifyImage(
        completion: @escaping (Result<Array<(key: String, value: Double)>, Error>) -> ()
    ) { 
        let image = canvas.drawing.image(from: imgRect, scale: 1.0).convertToBuffer()
        if let buffer = image {
            let output = try? mlModel.prediction(image: buffer)
            if let output = output {
                let results = output.classLabelProbs.sorted { $0.1 > $1.1 }
                print(results)
                completion(.success(results))
            }
        }
    }
    
    private func setAvail(){
        switch self.typeBatik {
        default :
            print("none")
        }
    }
    
}


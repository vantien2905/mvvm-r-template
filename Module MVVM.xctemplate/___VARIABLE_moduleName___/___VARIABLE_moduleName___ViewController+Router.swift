//___FILEHEADER___
//  This file was generated by MVVM Template generator

import UIKit
import Core

enum ___VARIABLE_moduleName___Route {
    case back
}

extension ___VARIABLE_moduleName___ViewController {
    func router(_ route: ___VARIABLE_moduleName___Route)  {
        switch route {
        case .back:
            close()
        }
    }
}


import java_swift

import Foundation
import JNI

/// generated by: genswift.java 'java/lang|java/util|java/sql' 'Sources' '../java' ///

/// interface com.johnholdsworth.swiftbindings.SwiftAdapterBinding$Responder ///

public protocol SwiftAdapterBinding_Responder: JavaProtocol {

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftAdapterBinding$Responder.reloadData()

    func reloadData()

}


open class SwiftAdapterBinding_ResponderForward: JNIObjectForward, SwiftAdapterBinding_Responder {

    private static var SwiftAdapterBinding_ResponderJNIClass: jclass?

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftAdapterBinding$Responder.reloadData()

    private static var reloadData_MethodID_2: jmethodID?

    open func reloadData() {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        
        let signature = JNIMethodSignature(
            argumentTypes: [],
            returnType: .void)
        
        assert("()V" == signature.rawValue)
        
        var dumpString = ""
        dump(signature, to: &dumpString)
        
        NSLog("Signature: \(dumpString)")
        NSLog("Signature Output: \(signature.rawValue)")
        
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "reloadData", methodSig: signature.rawValue, methodCache: &SwiftAdapterBinding_ResponderForward.reloadData_MethodID_2, args: &__args, locals: &__locals )
    }
}

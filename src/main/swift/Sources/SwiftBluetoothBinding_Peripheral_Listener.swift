
import java_swift

/// generated by: genswift.java 'java/lang|java/util|java/sql' 'Sources' '../java' ///

/// interface com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener ///

public protocol SwiftBluetoothBinding_Peripheral_Listener: JavaProtocol {

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onCharacteristicChanged(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTCharacteristic)

    func onCharacteristicChanged( characteristic: SwiftBluetoothBinding_GATTCharacteristic? )

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onCharacteristicRead(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTCharacteristic,int)

    func onCharacteristicRead( characteristic: SwiftBluetoothBinding_GATTCharacteristic?, status: Int )

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onCharacteristicWrite(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTCharacteristic,int)

    func onCharacteristicWrite( characteristic: SwiftBluetoothBinding_GATTCharacteristic?, status: Int )

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onConnectionStateChange(int,int)

    func onConnectionStateChange( status: Int, newState: Int )

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onDescriptorRead(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTDescriptor,int)

    func onDescriptorRead( descriptor: SwiftBluetoothBinding_GATTDescriptor?, status: Int )

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onDescriptorWrite(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTDescriptor,int)

    func onDescriptorWrite( descriptor: SwiftBluetoothBinding_GATTDescriptor?, status: Int )

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onMtuChanged(int,int)

    func onMtuChanged( mtu: Int, status: Int )

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onReadRemoteRssi(int,int)

    func onReadRemoteRssi( rssi: Int, status: Int )

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onReliableWriteCompleted(int)

    func onReliableWriteCompleted( status: Int )

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onServicesDiscovered(int)

    func onServicesDiscovered( status: Int )

}


open class SwiftBluetoothBinding_Peripheral_ListenerForward: JNIObjectForward, SwiftBluetoothBinding_Peripheral_Listener {

    private static var SwiftBluetoothBinding_Peripheral_ListenerJNIClass: jclass?

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onCharacteristicChanged(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTCharacteristic)

    private static var onCharacteristicChanged_MethodID_11: jmethodID?

    open func onCharacteristicChanged( characteristic: SwiftBluetoothBinding_GATTCharacteristic? ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: characteristic, locals: &__locals )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "onCharacteristicChanged", methodSig: "(Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$GATTCharacteristic;)V", methodCache: &SwiftBluetoothBinding_Peripheral_ListenerForward.onCharacteristicChanged_MethodID_11, args: &__args, locals: &__locals )
    }

    open func onCharacteristicChanged( _ _characteristic: SwiftBluetoothBinding_GATTCharacteristic? ) {
        onCharacteristicChanged( characteristic: _characteristic )
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onCharacteristicRead(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTCharacteristic,int)

    private static var onCharacteristicRead_MethodID_12: jmethodID?

    open func onCharacteristicRead( characteristic: SwiftBluetoothBinding_GATTCharacteristic?, status: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: characteristic, locals: &__locals )
        __args[1] = jvalue( i: jint(status) )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "onCharacteristicRead", methodSig: "(Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$GATTCharacteristic;I)V", methodCache: &SwiftBluetoothBinding_Peripheral_ListenerForward.onCharacteristicRead_MethodID_12, args: &__args, locals: &__locals )
    }

    open func onCharacteristicRead( _ _characteristic: SwiftBluetoothBinding_GATTCharacteristic?, _ _status: Int ) {
        onCharacteristicRead( characteristic: _characteristic, status: _status )
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onCharacteristicWrite(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTCharacteristic,int)

    private static var onCharacteristicWrite_MethodID_13: jmethodID?

    open func onCharacteristicWrite( characteristic: SwiftBluetoothBinding_GATTCharacteristic?, status: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: characteristic, locals: &__locals )
        __args[1] = jvalue( i: jint(status) )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "onCharacteristicWrite", methodSig: "(Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$GATTCharacteristic;I)V", methodCache: &SwiftBluetoothBinding_Peripheral_ListenerForward.onCharacteristicWrite_MethodID_13, args: &__args, locals: &__locals )
    }

    open func onCharacteristicWrite( _ _characteristic: SwiftBluetoothBinding_GATTCharacteristic?, _ _status: Int ) {
        onCharacteristicWrite( characteristic: _characteristic, status: _status )
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onConnectionStateChange(int,int)

    private static var onConnectionStateChange_MethodID_14: jmethodID?

    open func onConnectionStateChange( status: Int, newState: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = jvalue( i: jint(status) )
        __args[1] = jvalue( i: jint(newState) )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "onConnectionStateChange", methodSig: "(II)V", methodCache: &SwiftBluetoothBinding_Peripheral_ListenerForward.onConnectionStateChange_MethodID_14, args: &__args, locals: &__locals )
    }

    open func onConnectionStateChange( _ _status: Int, _ _newState: Int ) {
        onConnectionStateChange( status: _status, newState: _newState )
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onDescriptorRead(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTDescriptor,int)

    private static var onDescriptorRead_MethodID_15: jmethodID?

    open func onDescriptorRead( descriptor: SwiftBluetoothBinding_GATTDescriptor?, status: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: descriptor, locals: &__locals )
        __args[1] = jvalue( i: jint(status) )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "onDescriptorRead", methodSig: "(Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$GATTDescriptor;I)V", methodCache: &SwiftBluetoothBinding_Peripheral_ListenerForward.onDescriptorRead_MethodID_15, args: &__args, locals: &__locals )
    }

    open func onDescriptorRead( _ _descriptor: SwiftBluetoothBinding_GATTDescriptor?, _ _status: Int ) {
        onDescriptorRead( descriptor: _descriptor, status: _status )
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onDescriptorWrite(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTDescriptor,int)

    private static var onDescriptorWrite_MethodID_16: jmethodID?

    open func onDescriptorWrite( descriptor: SwiftBluetoothBinding_GATTDescriptor?, status: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: descriptor, locals: &__locals )
        __args[1] = jvalue( i: jint(status) )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "onDescriptorWrite", methodSig: "(Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$GATTDescriptor;I)V", methodCache: &SwiftBluetoothBinding_Peripheral_ListenerForward.onDescriptorWrite_MethodID_16, args: &__args, locals: &__locals )
    }

    open func onDescriptorWrite( _ _descriptor: SwiftBluetoothBinding_GATTDescriptor?, _ _status: Int ) {
        onDescriptorWrite( descriptor: _descriptor, status: _status )
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onMtuChanged(int,int)

    private static var onMtuChanged_MethodID_17: jmethodID?

    open func onMtuChanged( mtu: Int, status: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = jvalue( i: jint(mtu) )
        __args[1] = jvalue( i: jint(status) )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "onMtuChanged", methodSig: "(II)V", methodCache: &SwiftBluetoothBinding_Peripheral_ListenerForward.onMtuChanged_MethodID_17, args: &__args, locals: &__locals )
    }

    open func onMtuChanged( _ _mtu: Int, _ _status: Int ) {
        onMtuChanged( mtu: _mtu, status: _status )
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onReadRemoteRssi(int,int)

    private static var onReadRemoteRssi_MethodID_18: jmethodID?

    open func onReadRemoteRssi( rssi: Int, status: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = jvalue( i: jint(rssi) )
        __args[1] = jvalue( i: jint(status) )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "onReadRemoteRssi", methodSig: "(II)V", methodCache: &SwiftBluetoothBinding_Peripheral_ListenerForward.onReadRemoteRssi_MethodID_18, args: &__args, locals: &__locals )
    }

    open func onReadRemoteRssi( _ _rssi: Int, _ _status: Int ) {
        onReadRemoteRssi( rssi: _rssi, status: _status )
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onReliableWriteCompleted(int)

    private static var onReliableWriteCompleted_MethodID_19: jmethodID?

    open func onReliableWriteCompleted( status: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = jvalue( i: jint(status) )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "onReliableWriteCompleted", methodSig: "(I)V", methodCache: &SwiftBluetoothBinding_Peripheral_ListenerForward.onReliableWriteCompleted_MethodID_19, args: &__args, locals: &__locals )
    }

    open func onReliableWriteCompleted( _ _status: Int ) {
        onReliableWriteCompleted( status: _status )
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onServicesDiscovered(int)

    private static var onServicesDiscovered_MethodID_20: jmethodID?

    open func onServicesDiscovered( status: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = jvalue( i: jint(status) )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "onServicesDiscovered", methodSig: "(I)V", methodCache: &SwiftBluetoothBinding_Peripheral_ListenerForward.onServicesDiscovered_MethodID_20, args: &__args, locals: &__locals )
    }

    open func onServicesDiscovered( _ _status: Int ) {
        onServicesDiscovered( status: _status )
    }

}

private typealias SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicChanged_0_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jobject? ) -> ()

private func SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicChanged_0( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ characteristic: jobject? ) -> () {
    SwiftBluetoothBinding_Peripheral_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).onCharacteristicChanged( characteristic: characteristic != nil ? SwiftBluetoothBinding_GATTCharacteristicForward( javaObject: characteristic ) : nil )
}

private typealias SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicRead_1_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jobject?, _: jint ) -> ()

private func SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicRead_1( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ characteristic: jobject?, _ status: jint ) -> () {
    SwiftBluetoothBinding_Peripheral_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).onCharacteristicRead( characteristic: characteristic != nil ? SwiftBluetoothBinding_GATTCharacteristicForward( javaObject: characteristic ) : nil, status: Int(status) )
}

private typealias SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicWrite_2_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jobject?, _: jint ) -> ()

private func SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicWrite_2( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ characteristic: jobject?, _ status: jint ) -> () {
    SwiftBluetoothBinding_Peripheral_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).onCharacteristicWrite( characteristic: characteristic != nil ? SwiftBluetoothBinding_GATTCharacteristicForward( javaObject: characteristic ) : nil, status: Int(status) )
}

private typealias SwiftBluetoothBinding_Peripheral_Listener_onConnectionStateChange_3_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jint, _: jint ) -> ()

private func SwiftBluetoothBinding_Peripheral_Listener_onConnectionStateChange_3( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ status: jint, _ newState: jint ) -> () {
    SwiftBluetoothBinding_Peripheral_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).onConnectionStateChange( status: Int(status), newState: Int(newState) )
}

private typealias SwiftBluetoothBinding_Peripheral_Listener_onDescriptorRead_4_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jobject?, _: jint ) -> ()

private func SwiftBluetoothBinding_Peripheral_Listener_onDescriptorRead_4( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ descriptor: jobject?, _ status: jint ) -> () {
    SwiftBluetoothBinding_Peripheral_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).onDescriptorRead( descriptor: descriptor != nil ? SwiftBluetoothBinding_GATTDescriptorForward( javaObject: descriptor ) : nil, status: Int(status) )
}

private typealias SwiftBluetoothBinding_Peripheral_Listener_onDescriptorWrite_5_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jobject?, _: jint ) -> ()

private func SwiftBluetoothBinding_Peripheral_Listener_onDescriptorWrite_5( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ descriptor: jobject?, _ status: jint ) -> () {
    SwiftBluetoothBinding_Peripheral_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).onDescriptorWrite( descriptor: descriptor != nil ? SwiftBluetoothBinding_GATTDescriptorForward( javaObject: descriptor ) : nil, status: Int(status) )
}

private typealias SwiftBluetoothBinding_Peripheral_Listener_onMtuChanged_6_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jint, _: jint ) -> ()

private func SwiftBluetoothBinding_Peripheral_Listener_onMtuChanged_6( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ mtu: jint, _ status: jint ) -> () {
    SwiftBluetoothBinding_Peripheral_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).onMtuChanged( mtu: Int(mtu), status: Int(status) )
}

private typealias SwiftBluetoothBinding_Peripheral_Listener_onReadRemoteRssi_7_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jint, _: jint ) -> ()

private func SwiftBluetoothBinding_Peripheral_Listener_onReadRemoteRssi_7( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ rssi: jint, _ status: jint ) -> () {
    SwiftBluetoothBinding_Peripheral_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).onReadRemoteRssi( rssi: Int(rssi), status: Int(status) )
}

private typealias SwiftBluetoothBinding_Peripheral_Listener_onReliableWriteCompleted_8_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jint ) -> ()

private func SwiftBluetoothBinding_Peripheral_Listener_onReliableWriteCompleted_8( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ status: jint ) -> () {
    SwiftBluetoothBinding_Peripheral_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).onReliableWriteCompleted( status: Int(status) )
}

private typealias SwiftBluetoothBinding_Peripheral_Listener_onServicesDiscovered_9_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jint ) -> ()

private func SwiftBluetoothBinding_Peripheral_Listener_onServicesDiscovered_9( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ status: jint ) -> () {
    SwiftBluetoothBinding_Peripheral_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).onServicesDiscovered( status: Int(status) )
}

fileprivate class SwiftBluetoothBinding_Peripheral_ListenerLocal_: JNILocalProxy<SwiftBluetoothBinding_Peripheral_Listener, Any> {

    fileprivate static let _proxyClass: jclass = {
        var natives = [JNINativeMethod]()

        let SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicChanged_0_thunk: SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicChanged_0_type = SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicChanged_0
        natives.append( JNINativeMethod( name: strdup("__onCharacteristicChanged"), signature: strdup("(JLcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$GATTCharacteristic;)V"), fnPtr: unsafeBitCast( SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicChanged_0_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicRead_1_thunk: SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicRead_1_type = SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicRead_1
        natives.append( JNINativeMethod( name: strdup("__onCharacteristicRead"), signature: strdup("(JLcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$GATTCharacteristic;I)V"), fnPtr: unsafeBitCast( SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicRead_1_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicWrite_2_thunk: SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicWrite_2_type = SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicWrite_2
        natives.append( JNINativeMethod( name: strdup("__onCharacteristicWrite"), signature: strdup("(JLcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$GATTCharacteristic;I)V"), fnPtr: unsafeBitCast( SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicWrite_2_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let SwiftBluetoothBinding_Peripheral_Listener_onConnectionStateChange_3_thunk: SwiftBluetoothBinding_Peripheral_Listener_onConnectionStateChange_3_type = SwiftBluetoothBinding_Peripheral_Listener_onConnectionStateChange_3
        natives.append( JNINativeMethod( name: strdup("__onConnectionStateChange"), signature: strdup("(JII)V"), fnPtr: unsafeBitCast( SwiftBluetoothBinding_Peripheral_Listener_onConnectionStateChange_3_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let SwiftBluetoothBinding_Peripheral_Listener_onDescriptorRead_4_thunk: SwiftBluetoothBinding_Peripheral_Listener_onDescriptorRead_4_type = SwiftBluetoothBinding_Peripheral_Listener_onDescriptorRead_4
        natives.append( JNINativeMethod( name: strdup("__onDescriptorRead"), signature: strdup("(JLcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$GATTDescriptor;I)V"), fnPtr: unsafeBitCast( SwiftBluetoothBinding_Peripheral_Listener_onDescriptorRead_4_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let SwiftBluetoothBinding_Peripheral_Listener_onDescriptorWrite_5_thunk: SwiftBluetoothBinding_Peripheral_Listener_onDescriptorWrite_5_type = SwiftBluetoothBinding_Peripheral_Listener_onDescriptorWrite_5
        natives.append( JNINativeMethod( name: strdup("__onDescriptorWrite"), signature: strdup("(JLcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$GATTDescriptor;I)V"), fnPtr: unsafeBitCast( SwiftBluetoothBinding_Peripheral_Listener_onDescriptorWrite_5_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let SwiftBluetoothBinding_Peripheral_Listener_onMtuChanged_6_thunk: SwiftBluetoothBinding_Peripheral_Listener_onMtuChanged_6_type = SwiftBluetoothBinding_Peripheral_Listener_onMtuChanged_6
        natives.append( JNINativeMethod( name: strdup("__onMtuChanged"), signature: strdup("(JII)V"), fnPtr: unsafeBitCast( SwiftBluetoothBinding_Peripheral_Listener_onMtuChanged_6_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let SwiftBluetoothBinding_Peripheral_Listener_onReadRemoteRssi_7_thunk: SwiftBluetoothBinding_Peripheral_Listener_onReadRemoteRssi_7_type = SwiftBluetoothBinding_Peripheral_Listener_onReadRemoteRssi_7
        natives.append( JNINativeMethod( name: strdup("__onReadRemoteRssi"), signature: strdup("(JII)V"), fnPtr: unsafeBitCast( SwiftBluetoothBinding_Peripheral_Listener_onReadRemoteRssi_7_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let SwiftBluetoothBinding_Peripheral_Listener_onReliableWriteCompleted_8_thunk: SwiftBluetoothBinding_Peripheral_Listener_onReliableWriteCompleted_8_type = SwiftBluetoothBinding_Peripheral_Listener_onReliableWriteCompleted_8
        natives.append( JNINativeMethod( name: strdup("__onReliableWriteCompleted"), signature: strdup("(JI)V"), fnPtr: unsafeBitCast( SwiftBluetoothBinding_Peripheral_Listener_onReliableWriteCompleted_8_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let SwiftBluetoothBinding_Peripheral_Listener_onServicesDiscovered_9_thunk: SwiftBluetoothBinding_Peripheral_Listener_onServicesDiscovered_9_type = SwiftBluetoothBinding_Peripheral_Listener_onServicesDiscovered_9
        natives.append( JNINativeMethod( name: strdup("__onServicesDiscovered"), signature: strdup("(JI)V"), fnPtr: unsafeBitCast( SwiftBluetoothBinding_Peripheral_Listener_onServicesDiscovered_9_thunk, to: UnsafeMutableRawPointer.self ) ) )

        natives.append( JNINativeMethod( name: strdup("__finalize"), signature: strdup("(J)V"), fnPtr: unsafeBitCast( JNIReleasableProxy__finalize_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let clazz = JNI.FindClass( proxyClassName() )
        withUnsafePointer(to: &natives[0]) {
            nativesPtr in
            if JNI.api.RegisterNatives( JNI.env, clazz, nativesPtr, jint(natives.count) ) != jint(JNI_OK) {
                JNI.report( "Unable to register java natives" )
            }
        }

        defer { JNI.DeleteLocalRef( clazz ) }
        return JNI.api.NewGlobalRef( JNI.env, clazz )!
    }()

    override open class func proxyClassName() -> String { return "org/swiftjava/com_johnholdsworth/SwiftBluetoothBinding_Peripheral_ListenerProxy" }
    override open class func proxyClass() -> jclass? { return _proxyClass }

}

extension SwiftBluetoothBinding_Peripheral_Listener {

    public func localJavaObject( _ locals: UnsafeMutablePointer<[jobject]> ) -> jobject? {
        return SwiftBluetoothBinding_Peripheral_ListenerLocal_( owned: self, proto: self ).localJavaObject( locals )
    }

}

open class SwiftBluetoothBinding_Peripheral_ListenerBase: SwiftBluetoothBinding_Peripheral_Listener {

    public init() {}

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onCharacteristicChanged(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTCharacteristic)

    open func onCharacteristicChanged( characteristic: SwiftBluetoothBinding_GATTCharacteristic? ) /**/ {
    }


    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onCharacteristicRead(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTCharacteristic,int)

    open func onCharacteristicRead( characteristic: SwiftBluetoothBinding_GATTCharacteristic?, status: Int ) /**/ {
    }


    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onCharacteristicWrite(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTCharacteristic,int)

    open func onCharacteristicWrite( characteristic: SwiftBluetoothBinding_GATTCharacteristic?, status: Int ) /**/ {
    }


    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onConnectionStateChange(int,int)

    open func onConnectionStateChange( status: Int, newState: Int ) /**/ {
    }


    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onDescriptorRead(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTDescriptor,int)

    open func onDescriptorRead( descriptor: SwiftBluetoothBinding_GATTDescriptor?, status: Int ) /**/ {
    }


    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onDescriptorWrite(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTDescriptor,int)

    open func onDescriptorWrite( descriptor: SwiftBluetoothBinding_GATTDescriptor?, status: Int ) /**/ {
    }


    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onMtuChanged(int,int)

    open func onMtuChanged( mtu: Int, status: Int ) /**/ {
    }


    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onReadRemoteRssi(int,int)

    open func onReadRemoteRssi( rssi: Int, status: Int ) /**/ {
    }


    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onReliableWriteCompleted(int)

    open func onReliableWriteCompleted( status: Int ) /**/ {
    }


    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onServicesDiscovered(int)

    open func onServicesDiscovered( status: Int ) /**/ {
    }


}
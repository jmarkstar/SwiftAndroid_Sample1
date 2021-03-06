//
//  AndroidAdapter.swift
//  libswiftandroid.so
//
//  Created by Alsey Coleman Miller on 3/21/18.
//

import Foundation
import java_swift

public extension Android.Widget {
    
    public typealias Adapter = AndroidWidgetAdapter
}

open class AndroidWidgetAdapter: JavaProtocol {
    
    // MARK: - Properties
    
    fileprivate lazy var listener: AndroidWidgetAdapterListenerLocal = {
        
        let proxy = AndroidWidgetAdapterListenerProxy()
        proxy.swiftObject = self
        
        return AndroidWidgetAdapterListenerLocal(owned: proxy, proto: proxy)
    }()
    
    // MARK: - Initialization
    
    public func localJavaObject( _ locals: UnsafeMutablePointer<[jobject]> ) -> jobject? {
        
        return listener.localJavaObject( locals )
    }
    
    public final func notifyDataSetChanged() {
        
        listener.notifyDataSetChanged()
    }
    
    // MARK: - Listener
    
    open func getCount() -> Int { return 0 }
    
    open func getView(position: Int, convertView: Android.View.View?, parent: Android.View.ViewGroup) -> Android.View.View {
        
        fatalError("\(#function) must be implemented in subclass")
    }
}

// MARK: - Private

fileprivate extension Android.Widget.Adapter {
    
    /// JNI Cache
    struct JNICache {
        
        /// JNI Java class name
        static let className = "com/jmarkstar/swiftandroid/SwiftAdapter"
        
        /// JNI Java class
        static var jniClass: jclass? = AndroidWidgetAdapterListenerLocal._proxyClass
        
        /// JNI Method ID cache
        struct MethodID {
            
            static var notifyDataSetChanged: jmethodID?
        }
    }
}

private typealias AndroidWidgetAdapter_getCount_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong) -> (jint)

private func AndroidWidgetAdapter_getCount( _ __env: UnsafeMutablePointer<JNIEnv?>,
                                            _ __this: jobject?,
                                            _ __swiftObject: jlong) -> jint {
    
    let result = AndroidWidgetAdapterListenerLocal
        .swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject )
        .getCount()
    
    return jint(result)
}

private typealias AndroidWidgetAdapter_getView_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jint, _: jobject?, _: jobject?) -> jobject?

private func AndroidWidgetAdapter_getView( _ __env: UnsafeMutablePointer<JNIEnv?>,
                                            _ __this: jobject?,
                                            _ __swiftObject: jlong,
                                            _ __position: jint,
                                            _ __convertView: jobject?,
                                            _ __parent: jobject?) -> jobject? {
    
    let convertView = __convertView != nil ? Android.View.View(javaObject: __convertView) : nil
    
    let parentView = Android.View.ViewGroup(javaObject: __parent)
    
    let result = AndroidWidgetAdapterListenerLocal
        .swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject )
        .getView(position: Int(__position), convertView: convertView, parent: parentView)
    
    var __locals = [jobject]()
    
    return result?.localJavaObject(&__locals)
}

fileprivate final class AndroidWidgetAdapterListenerProxy: AndroidWidgetAdapterListenerProtocol {
    
    weak var swiftObject: Android.Widget.Adapter?
    
    func getCount() -> Int {
        
        return swiftObject?.getCount() ?? 0
    }
    
    func getView(position: Int, convertView: Android.View.View?, parent: Android.View.ViewGroup) -> Android.View.View? {
        
        return swiftObject?.getView(position: position, convertView: convertView, parent: parent)
    }
}

fileprivate protocol AndroidWidgetAdapterListenerProtocol: JavaProtocol {
    
    func getCount() -> Int
    
    func getView(position: Int, convertView: Android.View.View?, parent: Android.View.ViewGroup) -> Android.View.View?
}

extension AndroidWidgetAdapterListenerProtocol {
    
    public func localJavaObject( _ locals: UnsafeMutablePointer<[jobject]> ) -> jobject? {
        
        return AndroidWidgetAdapterListenerLocal( owned: self, proto: self ).localJavaObject( locals )
    }
    
}

fileprivate class AndroidWidgetAdapterListenerLocal: JNILocalProxy<AndroidWidgetAdapterListenerProtocol, Any> {
    
    fileprivate static let _proxyClass: jclass = {
        
        var natives = [JNINativeMethod]()
        
        let getCountThunk: AndroidWidgetAdapter_getCount_type = AndroidWidgetAdapter_getCount
        
        natives.append( JNINativeMethod(name: strdup("__getCount"),
                                        signature: strdup("(J)I"),
                                        fnPtr: unsafeBitCast( getCountThunk, to: UnsafeMutableRawPointer.self ) ))
        
        let getViewThunk: AndroidWidgetAdapter_getView_type = AndroidWidgetAdapter_getView
        
        natives.append( JNINativeMethod(name: strdup("__getView"),
                                        signature: strdup("(JILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;"),
                                        fnPtr: unsafeBitCast( getViewThunk, to: UnsafeMutableRawPointer.self ) ))
        
        natives.append( JNINativeMethod( name: strdup("__finalize"),
                                         signature: strdup("(J)V"),
                                         fnPtr: unsafeBitCast( JNIReleasableProxy__finalize_thunk, to: UnsafeMutableRawPointer.self ) ) )
        
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
    
    override open class func proxyClassName() -> String { return Android.Widget.Adapter.JNICache.className }
    
    override open class func proxyClass() -> jclass? { return _proxyClass }
    
    func notifyDataSetChanged() {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        
        withJavaObject {
            
            JNIMethod.CallVoidMethod(object: $0,
                methodName: "notifyDataSetChanged",
                methodSig: "()V",
                methodCache: &Android.Widget.Adapter.JNICache.MethodID.notifyDataSetChanged,
                args: &__args,
                locals: &__locals)
        }
    }
}

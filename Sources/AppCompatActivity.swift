//
//  AppCompatActivity.swift
//  Android
//
//  Created by Marco Estrella on 6/18/18.
//

import Foundation
import java_swift
import JNI

public extension SwiftSupport.App {
    
    public typealias AppCompatActivity = SwiftSupportAppCompatActivity
}

/**
 * An activity is a single, focused thing that the user can do. Almost all activities interact with the user,
 * so the Activity class takes care of creating a window for you in which you can place your UI with setContentView(View).
 * While activities are often presented to the user as full-screen windows, they can also be used in other ways: as
 * floating windows (via a theme with R.attr.windowIsFloating set) or embedded inside of another activity (using ActivityGroup).
 * There are two methods almost all subclasses of Activity will implement:
 *
 * - onCreate(Bundle) is where you initialize your activity. Most importantly, here you will usually call setContentView(int) with
 * a layout resource defining your UI, and using findViewById(int) to retrieve the widgets in that UI that you need to interact with programmatically.
 *
 * - onPause() is where you deal with the user leaving your activity. Most importantly, any changes made by the user should at
 * this point be committed (usually to the ContentProvider holding the data).
 *
 * To be of use with Context.startActivity(), all activity classes must have a corresponding <activity> declaration in their package's AndroidManifest.xml.
 */
public protocol SwiftSupportAppCompatActivity/*: JavaProtocol*/ {
    
    func onCreate(savedInstanceState: Android.OS.Bundle?)
    
    func onStart()
    
    func onResume()
    
    func onPause()
    
    func onRestart()
    
    func onStop()
    
    func onDestroy()
    
    func onActivityResult(requestCode: Int, resultCode: Int, data: Android.Content.Intent?)
    
    func onRequestPermissionsResult(requestCode: Int, permissions: [String], grantResults: [Int])
}

// MARK: - Implemented Callbacks

public extension SwiftSupportAppCompatActivity {
    
    func onCreate(savedInstanceState: Android.OS.Bundle?) {
        
        NSLog("\(type(of: self)) \(#function)")
    }
    
    func onStart(){
        NSLog("\(type(of: self)) \(#function)")
    }
    
    func onResume(){
        NSLog("\(type(of: self)) \(#function)")
    }
    
    func onPause(){
        NSLog("\(type(of: self)) \(#function)")
    }
    
    func onRestart(){
        NSLog("\(type(of: self)) \(#function)")
    }
    
    func onStop(){
        NSLog("\(type(of: self)) \(#function)")
    }
    
    func onDestroy(){
        NSLog("\(type(of: self)) \(#function)")
    }
    
    func onActivityResult(requestCode: Int, resultCode: Int, data: Android.Content.Intent?) {
        NSLog("\(type(of: self)) \(#function)")
    }
    
    func onRequestPermissionsResult(requestCode: Int, permissions: [String], grantResults: [Int]) {
        NSLog("\(type(of: self)) \(#function)")
    }
}

// MARK: - Methods

public extension SwiftSupportAppCompatActivity {
    /*
    public func registerReceiver(receiver: Android.Content.BroadcastReceiver, filter: Android.Content.IntentFilter) -> Android.Content.Intent? {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 2)
        
        __args[0] = JNIType.toJava( value: receiver, locals: &__locals )
        __args[1] = JNIType.toJava( value: filter, locals: &__locals )
        
        var intent: Android.Content.Intent?
        
        withJavaObject {
            
            var __return = JNIMethod.CallObjectMethod(object: $0,
                                                      methodName: "registerReceiver",
                                                      methodSig: "(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;",
                                                      methodCache: &SwiftSupportAppCompatActivityLocal.JNICache.MethodID.registerReceiver,
                                                      args: &__args,
                                                      locals: &__locals)
            defer {
                JNI.DeleteLocalRef(__return)
            }
            
            intent = Android.Content.Intent(javaObject: __return)
        }
        return intent
    }
    
    public func unregisterReceiver(receiver: Android.Content.BroadcastReceiver){
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1)
        
        __args[0] = JNIType.toJava( value: receiver, locals: &__locals )
        
        withJavaObject {
            
            JNIMethod.CallVoidMethod(object: $0,
                                     methodName: "unregisterReceiver",
                                     methodSig: "(Landroid/content/BroadcastReceiver;)",
                                     methodCache: &SwiftSupportAppCompatActivityLocal.JNICache.MethodID.unregisterReceiver,
                                     args: &__args,
                                     locals: &__locals)
        }
    }*/
}

// MARK: - Constants

public extension SwiftSupportAppCompatActivity {
    
    public static var RESULT_OK: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "RESULT_OK",
                fieldType: "I",
                fieldCache: &SwiftSupportAppCompatActivityLocal.ActivityJNICache.FieldID.RESULT_OK,
                className: SwiftSupportAppCompatActivityLocal.JNICache.className,
                classCache: &SwiftSupportAppCompatActivityLocal.JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    public static var RESULT_FIRST_USER: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "RESULT_FIRST_USER",
                fieldType: "I",
                fieldCache: &SwiftSupportAppCompatActivityLocal.ActivityJNICache.FieldID.RESULT_FIRST_USER,
                className: SwiftSupportAppCompatActivityLocal.JNICache.className,
                classCache: &SwiftSupportAppCompatActivityLocal.JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    public static var RESULT_CANCELED: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "RESULT_CANCELED",
                fieldType: "I",
                fieldCache: &SwiftSupportAppCompatActivityLocal.ActivityJNICache.FieldID.RESULT_CANCELED,
                className: SwiftSupportAppCompatActivityLocal.JNICache.className,
                classCache: &SwiftSupportAppCompatActivityLocal.JNICache.jniClass )
            
            return Int(__value)
        }
    }
    
    
}

// MARK: - Local Java Object

extension SwiftSupportAppCompatActivity {
    /*
    public func localJavaObject( _ locals: UnsafeMutablePointer<[jobject]> ) -> jobject? {
        
        return SwiftSupportAppCompatActivityLocal( owned: self, proto: self ).localJavaObject( locals )
    }*/
}

internal class SwiftSupportAppCompatActivityLocal: JNIObject {
    
    @_silgen_name("Java_org_pureswift_swiftandroidsupport_app_SwiftAppCompatActivity_bind")
    public static func bind( __env: UnsafeMutablePointer<JNIEnv?>, __this: jobject?) -> jlong? {
        
        #if os(Android)
        // Ask app for main activity.
        let activity = SwiftAndroidMainActivity()
        
        let local = SwiftSupportAppCompatActivityLocal(javaObject: __this, activity: activity)
        
        // ARC +1
        return jlong(unsafeBitCast(Unmanaged.passRetained(local), to: uintptr_t.self))
        #else
        fatalError("Can only run on Android OS")
        #endif
    }
    
    private(set) var activity: SwiftSupportAppCompatActivity!
    
    private init(javaObject: jobject?, activity: SwiftSupportAppCompatActivity) {
        
        self.activity = activity
        super.init(javaObject: javaObject)
    }
    
    required init(javaObject: jobject?) {
        super.init(javaObject: javaObject)
        
        assertionFailure("Not designated initializer)")
    }
    
    static func swiftObject( jniEnv: UnsafeMutablePointer<JNIEnv?>?, javaObject: jobject?, swiftObject: jlong ) -> SwiftSupportAppCompatActivityLocal {
        
        return unsafeBitCast( recoverPointer( swiftObject ), to: SwiftSupportAppCompatActivityLocal.self )
    }
    
    deinit {
        
        // deallocated
        NSLog("\(SwiftSupportAppCompatActivityLocal.self) \(#function)")
    }
}

// MARK: - JNICache

internal extension SwiftSupportAppCompatActivityLocal {
    
    /// JNI Cache
    struct ActivityJNICache {
        
        static let classSignature = Android.App.className(["Activity"])
        
        /// JNI Java class name
        static let className = classSignature.rawValue
        
        /// JNI Java class
        static var jniClass: jclass?
        
        /// JNI Field ID cache
        struct FieldID {
            
            static var RESULT_FIRST_USER: jfieldID?
            static var RESULT_OK: jfieldID?
            static var RESULT_CANCELED: jfieldID?
        }
    }
    
    /// JNI Cache
    struct JNICache {
        
        static let classSignature = SwiftSupport.App.className(["SwiftAppCompatActivity"])
        
        /// JNI Java class name
        static let className = classSignature.rawValue
        
        /// JNI Java class
        static var jniClass: jclass?
        
        /// JNI Method ID cache
        struct MethodID {
            
            static var registerReceiver: jmethodID?
            static var unregisterReceiver: jmethodID?
        }
    }
}


// MARK: - Native Methods

#if os(Android)
/// Needs to be implemented by app.
@_silgen_name("SwiftAndroidMainActivity")
internal func SwiftAndroidMainActivity() -> SwiftSupportAppCompatActivity
#endif

fileprivate func recoverPointer( _ swiftObject: jlong, _ file: StaticString = #file, _ line: Int = #line ) -> uintptr_t {
    #if os(Android)
    let swiftPointer = uintptr_t(swiftObject&0xffffffff)
    #else
    let swiftPointer = uintptr_t(swiftObject)
    #endif
    if swiftPointer == 0 {
        JNI.report( "WTF dude", file, line )
    }
    return swiftPointer
}

@_silgen_name("Java_org_pureswift_swiftandroidsupport_app_SwiftAppCompatActivity_onCreateNative")
public func SwiftSupportAppCompatActivityLocal_onCreate( _ __env: UnsafeMutablePointer<JNIEnv?>,
                                                         _ __this: jobject?,
                                                         _ __swiftObject: jlong,
                                                         _ __savedInstanceState: jobject?) -> () {
    
    let bundle = __savedInstanceState != nil ? Android.OS.Bundle(javaObject: __savedInstanceState) : nil
    
    let local = SwiftSupportAppCompatActivityLocal.swiftObject(jniEnv: __env, javaObject: __this, swiftObject: __swiftObject)
    
    local.activity.onCreate(savedInstanceState: bundle)
}

@_silgen_name("Java_org_pureswift_swiftandroidsupport_app_SwiftAppCompatActivity_onStartNative")
public func SwiftSupportAppCompatActivityLocal_onStart( _ __env: UnsafeMutablePointer<JNIEnv?>,
                                                         _ __this: jobject?,
                                                         _ __swiftObject: jlong) -> () {

    let local = SwiftSupportAppCompatActivityLocal.swiftObject(jniEnv: __env, javaObject: __this, swiftObject: __swiftObject)
    
    local.activity.onStart()
}

@_silgen_name("Java_org_pureswift_swiftandroidsupport_app_SwiftAppCompatActivity_onResumeNative")
public func SwiftSupportAppCompatActivityLocal_onResume( _ __env: UnsafeMutablePointer<JNIEnv?>,
                                                        _ __this: jobject?,
                                                        _ __swiftObject: jlong) -> () {
    
    let local = SwiftSupportAppCompatActivityLocal.swiftObject(jniEnv: __env, javaObject: __this, swiftObject: __swiftObject)
    
    local.activity.onResume()
}

@_silgen_name("Java_org_pureswift_swiftandroidsupport_app_SwiftAppCompatActivity_onPauseNative")
public func SwiftSupportAppCompatActivityLocal_onPause( _ __env: UnsafeMutablePointer<JNIEnv?>,
                                                         _ __this: jobject?,
                                                         _ __swiftObject: jlong) -> () {
    
    let local = SwiftSupportAppCompatActivityLocal.swiftObject(jniEnv: __env, javaObject: __this, swiftObject: __swiftObject)
    
    local.activity.onPause()
}

@_silgen_name("Java_org_pureswift_swiftandroidsupport_app_SwiftAppCompatActivity_onRestartNative")
public func SwiftSupportAppCompatActivityLocal_onRestart( _ __env: UnsafeMutablePointer<JNIEnv?>,
                                                         _ __this: jobject?,
                                                         _ __swiftObject: jlong) -> () {
    
    let local = SwiftSupportAppCompatActivityLocal.swiftObject(jniEnv: __env, javaObject: __this, swiftObject: __swiftObject)
    
    local.activity.onRestart()
}

@_silgen_name("Java_org_pureswift_swiftandroidsupport_app_SwiftAppCompatActivity_onStopNative")
public func SwiftSupportAppCompatActivityLocal_onStop( _ __env: UnsafeMutablePointer<JNIEnv?>,
                                                          _ __this: jobject?,
                                                          _ __swiftObject: jlong) -> () {
    
    let local = SwiftSupportAppCompatActivityLocal.swiftObject(jniEnv: __env, javaObject: __this, swiftObject: __swiftObject)
    
    local.activity.onStop()
}

@_silgen_name("Java_org_pureswift_swiftandroidsupport_app_SwiftAppCompatActivity_onDestroyNative")
public func SwiftSupportAppCompatActivityLocal_onDestroy( _ __env: UnsafeMutablePointer<JNIEnv?>,
                                                       _ __this: jobject?,
                                                       _ __swiftObject: jlong) -> () {
    
    let local = SwiftSupportAppCompatActivityLocal.swiftObject(jniEnv: __env, javaObject: __this, swiftObject: __swiftObject)
    
    local.activity.onDestroy()
}

@_silgen_name("Java_org_pureswift_swiftandroidsupport_app_SwiftAppCompatActivity_onActivityResultNative")
public func SwiftSupportAppCompatActivityLocal_onActivityResultNative( _ __env: UnsafeMutablePointer<JNIEnv?>,
                                                          _ __this: jobject?,
                                                          _ __swiftObject: jlong,
                                                          _ __requestCode: jint,
                                                          _ __resultCode: jint,
                                                          _ __data: jobject?) -> () {
    
    let local = SwiftSupportAppCompatActivityLocal.swiftObject(jniEnv: __env, javaObject: __this, swiftObject: __swiftObject)
    
    let requestCode = Int(__requestCode)
    
    let resultCode = Int(__resultCode)
    
    let data = __data != nil ? Android.Content.Intent(javaObject: __data) : nil
    
    local.activity.onActivityResult(requestCode: requestCode, resultCode: resultCode, data: data)
}

@_silgen_name("Java_org_pureswift_swiftandroidsupport_app_SwiftAppCompatActivity_finalizeNative")
public func SwiftSupportAppCompatActivityLocal_finalize ( _ __env: UnsafeMutablePointer<JNIEnv?>,
                                                           _ __this: jobject?,
                                                           _ __swiftObject: jlong) -> () {
    
    let local = SwiftSupportAppCompatActivityLocal.swiftObject(jniEnv: __env, javaObject: __this, swiftObject: __swiftObject)
    
    Unmanaged.passUnretained(local).release()
    
    NSLog("native \(#function)")
}

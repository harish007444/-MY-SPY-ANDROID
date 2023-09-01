apply plugin: 'com.android.application'

android {
    compileSdkVersion 25
    buildToolsVersion '26.0.2'
    defaultConfig {
        applicationId "com.myspy.myspyandroid"
        minSdkVersion 16
        targetSdkVersion 25
        versionCode 2
        versionName "1.0.1"
        testInstrumentationRunner "android.support.test.runner.AndroidJUnitRunner"
    }
    buildTypes {
        release {
            minifyEnabled false
            proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.pro'
        }
    }
}

dependencies {
    compile fileTree(include: ['*.jar'], dir: 'libs')
    androidTestCompile('com.android.support.test.espresso:espresso-core:2.2.2', {
        exclude group: 'com.android.support', module: 'support-annotations'
    })
    compile files('libs/gson-2.8.0.jar')
    compile 'com.android.support:appcompat-v7:25.4.0'
    compile 'com.android.support:design:25.4.0'
    compile 'com.android.support:support-v4:25.4.0'
    compile 'com.github.PhilJay:MPAndroidChart:v3.0.3'
    compile 'org.osmdroid:osmdroid-android:5.6.2'
    compile 'com.android.support.constraint:constraint-layout:1.1.0-beta5'
    testCompile 'junit:junit:4.12'
}


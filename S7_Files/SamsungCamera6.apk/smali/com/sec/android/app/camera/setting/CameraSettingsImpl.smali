.class public Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
.super Ljava/lang/Object;
.source "CameraSettingsImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings;
.implements Landroid/os/Parcelable;
.implements Lcom/sec/android/app/camera/interfaces/Engine$OnRequestQueueEmptyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;,
        Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;
    }
.end annotation


# static fields
.field protected static final CAMERA_SETTINGS_NOTIFICATION:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/app/camera/setting/CameraSettingsImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_BACK_BEAUTY_LEVEL:I = 0x0

.field private static final DEFAULT_BEAUTY_LEVEL:I

.field private static DEFAULT_FONT_SCALE:F = 0.0f

.field private static MAX_FONT_SCALE:F = 0.0f

.field protected static final TAG:Ljava/lang/String; = "CameraSettings"


# instance fields
.field private mAntiFogLevel:I

.field private mAttachBackVideoFixedResolution:I

.field private mAttachFrontVideoFixedResolution:I

.field private mAttachImageMode:Z

.field private mAttachVideoMode:Z

.field private mAutoNightDetection:I

.field private mBackBeautyLevel:I

.field private mBackCameraShootingModeOrder:Ljava/lang/String;

.field private mBackEffect:I

.field private mBackEffectStrengthLevel:I

.field private mBackEffectVignetteLevel:I

.field private mBackShootingMode:I

.field private mBeautyLevel:I

.field private mBeautyMode:I

.field private mCallStatus:I

.field private mCamcorderAntiShake:I

.field private mCamcorderAudioRecording:I

.field private mCamcorderResolution:I

.field protected mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraFacing:I

.field private mCameraId:I

.field private mCameraResolutionChanged:Z

.field private mColorTune:I

.field private mCoverCamera:Z

.field private mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

.field private mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

.field private mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDualEffect:I

.field private mDualMode:I

.field private mEasyCamera:Z

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mExposureMeter:I

.field private mExposureValue:I

.field private mEyeEnlargeLevel:I

.field private mFlashMode:I

.field private mFlip:I

.field private mFloatingCameraButton:I

.field private mFocusLength:I

.field private mFocusMode:I

.field private mFontScale:F

.field private mFoodBlurType:I

.field private mFoodColorTuneValue:I

.field private mFrontCameraShootingModeOrder:Ljava/lang/String;

.field private mFrontEffect:I

.field private mFrontEffectStrengthLevel:I

.field private mFrontEffectVignetteLevel:I

.field private mFrontFlashMode:I

.field private mFrontShootingMode:I

.field private mGPS:I

.field private mGestureControlMode:I

.field private mGuideLine:I

.field private mHDR:I

.field private mHRMShutter:I

.field private mISO:I

.field private mInitialShootingMode:I

.field private mInterval:I

.field private mIsCamcorderResolutionOverridden:Z

.field private mIsFirstLaunchCameraByHomeKey:Z

.field private mIsTemperatureHighToRecord:Z

.field private mIsTemperatureHighToUseFlash:Z

.field private mIsTemperatureLowToUseFlash:Z

.field private mKelvin:I

.field private mKeyboardCoverCamera:Z

.field private mListenersForAllChanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListenersForSpecifiedChanges:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLowBattery:Z

.field private mManualExposureMeter:I

.field private mManualExposureValue:I

.field private mManualFocusLength:I

.field private mManualISO:I

.field private mManualMultiAF:I

.field private mManualShutterSpeed:I

.field private mManualWhiteBalance:I

.field private mMotionPanoramaMode:I

.field private mMotionPhoto:I

.field private mMotionSpeed:I

.field private mMotionWideSelfieMode:I

.field private mMultiAFMode:I

.field private mMultiWindowMode:I

.field private mNotificationHandler:Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

.field private mObjectTrackingAF:I

.field private mOverriddenFocusMode:I

.field private mPictureFormat:I

.field private mPreviousShootingModeForRecording:I

.field private mQRCodeDetection:I

.field private mQuality:I

.field private mRearLensDistortionCorrection:I

.field private mRequestedMediaRecorderProfileInfo:Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;

.field private mRequestedRecordingDurationLimit:I

.field private mRequestedRecordingSizeLimit:J

.field private mRequestedSaveUri:Landroid/net/Uri;

.field private mResolution:I

.field private mReview:I

.field private mSaveRichTone:I

.field private mSecureCamera:Z

.field private final mSecureSnapshotUriListLock:Ljava/lang/Object;

.field private final mSecureUriListLock:Ljava/lang/Object;

.field private mSeparatedShootingModeName:Ljava/lang/String;

.field private mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;",
            ">;"
        }
    .end annotation
.end field

.field private mShapeCorrectionMode:I

.field private mShootingMode:I

.field private mShutterSound:I

.field private mShutterSpeed:I

.field private mSilverCamera:Z

.field private mSimpleCamera:Z

.field private mSkinColorLevel:I

.field private mSlimFaceLevel:I

.field private mSoundAndShotMode:I

.field private mSpotlightLevel:I

.field private mSpotlightPosition:I

.field private mStatusLoggingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStorage:I

.field private mTapToTakePictures:I

.field private mTimer:I

.field private mTorchLight:I

.field private mVideoCollageRecordingTime:I

.field private mVideoCollageType:I

.field private mViewModePreview:I

.field private mVoiceCommand:I

.field private mVolumeKeyAs:I

.field private mWB:I

.field private mWatermarkCategory:I

.field private mWatermarkId:I

.field private mWatermarkInputText:Ljava/lang/String;

.field private mZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 77
    sget v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_DEFAULT_LIVE_BEAUTY_LEVEL:I

    sput v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FONT_SCALE:F

    .line 81
    const v0, 0x3f99999a    # 1.2f

    sput v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->MAX_FONT_SCALE:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 6
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureUriListLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureSnapshotUriListLock:Ljava/lang/Object;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 90
    iput-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    .line 91
    iput-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    .line 103
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    .line 106
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    .line 109
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    .line 110
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    .line 111
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    .line 112
    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    .line 116
    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    .line 117
    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusLength:I

    .line 121
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    .line 122
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    .line 123
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffect:I

    .line 124
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffect:I

    .line 126
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    .line 127
    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    .line 128
    const/16 v0, 0x37

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKelvin:I

    .line 129
    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSpeed:I

    .line 130
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    .line 131
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 132
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VIEW_MODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    .line 136
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQuality:I

    .line 139
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    .line 141
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualISO:I

    .line 142
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    .line 143
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    .line 144
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualFocusLength:I

    .line 145
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    .line 146
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureMeter:I

    .line 147
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    .line 155
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    .line 156
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAudioRecording:I

    .line 162
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    .line 163
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    .line 164
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    .line 166
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    .line 167
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCallStatus:I

    .line 169
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    .line 170
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    .line 171
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightLevel:I

    .line 172
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightPosition:I

    .line 173
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    .line 174
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShapeCorrectionMode:I

    .line 175
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    .line 178
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    .line 180
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    .line 182
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodColorTuneValue:I

    .line 184
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    .line 187
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    .line 190
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    .line 191
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    .line 203
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionSpeed:I

    .line 208
    iput v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffectStrengthLevel:I

    .line 209
    iput v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffectStrengthLevel:I

    .line 210
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffectVignetteLevel:I

    .line 211
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffectVignetteLevel:I

    .line 213
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    .line 215
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_QRCODE_DETECTION:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    .line 217
    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    .line 218
    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    .line 219
    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    .line 221
    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    .line 222
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiWindowMode:I

    .line 224
    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSilverCamera:Z

    .line 226
    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    .line 227
    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachImageMode:Z

    .line 228
    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachVideoMode:Z

    .line 229
    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachBackVideoFixedResolution:I

    .line 230
    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachFrontVideoFixedResolution:I

    .line 231
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedRecordingSizeLimit:J

    .line 232
    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedRecordingDurationLimit:I

    .line 233
    iput-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedSaveUri:Landroid/net/Uri;

    .line 235
    iput-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    .line 240
    iput-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedMediaRecorderProfileInfo:Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 244
    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraResolutionChanged:Z

    .line 245
    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    .line 248
    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mLowBattery:Z

    .line 249
    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToUseFlash:Z

    .line 250
    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureLowToUseFlash:Z

    .line 251
    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToRecord:Z

    .line 253
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    .line 255
    const/16 v0, 0x238c

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkId:I

    .line 256
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkCategory:I

    .line 257
    iput-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkInputText:Ljava/lang/String;

    .line 259
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FONT_SCALE:F

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFontScale:F

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    .line 264
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    .line 265
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 266
    new-instance v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;-><init>(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mNotificationHandler:Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    .line 272
    const-string v0, "Create CameraSettings"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 274
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 275
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraIdFromPreferences()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    .line 277
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 278
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->handleNotification(II)V

    return-void
.end method

.method private getCameraIdFromName(Ljava/lang/String;)I
    .locals 1
    .param p1, "cameraFacingName"    # Ljava/lang/String;

    .prologue
    .line 4207
    const-string v0, "front"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4208
    const/4 v0, 0x1

    .line 4210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCameraIdFromPreferences()I
    .locals 3

    .prologue
    .line 4216
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_id_key"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getCoverCamcorderResolution()I
    .locals 1

    .prologue
    .line 4220
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMCORDER_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getDefaultAutoNightDetectionMode()I
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 4224
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_NIGHT_DETECTION:Z

    if-nez v2, :cond_1

    .line 4225
    const/4 v0, 0x0

    .line 4234
    :cond_0
    :goto_0
    return v0

    .line 4228
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    .line 4231
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4232
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camera_autonightdetection_key"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4233
    .local v0, "autoNightDetectionMode":I
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultAutoNightDetectionMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDefaultCamcorderAntishake()I
    .locals 1

    .prologue
    .line 4239
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4240
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BACK_CAMCORDER_ANTISHAKE:I

    .line 4242
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_CAMCORDER_ANTISHAKE:I

    goto :goto_0
.end method

.method private getDefaultCameraResolution(I)I
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 4247
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 4248
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4258
    :goto_0
    return v0

    .line 4249
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 4250
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4251
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 4252
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_PICTURESIZE:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4253
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 4254
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_PICTURESIZE:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4256
    :cond_3
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultCameraResolution : wrong cameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 4257
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check camera ids : Back = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Front = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 4258
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getDefaultDualTrackRecordingMode()I
    .locals 1

    .prologue
    .line 4263
    const/4 v0, 0x0

    return v0
.end method

.method private getDefaultFlashMode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4267
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4268
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4269
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camera_flash_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4270
    .local v1, "flashMode":I
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultFlashMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4273
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "flashMode":I
    :cond_1
    return v1
.end method

.method private getDefaultFrontFlashMode()I
    .locals 1

    .prologue
    .line 4278
    const/4 v0, 0x0

    return v0
.end method

.method private getDefaultMotionPanoramaMode()I
    .locals 1

    .prologue
    .line 4282
    const/4 v0, 0x1

    return v0
.end method

.method private getDefaultMotionWideSelfieMode()I
    .locals 1

    .prologue
    .line 4286
    const/4 v0, 0x1

    return v0
.end method

.method private getDefaultStorage()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4290
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    .line 4291
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4292
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "csc_pref_setup_storage_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4294
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    return v1
.end method

.method private getEasyCamcorderResolution()I
    .locals 1

    .prologue
    .line 4299
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4300
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4302
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getEasyCameraHDR()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4312
    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 4318
    :cond_0
    :goto_0
    return v0

    .line 4314
    :sswitch_0
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 4316
    :sswitch_1
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_SUPPORT_COMPANION_CHIP:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 4312
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x37 -> :sswitch_1
    .end sparse-switch
.end method

.method private getEasyCameraResolution()I
    .locals 3

    .prologue
    const/16 v2, 0x2e

    .line 4323
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4324
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v1, 0x48

    if-ne v0, v1, :cond_1

    .line 4325
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4337
    :goto_0
    return v0

    .line 4326
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    if-ne v0, v2, :cond_2

    .line 4327
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->SHOT_AND_MORE_BACK_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4329
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4332
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    if-ne v0, v2, :cond_4

    .line 4333
    const-string v0, "1920x1080"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4334
    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v1, 0x34

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_6

    .line 4335
    :cond_5
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->WIDE_SELFIE_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4337
    :cond_6
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getKeyboardCoverCamcorderResolution()I
    .locals 1

    .prologue
    .line 4342
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->KEYBOARD_COVER_CAMCORDER_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getKeyboardCoverCameraResolution()I
    .locals 1

    .prologue
    .line 4346
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4347
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->KEYBOARD_COVER_BACK_CAMERA_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4349
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->KEYBOARD_COVER_FRONT_CAMERA_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getQuickLaunchType()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 4354
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4355
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4356
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 4357
    const-string v2, "double_tab_launch"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4361
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getShootingModeIdByModeName(Ljava/lang/String;)I
    .locals 7
    .param p1, "shootingModeName"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xe

    const/4 v2, 0x7

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4367
    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    move v0, v1

    .line 4433
    :cond_1
    :goto_1
    return v0

    .line 4367
    :sswitch_0
    const-string v6, "Animated GIF"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v1

    goto :goto_0

    :sswitch_1
    const-string v6, "Anti-fog"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v0

    goto :goto_0

    :sswitch_2
    const-string v6, "Aqua"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_3
    const-string v6, "Auto"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_4
    const-string v6, "Beauty face"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :sswitch_5
    const-string v6, "Panorama"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :sswitch_6
    const-string v6, "Continuous shot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x6

    goto :goto_0

    :sswitch_7
    const-string v6, "Dual Camera"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_8
    const-string v6, "Tag shot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x8

    goto :goto_0

    :sswitch_9
    const-string v6, "Fast motion"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x9

    goto :goto_0

    :sswitch_a
    const-string v6, "Food"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xa

    goto :goto_0

    :sswitch_b
    const-string v6, "Hyperlapse"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xb

    goto :goto_0

    :sswitch_c
    const-string v6, "Night"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v6, "Pro"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v6, "Rear-cam selfie"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    goto/16 :goto_0

    :sswitch_f
    const-string v6, "HDR (Rich tone)"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v6, "Selective focus"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v6, "Selfie"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v6, "Shot & more"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v6, "Slow motion"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v6, "Sound & shot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v6, "Sports"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v6, "Video Collage"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v6, "Virtual shot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v6, "Wide selfie"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x18

    goto/16 :goto_0

    .line 4369
    :pswitch_0
    const/16 v0, 0x3a

    goto/16 :goto_1

    .line 4371
    :pswitch_1
    const/16 v0, 0x31

    goto/16 :goto_1

    .line 4373
    :pswitch_2
    const/16 v0, 0x2a

    goto/16 :goto_1

    :pswitch_3
    move v0, v1

    .line 4375
    goto/16 :goto_1

    :pswitch_4
    move v0, v2

    .line 4377
    goto/16 :goto_1

    .line 4379
    :pswitch_5
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_MOTION_PANORAMA:Z

    if-eqz v0, :cond_2

    .line 4380
    const/16 v0, 0x48

    goto/16 :goto_1

    :cond_2
    move v0, v3

    .line 4382
    goto/16 :goto_1

    .line 4385
    :pswitch_6
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_NOT_SUPPORT_ZSL:Z

    if-nez v1, :cond_1

    const/16 v0, 0x11

    goto/16 :goto_1

    .line 4387
    :pswitch_7
    const/16 v0, 0x2f

    goto/16 :goto_1

    .line 4389
    :pswitch_8
    const/16 v0, 0x43

    goto/16 :goto_1

    .line 4391
    :pswitch_9
    const/16 v0, 0x40

    goto/16 :goto_1

    .line 4393
    :pswitch_a
    const/16 v0, 0x44

    goto/16 :goto_1

    .line 4395
    :pswitch_b
    const/16 v0, 0x4a

    goto/16 :goto_1

    .line 4397
    :pswitch_c
    const/16 v0, 0x17

    goto/16 :goto_1

    .line 4399
    :pswitch_d
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PRO:Z

    if-eqz v0, :cond_3

    .line 4400
    const/16 v0, 0x3b

    goto/16 :goto_1

    .line 4402
    :cond_3
    const/16 v0, 0x4b

    goto/16 :goto_1

    .line 4405
    :pswitch_e
    const/16 v0, 0x38

    goto/16 :goto_1

    :pswitch_f
    move v0, v4

    .line 4407
    goto/16 :goto_1

    .line 4409
    :pswitch_10
    const/16 v0, 0x2d

    goto/16 :goto_1

    .line 4411
    :pswitch_11
    const/16 v0, 0x37

    goto/16 :goto_1

    .line 4413
    :pswitch_12
    const/16 v0, 0x2e

    goto/16 :goto_1

    .line 4415
    :pswitch_13
    const/16 v0, 0x3f

    goto/16 :goto_1

    .line 4417
    :pswitch_14
    const/16 v0, 0x23

    goto/16 :goto_1

    .line 4419
    :pswitch_15
    const/16 v0, 0x28

    goto/16 :goto_1

    .line 4421
    :pswitch_16
    const/16 v0, 0x45

    goto/16 :goto_1

    .line 4423
    :pswitch_17
    const/16 v0, 0x3e

    goto/16 :goto_1

    .line 4425
    :pswitch_18
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_MOTION_WIDE_SELFIE:Z

    if-eqz v0, :cond_4

    .line 4426
    const/16 v0, 0x4e

    goto/16 :goto_1

    .line 4427
    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_WIDE_SELFIE:Z

    if-eqz v0, :cond_5

    .line 4428
    const/16 v0, 0x34

    goto/16 :goto_1

    .line 4430
    :cond_5
    const/16 v0, 0x4d

    goto/16 :goto_1

    .line 4367
    :sswitch_data_0
    .sparse-switch
        -0x6c9bda78 -> :sswitch_11
        -0x6bff4c61 -> :sswitch_15
        -0x4c2de052 -> :sswitch_16
        -0x40b9e52b -> :sswitch_12
        -0x2d24e020 -> :sswitch_8
        -0x2511d74f -> :sswitch_f
        -0x23b798fb -> :sswitch_14
        -0x216450f1 -> :sswitch_17
        -0x1cfe899f -> :sswitch_b
        -0x1916580d -> :sswitch_1
        -0x628a20c -> :sswitch_10
        0x13a8d -> :sswitch_d
        0x1f42dc -> :sswitch_2
        0x1f51cf -> :sswitch_3
        0x21807e -> :sswitch_a
        0x47c73f8 -> :sswitch_c
        0x1930d735 -> :sswitch_18
        0x25b8a682 -> :sswitch_e
        0x34874b61 -> :sswitch_4
        0x3717414b -> :sswitch_6
        0x43a10a95 -> :sswitch_5
        0x4593d295 -> :sswitch_13
        0x47e34349 -> :sswitch_7
        0x483193c7 -> :sswitch_0
        0x503d17da -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method private getShootingModeResourceString(I)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 4438
    packed-switch p1, :pswitch_data_0

    .line 4503
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCommandIdByShootingMode(I)I

    move-result v0

    .line 4504
    .local v0, "commandId":I
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isDownloadedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4505
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4508
    .end local v0    # "commandId":I
    :goto_0
    return-object v1

    .line 4440
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0088

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4443
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0091

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4446
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4448
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a008c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4451
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4453
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4455
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4457
    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4459
    :pswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0086

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4461
    :pswitch_a
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0093

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4463
    :pswitch_b
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4465
    :pswitch_c
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4467
    :pswitch_d
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0089

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4469
    :pswitch_e
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4473
    :pswitch_f
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4476
    :pswitch_10
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4478
    :pswitch_11
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4480
    :pswitch_12
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a009d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4482
    :pswitch_13
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0097

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4484
    :pswitch_14
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0081

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4486
    :pswitch_15
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0083

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4488
    :pswitch_16
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0095

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4490
    :pswitch_17
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a008e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4492
    :pswitch_18
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0099

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4494
    :pswitch_19
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a009b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4496
    :pswitch_1a
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4498
    :pswitch_1b
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4508
    .restart local v0    # "commandId":I
    :cond_0
    const-string v1, ""

    goto/16 :goto_0

    .line 4438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_14
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_18
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_19
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_f
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method private getShootingModeString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "commandId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 4518
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v0

    .line 4520
    .local v0, "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private declared-synchronized handleNotification()V
    .locals 8

    .prologue
    .line 4551
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-gtz v3, :cond_0

    .line 4571
    :goto_0
    monitor-exit p0

    return-void

    .line 4555
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;

    .line 4556
    .local v2, "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4557
    :try_start_2
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    .line 4558
    .local v0, "listener":Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    iget v7, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mModeid:I

    invoke-interface {v0, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(II)V

    goto :goto_2

    .line 4560
    .end local v0    # "listener":Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4551
    .end local v2    # "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 4560
    .restart local v2    # "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    :cond_1
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4561
    :try_start_5
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4562
    :try_start_6
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 4563
    .local v1, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    if-eqz v1, :cond_2

    .line 4564
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    .line 4565
    .restart local v0    # "listener":Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    iget v7, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mModeid:I

    invoke-interface {v0, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(II)V

    goto :goto_3

    .line 4568
    .end local v0    # "listener":Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
    .end local v1    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .restart local v1    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    :cond_2
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    .line 4570
    .end local v1    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    .end local v2    # "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    :cond_3
    :try_start_9
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0
.end method

.method private declared-synchronized handleNotification(II)V
    .locals 8
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 4524
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p2, v5}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;-><init>(IILcom/sec/android/app/camera/setting/CameraSettingsImpl$1;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4526
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_1

    .line 4548
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4530
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isEmptyRequestQueue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4531
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;

    .line 4532
    .local v2, "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4533
    :try_start_2
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    .line 4534
    .local v0, "listener":Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    iget v7, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mModeid:I

    invoke-interface {v0, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(II)V

    goto :goto_2

    .line 4536
    .end local v0    # "listener":Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4524
    .end local v2    # "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 4536
    .restart local v2    # "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    :cond_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4537
    :try_start_5
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4538
    :try_start_6
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 4539
    .local v1, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    if-eqz v1, :cond_3

    .line 4540
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    .line 4541
    .restart local v0    # "listener":Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    iget v7, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mModeid:I

    invoke-interface {v0, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(II)V

    goto :goto_3

    .line 4544
    .end local v0    # "listener":Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
    .end local v1    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .restart local v1    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    :cond_3
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    .line 4546
    .end local v1    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    .end local v2    # "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    :cond_4
    :try_start_9
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0
.end method

.method private initializeBackCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4574
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_FOCUS:Z

    if-nez v0, :cond_6

    .line 4575
    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 4576
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4586
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedBackCamcorderResolutionFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    if-nez v0, :cond_1

    .line 4587
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    .line 4588
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_rear_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4589
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4592
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_2

    .line 4593
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4596
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getObjectTrackingAF()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4598
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 4601
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSeparatedShootingMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4602
    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    .line 4604
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSeparatedShootingMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4605
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    .line 4608
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCameraPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4609
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateIfResolutionChanged()V

    .line 4611
    :cond_5
    return-void

    .line 4578
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFocusMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 4581
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 4582
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private initializeFrontCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4615
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_FOCUS:Z

    if-nez v0, :cond_0

    .line 4616
    new-array v0, v4, [I

    const/4 v1, 0x5

    aput v1, v0, v3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->loadFromPreferences([I)V

    .line 4619
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedFrontCamcorderResolutionFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4620
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    .line 4621
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_front_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4622
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4625
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_2

    .line 4626
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4629
    :cond_2
    new-array v0, v4, [I

    const/16 v1, 0x7d

    aput v1, v0, v3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->loadFromPreferences([I)V

    .line 4631
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 4634
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSeparatedShootingMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4635
    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    .line 4637
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSeparatedShootingMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4638
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    .line 4641
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCameraPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4642
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateIfResolutionChanged()V

    .line 4644
    :cond_5
    return-void
.end method

.method private isSeparatedShootingMode(I)Z
    .locals 1
    .param p1, "shootingMode"    # I

    .prologue
    .line 4647
    const/16 v0, 0x32

    if-eq p1, v0, :cond_0

    const/16 v0, 0x46

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs loadFromPreferences([I)V
    .locals 6
    .param p1, "indices"    # [I

    .prologue
    .line 4651
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 4652
    .local v0, "index":I
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadFromPreferences - index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4653
    sparse-switch v0, :sswitch_data_0

    .line 4876
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error in loadFromPreferences : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 4651
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4655
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFlashMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    .line 4656
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFlashMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4657
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_1

    .line 4660
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFlashMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    .line 4661
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mEasyCameraFlashMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4662
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_1

    .line 4665
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontFlashMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    .line 4666
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFrontFlashMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4667
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_1

    .line 4670
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontFlashMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    .line 4671
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mEasyCameraFrontFlashMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4672
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4675
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 4676
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mResolution : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4677
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4680
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFocusMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 4681
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFocusMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4682
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4685
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraDualEffect()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    .line 4686
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDualEffect : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4687
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4690
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getWhiteBalance()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    .line 4691
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mWB : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4692
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4695
    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getExposureValue()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 4696
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mExposureValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4697
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4700
    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraISO()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    .line 4701
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mISO : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4702
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4705
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraExposureMeter()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    .line 4706
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mExposureMeter : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4707
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4710
    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getViewMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    .line 4711
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<fullview> loadFromPreferences mFullviewPreview : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4712
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4715
    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    .line 4716
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHDR : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4717
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4720
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGPS()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    .line 4721
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mGPS : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4722
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4725
    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getReview()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    .line 4726
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mReview : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4727
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4730
    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionPhoto()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    .line 4731
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMotionPhoto : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4732
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4735
    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraShutterSound()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    .line 4736
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mShutterSound : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4737
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4740
    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStorage()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    .line 4741
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mStorage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4742
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4745
    :sswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSelfFlip()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    .line 4746
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFlip : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4747
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4750
    :sswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    .line 4751
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCamcorderResolution : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4752
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4755
    :sswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderAntiShake()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    .line 4756
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCamcorderAntiShake : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4757
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4760
    :sswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraVoiceCommand()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    .line 4761
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVoiceCommand : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4762
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4765
    :sswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGuideline()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    .line 4766
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mGuideLine : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4767
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4770
    :sswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getObjectTrackingAF()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    .line 4771
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mObjectTrackingAF : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4772
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4775
    :sswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSaveRichTone()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    .line 4776
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRichToneMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4777
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4780
    :sswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGestureControlMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    .line 4781
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mGestureControlMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4782
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4785
    :sswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVolumeKeyAs()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    .line 4786
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVolumeKeyAs : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4787
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4790
    :sswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAutoNightDetectionMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    .line 4791
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAutoNightDetection : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4792
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4795
    :sswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBeautyLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    .line 4796
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBeautyLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4797
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4800
    :sswitch_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSlimFaceLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    .line 4801
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSlimFaceLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4802
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4805
    :sswitch_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEyeEnlargeLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    .line 4806
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mEyeEnlargeLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4807
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4810
    :sswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackBeautyLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    .line 4811
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBackBeautyLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4812
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4815
    :sswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAntiFogLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    .line 4816
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAntiFogLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4817
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4820
    :sswitch_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    .line 4821
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTimer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4822
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4825
    :sswitch_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    .line 4826
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mInterval : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4827
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4830
    :sswitch_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    .line 4831
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVideoCollageType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4832
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4835
    :sswitch_24
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageRecordingTime()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    .line 4836
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVideoCollageRecordingTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4837
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4840
    :sswitch_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getPictureFormat()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    .line 4841
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPictureFormat : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4842
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4845
    :sswitch_26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionPanoramaMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    .line 4846
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMotionPanoramaMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4847
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4850
    :sswitch_27
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionWideSelfieMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    .line 4851
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMotionWideSelfieMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4852
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4855
    :sswitch_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getColorTune()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    .line 4856
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mColorTune : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4857
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4860
    :sswitch_29
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQRCodeDetection()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    .line 4861
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mQRCodeDetection : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4862
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4865
    :sswitch_2a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFoodBlurType()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    .line 4866
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFoodBlurType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4867
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4870
    :sswitch_2b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFloatingCameraButton()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    .line 4871
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFloatingCameraButton : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4872
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4880
    .end local v0    # "index":I
    :cond_0
    return-void

    .line 4653
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_21
        0x7 -> :sswitch_8
        0x9 -> :sswitch_7
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_c
        0xe -> :sswitch_28
        0x11 -> :sswitch_e
        0x13 -> :sswitch_16
        0x14 -> :sswitch_d
        0x15 -> :sswitch_10
        0x16 -> :sswitch_11
        0x17 -> :sswitch_17
        0x22 -> :sswitch_18
        0x26 -> :sswitch_12
        0x2a -> :sswitch_f
        0x47 -> :sswitch_15
        0x49 -> :sswitch_1a
        0x57 -> :sswitch_1b
        0x5a -> :sswitch_6
        0x6a -> :sswitch_3
        0x6c -> :sswitch_1
        0x6d -> :sswitch_1c
        0x6e -> :sswitch_1d
        0x70 -> :sswitch_1e
        0x75 -> :sswitch_20
        0x7d -> :sswitch_19
        0x7f -> :sswitch_22
        0x83 -> :sswitch_23
        0x84 -> :sswitch_24
        0x87 -> :sswitch_26
        0x8d -> :sswitch_2a
        0xaa -> :sswitch_2
        0xad -> :sswitch_27
        0xb4 -> :sswitch_1f
        0xb5 -> :sswitch_2b
        0x138 -> :sswitch_b
        0x13b -> :sswitch_25
        0x13c -> :sswitch_29
        0xbb9 -> :sswitch_13
        0xbbf -> :sswitch_14
    .end sparse-switch
.end method

.method private notifyCameraSettingChanged(II)V
    .locals 3
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I

    .prologue
    .line 4883
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mNotificationHandler:Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mNotificationHandler:Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4884
    return-void
.end method

.method private notifyCameraSettingChanged(IIZ)V
    .locals 0
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I
    .param p3, "syncmode"    # Z

    .prologue
    .line 4887
    if-eqz p3, :cond_0

    .line 4888
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->handleNotification(II)V

    .line 4892
    :goto_0
    return-void

    .line 4890
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method private resetCameraGlobalSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4895
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraShutterSound(I)V

    .line 4896
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VOLUME_KEY_AS:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setVolumeKeyAs(I)V

    .line 4897
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraShutterSound(I)V

    .line 4898
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_CAMERA_HDR:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraHDR(I)V

    .line 4899
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setRearLensDistortionCorrection(I)V

    .line 4900
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setObjectTrackingAF(I)V

    .line 4901
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setGuideline(I)V

    .line 4902
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setReview(I)V

    .line 4903
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setTimer(I)V

    .line 4904
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setInterval(I)V

    .line 4905
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setGestureControlMode(I)V

    .line 4906
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultAutoNightDetectionMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setAutoNightDetectionMode(I)V

    .line 4907
    const/16 v0, 0x57

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    invoke-direct {p0, v0, v1, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 4908
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setSaveRichTone(I)V

    .line 4909
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraVoiceCommand(I)V

    .line 4910
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VIEW_MODE:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setViewMode(I)V

    .line 4911
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setVideoCollageType(IZ)V

    .line 4912
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setVideoCollageRecordingTime(I)V

    .line 4913
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setPictureFormat(I)V

    .line 4914
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_QRCODE_DETECTION:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setQRCodeDetection(I)V

    .line 4915
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setHRMShutter(I)V

    .line 4916
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFoodBlurType(I)V

    .line 4917
    const/16 v0, 0x238c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setWatermarkId(I)V

    .line 4918
    return-void
.end method

.method private resetCameraLocalSettings(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4922
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 4924
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setSelfFlip(I)V

    .line 4925
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolution(I)Z

    .line 4926
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCamcorderResolution(I)Z

    .line 4928
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setZoomValue(I)V

    .line 4929
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFlashMode(I)V

    .line 4930
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFrontFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFrontFlashMode(I)V

    .line 4931
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setExposureValue(I)V

    .line 4932
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setTimer(I)V

    .line 4933
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setWhiteBalance(I)V

    .line 4934
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    if-ne v0, v2, :cond_2

    .line 4935
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_DUAL_EFFECT:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraDualEffect(I)V

    .line 4939
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraISO(I)V

    .line 4940
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraExposureMeter(I)V

    .line 4941
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCamcorderAudioRecording(I)V

    .line 4942
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderAntishake()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCamcorderAntiShake(I)V

    .line 4943
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setMotionPhoto(I)V

    .line 4944
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setBeautyLevel(I)V

    .line 4945
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SLIMFACE:Z

    if-eqz v0, :cond_0

    .line 4946
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setSlimFaceLevel(I)V

    .line 4948
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_EYEENLARGE:Z

    if-eqz v0, :cond_1

    .line 4949
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setEyeEnlargeLevel(I)V

    .line 4951
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraVoiceCommand(I)V

    .line 4953
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    .line 4954
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    .line 4955
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    .line 4956
    return-void

    .line 4937
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraEffect(I)V

    goto :goto_0
.end method

.method private resetCommonGlobalSettings()V
    .locals 2

    .prologue
    .line 4959
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_DisableGPSMenu"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4960
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setGPS(I)V

    .line 4962
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultStorage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setStorage(I)V

    .line 4963
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isStorageMounted()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateStorage(Z)V

    .line 4964
    return-void
.end method

.method private resetEffectLevelSettingValue()V
    .locals 2

    .prologue
    .line 4967
    const-string v0, "CameraSettings"

    const-string v1, "resetEffectLevelSettingValue"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4968
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setEffectStrengthLevel(I)V

    .line 4969
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setEffectVignetteLevel(I)V

    .line 4970
    return-void
.end method

.method private setCameraFacing(I)V
    .locals 3
    .param p1, "cameraFacing"    # I

    .prologue
    .line 565
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 566
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraFacing - wrong camera facing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :goto_0
    return-void

    .line 569
    :cond_0
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraFacing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    goto :goto_0
.end method

.method private setCameraIdByShootingModeId(II)V
    .locals 3
    .param p1, "shootingMode"    # I
    .param p2, "cameraId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4973
    sparse-switch p1, :sswitch_data_0

    .line 5033
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 5036
    :goto_0
    return-void

    .line 4975
    :sswitch_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-eqz v0, :cond_1

    .line 4976
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-eqz v0, :cond_0

    .line 4977
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4979
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4981
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-eqz v0, :cond_2

    .line 4982
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4984
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4988
    :sswitch_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SOUND_AND_SHOT:Z

    if-eqz v0, :cond_4

    .line 4989
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SOUND_AND_SHOT:Z

    if-eqz v0, :cond_3

    .line 4990
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4992
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4994
    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SOUND_AND_SHOT:Z

    if-eqz v0, :cond_5

    .line 4995
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4997
    :cond_5
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 5001
    :sswitch_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v0, :cond_7

    .line 5002
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v0, :cond_6

    .line 5003
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 5005
    :cond_6
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 5007
    :cond_7
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v0, :cond_8

    .line 5008
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 5010
    :cond_8
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 5014
    :sswitch_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v0, :cond_a

    .line 5015
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v0, :cond_9

    .line 5016
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 5018
    :cond_9
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 5020
    :cond_a
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v0, :cond_b

    .line 5021
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 5023
    :cond_b
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 5030
    :sswitch_4
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4973
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x23 -> :sswitch_1
        0x34 -> :sswitch_4
        0x37 -> :sswitch_4
        0x3e -> :sswitch_3
        0x45 -> :sswitch_2
        0x4d -> :sswitch_4
        0x4e -> :sswitch_4
    .end sparse-switch
.end method

.method private setCameraResolutionForDual(II)Z
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "resolution"    # I

    .prologue
    .line 5039
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraResolutionForDual : cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resolution="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5041
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 5042
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_front_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5048
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 5043
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 5044
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_rear_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 5046
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_rear_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setDefaultFrontCameraShootingModeOrder()V
    .locals 4

    .prologue
    .line 5053
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->initializeDefaultFrontCameraShootingModeOrderList()V

    .line 5055
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 5057
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5058
    .local v0, "item":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    goto :goto_0

    .line 5061
    .end local v0    # "item":I
    :cond_0
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDefaultFrontCameraShootingModeOrder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5062
    return-void
.end method

.method private setDualMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 5065
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    if-eq v0, p1, :cond_0

    .line 5066
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDualMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5067
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    .line 5069
    :cond_0
    return-void
.end method

.method private setManualExposureMeter(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5072
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureMeter:I

    .line 5073
    return-void
.end method

.method private setManualExposureValue(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5076
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    .line 5077
    return-void
.end method

.method private setManualFocusLength(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5080
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualFocusLength:I

    .line 5081
    return-void
.end method

.method private setManualISO(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5084
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualISO:I

    .line 5085
    return-void
.end method

.method private setManualMultiAF(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5088
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    .line 5089
    return-void
.end method

.method private setManualShutterSpeed(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5092
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    .line 5093
    return-void
.end method

.method private setManualWhiteBalance(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5096
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    .line 5097
    return-void
.end method

.method private updateDualCameraSetting(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 5101
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_DUALCAMERA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    .line 5126
    :cond_0
    :goto_0
    return-void

    .line 5104
    :cond_1
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDualCameraSetting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5106
    const-string v0, "pref_camera_rear_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_camera_dual_rear_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5107
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5108
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDualCameraSetting set wrong resolution for back camera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5111
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5112
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_rear_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5114
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5115
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_rear_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 5117
    :cond_6
    const-string v0, "pref_camera_front_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "pref_camera_dual_front_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5118
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 5119
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDualCameraSetting set wrong resolution for front camera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5122
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5123
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_front_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetListeners()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 284
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public getAntiFogLevel()I
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 294
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    .line 297
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_anti_fog_level_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getAttachVideoFixedResolution()I
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachBackVideoFixedResolution:I

    .line 317
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachFrontVideoFixedResolution:I

    goto :goto_0
.end method

.method public getAutoNightDetectionMode()I
    .locals 3

    .prologue
    .line 323
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_NIGHT_DETECTION:Z

    if-nez v0, :cond_0

    .line 324
    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_auto_night_detection_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultAutoNightDetectionMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getBackBeautyLevel()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 343
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_back_camera_beauty_level_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getBackCameraShootingModeOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDefaultBackCameraShootingModeOrder()V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    .line 370
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_back_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBeautyLevel()I
    .locals 3

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    .line 390
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_beauty_level_key"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getBeautyMode()I
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_beauty_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCallStatus()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCallStatus:I

    return v0
.end method

.method public getCamcorderAntiShake()I
    .locals 3

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderAntishake()I

    move-result v0

    .line 435
    :goto_0
    return v0

    .line 432
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_FRONT_ANTISHAKE:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    const/4 v0, 0x0

    goto :goto_0

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camcorder_antishake_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderAntishake()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0
.end method

.method public getCamcorderAudioRecording()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAudioRecording:I

    return v0
.end method

.method public getCamcorderResolution()I
    .locals 3

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_overridden_camcorder_resolution"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 489
    :goto_0
    return v0

    .line 475
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_1

    .line 476
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCoverCamcorderResolution()I

    move-result v0

    goto :goto_0

    .line 477
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    if-eqz v0, :cond_2

    .line 478
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getKeyboardCoverCamcorderResolution()I

    move-result v0

    goto :goto_0

    .line 479
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_3

    .line 480
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEasyCamcorderResolution()I

    move-result v0

    goto :goto_0

    .line 481
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachVideoFixedResolution()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 482
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAttachVideoFixedResolution()I

    move-result v0

    goto :goto_0

    .line 484
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_rear_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 486
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 487
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_dual_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 489
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_front_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCamcorderVideoDurationInMS()I
    .locals 1

    .prologue
    .line 496
    const/4 v0, -0x1

    return v0
.end method

.method public getCameraDualEffect()I
    .locals 3

    .prologue
    .line 501
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_dual_effect"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_DUAL_EFFECT:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_DUAL_EFFECT:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraDualEffect(I)V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_dual_effect"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_DUAL_EFFECT:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraExposureMeter()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 531
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_1

    .line 538
    :cond_0
    :goto_0
    return v0

    .line 535
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureMeter:I

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_exposure_meter_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraFacing()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    return v0
.end method

.method public getCameraFocusMode()I
    .locals 3

    .prologue
    .line 576
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 577
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    .line 585
    :goto_0
    return v0

    .line 579
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v0, :cond_2

    .line 580
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    const/4 v0, 0x0

    goto :goto_0

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 585
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    goto :goto_0
.end method

.method public getCameraHDR()I
    .locals 3

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEasyCameraHDR()I

    move-result v0

    .line 597
    :goto_0
    return v0

    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_hdr_key"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_CAMERA_HDR:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_rear_hdr_key"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_CAMERA_HDR:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraISO()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 624
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualISO:I

    if-nez v1, :cond_0

    .line 627
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_iso_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 649
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    return v0
.end method

.method public getCameraQuality()I
    .locals 1

    .prologue
    .line 683
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQuality:I

    return v0
.end method

.method public getCameraResolution()I
    .locals 3

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-eqz v0, :cond_0

    .line 699
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 712
    :goto_0
    return v0

    .line 700
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    if-eqz v0, :cond_1

    .line 701
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getKeyboardCoverCameraResolution()I

    move-result v0

    goto :goto_0

    .line 702
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_2

    .line 703
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEasyCameraResolution()I

    move-result v0

    goto :goto_0

    .line 705
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 706
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_rear_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 707
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 708
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_rear_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 709
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 710
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_front_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 712
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraResolutionByCameraId(I)I
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 719
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_rear_resolution_key"

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 726
    :goto_0
    return v0

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_resolution_key"

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 724
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_rear_resolution_key"

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 726
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_front_resolution_key"

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraResolutionChanged()Z
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraResolutionChanged:Z

    return v0
.end method

.method public getCameraResolutionForDual()I
    .locals 3

    .prologue
    .line 742
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_NORMAL_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 744
    .local v0, "resolutionID":I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 745
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 746
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_WIDE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 764
    :cond_0
    :goto_0
    return v0

    .line 747
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 748
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_WIDE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 750
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 751
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 752
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_SQUARE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 753
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 754
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_SQUARE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 757
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 758
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_NORMAL_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 759
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 760
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_NORMAL_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraShutterSound()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 769
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getForcedShutterSound()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 772
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_shutter_sound_key"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraSingleEffect()I
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isEffectSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    const/4 v0, 0x0

    .line 801
    :goto_0
    return v0

    .line 798
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffect:I

    goto :goto_0

    .line 801
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffect:I

    goto :goto_0
.end method

.method public getCameraVoiceCommand()I
    .locals 3

    .prologue
    .line 807
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_voice_control_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public getColorTune()I
    .locals 4

    .prologue
    .line 841
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_colortune"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 843
    .local v0, "colortuneValue":I
    packed-switch v0, :pswitch_data_0

    .line 856
    :goto_0
    return v0

    .line 845
    :pswitch_0
    const/4 v0, 0x5

    .line 846
    goto :goto_0

    .line 848
    :pswitch_1
    const/4 v0, 0x6

    .line 849
    goto :goto_0

    .line 851
    :pswitch_2
    const/4 v0, 0x7

    .line 852
    goto :goto_0

    .line 843
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCommandIdByCurrentShootingMode()I
    .locals 1

    .prologue
    .line 872
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCommandIdByShootingMode(I)I

    move-result v0

    return v0
.end method

.method public getCommandIdByShootingMode(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 877
    const/4 v0, 0x0

    .line 879
    .local v0, "commandId":I
    packed-switch p1, :pswitch_data_0

    .line 987
    :goto_0
    :pswitch_0
    return v0

    .line 881
    :pswitch_1
    const/16 v0, 0x12c

    .line 882
    goto :goto_0

    .line 884
    :pswitch_2
    const/16 v0, 0x13d

    .line 885
    goto :goto_0

    .line 887
    :pswitch_3
    const/16 v0, 0x12d

    .line 888
    goto :goto_0

    .line 890
    :pswitch_4
    const/16 v0, 0x133

    .line 891
    goto :goto_0

    .line 893
    :pswitch_5
    const/16 v0, 0x12e

    .line 894
    goto :goto_0

    .line 896
    :pswitch_6
    const/16 v0, 0x162

    .line 897
    goto :goto_0

    .line 899
    :pswitch_7
    const/16 v0, 0x150

    .line 900
    goto :goto_0

    .line 902
    :pswitch_8
    const/16 v0, 0x152

    .line 903
    goto :goto_0

    .line 905
    :pswitch_9
    const/16 v0, 0x149

    .line 906
    goto :goto_0

    .line 908
    :pswitch_a
    const/16 v0, 0x151

    .line 909
    goto :goto_0

    .line 911
    :pswitch_b
    const/16 v0, 0x13f

    .line 912
    goto :goto_0

    .line 914
    :pswitch_c
    const/16 v0, 0x14d

    .line 915
    goto :goto_0

    .line 917
    :pswitch_d
    const/16 v0, 0x14e

    .line 918
    goto :goto_0

    .line 920
    :pswitch_e
    const/16 v0, 0x14f

    .line 921
    goto :goto_0

    .line 923
    :pswitch_f
    const/16 v0, 0x13a

    .line 924
    goto :goto_0

    .line 926
    :pswitch_10
    const/16 v0, 0x157

    .line 927
    goto :goto_0

    .line 929
    :pswitch_11
    const/16 v0, 0x154

    .line 930
    goto :goto_0

    .line 932
    :pswitch_12
    const/16 v0, 0x156

    .line 933
    goto :goto_0

    .line 935
    :pswitch_13
    const/16 v0, 0x166

    .line 936
    goto :goto_0

    .line 938
    :pswitch_14
    const/16 v0, 0x167

    .line 939
    goto :goto_0

    .line 941
    :pswitch_15
    const/16 v0, 0x158

    .line 942
    goto :goto_0

    .line 944
    :pswitch_16
    const/16 v0, 0x164

    .line 945
    goto :goto_0

    .line 947
    :pswitch_17
    const/16 v0, 0x15a

    .line 948
    goto :goto_0

    .line 950
    :pswitch_18
    const/16 v0, 0x15b

    .line 951
    goto :goto_0

    .line 953
    :pswitch_19
    const/16 v0, 0x15c

    .line 954
    goto :goto_0

    .line 956
    :pswitch_1a
    const/16 v0, 0x15d

    .line 957
    goto :goto_0

    .line 959
    :pswitch_1b
    const/16 v0, 0x15e

    .line 960
    goto :goto_0

    .line 962
    :pswitch_1c
    const/16 v0, 0x161

    .line 963
    goto :goto_0

    .line 965
    :pswitch_1d
    const/16 v0, 0x15f

    .line 966
    goto :goto_0

    .line 968
    :pswitch_1e
    const/16 v0, 0x160

    .line 969
    goto :goto_0

    .line 971
    :pswitch_1f
    const/16 v0, 0x163

    .line 972
    goto :goto_0

    .line 974
    :pswitch_20
    const/16 v0, 0x155

    .line 975
    goto :goto_0

    .line 977
    :pswitch_21
    const/16 v0, 0x165

    .line 978
    goto :goto_0

    .line 980
    :pswitch_22
    const/16 v0, 0x169

    .line 981
    goto :goto_0

    .line 983
    :pswitch_23
    const/16 v0, 0x168

    goto :goto_0

    .line 879
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_1b
        :pswitch_20
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_1a
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1e
        :pswitch_21
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1f
        :pswitch_16
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_23
        :pswitch_22
    .end packed-switch
.end method

.method public getDefaultBackBeautyLevel()I
    .locals 1

    .prologue
    .line 992
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultBackCameraShootingModeOrder()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 997
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDefaultBeautyLevel()I
    .locals 1

    .prologue
    .line 1002
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    return v0
.end method

.method public getDefaultCamcorderResolution()I
    .locals 3

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1008
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_0

    .line 1009
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1010
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 1011
    const-string v1, "csc_pref_camcorder_resolution_key"

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1018
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :goto_0
    return v1

    .line 1014
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 1015
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1016
    :cond_2
    const-string v1, "1920x1080"

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 1018
    :cond_3
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getDefaultFrontCameraShootingModeOrder()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1024
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDefaultShootingModeByCurrentCameraId()I
    .locals 1

    .prologue
    .line 1029
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    .line 1032
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEffectListType()I
    .locals 3

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_effect_list_type"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_EFFECT_LIST_TYPE:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1041
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_back_effect_list_type"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_EFFECT_LIST_TYPE:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getEffectNameForLogging(I)Ljava/lang/String;
    .locals 1
    .param p1, "effectId"    # I

    .prologue
    .line 1057
    if-nez p1, :cond_0

    .line 1058
    const-string v0, "None"

    .line 1075
    :goto_0
    return-object v0

    .line 1060
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_4

    .line 1061
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1062
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1063
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1065
    :cond_1
    const-string v0, "None"

    goto :goto_0

    .line 1068
    :cond_2
    invoke-static {p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isValidExternalId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1069
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1071
    :cond_3
    const-string v0, "None"

    goto :goto_0

    .line 1075
    :cond_4
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraParameters;->getEffectString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEffectProcessorMode()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1082
    const/4 v0, 0x0

    .line 1084
    .local v0, "mode":I
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1085
    const/4 v0, 0x1

    .line 1088
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    sparse-switch v1, :sswitch_data_0

    .line 1116
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isSwitchToCamcorderPreview()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isEffectRecordingRestricted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1117
    const/4 v0, 0x0

    .line 1120
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_3

    .line 1122
    const/4 v0, 0x0

    .line 1125
    :cond_3
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEffectProcessorMode - mShootingMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    return v0

    .line 1090
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShapeCorrection()I

    move-result v1

    if-eq v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSpotlightLevel()I

    move-result v1

    if-lez v1, :cond_1

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1091
    const/4 v0, 0x2

    goto :goto_0

    .line 1095
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getColorTune()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1096
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEffectProcessorMode - getColorTune(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getColorTune()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    const/4 v0, 0x3

    goto :goto_0

    .line 1101
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 1102
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 1103
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 1104
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 1106
    :cond_5
    const/4 v0, 0x0

    .line 1108
    goto/16 :goto_0

    .line 1110
    :sswitch_3
    const/4 v0, 0x5

    .line 1111
    goto/16 :goto_0

    .line 1088
    :sswitch_data_0
    .sparse-switch
        0x37 -> :sswitch_0
        0x3b -> :sswitch_1
        0x44 -> :sswitch_3
        0x45 -> :sswitch_2
    .end sparse-switch
.end method

.method public getEffectStrengthLevel()I
    .locals 1

    .prologue
    .line 1132
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffectStrengthLevel:I

    .line 1135
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffectStrengthLevel:I

    goto :goto_0
.end method

.method public getEffectVignetteLevel()I
    .locals 1

    .prologue
    .line 1152
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffectVignetteLevel:I

    .line 1155
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffectVignetteLevel:I

    goto :goto_0
.end method

.method public getExposureValue()I
    .locals 3

    .prologue
    .line 1171
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    if-nez v0, :cond_0

    .line 1172
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 1174
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_exposure_value_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getEyeEnlargeLevel()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1196
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 1199
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_eyeenlarge_level_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getFeatureValueByCommandIdForLogging(IZ)Ljava/lang/String;
    .locals 1
    .param p1, "commandId"    # I
    .param p2, "isFront"    # Z

    .prologue
    .line 1216
    const/4 v0, 0x0

    .line 1217
    .local v0, "featureId":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 1416
    :goto_0
    return-object v0

    .line 1219
    :sswitch_0
    const-string v0, "0020"

    .line 1220
    goto :goto_0

    .line 1223
    :sswitch_1
    const-string v0, "0040"

    .line 1224
    goto :goto_0

    .line 1226
    :sswitch_2
    const-string v0, "G008"

    .line 1227
    goto :goto_0

    .line 1229
    :sswitch_3
    const-string v0, "Z007"

    .line 1230
    goto :goto_0

    .line 1232
    :sswitch_4
    const-string v0, "Z010"

    .line 1233
    goto :goto_0

    .line 1235
    :sswitch_5
    const-string v0, "Z092"

    .line 1236
    goto :goto_0

    .line 1238
    :sswitch_6
    const-string v0, "Z012"

    .line 1239
    goto :goto_0

    .line 1241
    :sswitch_7
    const-string v0, "Z013"

    .line 1242
    goto :goto_0

    .line 1244
    :sswitch_8
    const-string v0, "Z014"

    .line 1245
    goto :goto_0

    .line 1247
    :sswitch_9
    const-string v0, "Z015"

    .line 1248
    goto :goto_0

    .line 1250
    :sswitch_a
    if-eqz p2, :cond_0

    .line 1251
    const-string v0, "Z018"

    goto :goto_0

    .line 1253
    :cond_0
    const-string v0, "Z017"

    .line 1255
    goto :goto_0

    .line 1257
    :sswitch_b
    if-eqz p2, :cond_1

    .line 1258
    const-string v0, "Z020"

    goto :goto_0

    .line 1260
    :cond_1
    const-string v0, "Z019"

    .line 1262
    goto :goto_0

    .line 1264
    :sswitch_c
    const-string v0, "Z022"

    .line 1265
    goto :goto_0

    .line 1267
    :sswitch_d
    const-string v0, "Z023"

    .line 1268
    goto :goto_0

    .line 1270
    :sswitch_e
    const-string v0, "Z024"

    .line 1271
    goto :goto_0

    .line 1273
    :sswitch_f
    const-string v0, "Z025"

    .line 1274
    goto :goto_0

    .line 1276
    :sswitch_10
    const-string v0, "Z083"

    .line 1277
    goto :goto_0

    .line 1279
    :sswitch_11
    const-string v0, "Z053"

    .line 1280
    goto :goto_0

    .line 1282
    :sswitch_12
    const-string v0, "Z054"

    .line 1283
    goto :goto_0

    .line 1285
    :sswitch_13
    const-string v0, "Z055"

    .line 1286
    goto :goto_0

    .line 1288
    :sswitch_14
    const-string v0, "Z056"

    .line 1289
    goto :goto_0

    .line 1291
    :sswitch_15
    const-string v0, "Z057"

    .line 1292
    goto :goto_0

    .line 1294
    :sswitch_16
    const-string v0, "Z058"

    .line 1295
    goto :goto_0

    .line 1297
    :sswitch_17
    const-string v0, "Z061"

    .line 1298
    goto :goto_0

    .line 1300
    :sswitch_18
    const-string v0, "Z104"

    .line 1301
    goto :goto_0

    .line 1303
    :sswitch_19
    const-string v0, "Z116"

    .line 1304
    goto :goto_0

    .line 1306
    :sswitch_1a
    const-string v0, "Z105"

    .line 1307
    goto :goto_0

    .line 1309
    :sswitch_1b
    const-string v0, "Z142"

    .line 1310
    goto :goto_0

    .line 1312
    :sswitch_1c
    const-string v0, "Z084"

    .line 1313
    goto :goto_0

    .line 1315
    :sswitch_1d
    const-string v0, "Z085"

    .line 1316
    goto :goto_0

    .line 1318
    :sswitch_1e
    const-string v0, "Z088"

    .line 1319
    goto :goto_0

    .line 1321
    :sswitch_1f
    const-string v0, "G007"

    .line 1322
    goto :goto_0

    .line 1324
    :sswitch_20
    const-string v0, "0013"

    .line 1325
    goto :goto_0

    .line 1327
    :sswitch_21
    const-string v0, "0037"

    .line 1328
    goto :goto_0

    .line 1330
    :sswitch_22
    const-string v0, "Z009"

    .line 1331
    goto :goto_0

    .line 1333
    :sswitch_23
    const-string v0, "Z034"

    .line 1334
    goto :goto_0

    .line 1336
    :sswitch_24
    const-string v0, "Z008"

    .line 1337
    goto :goto_0

    .line 1339
    :sswitch_25
    const-string v0, "0042"

    .line 1340
    goto :goto_0

    .line 1342
    :sswitch_26
    const-string v0, "Z134"

    .line 1343
    goto :goto_0

    .line 1345
    :sswitch_27
    const-string v0, "Z121"

    .line 1346
    goto/16 :goto_0

    .line 1348
    :sswitch_28
    const-string v0, "Z122"

    .line 1349
    goto/16 :goto_0

    .line 1351
    :sswitch_29
    const-string v0, "Z123"

    .line 1352
    goto/16 :goto_0

    .line 1354
    :sswitch_2a
    const-string v0, "Z124"

    .line 1355
    goto/16 :goto_0

    .line 1357
    :sswitch_2b
    const-string v0, "Z125"

    .line 1358
    goto/16 :goto_0

    .line 1360
    :sswitch_2c
    const-string v0, "Z126"

    .line 1361
    goto/16 :goto_0

    .line 1363
    :sswitch_2d
    const-string v0, "Z127"

    .line 1364
    goto/16 :goto_0

    .line 1366
    :sswitch_2e
    const-string v0, "Z128"

    .line 1367
    goto/16 :goto_0

    .line 1369
    :sswitch_2f
    const-string v0, "Z129"

    .line 1370
    goto/16 :goto_0

    .line 1372
    :sswitch_30
    const-string v0, "Z080"

    .line 1373
    goto/16 :goto_0

    .line 1375
    :sswitch_31
    const-string v0, "Z077"

    .line 1376
    goto/16 :goto_0

    .line 1378
    :sswitch_32
    const-string v0, "Z078"

    .line 1379
    goto/16 :goto_0

    .line 1381
    :sswitch_33
    const-string v0, "Z079"

    .line 1382
    goto/16 :goto_0

    .line 1384
    :sswitch_34
    const-string v0, "Z076"

    .line 1385
    goto/16 :goto_0

    .line 1387
    :sswitch_35
    const-string v0, "G004"

    .line 1388
    goto/16 :goto_0

    .line 1390
    :sswitch_36
    const-string v0, "Z132"

    .line 1391
    goto/16 :goto_0

    .line 1393
    :sswitch_37
    const-string v0, "Z144"

    .line 1394
    goto/16 :goto_0

    .line 1396
    :sswitch_38
    const-string v0, "G009"

    .line 1397
    goto/16 :goto_0

    .line 1399
    :sswitch_39
    const-string v0, "G002"

    .line 1400
    goto/16 :goto_0

    .line 1402
    :sswitch_3a
    const-string v0, "G006"

    .line 1403
    goto/16 :goto_0

    .line 1405
    :sswitch_3b
    const-string v0, "G019"

    .line 1406
    goto/16 :goto_0

    .line 1408
    :sswitch_3c
    const-string v0, "G020"

    .line 1409
    goto/16 :goto_0

    .line 1411
    :sswitch_3d
    const-string v0, "G021"

    .line 1412
    goto/16 :goto_0

    .line 1217
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_6
        0x3 -> :sswitch_1a
        0x4 -> :sswitch_a
        0x6 -> :sswitch_2
        0x7 -> :sswitch_7
        0x8 -> :sswitch_1
        0x9 -> :sswitch_9
        0xa -> :sswitch_8
        0xb -> :sswitch_17
        0xc -> :sswitch_3
        0x11 -> :sswitch_22
        0x13 -> :sswitch_1e
        0x14 -> :sswitch_24
        0x15 -> :sswitch_3b
        0x16 -> :sswitch_39
        0x18 -> :sswitch_4
        0x1d -> :sswitch_0
        0x1e -> :sswitch_36
        0x23 -> :sswitch_23
        0x24 -> :sswitch_38
        0x33 -> :sswitch_21
        0x47 -> :sswitch_20
        0x48 -> :sswitch_1f
        0x51 -> :sswitch_e
        0x54 -> :sswitch_1d
        0x6d -> :sswitch_30
        0x6e -> :sswitch_32
        0x6f -> :sswitch_33
        0x70 -> :sswitch_31
        0x71 -> :sswitch_35
        0x75 -> :sswitch_3c
        0x77 -> :sswitch_d
        0x78 -> :sswitch_19
        0x79 -> :sswitch_5
        0x7f -> :sswitch_1
        0x83 -> :sswitch_13
        0x84 -> :sswitch_12
        0x87 -> :sswitch_37
        0x89 -> :sswitch_1c
        0x90 -> :sswitch_3d
        0x91 -> :sswitch_18
        0x92 -> :sswitch_3a
        0xaa -> :sswitch_1b
        0xac -> :sswitch_34
        0xbb9 -> :sswitch_b
        0xbbf -> :sswitch_25
        0xbe0 -> :sswitch_14
        0x189e -> :sswitch_11
        0x1c24 -> :sswitch_f
        0x1c26 -> :sswitch_10
        0x1c27 -> :sswitch_c
        0x1c2b -> :sswitch_15
        0x1c2c -> :sswitch_16
        0x1c34 -> :sswitch_26
        0x1c35 -> :sswitch_27
        0x1c36 -> :sswitch_28
        0x1c37 -> :sswitch_29
        0x1c38 -> :sswitch_2a
        0x1c39 -> :sswitch_2b
        0x1c3a -> :sswitch_2c
        0x1c3b -> :sswitch_2d
        0x1c3c -> :sswitch_2e
        0x1c3d -> :sswitch_2f
    .end sparse-switch
.end method

.method public getFlashMode()I
    .locals 3

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_flash_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFlashMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFloatingCameraButton()I
    .locals 3

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_floating_camera_button_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public getFocusLength()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1466
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualFocusLength:I

    if-nez v1, :cond_0

    .line 1469
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_focus_length"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getFontScale()F
    .locals 1

    .prologue
    .line 1494
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFontScale:F

    return v0
.end method

.method public getFoodBlurType()I
    .locals 1

    .prologue
    .line 1507
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    return v0
.end method

.method public getFoodColorTuneValue()I
    .locals 3

    .prologue
    const/4 v0, 0x4

    .line 1521
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 1524
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_food_level_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getForcedShutterSound()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1541
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_1

    .line 1542
    const/4 v1, 0x0

    .line 1543
    .local v1, "forcedShutterSound":I
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1544
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 1545
    const-string v3, "csc_pref_camera_forced_shuttersound_key"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1549
    :goto_0
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getForcedShutterSound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "forcedShutterSound":I
    :goto_1
    return v1

    .line 1547
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "forcedShutterSound":I
    :cond_0
    const-string v2, "CameraSettings"

    const-string v3, "Warning : sound policy not working normally in forced shutter sound"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "forcedShutterSound":I
    :cond_1
    move v1, v2

    .line 1552
    goto :goto_1
.end method

.method public getFrontCameraShootingModeOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 1560
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDefaultFrontCameraShootingModeOrder()V

    .line 1562
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 1563
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1564
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 1566
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_front_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFrontFlashMode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1583
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-eqz v1, :cond_1

    .line 1584
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    .line 1590
    :cond_0
    :goto_0
    return v0

    .line 1585
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-nez v1, :cond_0

    .line 1587
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v1, :cond_0

    .line 1588
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_flash_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFrontFlashMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getGPS()I
    .locals 3

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_gps_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public getGestureControlMode()I
    .locals 3

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_detection_mode_key"

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public getGuideline()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1652
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    .line 1655
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_guideline_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getHRMShutter()I
    .locals 3

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_hrm_shutter_key"

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public getInitialShootingMode()I
    .locals 2

    .prologue
    .line 1689
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1690
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    .line 1692
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultShootingModeByCurrentCameraId()I

    move-result v0

    goto :goto_0
.end method

.method public getInterval()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1697
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_1

    .line 1704
    :cond_0
    :goto_0
    return v0

    .line 1701
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1704
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_interval_key"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getKelvinValue()I
    .locals 3

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_kelvin_key"

    const/16 v2, 0x37

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLowBatteryStatus()Z
    .locals 1

    .prologue
    .line 1741
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mLowBattery:Z

    return v0
.end method

.method public getMenuIdByPreferenceKey(Ljava/lang/String;)I
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;

    .prologue
    .line 1755
    const-string v0, "pref_global_camera_volume_key_as"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "camera_volume_key_spinner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1756
    :cond_0
    const/16 v0, 0x49

    .line 1800
    :goto_0
    return v0

    .line 1757
    :cond_1
    const-string v0, "pref_camera_rear_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_camera_front_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1758
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 1759
    :cond_3
    const-string v0, "pref_camcorder_rear_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_camcorder_front_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1760
    :cond_4
    const/16 v0, 0xbb9

    goto :goto_0

    .line 1761
    :cond_5
    const-string v0, "pref_global_setup_storage_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1762
    const/16 v0, 0x16

    goto :goto_0

    .line 1763
    :cond_6
    const-string v0, "pref_global_setup_voice_control_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1764
    const/16 v0, 0x47

    goto :goto_0

    .line 1765
    :cond_7
    const-string v0, "pref_global_camera_detection_mode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1766
    const/16 v0, 0x7d

    goto :goto_0

    .line 1767
    :cond_8
    const-string v0, "pref_global_camcorder_antishake_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1768
    const/16 v0, 0xbbf

    goto :goto_0

    .line 1769
    :cond_9
    const-string v0, "pref_global_rear_lens_distortion_correction_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1770
    const/16 v0, 0x33

    goto :goto_0

    .line 1771
    :cond_a
    const-string v0, "pref_global_setup_self_flip_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1772
    const/16 v0, 0x26

    goto :goto_0

    .line 1773
    :cond_b
    const-string v0, "pref_camera_guideline_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1774
    const/16 v0, 0x13

    goto :goto_0

    .line 1775
    :cond_c
    const-string v0, "pref_global_setup_object_trackingaf_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1776
    const/16 v0, 0x17

    goto :goto_0

    .line 1777
    :cond_d
    const-string v0, "pref_global_setup_gps_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1778
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 1779
    :cond_e
    const-string v0, "pref_global_setup_review_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1780
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 1781
    :cond_f
    const-string v0, "pref_global_motion_photo_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1782
    const/16 v0, 0x2a

    goto/16 :goto_0

    .line 1783
    :cond_10
    const-string v0, "pref_global_camera_shutter_sound_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1784
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 1785
    :cond_11
    const-string v0, "pref_global_camera_fullpreview_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1786
    const/16 v0, 0x138

    goto/16 :goto_0

    .line 1787
    :cond_12
    const-string v0, "pref_global_camera_picture_format"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1788
    const/16 v0, 0x13b

    goto/16 :goto_0

    .line 1789
    :cond_13
    const-string v0, "pref_camera_qrcode_detection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1790
    const/16 v0, 0x13c

    goto/16 :goto_0

    .line 1791
    :cond_14
    const-string v0, "pref_camera_tap_to_take_pictures_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1792
    const/16 v0, 0x73

    goto/16 :goto_0

    .line 1793
    :cond_15
    const-string v0, "pref_camera_hrm_shutter_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1794
    const/16 v0, 0x74

    goto/16 :goto_0

    .line 1795
    :cond_16
    const-string v0, "pref_camera_focus_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1796
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 1797
    :cond_17
    const-string v0, "pref_global_setup_floating_camera_button_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1798
    const/16 v0, 0xb5

    goto/16 :goto_0

    .line 1800
    :cond_18
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public getMotionPanoramaMode()I
    .locals 3

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_panorama_mode"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultMotionPanoramaMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMotionPhoto()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1821
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    .line 1827
    :goto_0
    return v0

    .line 1824
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_motion_photo_key"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    .line 1825
    .local v0, "motionPhoto":I
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMotionPhoto : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMotionWideSelfieMode()I
    .locals 3

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_wide_selfie_mode"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultMotionWideSelfieMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMultiAFMode()I
    .locals 3

    .prologue
    .line 1861
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    if-nez v0, :cond_0

    .line 1862
    const/4 v0, 0x0

    .line 1864
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_multi_af_mode"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_MULTI_AF_MODE:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getMultiWindowMode()I
    .locals 1

    .prologue
    .line 1886
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiWindowMode:I

    return v0
.end method

.method public getObjectTrackingAF()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1899
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1902
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_setup_object_trackingaf_key"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0
.end method

.method public getPictureFormat()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1923
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 1926
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_picture_format"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0
.end method

.method public getQRCodeDetection()I
    .locals 3

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_qrcode_detection"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_QRCODE_DETECTION:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public getRearLensDistortionCorrection()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1959
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1963
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_rear_lens_distortion_correction_key"

    .line 1964
    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v0

    .line 1963
    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0
.end method

.method public getRecordingMotionSpeed()I
    .locals 3

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_recording_motion_speed_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRequestedMediaRecorderProfileInfo()Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;
    .locals 1

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedMediaRecorderProfileInfo:Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;

    return-object v0
.end method

.method public getRequestedRecordingDurationLimit()I
    .locals 1

    .prologue
    .line 2006
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedRecordingDurationLimit:I

    return v0
.end method

.method public getRequestedRecordingSizeLimit()J
    .locals 2

    .prologue
    .line 2016
    iget-wide v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedRecordingSizeLimit:J

    return-wide v0
.end method

.method public getRequestedSaveUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getReview()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2036
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 2039
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_setup_review_key"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0
.end method

.method public getSaveRichTone()I
    .locals 3

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_save_richtone_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSelfFlip()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2074
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    .line 2077
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_setup_self_flip_key"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0
.end method

.method public getSeparatedShootingModeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingValue(I)I
    .locals 1
    .param p1, "menuId"    # I

    .prologue
    .line 2099
    sparse-switch p1, :sswitch_data_0

    .line 2229
    const/16 v0, 0x7fff

    :goto_0
    return v0

    .line 2101
    :sswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    goto :goto_0

    .line 2104
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFlashMode()I

    move-result v0

    goto :goto_0

    .line 2107
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontFlashMode()I

    move-result v0

    goto :goto_0

    .line 2109
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v0

    goto :goto_0

    .line 2111
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFocusMode()I

    move-result v0

    goto :goto_0

    .line 2113
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer()I

    move-result v0

    goto :goto_0

    .line 2115
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getExposureValue()I

    move-result v0

    goto :goto_0

    .line 2117
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraSingleEffect()I

    move-result v0

    goto :goto_0

    .line 2119
    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraDualEffect()I

    move-result v0

    goto :goto_0

    .line 2121
    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getWhiteBalance()I

    move-result v0

    goto :goto_0

    .line 2123
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraISO()I

    move-result v0

    goto :goto_0

    .line 2125
    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShutterSpeed()I

    move-result v0

    goto :goto_0

    .line 2127
    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFocusLength()I

    move-result v0

    goto :goto_0

    .line 2129
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraExposureMeter()I

    move-result v0

    goto :goto_0

    .line 2131
    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getViewMode()I

    move-result v0

    goto :goto_0

    .line 2133
    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v0

    goto :goto_0

    .line 2135
    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraQuality()I

    move-result v0

    goto :goto_0

    .line 2137
    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getZoomValue()I

    move-result v0

    goto :goto_0

    .line 2139
    :sswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGuideline()I

    move-result v0

    goto :goto_0

    .line 2141
    :sswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getObjectTrackingAF()I

    move-result v0

    goto :goto_0

    .line 2143
    :sswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGPS()I

    move-result v0

    goto :goto_0

    .line 2145
    :sswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getReview()I

    move-result v0

    goto :goto_0

    .line 2147
    :sswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionPhoto()I

    move-result v0

    goto :goto_0

    .line 2149
    :sswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSelfFlip()I

    move-result v0

    goto :goto_0

    .line 2151
    :sswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraShutterSound()I

    move-result v0

    goto :goto_0

    .line 2153
    :sswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStorage()I

    move-result v0

    goto :goto_0

    .line 2155
    :sswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    goto/16 :goto_0

    .line 2157
    :sswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    goto/16 :goto_0

    .line 2159
    :sswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderAntiShake()I

    move-result v0

    goto/16 :goto_0

    .line 2161
    :sswitch_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderAudioRecording()I

    move-result v0

    goto/16 :goto_0

    .line 2163
    :sswitch_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraVoiceCommand()I

    move-result v0

    goto/16 :goto_0

    .line 2165
    :sswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSaveRichTone()I

    move-result v0

    goto/16 :goto_0

    .line 2167
    :sswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVolumeKeyAs()I

    move-result v0

    goto/16 :goto_0

    .line 2169
    :sswitch_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSoundAndShotMode()I

    move-result v0

    goto/16 :goto_0

    .line 2171
    :sswitch_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGestureControlMode()I

    move-result v0

    goto/16 :goto_0

    .line 2173
    :sswitch_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAutoNightDetectionMode()I

    move-result v0

    goto/16 :goto_0

    .line 2175
    :sswitch_24
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQuickLaunchType()I

    move-result v0

    goto/16 :goto_0

    .line 2177
    :sswitch_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v0

    goto/16 :goto_0

    .line 2179
    :sswitch_26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageRecordingTime()I

    move-result v0

    goto/16 :goto_0

    .line 2181
    :sswitch_27
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getPictureFormat()I

    move-result v0

    goto/16 :goto_0

    .line 2183
    :sswitch_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBeautyMode()I

    move-result v0

    goto/16 :goto_0

    .line 2185
    :sswitch_29
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionPanoramaMode()I

    move-result v0

    goto/16 :goto_0

    .line 2187
    :sswitch_2a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionWideSelfieMode()I

    move-result v0

    goto/16 :goto_0

    .line 2189
    :sswitch_2b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getColorTune()I

    move-result v0

    goto/16 :goto_0

    .line 2191
    :sswitch_2c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v0

    goto/16 :goto_0

    .line 2193
    :sswitch_2d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShapeCorrection()I

    move-result v0

    goto/16 :goto_0

    .line 2195
    :sswitch_2e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTapToTakePictures()I

    move-result v0

    goto/16 :goto_0

    .line 2197
    :sswitch_2f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getHRMShutter()I

    move-result v0

    goto/16 :goto_0

    .line 2199
    :sswitch_30
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFoodBlurType()I

    move-result v0

    goto/16 :goto_0

    .line 2201
    :sswitch_31
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMultiAFMode()I

    move-result v0

    goto/16 :goto_0

    .line 2203
    :sswitch_32
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getRecordingMotionSpeed()I

    move-result v0

    goto/16 :goto_0

    .line 2205
    :sswitch_33
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQRCodeDetection()I

    move-result v0

    goto/16 :goto_0

    .line 2207
    :sswitch_34
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBeautyLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2209
    :sswitch_35
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSlimFaceLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2211
    :sswitch_36
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSpotlightLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2213
    :sswitch_37
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEyeEnlargeLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2215
    :sswitch_38
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSkinColorLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2217
    :sswitch_39
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackBeautyLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2219
    :sswitch_3a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getRearLensDistortionCorrection()I

    move-result v0

    goto/16 :goto_0

    .line 2221
    :sswitch_3b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAntiFogLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2223
    :sswitch_3c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getWatermarkId()I

    move-result v0

    goto/16 :goto_0

    .line 2225
    :sswitch_3d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getWatermarkCategory()I

    move-result v0

    goto/16 :goto_0

    .line 2227
    :sswitch_3e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFloatingCameraButton()I

    move-result v0

    goto/16 :goto_0

    .line 2099
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_d
        0xc -> :sswitch_f
        0xe -> :sswitch_2b
        0x10 -> :sswitch_10
        0x11 -> :sswitch_15
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_14
        0x15 -> :sswitch_18
        0x16 -> :sswitch_19
        0x17 -> :sswitch_13
        0x18 -> :sswitch_c
        0x1a -> :sswitch_24
        0x1f -> :sswitch_b
        0x22 -> :sswitch_1f
        0x24 -> :sswitch_1a
        0x26 -> :sswitch_17
        0x2a -> :sswitch_16
        0x33 -> :sswitch_3a
        0x47 -> :sswitch_1e
        0x49 -> :sswitch_20
        0x4d -> :sswitch_21
        0x57 -> :sswitch_23
        0x5a -> :sswitch_8
        0x6a -> :sswitch_2
        0x6c -> :sswitch_1
        0x6d -> :sswitch_34
        0x6e -> :sswitch_35
        0x6f -> :sswitch_36
        0x70 -> :sswitch_37
        0x71 -> :sswitch_2d
        0x73 -> :sswitch_2e
        0x74 -> :sswitch_2f
        0x75 -> :sswitch_3b
        0x7a -> :sswitch_38
        0x7d -> :sswitch_22
        0x7f -> :sswitch_2c
        0x81 -> :sswitch_28
        0x83 -> :sswitch_25
        0x84 -> :sswitch_26
        0x87 -> :sswitch_29
        0x8d -> :sswitch_30
        0x91 -> :sswitch_31
        0xa0 -> :sswitch_3c
        0xa1 -> :sswitch_3d
        0xaa -> :sswitch_2
        0xad -> :sswitch_2a
        0xb4 -> :sswitch_39
        0xb5 -> :sswitch_3e
        0x138 -> :sswitch_e
        0x13b -> :sswitch_27
        0x13c -> :sswitch_33
        0xbb9 -> :sswitch_1b
        0xbbc -> :sswitch_1d
        0xbbf -> :sswitch_1c
        0x170d -> :sswitch_32
    .end sparse-switch
.end method

.method public getSettingValuesString(II)Ljava/lang/String;
    .locals 2
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 2235
    sparse-switch p1, :sswitch_data_0

    .line 2303
    :goto_0
    const-string v0, ""

    :goto_1
    return-object v0

    .line 2240
    :sswitch_0
    packed-switch p2, :pswitch_data_0

    .line 2249
    :sswitch_1
    packed-switch p2, :pswitch_data_1

    .line 2258
    :sswitch_2
    packed-switch p2, :pswitch_data_2

    .line 2265
    :sswitch_3
    packed-switch p2, :pswitch_data_3

    .line 2272
    :sswitch_4
    packed-switch p2, :pswitch_data_4

    .line 2279
    :sswitch_5
    packed-switch p2, :pswitch_data_5

    .line 2287
    :sswitch_6
    packed-switch p2, :pswitch_data_6

    .line 2296
    :sswitch_7
    packed-switch p2, :pswitch_data_7

    goto :goto_0

    .line 2298
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0255

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2242
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0245

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2244
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0244

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2246
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0246

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2251
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a024a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2253
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0249

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2255
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a024b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2260
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0253

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2262
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0254

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2267
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0247

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2269
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0248

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2274
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2276
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0250

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2282
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2284
    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2289
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a024c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2291
    :pswitch_10
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a024e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2293
    :pswitch_11
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a024d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2300
    :pswitch_12
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0256

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2235
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xb -> :sswitch_6
        0xc -> :sswitch_1
        0x4d -> :sswitch_7
        0x6a -> :sswitch_0
        0x6c -> :sswitch_0
        0x87 -> :sswitch_4
        0x8d -> :sswitch_3
        0x91 -> :sswitch_2
        0xaa -> :sswitch_0
        0xad -> :sswitch_5
    .end sparse-switch

    .line 2240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2249
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 2258
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 2265
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 2272
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 2279
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 2287
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 2296
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_0
        :pswitch_12
    .end packed-switch
.end method

.method public getShapeCorrection()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2309
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SHAPECORRECTION:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v2, 0x37

    if-eq v1, v2, :cond_2

    .line 2310
    :cond_0
    const/4 v0, 0x0

    .line 2317
    :cond_1
    :goto_0
    return v0

    .line 2313
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-nez v1, :cond_1

    .line 2317
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_shapecorrection_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getShootingModeIdByActivityName(Ljava/lang/String;)I
    .locals 7
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xe

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 2335
    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 2443
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeIdByModeName(Ljava/lang/String;)I

    move-result v0

    :goto_1
    :pswitch_0
    return v0

    .line 2335
    :sswitch_0
    const-string v6, "com.sec.android.app.camera.shootingmode.animatedgif.AnimatedGifActivity"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v0

    goto :goto_0

    :sswitch_1
    const-string v6, "com.sec.android.app.camera.shootingmode.animatedgif"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_2
    const-string v6, "com.sec.android.app.camera.Animated GIF"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_3
    const-string v6, "com.sec.android.app.camera.shootingmode.antifog"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_4
    const-string v6, "com.sec.android.app.camera.Anti fog"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :sswitch_5
    const-string v6, "com.sec.android.app.camera.shootingmode.aqua"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :sswitch_6
    const-string v6, "com.sec.android.app.camera.Aqua"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x6

    goto :goto_0

    :sswitch_7
    const-string v6, "com.sec.android.app.camera.shootingmode.auto"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v1

    goto :goto_0

    :sswitch_8
    const-string v6, "com.sec.android.app.camera.Auto"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x8

    goto :goto_0

    :sswitch_9
    const-string v6, "com.sec.android.app.camera.shootingmode.beauty.BeautyActivity"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x9

    goto :goto_0

    :sswitch_a
    const-string v6, "com.sec.android.app.camera.shootingmode.beauty"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xa

    goto :goto_0

    :sswitch_b
    const-string v6, "com.sec.android.app.camera.Beauty Face"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v6, "com.sec.android.app.camera.shootingmode.panorama"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v6, "com.sec.android.app.camera.Panorama"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v6, "com.sec.android.app.camera.shootingmode.motionpanorama"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    goto/16 :goto_0

    :sswitch_f
    const-string v6, "com.sec.android.app.camera.Motion Panorama"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v6, "com.sec.android.app.camera.shootingmode.continuous"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v6, "com.sec.android.app.camera.Continuous shot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v6, "com.sec.android.app.camera.shootingmode.continuouslite"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v6, "com.sec.android.app.camera.Continuous shot Lite"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v6, "com.sec.android.app.camera.shootingmode.dual.DualActivity"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v6, "com.sec.android.app.camera.shootingmode.dual"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v6, "com.sec.android.app.camera.Dual Camera"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v6, "com.sec.android.app.camera.shootingmode.environment"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v6, "com.sec.android.app.camera.Environment"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string v6, "com.sec.android.app.camera.shootingmode.fastmotion"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string v6, "com.sec.android.app.camera.Fast motion"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string v6, "com.sec.android.app.camera.shootingmode.food.FoodActivity"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string v6, "com.sec.android.app.camera.shootingmode.food"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1c

    goto/16 :goto_0

    :sswitch_1d
    const-string v6, "com.sec.android.app.camera.Food"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1d

    goto/16 :goto_0

    :sswitch_1e
    const-string v6, "com.sec.android.app.camera.shootingmode.hypermotion"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string v6, "com.sec.android.app.camera.Hyper motion"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1f

    goto/16 :goto_0

    :sswitch_20
    const-string v6, "com.sec.android.app.camera.shootingmode.night"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x20

    goto/16 :goto_0

    :sswitch_21
    const-string v6, "com.sec.android.app.camera.Night shot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x21

    goto/16 :goto_0

    :sswitch_22
    const-string v6, "com.sec.android.app.camera.shootingmode.nightscene"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x22

    goto/16 :goto_0

    :sswitch_23
    const-string v6, "com.sec.android.app.camera.Night scene"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x23

    goto/16 :goto_0

    :sswitch_24
    const-string v6, "com.sec.android.app.camera.shootingmode.pro"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x24

    goto/16 :goto_0

    :sswitch_25
    const-string v6, "com.sec.android.app.camera.Pro"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x25

    goto/16 :goto_0

    :sswitch_26
    const-string v6, "com.sec.android.app.camera.shootingmode.prolite"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x26

    goto/16 :goto_0

    :sswitch_27
    const-string v6, "com.sec.android.app.camera.Pro Lite"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x27

    goto/16 :goto_0

    :sswitch_28
    const-string v6, "com.sec.android.app.camera.shootingmode.rearcamselfie.RearCamSelfieActivity"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x28

    goto/16 :goto_0

    :sswitch_29
    const-string v6, "com.sec.android.app.camera.shootingmode.rearcamselfie"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x29

    goto/16 :goto_0

    :sswitch_2a
    const-string v6, "com.sec.android.app.camera.Smart Self shot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x2a

    goto/16 :goto_0

    :sswitch_2b
    const-string v6, "com.sec.android.app.camera.shootingmode.richtone"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x2b

    goto/16 :goto_0

    :sswitch_2c
    const-string v6, "com.sec.android.app.camera.Rich tone"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x2c

    goto/16 :goto_0

    :sswitch_2d
    const-string v6, "com.sec.android.app.camera.shootingmode.selectivefocus"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x2d

    goto/16 :goto_0

    :sswitch_2e
    const-string v6, "com.sec.android.app.camera.Selective Focus"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x2e

    goto/16 :goto_0

    :sswitch_2f
    const-string v6, "com.sec.android.app.camera.shootingmode.selfie"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x2f

    goto/16 :goto_0

    :sswitch_30
    const-string v6, "com.sec.android.app.camera.Selfie"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x30

    goto/16 :goto_0

    :sswitch_31
    const-string v6, "com.sec.android.app.camera.shootingmode.shotandmore.ShotandmoreActivity"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x31

    goto/16 :goto_0

    :sswitch_32
    const-string v6, "com.sec.android.app.camera.shootingmode.shotandmore"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x32

    goto/16 :goto_0

    :sswitch_33
    const-string v6, "com.sec.android.app.camera.Shot and more"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x33

    goto/16 :goto_0

    :sswitch_34
    const-string v6, "com.sec.android.app.camera.shootingmode.slowmotion"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x34

    goto/16 :goto_0

    :sswitch_35
    const-string v6, "com.sec.android.app.camera.Slow Video"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x35

    goto/16 :goto_0

    :sswitch_36
    const-string v6, "com.sec.android.app.camera.shootingmode.soundshot.SoundShotActivity"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x36

    goto/16 :goto_0

    :sswitch_37
    const-string v6, "com.sec.android.app.camera.shootingmode.soundshot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x37

    goto/16 :goto_0

    :sswitch_38
    const-string v6, "com.sec.android.app.camera.Sound and shot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x38

    goto/16 :goto_0

    :sswitch_39
    const-string v6, "com.sec.android.app.camera.shootingmode.sports.SportsActivity"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x39

    goto/16 :goto_0

    :sswitch_3a
    const-string v6, "com.sec.android.app.camera.shootingmode.sports"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x3a

    goto/16 :goto_0

    :sswitch_3b
    const-string v6, "com.sec.android.app.camera.Sports"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x3b

    goto/16 :goto_0

    :sswitch_3c
    const-string v6, "com.sec.android.app.camera.shootingmode.videocollage"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x3c

    goto/16 :goto_0

    :sswitch_3d
    const-string v6, "com.sec.android.app.camera.Clip movie"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x3d

    goto/16 :goto_0

    :sswitch_3e
    const-string v6, "com.sec.android.app.camera.shootingmode.virtualshot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x3e

    goto/16 :goto_0

    :sswitch_3f
    const-string v6, "com.sec.android.app.camera.Interactive shot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x3f

    goto/16 :goto_0

    :sswitch_40
    const-string v6, "com.sec.android.app.camera.shootingmode.wideselfie"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x40

    goto/16 :goto_0

    :sswitch_41
    const-string v6, "com.sec.android.app.camera.Ultra wide shot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x41

    goto/16 :goto_0

    :sswitch_42
    const-string v6, "com.sec.android.app.camera.shootingmode.wideselfielite"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x42

    goto/16 :goto_0

    :sswitch_43
    const-string v6, "com.sec.android.app.camera.Ultra wide shot Lite"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x43

    goto/16 :goto_0

    :sswitch_44
    const-string v6, "com.sec.android.app.camera.shootingmode.motionwideselfie"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x44

    goto/16 :goto_0

    :sswitch_45
    const-string v6, "com.sec.android.app.camera.shootingmode.productsearch"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x45

    goto/16 :goto_0

    :sswitch_46
    const-string v6, "com.sec.android.app.camera.plb.Camera"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x46

    goto/16 :goto_0

    :sswitch_47
    const-string v6, "com.sec.android.app.camera.shootingmode.social.SocialCamera"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x47

    goto/16 :goto_0

    .line 2339
    :pswitch_1
    const/16 v0, 0x3a

    goto/16 :goto_1

    .line 2342
    :pswitch_2
    const/16 v0, 0x31

    goto/16 :goto_1

    .line 2345
    :pswitch_3
    const/16 v0, 0x2a

    goto/16 :goto_1

    :pswitch_4
    move v0, v1

    .line 2352
    goto/16 :goto_1

    :pswitch_5
    move v0, v2

    .line 2355
    goto/16 :goto_1

    .line 2358
    :pswitch_6
    const/16 v0, 0x48

    goto/16 :goto_1

    .line 2361
    :pswitch_7
    const/16 v0, 0x11

    goto/16 :goto_1

    :pswitch_8
    move v0, v3

    .line 2364
    goto/16 :goto_1

    .line 2368
    :pswitch_9
    const/16 v0, 0x2f

    goto/16 :goto_1

    .line 2371
    :pswitch_a
    const/16 v0, 0x43

    goto/16 :goto_1

    .line 2374
    :pswitch_b
    const/16 v0, 0x40

    goto/16 :goto_1

    .line 2378
    :pswitch_c
    const/16 v0, 0x44

    goto/16 :goto_1

    .line 2381
    :pswitch_d
    const/16 v0, 0x4a

    goto/16 :goto_1

    .line 2384
    :pswitch_e
    const/16 v0, 0x17

    goto/16 :goto_1

    .line 2387
    :pswitch_f
    const/16 v0, 0x27

    goto/16 :goto_1

    .line 2390
    :pswitch_10
    const/16 v0, 0x3b

    goto/16 :goto_1

    .line 2393
    :pswitch_11
    const/16 v0, 0x4b

    goto/16 :goto_1

    .line 2397
    :pswitch_12
    const/16 v0, 0x38

    goto/16 :goto_1

    :pswitch_13
    move v0, v4

    .line 2400
    goto/16 :goto_1

    .line 2403
    :pswitch_14
    const/16 v0, 0x2d

    goto/16 :goto_1

    .line 2406
    :pswitch_15
    const/16 v0, 0x37

    goto/16 :goto_1

    .line 2410
    :pswitch_16
    const/16 v0, 0x2e

    goto/16 :goto_1

    .line 2413
    :pswitch_17
    const/16 v0, 0x3f

    goto/16 :goto_1

    .line 2417
    :pswitch_18
    const/16 v0, 0x23

    goto/16 :goto_1

    .line 2421
    :pswitch_19
    const/16 v0, 0x28

    goto/16 :goto_1

    .line 2424
    :pswitch_1a
    const/16 v0, 0x45

    goto/16 :goto_1

    .line 2427
    :pswitch_1b
    const/16 v0, 0x3e

    goto/16 :goto_1

    .line 2430
    :pswitch_1c
    const/16 v0, 0x34

    goto/16 :goto_1

    .line 2433
    :pswitch_1d
    const/16 v0, 0x4d

    goto/16 :goto_1

    .line 2435
    :pswitch_1e
    const/16 v0, 0x4e

    goto/16 :goto_1

    .line 2437
    :pswitch_1f
    const/16 v0, 0x4f

    goto/16 :goto_1

    .line 2439
    :pswitch_20
    const/16 v0, 0x46

    goto/16 :goto_1

    .line 2441
    :pswitch_21
    const/16 v0, 0x50

    goto/16 :goto_1

    .line 2335
    :sswitch_data_0
    .sparse-switch
        -0x793d7854 -> :sswitch_34
        -0x7924a515 -> :sswitch_3f
        -0x78cc21ea -> :sswitch_16
        -0x70724d59 -> :sswitch_1a
        -0x6f6b8718 -> :sswitch_1b
        -0x6d5b208d -> :sswitch_4
        -0x6b2f25df -> :sswitch_2e
        -0x6770e092 -> :sswitch_0
        -0x671dafbd -> :sswitch_2b
        -0x66b968d3 -> :sswitch_3c
        -0x62648b40 -> :sswitch_18
        -0x61adf7b8 -> :sswitch_39
        -0x61474ef3 -> :sswitch_1e
        -0x50ebb62f -> :sswitch_33
        -0x47de59d7 -> :sswitch_22
        -0x477c8522 -> :sswitch_47
        -0x46c4fe58 -> :sswitch_9
        -0x4478c165 -> :sswitch_30
        -0x43dc334e -> :sswitch_3b
        -0x3f16fa39 -> :sswitch_19
        -0x3c62c6a2 -> :sswitch_42
        -0x39dbfff2 -> :sswitch_43
        -0x3971ecd4 -> :sswitch_1
        -0x38f23e3c -> :sswitch_2a
        -0x349a22a3 -> :sswitch_32
        -0x2de826da -> :sswitch_44
        -0x2c47d9aa -> :sswitch_13
        -0x2c2c5268 -> :sswitch_11
        -0x27035bbd -> :sswitch_20
        -0x206d9ecf -> :sswitch_23
        -0x1da92639 -> :sswitch_38
        -0x1a0ca879 -> :sswitch_3
        -0x1594d420 -> :sswitch_46
        -0x109dd518 -> :sswitch_d
        -0xe7c0a3c -> :sswitch_10
        -0xd0bad66 -> :sswitch_2
        -0x81db8e -> :sswitch_12
        0x24b84af -> :sswitch_6
        0x24b93a2 -> :sswitch_8
        0x24dc251 -> :sswitch_1d
        0x3ca4a7e -> :sswitch_36
        0x5ff2646 -> :sswitch_26
        0xa672cf2 -> :sswitch_28
        0xe242423 -> :sswitch_2c
        0xf7869b5 -> :sswitch_21
        0xfe4a0e0 -> :sswitch_41
        0x11b29ba8 -> :sswitch_14
        0x21089bec -> :sswitch_f
        0x22024870 -> :sswitch_31
        0x28025d31 -> :sswitch_5
        0x28026c24 -> :sswitch_7
        0x2803c6f1 -> :sswitch_15
        0x28049ad3 -> :sswitch_1c
        0x31e2d5b1 -> :sswitch_a
        0x32d70198 -> :sswitch_24
        0x33532add -> :sswitch_1f
        0x3514f26a -> :sswitch_c
        0x38f66e13 -> :sswitch_3d
        0x3b0ebc31 -> :sswitch_2d
        0x3cec6882 -> :sswitch_45
        0x3e9685fe -> :sswitch_29
        0x476bb070 -> :sswitch_3e
        0x4880b734 -> :sswitch_37
        0x4ee9fe9d -> :sswitch_2f
        0x4f868cb4 -> :sswitch_3a
        0x5c121060 -> :sswitch_e
        0x5dd9112f -> :sswitch_35
        0x632bf25a -> :sswitch_25
        0x6ff68ad4 -> :sswitch_27
        0x73c95a4e -> :sswitch_b
        0x75ea60b0 -> :sswitch_40
        0x7d5a65fe -> :sswitch_17
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1a
        :pswitch_1a
        :pswitch_1b
        :pswitch_1b
        :pswitch_1c
        :pswitch_1c
        :pswitch_1d
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method

.method public getShootingModeNameForLogging()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2449
    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    .line 2450
    .local v0, "shootingModeCommandId":I
    invoke-static {v0}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getShootingModeResourceString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2455
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShootingModeResourceStringById(I)Ljava/lang/String;
    .locals 1
    .param p1, "shootingMode"    # I

    .prologue
    .line 2460
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShootingModeValueForISPset()I
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/16 v0, 0xa

    .line 2465
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getShootingModeValueForISPset : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    sparse-switch v3, :sswitch_data_0

    move v0, v1

    .line 2533
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 2468
    :sswitch_1
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_NIGHT_DETECTION:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_AUTO_LLS_LITE:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2471
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2472
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2474
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 2478
    goto :goto_0

    .line 2481
    :sswitch_3
    const/16 v0, 0x22

    goto :goto_0

    :sswitch_4
    move v0, v2

    .line 2483
    goto :goto_0

    .line 2485
    :sswitch_5
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_NIGHT_DETECTION:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_AUTO_LLS_LITE:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v0, v2

    .line 2488
    goto :goto_0

    .line 2492
    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 2494
    :sswitch_7
    const/16 v0, 0x9

    goto :goto_0

    .line 2498
    :sswitch_8
    const/16 v0, 0xb

    goto :goto_0

    .line 2500
    :sswitch_9
    const/16 v0, 0xf

    goto :goto_0

    .line 2502
    :sswitch_a
    const/16 v0, 0x10

    goto :goto_0

    .line 2504
    :sswitch_b
    const/16 v0, 0x11

    goto :goto_0

    .line 2506
    :sswitch_c
    const/16 v0, 0x12

    goto :goto_0

    .line 2508
    :sswitch_d
    const/16 v0, 0x13

    goto :goto_0

    .line 2510
    :sswitch_e
    const/16 v0, 0x14

    goto :goto_0

    .line 2515
    :sswitch_f
    const/16 v0, 0x1b

    goto :goto_0

    .line 2517
    :sswitch_10
    const/16 v0, 0x1c

    goto :goto_0

    .line 2519
    :sswitch_11
    const/16 v0, 0x1d

    goto :goto_0

    .line 2521
    :sswitch_12
    const/16 v0, 0x1e

    goto :goto_0

    .line 2523
    :sswitch_13
    const/16 v0, 0x1f

    goto :goto_0

    .line 2525
    :sswitch_14
    const/16 v0, 0x23

    goto :goto_0

    .line 2527
    :sswitch_15
    const/16 v0, 0x24

    goto :goto_0

    .line 2529
    :sswitch_16
    const/16 v0, 0x25

    goto :goto_0

    .line 2466
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_6
        0x3 -> :sswitch_2
        0x7 -> :sswitch_4
        0xe -> :sswitch_7
        0x17 -> :sswitch_0
        0x23 -> :sswitch_8
        0x27 -> :sswitch_a
        0x28 -> :sswitch_b
        0x2a -> :sswitch_c
        0x2d -> :sswitch_e
        0x2e -> :sswitch_d
        0x2f -> :sswitch_12
        0x31 -> :sswitch_16
        0x34 -> :sswitch_f
        0x37 -> :sswitch_5
        0x38 -> :sswitch_10
        0x3a -> :sswitch_9
        0x3b -> :sswitch_3
        0x3e -> :sswitch_11
        0x40 -> :sswitch_13
        0x44 -> :sswitch_0
        0x45 -> :sswitch_15
        0x48 -> :sswitch_6
        0x4a -> :sswitch_14
        0x4b -> :sswitch_3
        0x4d -> :sswitch_f
        0x4e -> :sswitch_f
    .end sparse-switch
.end method

.method public getShutterSpeed()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 2539
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    if-nez v1, :cond_0

    .line 2542
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_shutter_speed_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getSkinColorLevel()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2564
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 2567
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_skincolor_level_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getSlimFaceLevel()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2584
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 2587
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_slimface_level_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getSoundAndShotMode()I
    .locals 1

    .prologue
    .line 2604
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    return v0
.end method

.method public getSpotlightLevel()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2618
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v2, 0x37

    if-eq v1, v2, :cond_1

    .line 2621
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_spotlight_level_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getSpotlightPosition()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2638
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v2, 0x37

    if-eq v1, v2, :cond_1

    .line 2641
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_spotlight_position_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getStatusLoggingList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2658
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 2659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    .line 2660
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2661
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2662
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2663
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2664
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x74

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2665
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x7d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2666
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2667
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x49

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2668
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2669
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xbb9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2670
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xbbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2671
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2672
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2673
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2674
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x6f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2675
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2676
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2677
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2678
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2679
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2680
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xaa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2681
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2682
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2683
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2684
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2685
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2686
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2687
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xb5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2688
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2689
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2691
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isQRCodeDetectionSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2692
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x13c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2694
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->REAR_LENS_DISTORTION_CORRECTION:Z

    if-eqz v0, :cond_2

    .line 2695
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2697
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_ANTI_FOG:Z

    if-eqz v0, :cond_3

    .line 2698
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2701
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStorage()I
    .locals 3

    .prologue
    .line 2706
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_storage_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultStorage()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTapToTakePictures()I
    .locals 3

    .prologue
    .line 2726
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_tap_to_take_pictures_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public getTimer()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2741
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2745
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_timer_key"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getTorchLightStatus()I
    .locals 1

    .prologue
    .line 2763
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    return v0
.end method

.method public getVideoCollageRecordingTime()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2776
    const/4 v0, 0x0

    .line 2778
    .local v0, "recordingTime":I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2779
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_front_video_collage_recording_time"

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2783
    :goto_0
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoCollageRecordingTime :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    return v0

    .line 2781
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_back_video_collage_recording_time"

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getVideoCollageType()I
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 2811
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2812
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_type"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2814
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_back_video_collage_type"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getViewMode()I
    .locals 3

    .prologue
    .line 2821
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-nez v0, :cond_0

    .line 2822
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VIEW_MODE:I

    .line 2824
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_fullpreview_key"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VIEW_MODE:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0
.end method

.method public getVolumeKeyAs()I
    .locals 3

    .prologue
    .line 2844
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_volume_key_as"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VOLUME_KEY_AS:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWatermarkCategory()I
    .locals 3

    .prologue
    .line 2860
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_watermark_category"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWatermarkId()I
    .locals 1

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isWatermarkSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2876
    const/16 v0, 0x238c

    .line 2878
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkId:I

    goto :goto_0
.end method

.method public getWatermarkInputText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2893
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkInputText:Ljava/lang/String;

    return-object v0
.end method

.method public getWhiteBalance()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2903
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    if-nez v1, :cond_0

    .line 2906
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_white_balance_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getZoomValue()I
    .locals 1

    .prologue
    .line 2928
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2929
    const/4 v0, 0x0

    .line 2931
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    goto :goto_0
.end method

.method public initAttachVideoFixedResolution()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2946
    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachBackVideoFixedResolution:I

    .line 2947
    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachFrontVideoFixedResolution:I

    .line 2948
    return-void
.end method

.method public initRequestedMediaRecorderProfileInfo()V
    .locals 1

    .prologue
    .line 2952
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedMediaRecorderProfileInfo:Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;

    .line 2953
    return-void
.end method

.method public initRequestedRecordingDurationLimit()V
    .locals 1

    .prologue
    .line 2957
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedRecordingDurationLimit:I

    .line 2958
    return-void
.end method

.method public initRequestedRecordingSizeLimit()V
    .locals 2

    .prologue
    .line 2962
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedRecordingSizeLimit:J

    .line 2963
    return-void
.end method

.method public initRequestedSaveUri()V
    .locals 1

    .prologue
    .line 2967
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedSaveUri:Landroid/net/Uri;

    .line 2968
    return-void
.end method

.method public initializeCamera()V
    .locals 2

    .prologue
    .line 2972
    const-string v0, "CameraSettings"

    const-string v1, "initializeCamera"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2975
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->initializeBackCamera()V

    .line 2979
    :cond_0
    :goto_0
    return-void

    .line 2976
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2977
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->initializeFrontCamera()V

    goto :goto_0
.end method

.method public initializeCameraId(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2983
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 2984
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    .line 2985
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    .line 2996
    :cond_0
    :goto_0
    return-void

    .line 2986
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 2987
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    .line 2988
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    goto :goto_0

    .line 2989
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 2990
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    .line 2991
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    goto :goto_0

    .line 2992
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2993
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    .line 2994
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    goto :goto_0
.end method

.method public initializeCameraResolution()V
    .locals 5

    .prologue
    .line 3000
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3001
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedBackCameraResolution()Ljava/lang/String;

    move-result-object v0

    .line 3002
    .local v0, "fixedBackResolution":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3003
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 3004
    const-string v2, "CameraSettings"

    const-string v3, "wrong back camera resolution value is changed to fixed resolution."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3006
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_rear_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3031
    .end local v0    # "fixedBackResolution":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3010
    .restart local v0    # "fixedBackResolution":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3011
    const-string v2, "CameraSettings"

    const-string v3, "unsupported back camera resolution value is changed to default."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3013
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_rear_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 3015
    .end local v0    # "fixedBackResolution":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3016
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedFrontCameraResolution()Ljava/lang/String;

    move-result-object v1

    .line 3017
    .local v1, "fixedFrontResolution":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 3018
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 3019
    const-string v2, "CameraSettings"

    const-string v3, "wrong front camera resolution value is changed to fixed resolution."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3021
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_front_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 3025
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3026
    const-string v2, "CameraSettings"

    const-string v3, "unsupported front camera resolution value is changed to default."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3028
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_front_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public initializeDefaultBackCameraShootingModeOrderList()V
    .locals 7

    .prologue
    const/16 v6, 0x14e

    const/16 v5, 0x149

    const/16 v4, 0x133

    const/16 v3, 0x161

    const/4 v2, 0x0

    .line 3036
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_14

    .line 3037
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    .line 3041
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3043
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PRO:Z

    if-eqz v0, :cond_0

    .line 3044
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x158

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3046
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PRO_LITE:Z

    if-eqz v0, :cond_1

    .line 3047
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x164

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3049
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PANORAMA_SHOT:Z

    if-eqz v0, :cond_2

    .line 3050
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3052
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_MOTION_PANORAMA:Z

    if-eqz v0, :cond_3

    .line 3053
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x162

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3055
    :cond_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SELECTIVE_FOCUS:Z

    if-eqz v0, :cond_4

    .line 3056
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x151

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3058
    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SLOW_MOTION:Z

    if-eqz v0, :cond_5

    .line 3059
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3061
    :cond_5
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_HYPER_MOTION:Z

    if-eqz v0, :cond_6

    .line 3062
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x163

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3064
    :cond_6
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_FAST_MOTION:Z

    if-eqz v0, :cond_7

    .line 3065
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3067
    :cond_7
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_CONTINUOUS_SHOT:Z

    if-eqz v0, :cond_8

    .line 3068
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_NOT_SUPPORT_ZSL:Z

    if-eqz v0, :cond_26

    .line 3069
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3074
    :cond_8
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_RICH_TONE:Z

    if-eqz v0, :cond_9

    .line 3075
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3077
    :cond_9
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_NIGHT_SHOT:Z

    if-eqz v0, :cond_a

    .line 3078
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3080
    :cond_a
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_NIGHT_SHOT_SCENE:Z

    if-eqz v0, :cond_b

    .line 3081
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x14d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3083
    :cond_b
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_FOOD:Z

    if-eqz v0, :cond_c

    .line 3084
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3086
    :cond_c
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v0, :cond_d

    .line 3087
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3089
    :cond_d
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v0, :cond_e

    .line 3090
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x160

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3092
    :cond_e
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_LVB:Z

    if-eqz v0, :cond_f

    .line 3093
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x165

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3095
    :cond_f
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_ANTI_FOG:Z

    if-eqz v0, :cond_10

    .line 3096
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3098
    :cond_10
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_AQUA:Z

    if-eqz v0, :cond_11

    .line 3099
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x14f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3101
    :cond_11
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_TAG_SHOT:Z

    if-eqz v0, :cond_12

    .line 3102
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3104
    :cond_12
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PRODUCT_SEARCH:Z

    if-eqz v0, :cond_13

    .line 3105
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x168

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3107
    :cond_13
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-eqz v0, :cond_14

    .line 3108
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    .line 3109
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3114
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_25

    .line 3116
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-nez v0, :cond_15

    invoke-static {v4, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3117
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3119
    :cond_16
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SHOT_AND_MORE:Z

    if-nez v0, :cond_17

    const/16 v0, 0x152

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3120
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x152

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3122
    :cond_18
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_DUAL:Z

    if-nez v0, :cond_19

    const/16 v0, 0x150

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3123
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x150

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3125
    :cond_1a
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_REAR_SELFIE:Z

    if-nez v0, :cond_1b

    const/16 v0, 0x157

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3126
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x157

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3128
    :cond_1c
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SPORTS_SCENE:Z

    if-nez v0, :cond_1d

    invoke-static {v6, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3129
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3131
    :cond_1e
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_ANIMATEDGIF:Z

    if-nez v0, :cond_1f

    const/16 v0, 0x15d

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3132
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3134
    :cond_20
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SOUND_AND_SHOT:Z

    if-nez v0, :cond_21

    invoke-static {v5, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3135
    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3137
    :cond_22
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_FOOD:Z

    if-nez v0, :cond_23

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3138
    :cond_23
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3140
    :cond_24
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SOCIAL:Z

    if-eqz v0, :cond_25

    .line 3141
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x169

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3144
    :cond_25
    return-void

    .line 3071
    :cond_26
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public initializeDefaultFrontCameraShootingModeOrderList()V
    .locals 6

    .prologue
    const/16 v5, 0x15d

    const/16 v4, 0x152

    const/16 v3, 0x149

    const/4 v2, 0x0

    .line 3149
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_e

    .line 3150
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    .line 3153
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_AUTO:Z

    if-eqz v0, :cond_0

    .line 3154
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3156
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELFIE:Z

    if-eqz v0, :cond_1

    .line 3157
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x154

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3159
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_WIDE_SELFIE:Z

    if-eqz v0, :cond_2

    .line 3160
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3161
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x156

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3164
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_WIDE_SELFIE_LITE:Z

    if-eqz v0, :cond_3

    .line 3165
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3166
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x166

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3169
    :cond_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_MOTION_WIDE_SELFIE:Z

    if-eqz v0, :cond_4

    .line 3170
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 3171
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x167

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3174
    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_CONTINUOUS_SHOT:Z

    if-eqz v0, :cond_5

    .line 3175
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 3176
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_NOT_SUPPORT_ZSL:Z

    if-eqz v0, :cond_15

    .line 3177
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3183
    :cond_5
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v0, :cond_6

    .line 3184
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 3185
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3188
    :cond_6
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v0, :cond_7

    .line 3189
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 3190
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x160

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3193
    :cond_7
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_LVB:Z

    if-eqz v0, :cond_8

    .line 3194
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x165

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3196
    :cond_8
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-eqz v0, :cond_9

    .line 3197
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x133

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3199
    :cond_9
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_NIGHT_SHOT:Z

    if-eqz v0, :cond_a

    .line 3200
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3202
    :cond_a
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_NIGHT_SHOT_SCENE:Z

    if-eqz v0, :cond_b

    .line 3203
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x14d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3205
    :cond_b
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_RICH_TONE:Z

    if-eqz v0, :cond_c

    .line 3206
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    .line 3207
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3210
    :cond_c
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_PRODUCT_SEARCH:Z

    if-eqz v0, :cond_d

    .line 3211
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x168

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3213
    :cond_d
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-eqz v0, :cond_e

    .line 3214
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    .line 3215
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3220
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_13

    .line 3222
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_ANIMATEDGIF:Z

    if-nez v0, :cond_f

    invoke-static {v5, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3223
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    .line 3224
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3227
    :cond_10
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SHOT_AND_MORE:Z

    if-eqz v0, :cond_11

    invoke-static {v4, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3228
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    .line 3229
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3232
    :cond_11
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SOUND_AND_SHOT:Z

    if-nez v0, :cond_12

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3233
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    .line 3234
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3238
    :cond_13
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SOCIAL:Z

    if-eqz v0, :cond_14

    .line 3239
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x169

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3241
    :cond_14
    return-void

    .line 3179
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public initializeShootingModeId(Ljava/lang/String;)I
    .locals 2
    .param p1, "shootingModeActivityName"    # Ljava/lang/String;

    .prologue
    .line 3245
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeIdByActivityName(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    .line 3246
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraIdByShootingModeId(II)V

    .line 3247
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    return v0
.end method

.method public initializeShootingModeId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "shootingModeActivityName"    # Ljava/lang/String;
    .param p2, "cameraFacingName"    # Ljava/lang/String;

    .prologue
    .line 3252
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeIdByActivityName(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    .line 3253
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraIdFromName(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraIdByShootingModeId(II)V

    .line 3254
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    return v0
.end method

.method public initializeShootingModeWhenSwitchCamera()I
    .locals 1

    .prologue
    .line 3259
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3260
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3261
    const/4 v0, 0x0

    .line 3269
    :goto_0
    return v0

    .line 3263
    :cond_0
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    goto :goto_0

    .line 3266
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3267
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    goto :goto_0

    .line 3269
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    goto :goto_0
.end method

.method public isAttachImageMode()Z
    .locals 1

    .prologue
    .line 3276
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachImageMode:Z

    return v0
.end method

.method public isAttachVideoFixedResolution()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 3289
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachBackVideoFixedResolution:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachFrontVideoFixedResolution:I

    if-eq v0, v1, :cond_0

    .line 3290
    const/4 v0, 0x1

    .line 3292
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttachVideoMode()Z
    .locals 1

    .prologue
    .line 3297
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachVideoMode:Z

    return v0
.end method

.method public isBackCamera()Z
    .locals 2

    .prologue
    .line 3307
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCamcorderAntiShakeSupported(I)Z
    .locals 2
    .param p1, "resolution"    # I

    .prologue
    const/4 v0, 0x0

    .line 3312
    sparse-switch p1, :sswitch_data_0

    .line 3326
    const/4 v0, 0x1

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 3318
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v1

    if-nez v1, :cond_0

    .line 3319
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_REAR_ANTISHAKE_QHD:Z

    goto :goto_0

    .line 3324
    :sswitch_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_REAR_ANTISHAKE_FHD_60FPS:Z

    goto :goto_0

    .line 3312
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x15 -> :sswitch_1
        0x28 -> :sswitch_0
        0x2a -> :sswitch_2
        0x34 -> :sswitch_0
    .end sparse-switch
.end method

.method public isCoverCamera()Z
    .locals 1

    .prologue
    .line 3332
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    return v0
.end method

.method public isCurrentSeparatedShootingMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3359
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3365
    :cond_0
    :goto_0
    return v0

    .line 3362
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedAndPreloadedShootingMode(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3365
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultFrontShootingMode(I)Z
    .locals 1
    .param p1, "shootingMode"    # I

    .prologue
    .line 3370
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultRearShootingMode(I)Z
    .locals 1
    .param p1, "shootingMode"    # I

    .prologue
    .line 3375
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualBackCamera()Z
    .locals 2

    .prologue
    .line 3380
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualFrontCamera()Z
    .locals 2

    .prologue
    .line 3385
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEasyCamera()Z
    .locals 1

    .prologue
    .line 3390
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    return v0
.end method

.method public isEffectRecordingRestricted()Z
    .locals 2

    .prologue
    .line 3410
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_GPU_EFFECT_RECORDING:Z

    if-eqz v0, :cond_0

    .line 3411
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    .line 3412
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    .line 3413
    :cond_0
    const/4 v0, 0x1

    .line 3415
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFrontCamera()Z
    .locals 2

    .prologue
    .line 3421
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyboardCoverCamera()Z
    .locals 1

    .prologue
    .line 3426
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    return v0
.end method

.method public isNotificationExist()Z
    .locals 2

    .prologue
    .line 3439
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mNotificationHandler:Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isResetRequested()Z
    .locals 3

    .prologue
    .line 3444
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_reset"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isResizableCamera()Z
    .locals 1

    .prologue
    .line 3449
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    return v0
.end method

.method public isSecureCamera()Z
    .locals 1

    .prologue
    .line 3469
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    return v0
.end method

.method public isSilverCamera()Z
    .locals 1

    .prologue
    .line 3491
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSilverCamera:Z

    return v0
.end method

.method public isSingleEffect()Z
    .locals 1

    .prologue
    .line 3496
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportedBackCamcorderResolutionFeature(I)Z
    .locals 1
    .param p1, "resolution"    # I

    .prologue
    .line 3501
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_0

    .line 3502
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMCORDER_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3503
    const/4 v0, 0x1

    .line 3533
    :goto_0
    return v0

    .line 3507
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 3533
    const/4 v0, 0x0

    goto :goto_0

    .line 3509
    :sswitch_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_3840X2160:Z

    goto :goto_0

    .line 3511
    :sswitch_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_2560X1440:Z

    goto :goto_0

    .line 3513
    :sswitch_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1920X1080:Z

    goto :goto_0

    .line 3515
    :sswitch_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1920X1080_60FPS:Z

    goto :goto_0

    .line 3517
    :sswitch_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1440X1440:Z

    goto :goto_0

    .line 3519
    :sswitch_5
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1440X1080:Z

    goto :goto_0

    .line 3521
    :sswitch_6
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1072X1072:Z

    goto :goto_0

    .line 3523
    :sswitch_7
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1280X720:Z

    goto :goto_0

    .line 3525
    :sswitch_8
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_720X480:Z

    goto :goto_0

    .line 3527
    :sswitch_9
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_640X480:Z

    goto :goto_0

    .line 3529
    :sswitch_a
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_320X240:Z

    goto :goto_0

    .line 3531
    :sswitch_b
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_176X144:Z

    goto :goto_0

    .line 3507
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_9
        0xd -> :sswitch_2
        0xe -> :sswitch_7
        0xf -> :sswitch_8
        0x12 -> :sswitch_a
        0x13 -> :sswitch_b
        0x15 -> :sswitch_1
        0x1f -> :sswitch_5
        0x28 -> :sswitch_0
        0x2a -> :sswitch_3
        0x2f -> :sswitch_6
        0x34 -> :sswitch_4
    .end sparse-switch
.end method

.method public isSupportedBackCameraResolutionFeature(I)Z
    .locals 4
    .param p1, "resolution"    # I

    .prologue
    const/4 v2, 0x1

    .line 3539
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedBackCameraResolution()Ljava/lang/String;

    move-result-object v0

    .line 3540
    .local v0, "fixedResolution":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3542
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 3559
    :cond_0
    :goto_0
    return v2

    .line 3547
    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v1

    .line 3548
    .local v1, "resolutionString":Ljava/lang/String;
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_MEDIUM:Ljava/lang/String;

    .line 3549
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_SMALL:Ljava/lang/String;

    .line 3550
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    .line 3551
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_MEDIUM:Ljava/lang/String;

    .line 3552
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_SMALL:Ljava/lang/String;

    .line 3553
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    .line 3554
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_MEDIUM:Ljava/lang/String;

    .line 3555
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_SMALL:Ljava/lang/String;

    .line 3556
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3559
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSupportedFrontCamcorderResolutionFeature(I)Z
    .locals 1
    .param p1, "resolution"    # I

    .prologue
    .line 3565
    sparse-switch p1, :sswitch_data_0

    .line 3585
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3567
    :sswitch_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_2560X1440:Z

    goto :goto_0

    .line 3569
    :sswitch_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1920X1080:Z

    goto :goto_0

    .line 3571
    :sswitch_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1440X1440:Z

    goto :goto_0

    .line 3573
    :sswitch_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1280X720:Z

    goto :goto_0

    .line 3575
    :sswitch_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1072X1072:Z

    goto :goto_0

    .line 3577
    :sswitch_5
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_720X480:Z

    goto :goto_0

    .line 3579
    :sswitch_6
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_640X480:Z

    goto :goto_0

    .line 3581
    :sswitch_7
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_320X240:Z

    goto :goto_0

    .line 3583
    :sswitch_8
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_176X144:Z

    goto :goto_0

    .line 3565
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_6
        0xd -> :sswitch_1
        0xe -> :sswitch_3
        0xf -> :sswitch_5
        0x12 -> :sswitch_7
        0x13 -> :sswitch_8
        0x15 -> :sswitch_0
        0x2f -> :sswitch_4
        0x34 -> :sswitch_2
    .end sparse-switch
.end method

.method public isSupportedFrontCameraResolutionFeature(I)Z
    .locals 4
    .param p1, "resolution"    # I

    .prologue
    const/4 v2, 0x1

    .line 3591
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedFrontCameraResolution()Ljava/lang/String;

    move-result-object v0

    .line 3592
    .local v0, "fixedResolution":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3594
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 3611
    :cond_0
    :goto_0
    return v2

    .line 3599
    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v1

    .line 3600
    .local v1, "resolutionString":Ljava/lang/String;
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_MEDIUM:Ljava/lang/String;

    .line 3601
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_SMALL:Ljava/lang/String;

    .line 3602
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    .line 3603
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_MEDIUM:Ljava/lang/String;

    .line 3604
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_SMALL:Ljava/lang/String;

    .line 3605
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    .line 3606
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_MEDIUM:Ljava/lang/String;

    .line 3607
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_SMALL:Ljava/lang/String;

    .line 3608
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3611
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isTemperatureHighToRecord()Z
    .locals 1

    .prologue
    .line 3617
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToRecord:Z

    return v0
.end method

.method public isTemperatureHighToUseFlash()Z
    .locals 1

    .prologue
    .line 3627
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToUseFlash:Z

    return v0
.end method

.method public isTemperatureLowToUseFlash()Z
    .locals 1

    .prologue
    .line 3637
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureLowToUseFlash:Z

    return v0
.end method

.method public onEmpty()V
    .locals 0

    .prologue
    .line 3647
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->handleNotification()V

    .line 3648
    return-void
.end method

.method public overrideCamcorderResolution(I)V
    .locals 3
    .param p1, "resolutionId"    # I

    .prologue
    .line 3652
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrideCamcorderResolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    .line 3655
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCamcorderResolution(I)Z

    .line 3656
    return-void
.end method

.method public overrideFocusMode(I)V
    .locals 3
    .param p1, "focusMode"    # I

    .prologue
    .line 3660
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrideFocusMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3661
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    if-eq v0, p1, :cond_0

    .line 3662
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    .line 3664
    :cond_0
    return-void
.end method

.method public refreshButtonDimForCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3669
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStorage()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3670
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3671
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbbf

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderAntiShake()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3672
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-interface {v0, v3, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3673
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3674
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3675
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3676
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x12c

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTorchLightStatus()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3677
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x136

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCallStatus()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3678
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getObjectTrackingAF()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3679
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x7f

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3680
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3681
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1770

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3683
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachImageMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3684
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3690
    :goto_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3691
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1b58

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3693
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    if-eqz v0, :cond_2

    .line 3694
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x13d

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3696
    :cond_2
    return-void

    .line 3685
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3686
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x2

    invoke-interface {v0, v4, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_0

    .line 3688
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_0
.end method

.method public refreshSettingValuesFromPreferencesWhenSwitchCamera()V
    .locals 3

    .prologue
    .line 3700
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x84

    aput v2, v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->loadFromPreferences([I)V

    .line 3701
    return-void
.end method

.method public registerAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    .prologue
    .line 3705
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v1

    .line 3706
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3707
    monitor-exit v1

    .line 3708
    return-void

    .line 3707
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V
    .locals 3
    .param p1, "menuId"    # I
    .param p2, "listener"    # Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    .prologue
    .line 3712
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3713
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3714
    .local v0, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    if-eqz v0, :cond_0

    .line 3715
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3721
    :goto_0
    monitor-exit v2

    .line 3722
    return-void

    .line 3717
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3718
    .restart local v0    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3719
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 3721
    .end local v0    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetCameraEffect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3726
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffect:I

    .line 3727
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffect:I

    .line 3728
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraEffect(IZ)V

    .line 3729
    return-void
.end method

.method public resetCameraSettingsInDual()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3733
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    .line 3734
    const/16 v0, 0x12

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 3735
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 3736
    const/4 v0, 0x7

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 3737
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    .line 3738
    const/16 v0, 0x9

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 3739
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    .line 3740
    const/16 v0, 0xa

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 3741
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 3742
    return-void
.end method

.method public resetCameraSettingsToDefault()V
    .locals 1

    .prologue
    .line 3747
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraLocalSettings(I)V

    .line 3748
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraLocalSettings(I)V

    .line 3749
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraLocalSettings(I)V

    .line 3750
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraLocalSettings(I)V

    .line 3755
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCommonGlobalSettings()V

    .line 3756
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraGlobalSettings()V

    .line 3757
    return-void
.end method

.method public resetListeners()V
    .locals 4

    .prologue
    .line 3761
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v3

    .line 3762
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3763
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3764
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v3

    .line 3765
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3766
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 3767
    .local v1, "key":I
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3765
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3763
    .end local v0    # "i":I
    .end local v1    # "key":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3769
    .restart local v0    # "i":I
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 3770
    monitor-exit v3

    .line 3771
    return-void

    .line 3770
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public resetOverriddenCamcorderResolution()V
    .locals 1

    .prologue
    .line 3775
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    .line 3776
    return-void
.end method

.method public resetOverriddenFocusMode()V
    .locals 1

    .prologue
    .line 3780
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    .line 3781
    return-void
.end method

.method public resetShootingModeOrder()V
    .locals 3

    .prologue
    .line 3785
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDefaultBackCameraShootingModeOrder()V

    .line 3786
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setBackCameraShootingModeOrder(Ljava/lang/String;)V

    .line 3788
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3789
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3790
    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getBaseColumnIds(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3789
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->updateShootingModeOrder(Landroid/content/Context;Ljava/util/ArrayList;)Z

    .line 3793
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDefaultFrontCameraShootingModeOrder()V

    .line 3794
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFrontCameraShootingModeOrder(Ljava/lang/String;)V

    .line 3796
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3797
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3798
    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getBaseColumnIds(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3797
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->updateShootingModeFrontOrder(Landroid/content/Context;Ljava/util/ArrayList;)Z

    .line 3800
    :cond_1
    return-void
.end method

.method public resetZoomValue()V
    .locals 2

    .prologue
    .line 3804
    const-string v0, "CameraSettings"

    const-string v1, "resetZoomValue"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    .line 3806
    return-void
.end method

.method public restoreDualResolution(I)V
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    .line 3810
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_dual_rear_resolution_key"

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 3812
    .local v0, "resolution":I
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreDualResolution "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3813
    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3815
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionChanged(Z)V

    .line 3816
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 3817
    return-void
.end method

.method public restoreShootingModeAfterRecording()I
    .locals 2

    .prologue
    .line 3821
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPreviousShootingModeForRecording:I

    .line 3822
    .local v0, "mode":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPreviousShootingModeForRecording:I

    .line 3823
    return v0
.end method

.method public setAntiFogLevel(I)V
    .locals 3
    .param p1, "antiFogLevel"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_anti_fog_level_key"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    .line 303
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    if-eq v0, p1, :cond_0

    .line 304
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAntiFogLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_anti_fog_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 308
    const/16 v0, 0x75

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 310
    :cond_0
    return-void
.end method

.method public setAttachImageMode(Z)V
    .locals 3
    .param p1, "mode"    # Z

    .prologue
    .line 3281
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachImageMode:Z

    if-eq v0, p1, :cond_0

    .line 3282
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAttachImageMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachImageMode:Z

    .line 3285
    :cond_0
    return-void
.end method

.method public setAttachVideoFixedResolution(II)V
    .locals 0
    .param p1, "backResolution"    # I
    .param p2, "frontResolution"    # I

    .prologue
    .line 3828
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachBackVideoFixedResolution:I

    .line 3829
    iput p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachFrontVideoFixedResolution:I

    .line 3830
    return-void
.end method

.method public setAttachVideoMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 3302
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachVideoMode:Z

    .line 3303
    return-void
.end method

.method public setAutoNightDetectionMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_auto_night_detection_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultAutoNightDetectionMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    .line 333
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    if-eq v0, p1, :cond_0

    .line 334
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoNightDetectionMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_auto_night_detection_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 337
    const/16 v0, 0x57

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 339
    :cond_0
    return-void
.end method

.method public setBackBeautyLevel(I)V
    .locals 3
    .param p1, "beautyLevel"    # I

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_back_camera_beauty_level_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    .line 352
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    if-eq v0, p1, :cond_0

    .line 353
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackBeautyLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_back_camera_beauty_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 357
    const/16 v0, 0xb4

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 359
    :cond_0
    return-void
.end method

.method public setBackCameraShootingModeOrder(Ljava/lang/String;)V
    .locals 3
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_back_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackCameraShootingModeOrder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_back_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_0
    return-void
.end method

.method public setBeautyLevel(I)V
    .locals 3
    .param p1, "beautyLevel"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_beauty_level_key"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    .line 396
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    if-eq v0, p1, :cond_0

    .line 397
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBeautyLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_beauty_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 401
    const/16 v0, 0x6d

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 403
    :cond_0
    return-void
.end method

.method public setBeautyMode(I)V
    .locals 3
    .param p1, "beautyMode"    # I

    .prologue
    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_beauty_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyMode:I

    .line 413
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyMode:I

    if-eq v0, p1, :cond_0

    .line 414
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBeautyMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyMode:I

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_beauty_mode"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 418
    const/16 v0, 0x81

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyMode:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 420
    :cond_0
    return-void
.end method

.method public setCallStatus(IZ)V
    .locals 3
    .param p1, "callStatus"    # I
    .param p2, "isLaunched"    # Z

    .prologue
    .line 3834
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCallStatus:I

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_2

    .line 3835
    :cond_0
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCallStatus:I

    .line 3837
    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    .line 3839
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x136

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3842
    :cond_2
    return-void
.end method

.method public setCamcorderAntiShake(I)V
    .locals 3
    .param p1, "antiShake"    # I

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_FRONT_ANTISHAKE:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camcorder_antishake_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderAntishake()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    .line 447
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    if-eq v0, p1, :cond_0

    .line 448
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderAntiShake "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camcorder_antishake_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 452
    const/16 v0, 0xbbf

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setCamcorderAudioRecording(I)V
    .locals 3
    .param p1, "audioRecording"    # I

    .prologue
    .line 463
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAudioRecording:I

    if-eq v0, p1, :cond_0

    .line 464
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderAudioRecording "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAudioRecording:I

    .line 467
    :cond_0
    return-void
.end method

.method public setCamcorderResolution(I)Z
    .locals 4
    .param p1, "resolution"    # I

    .prologue
    const/4 v0, 0x0

    .line 3847
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachVideoFixedResolution()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3882
    :cond_0
    :goto_0
    return v0

    .line 3851
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    if-eqz v1, :cond_2

    .line 3852
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_overridden_camcorder_resolution"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    .line 3863
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    if-eq v1, p1, :cond_0

    .line 3864
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderResolution "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3865
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    .line 3867
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    if-eqz v0, :cond_6

    .line 3868
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_overridden_camcorder_resolution"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3879
    :goto_2
    const/16 v0, 0xbb9

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 3880
    const/4 v0, 0x1

    goto :goto_0

    .line 3854
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3855
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camcorder_rear_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    goto :goto_1

    .line 3856
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3857
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camcorder_dual_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    goto :goto_1

    .line 3859
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camcorder_front_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    goto :goto_1

    .line 3870
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3871
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_rear_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 3872
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3873
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_dual_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 3875
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_front_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_2
.end method

.method public setCameraDualEffect(I)V
    .locals 3
    .param p1, "effect"    # I

    .prologue
    .line 513
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraDualEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_dual_effect"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_DUAL_EFFECT:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    .line 517
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    if-eq v0, p1, :cond_0

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 518
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    .line 519
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_dual_effect"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 522
    :cond_0
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_1

    .line 523
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setZoomValue(I)V

    .line 526
    :cond_1
    const/16 v0, 0x5a

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 527
    return-void
.end method

.method public setCameraEffect(I)V
    .locals 1
    .param p1, "effect"    # I

    .prologue
    .line 3887
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraEffect(IZ)V

    .line 3888
    return-void
.end method

.method public setCameraEffect(IZ)V
    .locals 1
    .param p1, "effect"    # I
    .param p2, "notify"    # Z

    .prologue
    .line 3892
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3893
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffect:I

    if-eq v0, p1, :cond_0

    .line 3894
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffect:I

    .line 3903
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 3904
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3905
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetEffectLevelSettingValue()V

    .line 3907
    :cond_1
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 3909
    :cond_2
    return-void

    .line 3897
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffect:I

    if-eq v0, p1, :cond_0

    .line 3898
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffect:I

    goto :goto_0
.end method

.method public setCameraExposureMeter(I)V
    .locals 4
    .param p1, "exposureMeter"    # I

    .prologue
    const/4 v3, 0x1

    .line 544
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureMeter:I

    if-ne v0, v3, :cond_0

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_exposure_meter_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    .line 548
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    if-eq v0, p1, :cond_2

    .line 549
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExposureMeter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    .line 551
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureMeter:I

    if-ne v0, v3, :cond_1

    .line 552
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_exposure_meter_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 555
    :cond_1
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 557
    :cond_2
    return-void
.end method

.method public setCameraHDR(I)V
    .locals 4
    .param p1, "hdr"    # I

    .prologue
    const/16 v3, 0xc

    .line 603
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_1

    .line 604
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEasyCameraHDR()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    .line 609
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    if-eq v0, p1, :cond_0

    .line 610
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraHDR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    .line 612
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_hdr_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 617
    :goto_1
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 618
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_0

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_rear_hdr_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public setCameraISO(I)V
    .locals 4
    .param p1, "iso"    # I

    .prologue
    const/4 v3, 0x1

    .line 633
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualISO:I

    if-ne v0, v3, :cond_0

    .line 634
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_iso_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    .line 637
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    if-eq v0, p1, :cond_2

    .line 638
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraISO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    .line 640
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualISO:I

    if-ne v0, v3, :cond_1

    .line 641
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_iso_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 643
    :cond_1
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 645
    :cond_2
    return-void
.end method

.method public setCameraId(I)V
    .locals 6
    .param p1, "cameraId"    # I

    .prologue
    const/16 v5, 0x24

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 654
    if-gez p1, :cond_1

    .line 655
    const-string v0, "CameraSettings"

    const-string v1, "wrong camera id, so return setCameraId"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    if-eq v0, p1, :cond_0

    .line 660
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    .line 663
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 664
    :cond_2
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraFacing(I)V

    .line 669
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 670
    :cond_3
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDualMode(I)V

    .line 675
    :goto_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    invoke-direct {p0, v5, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 676
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    invoke-interface {v0, v5, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 677
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 666
    :cond_4
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraFacing(I)V

    goto :goto_1

    .line 672
    :cond_5
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDualMode(I)V

    goto :goto_2
.end method

.method public setCameraQuality(I)V
    .locals 3
    .param p1, "quality"    # I

    .prologue
    .line 688
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQuality:I

    if-eq v0, p1, :cond_0

    .line 689
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraQuality "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQuality:I

    .line 692
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->handleNotification(II)V

    .line 694
    :cond_0
    return-void
.end method

.method public setCameraResolution(I)Z
    .locals 6
    .param p1, "resolution"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3913
    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v2, :cond_2

    .line 3914
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3915
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionChanged(Z)V

    .line 3916
    invoke-direct {p0, v5, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    move v0, v1

    .line 3969
    :cond_1
    :goto_0
    return v0

    .line 3920
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3921
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set wrong resolution for front dual camera : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3923
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3924
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set wrong resolution for back dual camera : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3926
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3927
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set wrong resolution for front camera : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3929
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3930
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set wrong resolution for back camera : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3934
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3935
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_rear_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3944
    :cond_7
    :goto_1
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mResolution : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resolution : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3945
    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    if-eq v2, p1, :cond_1

    .line 3946
    const-string v0, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraResolution "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3947
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3949
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3950
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_camera_rear_resolution_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3951
    const-string v0, "pref_camera_rear_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    .line 3965
    :cond_8
    :goto_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionChanged(Z)V

    .line 3966
    invoke-direct {p0, v5, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    move v0, v1

    .line 3967
    goto/16 :goto_0

    .line 3936
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3937
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_front_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    goto/16 :goto_1

    .line 3938
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3939
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_dual_rear_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    goto/16 :goto_1

    .line 3940
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3941
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_dual_front_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    goto/16 :goto_1

    .line 3952
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3953
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_camera_front_resolution_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3954
    const-string v0, "pref_camera_front_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    goto :goto_2

    .line 3955
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3956
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_camera_dual_front_resolution_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3957
    const-string v0, "pref_camera_dual_front_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 3958
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3959
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_camera_dual_rear_resolution_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3960
    const-string v0, "pref_camera_dual_rear_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    goto/16 :goto_2
.end method

.method public setCameraResolutionChanged(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .prologue
    .line 737
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraResolutionChanged:Z

    .line 738
    return-void
.end method

.method public setCameraShutterSound(I)V
    .locals 4
    .param p1, "shutterSound"    # I

    .prologue
    const/4 v3, 0x1

    .line 777
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getForcedShutterSound()I

    move-result v0

    .line 778
    .local v0, "forcedShutterSound":I
    if-ne v0, v3, :cond_1

    .line 779
    const-string v1, "CameraSettings"

    const-string v2, "In this model, shutter sound must be playbacked"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_shutter_sound_key"

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    .line 784
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    if-eq v1, p1, :cond_0

    .line 785
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraShutterSound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    .line 787
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_shutter_sound_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 789
    const/16 v1, 0x15

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setCameraVoiceCommand(I)V
    .locals 3
    .param p1, "voiceCommand"    # I

    .prologue
    .line 814
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isMicroPhoneRestricted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraVoiceCommand()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    .line 820
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    if-eq v0, p1, :cond_0

    .line 821
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraVoiceCommand "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    .line 825
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 827
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startVoiceRecognizer()V

    .line 834
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_voice_control_key"

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 835
    const/16 v0, 0x47

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0

    .line 830
    :cond_3
    const-string v0, "CameraSettings"

    const-string v1, "setCameraVoiceCommand OFF"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopVoiceRecognizer()V

    goto :goto_1
.end method

.method public setColorTune(I)V
    .locals 3
    .param p1, "colorTune"    # I

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getColorTune()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    .line 862
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    if-eq v0, p1, :cond_0

    .line 863
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColorTune "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    .line 865
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_colortune"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 866
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 868
    :cond_0
    return-void
.end method

.method public setCoverCamera(Z)V
    .locals 6
    .param p1, "coverCamera"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v5, 0x137

    .line 3337
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_SVIEW_COVER_CAMERA:Z

    if-nez v2, :cond_1

    .line 3355
    :cond_0
    :goto_0
    return-void

    .line 3341
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-eq v2, p1, :cond_0

    .line 3342
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCoverCamera = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    .line 3345
    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-eqz v2, :cond_2

    .line 3346
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 3347
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v5, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3351
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleCoverCameraChanged(Z)V

    .line 3352
    if-eqz p1, :cond_3

    :goto_2
    invoke-direct {p0, v5, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0

    .line 3349
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v5, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 3352
    goto :goto_2
.end method

.method public setDefaultBackCameraShootingModeOrder()V
    .locals 4

    .prologue
    .line 3975
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->initializeDefaultBackCameraShootingModeOrderList()V

    .line 3977
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    .line 3979
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3980
    .local v0, "item":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    goto :goto_0

    .line 3983
    .end local v0    # "item":I
    :cond_0
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDefaultBackCameraShootingModeOrder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3984
    return-void
.end method

.method public setEasyCamera(Z)V
    .locals 3
    .param p1, "easyCamera"    # Z

    .prologue
    .line 3395
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eq v0, p1, :cond_1

    .line 3396
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEasyCamera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3397
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    .line 3399
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_1

    .line 3400
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 3401
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 3402
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDualMode(I)V

    .line 3406
    :cond_1
    return-void
.end method

.method public setEffectListType(I)V
    .locals 3
    .param p1, "effectListType"    # I

    .prologue
    .line 1047
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffectListType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_effect_list_type"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1053
    :goto_0
    return-void

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_back_effect_list_type"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setEffectStrengthLevel(I)V
    .locals 6
    .param p1, "level"    # I

    .prologue
    .line 1141
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1142
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffectStrengthLevel:I

    .line 1146
    :goto_0
    mul-int/lit8 v1, p1, 0x5a

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 1147
    .local v0, "intensity":I
    const/16 v1, 0x97

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1148
    return-void

    .line 1144
    .end local v0    # "intensity":I
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffectStrengthLevel:I

    goto :goto_0
.end method

.method public setEffectVignetteLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 1161
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1162
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffectVignetteLevel:I

    .line 1166
    :goto_0
    const/16 v0, 0x98

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1167
    return-void

    .line 1164
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffectVignetteLevel:I

    goto :goto_0
.end method

.method public setEngine(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 0
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    .line 3988
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 3989
    return-void
.end method

.method public setExposureValue(I)V
    .locals 4
    .param p1, "exposureValue"    # I

    .prologue
    const/4 v3, 0x1

    .line 1180
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    if-ne v0, v3, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_exposure_value_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 1184
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    if-eq v0, p1, :cond_2

    .line 1185
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExposureValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 1187
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    if-ne v0, v3, :cond_1

    .line 1188
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_exposure_value_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1190
    :cond_1
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 1192
    :cond_2
    return-void
.end method

.method public setEyeEnlargeLevel(I)V
    .locals 3
    .param p1, "eyeEnlargeLevel"    # I

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_eyeenlarge_level_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    .line 1205
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    if-eq v0, p1, :cond_0

    .line 1206
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEyeEnlargeLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    .line 1208
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_eyeenlarge_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1210
    const/16 v0, 0x70

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1212
    :cond_0
    return-void
.end method

.method public setFlashMode(I)V
    .locals 5
    .param p1, "flashMode"    # I

    .prologue
    const/16 v4, 0x6c

    const/4 v3, 0x3

    .line 1426
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_flash_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFlashMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    .line 1427
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getLowBatteryStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1428
    :cond_0
    const/4 p1, 0x0

    .line 1430
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    if-eq v0, p1, :cond_2

    .line 1431
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlashMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    .line 1433
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_flash_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1435
    const-string v0, "pref_flash_key"

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    .line 1437
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-eqz v0, :cond_3

    .line 1438
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1439
    invoke-direct {p0, v4, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1446
    :cond_2
    :goto_0
    return-void

    .line 1440
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_4

    .line 1441
    invoke-direct {p0, v4, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0

    .line 1443
    :cond_4
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setFloatingCameraButton(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_floating_camera_button_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    .line 1456
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    if-eq v0, p1, :cond_0

    .line 1457
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFloatingCameraButton "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    .line 1459
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_floating_camera_button_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1460
    const/16 v0, 0xb5

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1462
    :cond_0
    return-void
.end method

.method public setFocusLength(I)V
    .locals 3
    .param p1, "focusLength"    # I

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_focus_length"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusLength:I

    .line 1477
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusLength:I

    if-eq v0, p1, :cond_3

    .line 1478
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusLength "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    if-gez p1, :cond_0

    .line 1480
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetOverriddenFocusMode()V

    .line 1482
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusLength:I

    if-gez v0, :cond_1

    .line 1483
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->overrideFocusMode(I)V

    .line 1485
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusLength:I

    .line 1486
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualFocusLength:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1487
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_focus_length"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1489
    :cond_2
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1491
    :cond_3
    return-void
.end method

.method public setFocusMode(I)V
    .locals 3
    .param p1, "focusMode"    # I

    .prologue
    .line 3993
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 3994
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    if-eq v0, p1, :cond_0

    .line 3995
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3996
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 3997
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3999
    :cond_0
    return-void
.end method

.method public setFocusMode(II)V
    .locals 3
    .param p1, "focusMode"    # I
    .param p2, "overriddenFocusMode"    # I

    .prologue
    .line 4003
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusMode focusMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", overriddenFocusMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4004
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 4005
    iput p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    .line 4006
    return-void
.end method

.method public setFontScale(F)V
    .locals 1
    .param p1, "fontScale"    # F

    .prologue
    .line 1498
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->MAX_FONT_SCALE:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1499
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->MAX_FONT_SCALE:F

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFontScale:F

    .line 1503
    :goto_0
    return-void

    .line 1501
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFontScale:F

    goto :goto_0
.end method

.method public setFoodBlurType(I)V
    .locals 3
    .param p1, "foodBlurType"    # I

    .prologue
    .line 1512
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    if-eq v0, p1, :cond_0

    .line 1513
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFoodBlurType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    .line 1515
    const/16 v0, 0x8d

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1517
    :cond_0
    return-void
.end method

.method public setFoodColorTuneValue(I)V
    .locals 3
    .param p1, "colorTuneValue"    # I

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_food_level_key"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodColorTuneValue:I

    .line 1530
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodColorTuneValue:I

    if-eq v0, p1, :cond_0

    .line 1531
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFoodColorTuneValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodColorTuneValue:I

    .line 1533
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_food_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodColorTuneValue:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1535
    const/16 v0, 0x76

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodColorTuneValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1537
    :cond_0
    return-void
.end method

.method public setFrontCameraShootingModeOrder(Ljava/lang/String;)V
    .locals 3
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_front_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 1572
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1573
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrontCameraShootingModeOrder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 1575
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1576
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_front_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    :cond_0
    return-void
.end method

.method public setFrontFlashMode(I)V
    .locals 3
    .param p1, "flashMode"    # I

    .prologue
    .line 1596
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_flash_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFrontFlashMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    .line 1600
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getLowBatteryStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1601
    const/4 p1, 0x0

    .line 1604
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    if-eq v0, p1, :cond_3

    .line 1605
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrontFlashMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    .line 1607
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v0, :cond_2

    .line 1608
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_flash_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1610
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_4

    .line 1611
    const/16 v0, 0x6a

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1616
    :cond_3
    :goto_0
    return-void

    .line 1613
    :cond_4
    const/16 v0, 0xaa

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setGPS(I)V
    .locals 3
    .param p1, "gps"    # I

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_gps_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    .line 1626
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    if-eq v0, p1, :cond_0

    .line 1627
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    .line 1629
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_gps_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1631
    :cond_0
    return-void
.end method

.method public setGestureControlMode(I)V
    .locals 4
    .param p1, "gestureControlMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 1640
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_detection_mode_key"

    .line 1641
    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    .line 1640
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    .line 1642
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    if-eq v0, p1, :cond_0

    .line 1643
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGestureControlMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    .line 1645
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_detection_mode_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1646
    const/16 v0, 0x7d

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    invoke-direct {p0, v0, v1, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 1648
    :cond_0
    return-void
.end method

.method public setGuideline(I)V
    .locals 3
    .param p1, "guideline"    # I

    .prologue
    .line 1660
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_1

    .line 1670
    :cond_0
    :goto_0
    return-void

    .line 1663
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_guideline_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    .line 1664
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    if-eq v0, p1, :cond_0

    .line 1665
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGuideline "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    .line 1667
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_guideline_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1668
    const/16 v0, 0x13

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setHRMShutter(I)V
    .locals 3
    .param p1, "hrmShutter"    # I

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_hrm_shutter_key"

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHRMShutter:I

    .line 1680
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHRMShutter:I

    if-eq v0, p1, :cond_0

    .line 1681
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHRMShutter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHRMShutter:I

    .line 1683
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_hrm_shutter_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHRMShutter:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1685
    :cond_0
    return-void
.end method

.method public setInterval(I)V
    .locals 4
    .param p1, "interval"    # I

    .prologue
    const/16 v3, 0x7f

    .line 1709
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    .line 1711
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    if-eq v0, p1, :cond_0

    .line 1712
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInterval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    .line 1714
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_interval_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1717
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 1719
    :cond_0
    return-void
.end method

.method public setKelvinValue(I)V
    .locals 3
    .param p1, "kValue"    # I

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_kelvin_key"

    const/16 v2, 0x37

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKelvin:I

    .line 1730
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKelvin:I

    if-eq v0, p1, :cond_0

    .line 1731
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKelvin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKelvin:I

    .line 1733
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_kelvin_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1735
    const/16 v0, 0x23

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1737
    :cond_0
    return-void
.end method

.method public setKeyboardCoverCamera(Z)V
    .locals 3
    .param p1, "keyboardCoverCamera"    # Z

    .prologue
    .line 3431
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    if-eq v0, p1, :cond_0

    .line 3432
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeyboardCoverCamera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    .line 3435
    :cond_0
    return-void
.end method

.method public setLowBatteryStatus(Z)V
    .locals 0
    .param p1, "lowBattery"    # Z

    .prologue
    .line 1746
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mLowBattery:Z

    .line 1747
    return-void
.end method

.method public setManualSettings(I)V
    .locals 3
    .param p1, "manual"    # I

    .prologue
    .line 4011
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setManualSettings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4013
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualExposureValue(I)V

    .line 4014
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualShutterSpeed(I)V

    .line 4015
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualISO(I)V

    .line 4016
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualWhiteBalance(I)V

    .line 4017
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualFocusLength(I)V

    .line 4018
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualExposureMeter(I)V

    .line 4019
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualMultiAF(I)V

    .line 4020
    return-void
.end method

.method public setMotionPanoramaMode(I)V
    .locals 3
    .param p1, "motionPanoramaMode"    # I

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_panorama_mode"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultMotionPanoramaMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    .line 1811
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    if-eq v0, p1, :cond_0

    .line 1812
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMotionPanoramaMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    .line 1814
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_panorama_mode"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1815
    const/16 v0, 0x87

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1817
    :cond_0
    return-void
.end method

.method public setMotionPhoto(I)V
    .locals 3
    .param p1, "motionPhoto"    # I

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_motion_photo_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    .line 1834
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    if-eq v0, p1, :cond_0

    .line 1835
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMotionPhoto "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    .line 1838
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_motion_photo_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1839
    const/16 v0, 0x2a

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1841
    :cond_0
    return-void
.end method

.method public setMotionWideSelfieMode(I)V
    .locals 3
    .param p1, "motionWideSelfieMode"    # I

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_wide_selfie_mode"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultMotionWideSelfieMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    .line 1851
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    if-eq v0, p1, :cond_0

    .line 1852
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMotionWideSelfieMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    .line 1854
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_wide_selfie_mode"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1855
    const/16 v0, 0xad

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1857
    :cond_0
    return-void
.end method

.method public setMultiAFMode(I)V
    .locals 4
    .param p1, "multiAFMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 1870
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    if-ne v0, v3, :cond_0

    .line 1871
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_multi_af_mode"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_MULTI_AF_MODE:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiAFMode:I

    .line 1874
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiAFMode:I

    if-eq v0, p1, :cond_2

    .line 1875
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMultiAFMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiAFMode:I

    .line 1877
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    if-ne v0, v3, :cond_1

    .line 1878
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_multi_af_mode"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiAFMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1880
    :cond_1
    const/16 v0, 0x91

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1882
    :cond_2
    return-void
.end method

.method public setMultiWindowMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1891
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiWindowMode:I

    if-eq v0, p1, :cond_0

    .line 1892
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMultiWindowMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiWindowMode:I

    .line 1895
    :cond_0
    return-void
.end method

.method public setObjectTrackingAF(I)V
    .locals 4
    .param p1, "ObjectTrackingAF"    # I

    .prologue
    const/16 v3, 0x17

    .line 1907
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_0

    .line 1919
    :goto_0
    return-void

    .line 1910
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_object_trackingaf_key"

    const/4 v2, 0x0

    .line 1911
    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    .line 1910
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    .line 1912
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    if-eq v0, p1, :cond_1

    .line 1913
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setObjectTrackingAF "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    .line 1915
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_object_trackingaf_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1916
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1918
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    invoke-interface {v0, v3, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_0
.end method

.method public setPictureFormat(I)V
    .locals 3
    .param p1, "pictureFormat"    # I

    .prologue
    .line 1931
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_picture_format"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    .line 1932
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    if-eq v0, p1, :cond_0

    .line 1933
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPictureFormat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    .line 1935
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_picture_format"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1937
    const/16 v0, 0x13b

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1939
    :cond_0
    return-void
.end method

.method public setQRCodeDetection(I)V
    .locals 3
    .param p1, "qrCodeDetection"    # I

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_qrcode_detection"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_QRCODE_DETECTION:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    .line 1949
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    if-eq v0, p1, :cond_0

    .line 1950
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setQRCodeDetection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    .line 1952
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_qrcode_detection"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1953
    const/16 v0, 0x13c

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1955
    :cond_0
    return-void
.end method

.method public setRearLensDistortionCorrection(I)V
    .locals 3
    .param p1, "correction"    # I

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_rear_lens_distortion_correction_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRearLensDistortionCorrection:I

    .line 1970
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRearLensDistortionCorrection:I

    if-eq v0, p1, :cond_0

    .line 1971
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRearLensDistortionCorrection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRearLensDistortionCorrection:I

    .line 1973
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_rear_lens_distortion_correction_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRearLensDistortionCorrection:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1975
    :cond_0
    return-void
.end method

.method public setRecordingMotionSpeed(I)V
    .locals 3
    .param p1, "motionSpeed"    # I

    .prologue
    .line 1984
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getRecordingMotionSpeed()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionSpeed:I

    .line 1986
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionSpeed:I

    if-eq v0, p1, :cond_0

    .line 1987
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingMotionSpeed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionSpeed:I

    .line 1989
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_recording_motion_speed_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionSpeed:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1990
    const/16 v0, 0x170d

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionSpeed:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1992
    :cond_0
    return-void
.end method

.method public setRequestedMediaRecorderProfileInfo(Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;

    .prologue
    .line 2001
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedMediaRecorderProfileInfo:Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;

    .line 2002
    return-void
.end method

.method public setRequestedRecordingDurationLimit(I)V
    .locals 0
    .param p1, "durationLimit"    # I

    .prologue
    .line 2011
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedRecordingDurationLimit:I

    .line 2012
    return-void
.end method

.method public setRequestedRecordingSizeLimit(J)V
    .locals 1
    .param p1, "sizeLimit"    # J

    .prologue
    .line 2021
    iput-wide p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedRecordingSizeLimit:J

    .line 2022
    return-void
.end method

.method public setRequestedSaveUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2031
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedSaveUri:Landroid/net/Uri;

    .line 2032
    return-void
.end method

.method public setResizableCamera(Z)V
    .locals 3
    .param p1, "resizableCamera"    # Z

    .prologue
    .line 3454
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eq v0, p1, :cond_1

    .line 3455
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResizableCamera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    .line 3458
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v0, :cond_1

    .line 3459
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 3460
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 3461
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDualMode(I)V

    .line 3465
    :cond_1
    return-void
.end method

.method public setReview(I)V
    .locals 3
    .param p1, "review"    # I

    .prologue
    .line 2044
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v0, :cond_1

    .line 2054
    :cond_0
    :goto_0
    return-void

    .line 2047
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_review_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    .line 2048
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    if-eq v0, p1, :cond_0

    .line 2049
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReview "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    .line 2051
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_review_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2052
    const/16 v0, 0x11

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setSaveRichTone(I)V
    .locals 3
    .param p1, "saveRichTone"    # I

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_save_richtone_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    .line 2064
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    if-eq v0, p1, :cond_0

    .line 2065
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSaveRichTone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    .line 2067
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_save_richtone_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2068
    const/16 v0, 0x22

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 2070
    :cond_0
    return-void
.end method

.method public setSecureCamera(Z)V
    .locals 4
    .param p1, "secureCamera"    # Z

    .prologue
    const/16 v3, 0x13d

    .line 3474
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    if-eq v0, p1, :cond_1

    .line 3475
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecureCamera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3476
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    .line 3478
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    if-eqz v0, :cond_2

    .line 3479
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3480
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 3482
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x1

    invoke-interface {v0, v3, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3487
    :cond_1
    :goto_0
    return-void

    .line 3484
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_0
.end method

.method public setSelfFlip(I)V
    .locals 3
    .param p1, "flip"    # I

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_self_flip_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    .line 2083
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    if-eq v0, p1, :cond_0

    .line 2084
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    .line 2086
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_self_flip_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2088
    const/16 v0, 0x26

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2090
    :cond_0
    return-void
.end method

.method public setSeparatedShootingMode(ILjava/lang/String;)V
    .locals 3
    .param p1, "commandId"    # I
    .param p2, "shootingModeName"    # Ljava/lang/String;

    .prologue
    .line 4024
    invoke-static {p1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedAndPreloadedShootingMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4025
    const-string v0, "CameraSettings"

    const-string v1, "Cannot support Separated ShootingMode"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 4040
    .end local p2    # "shootingModeName":Ljava/lang/String;
    :goto_0
    return-void

    .line 4029
    .restart local p2    # "shootingModeName":Ljava/lang/String;
    :cond_0
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSeparatedShootingMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4031
    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2    # "shootingModeName":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    .line 4033
    invoke-static {p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    .line 4035
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4036
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    goto :goto_0

    .line 4038
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    goto :goto_0
.end method

.method public setShapeCorrection(I)V
    .locals 3
    .param p1, "shapeCorrection"    # I

    .prologue
    .line 2322
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_shapecorrection_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShapeCorrectionMode:I

    .line 2323
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShapeCorrectionMode:I

    if-eq v0, p1, :cond_0

    .line 2324
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShapeCorrection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShapeCorrectionMode:I

    .line 2326
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_shapecorrection_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShapeCorrectionMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2328
    const/16 v0, 0x71

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShapeCorrectionMode:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2330
    :cond_0
    return-void
.end method

.method public setShootingMode(I)V
    .locals 4
    .param p1, "shootingMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 4044
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    if-eq v0, p1, :cond_0

    invoke-static {v3, p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4045
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShootingMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4047
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    .line 4048
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    .line 4050
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4051
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    .line 4064
    :goto_0
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 4066
    :cond_0
    return-void

    .line 4052
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4053
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_DUAL:Z

    if-eqz v0, :cond_2

    .line 4054
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    goto :goto_0

    .line 4056
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    goto :goto_0

    .line 4058
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4059
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    goto :goto_0

    .line 4061
    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    goto :goto_0
.end method

.method public setShutterSpeed(I)V
    .locals 4
    .param p1, "shutterSpeed"    # I

    .prologue
    const/4 v3, 0x1

    .line 2548
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    if-ne v0, v3, :cond_0

    .line 2549
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_shutter_speed_key"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSpeed:I

    .line 2552
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSpeed:I

    if-eq v0, p1, :cond_2

    .line 2553
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShutterSpeed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSpeed:I

    .line 2555
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    if-ne v0, v3, :cond_1

    .line 2556
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_shutter_speed_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2558
    :cond_1
    const/16 v0, 0x1f

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2560
    :cond_2
    return-void
.end method

.method public setSkinColorLevel(I)V
    .locals 3
    .param p1, "skinColorLevel"    # I

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_skincolor_level_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    .line 2573
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    if-eq v0, p1, :cond_0

    .line 2574
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSkinColorLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    .line 2576
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_skincolor_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2578
    const/16 v0, 0x7a

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2580
    :cond_0
    return-void
.end method

.method public setSlimFaceLevel(I)V
    .locals 3
    .param p1, "slimFaceLevel"    # I

    .prologue
    .line 2592
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_slimface_level_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    .line 2593
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    if-eq v0, p1, :cond_0

    .line 2594
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlimFaceLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    .line 2596
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_slimface_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2598
    const/16 v0, 0x6e

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2600
    :cond_0
    return-void
.end method

.method public setSoundAndShotMode(I)V
    .locals 3
    .param p1, "SoundAndShotMode"    # I

    .prologue
    .line 2609
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    if-eq v0, p1, :cond_0

    .line 2610
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSoundAndShotMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    .line 2612
    const/16 v0, 0x4d

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 2614
    :cond_0
    return-void
.end method

.method public setSpotlightLevel(I)V
    .locals 3
    .param p1, "spotlightLevel"    # I

    .prologue
    .line 2626
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_spotlight_level_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightLevel:I

    .line 2627
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightLevel:I

    if-eq v0, p1, :cond_0

    .line 2628
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpotlightLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightLevel:I

    .line 2630
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_spotlight_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2632
    const/16 v0, 0x6f

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2634
    :cond_0
    return-void
.end method

.method public setSpotlightPosition(I)V
    .locals 3
    .param p1, "spotlightPosition"    # I

    .prologue
    .line 2646
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_spotlight_position_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightPosition:I

    .line 2647
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightPosition:I

    if-eq v0, p1, :cond_0

    .line 2648
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpotlightPosition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightPosition:I

    .line 2650
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_spotlight_position_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightPosition:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2652
    const/16 v0, 0x77

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightPosition:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2654
    :cond_0
    return-void
.end method

.method public setStorage(I)V
    .locals 4
    .param p1, "storage"    # I

    .prologue
    const/16 v3, 0x16

    .line 2711
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_storage_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultStorage()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    .line 2712
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    if-eq v0, p1, :cond_0

    .line 2713
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStorage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    .line 2715
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_storage_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2717
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2718
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setStorageStatus(I)V

    .line 2719
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    .line 2721
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 2722
    return-void
.end method

.method public setTapToTakePictures(I)V
    .locals 3
    .param p1, "tapToTakePictures"    # I

    .prologue
    .line 2731
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_tap_to_take_pictures_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTapToTakePictures:I

    .line 2732
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTapToTakePictures:I

    if-eq v0, p1, :cond_0

    .line 2733
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTapToTakePictures "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTapToTakePictures:I

    .line 2735
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_tap_to_take_pictures_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTapToTakePictures:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2737
    :cond_0
    return-void
.end method

.method public setTemperatureHighToRecord(Z)V
    .locals 0
    .param p1, "highTemperature"    # Z

    .prologue
    .line 3622
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToRecord:Z

    .line 3623
    return-void
.end method

.method public setTemperatureHighToUseFlash(Z)V
    .locals 0
    .param p1, "highTemperature"    # Z

    .prologue
    .line 3632
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToUseFlash:Z

    .line 3633
    return-void
.end method

.method public setTemperatureLowToUseFlash(Z)V
    .locals 0
    .param p1, "lowTemperature"    # Z

    .prologue
    .line 3642
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureLowToUseFlash:Z

    .line 3643
    return-void
.end method

.method public setTimer(I)V
    .locals 3
    .param p1, "timer"    # I

    .prologue
    .line 2750
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    .line 2752
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    if-eq v0, p1, :cond_0

    .line 2753
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    .line 2755
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_timer_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2756
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2757
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x7f

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 2759
    :cond_0
    return-void
.end method

.method public setTorchLightStatus(I)V
    .locals 3
    .param p1, "torchLight"    # I

    .prologue
    .line 2768
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    if-eq v0, p1, :cond_0

    .line 2769
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    .line 2770
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x12c

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 2772
    :cond_0
    return-void
.end method

.method public setVideoCollageRecordingTime(I)V
    .locals 3
    .param p1, "recordingTime"    # I

    .prologue
    const/4 v2, 0x1

    .line 2790
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2791
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_recording_time"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    .line 2796
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    if-eq v0, p1, :cond_0

    .line 2797
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    .line 2798
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoCollageRecordingTime :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2801
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_recording_time"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2805
    :goto_1
    const/16 v0, 0x84

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2807
    :cond_0
    return-void

    .line 2793
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_back_video_collage_recording_time"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    goto :goto_0

    .line 2803
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_back_video_collage_recording_time"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public setVideoCollageResolution()V
    .locals 5

    .prologue
    .line 4070
    const-string v2, "CameraSettings"

    const-string v3, "setVideoCollageResolution()"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4074
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4097
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4098
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    .line 4102
    .local v1, "cameraResolution":Ljava/lang/String;
    :goto_0
    const-string v0, "960x720"

    .line 4107
    .local v0, "camcorderResolution":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 4108
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 4109
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 4110
    :cond_0
    const-string v0, "640x480"

    .line 4113
    :cond_1
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVideoCollageResolution() - camera="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " camcorder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4115
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolution(I)Z

    .line 4116
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->overrideCamcorderResolution(I)V

    .line 4117
    return-void

    .line 4080
    .end local v0    # "camcorderResolution":Ljava/lang/String;
    .end local v1    # "cameraResolution":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4081
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    .line 4085
    .restart local v1    # "cameraResolution":Ljava/lang/String;
    :goto_2
    const-string v0, "960x960"

    .line 4086
    .restart local v0    # "camcorderResolution":Ljava/lang/String;
    goto :goto_1

    .line 4083
    .end local v0    # "camcorderResolution":Ljava/lang/String;
    .end local v1    # "cameraResolution":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    .restart local v1    # "cameraResolution":Ljava/lang/String;
    goto :goto_2

    .line 4100
    .end local v1    # "cameraResolution":Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    .restart local v1    # "cameraResolution":Ljava/lang/String;
    goto :goto_0

    .line 4074
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setVideoCollageType(IZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "notify"    # Z

    .prologue
    const/16 v2, 0xc

    .line 4121
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4122
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_type"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    .line 4127
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    if-eq v0, p1, :cond_0

    .line 4128
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    .line 4129
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoCollageType :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4131
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4132
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_type"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4137
    :goto_1
    if-eqz p2, :cond_0

    .line 4138
    const/16 v0, 0x83

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 4141
    :cond_0
    return-void

    .line 4124
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_back_video_collage_type"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    goto :goto_0

    .line 4134
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_back_video_collage_type"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public setViewMode(I)V
    .locals 3
    .param p1, "viewMode"    # I

    .prologue
    .line 2829
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-nez v0, :cond_1

    .line 2840
    :cond_0
    :goto_0
    return-void

    .line 2832
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_fullpreview_key"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VIEW_MODE:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    .line 2833
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    if-eq v0, p1, :cond_0

    .line 2834
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    .line 2836
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_fullpreview_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2838
    const/16 v0, 0x138

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setVolumeKeyAs(I)V
    .locals 3
    .param p1, "volumeKeyAs"    # I

    .prologue
    .line 2849
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_volume_key_as"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VOLUME_KEY_AS:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    .line 2850
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    if-eq v0, p1, :cond_0

    .line 2851
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolumeKeyAs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    .line 2853
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_volume_key_as"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2854
    const/16 v0, 0x49

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2856
    :cond_0
    return-void
.end method

.method public setWatermarkCategory(I)V
    .locals 2
    .param p1, "watermarkCategory"    # I

    .prologue
    .line 2865
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getWatermarkCategory()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkCategory:I

    .line 2866
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkCategory:I

    if-eq v0, p1, :cond_0

    .line 2867
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkCategory:I

    .line 2868
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_watermark_category"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2869
    const/16 v0, 0xa1

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkCategory:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2871
    :cond_0
    return-void
.end method

.method public setWatermarkId(I)V
    .locals 4
    .param p1, "watermarkId"    # I

    .prologue
    const/16 v3, 0xa0

    .line 2883
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkId:I

    if-eq v0, p1, :cond_0

    .line 2884
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWatermarkId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkId:I

    .line 2886
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2887
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 2889
    :cond_0
    return-void
.end method

.method public setWatermarkInputText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2898
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkInputText:Ljava/lang/String;

    .line 2899
    return-void
.end method

.method public setWhiteBalance(I)V
    .locals 4
    .param p1, "whiteBalance"    # I

    .prologue
    const/4 v3, 0x1

    .line 2912
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    if-ne v0, v3, :cond_0

    .line 2913
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_white_balance_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    .line 2916
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    if-eq v0, p1, :cond_2

    .line 2917
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWhiteBalance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    .line 2919
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    if-ne v0, v3, :cond_1

    .line 2920
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_white_balance_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2922
    :cond_1
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2924
    :cond_2
    return-void
.end method

.method public setZoomValue(I)V
    .locals 3
    .param p1, "zoomValue"    # I

    .prologue
    .line 2937
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    if-eq v0, p1, :cond_0

    .line 2938
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZoomValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    .line 2940
    const/16 v0, 0x12

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2942
    :cond_0
    return-void
.end method

.method public storeShootingModeBeforeRecording()V
    .locals 1

    .prologue
    .line 4145
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPreviousShootingModeForRecording:I

    .line 4146
    return-void
.end method

.method public unregisterAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    .prologue
    .line 4150
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v1

    .line 4151
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4152
    monitor-exit v1

    .line 4153
    return-void

    .line 4152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V
    .locals 4
    .param p1, "menuId"    # I
    .param p2, "listener"    # Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    .prologue
    .line 4157
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v2

    .line 4158
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4159
    .local v0, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    if-nez v0, :cond_0

    .line 4160
    const-string v1, "CameraSettings"

    const-string v3, "Could not find listener. return."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4161
    monitor-exit v2

    .line 4166
    :goto_0
    return-void

    .line 4163
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4165
    monitor-exit v2

    goto :goto_0

    .end local v0    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCameraResolutionForDual()V
    .locals 4

    .prologue
    .line 4170
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCameraResolutionForDual : resolution = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4172
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4173
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 4174
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_WIDE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4175
    .local v0, "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    .line 4200
    .end local v0    # "resolutionID":I
    :cond_0
    :goto_0
    return-void

    .line 4176
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4177
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_WIDE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4178
    .restart local v0    # "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    .line 4179
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    goto :goto_0

    .line 4181
    .end local v0    # "resolutionID":I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4182
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 4183
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_SQUARE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4184
    .restart local v0    # "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    goto :goto_0

    .line 4185
    .end local v0    # "resolutionID":I
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4186
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_SQUARE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4187
    .restart local v0    # "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    .line 4188
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    goto :goto_0

    .line 4191
    .end local v0    # "resolutionID":I
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 4192
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_NORMAL_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4193
    .restart local v0    # "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    goto/16 :goto_0

    .line 4194
    .end local v0    # "resolutionID":I
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4195
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_NORMAL_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4196
    .restart local v0    # "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    .line 4197
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 4204
    return-void
.end method

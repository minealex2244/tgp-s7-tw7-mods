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
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

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
    .line 4194
    const-string v0, "front"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4195
    const/4 v0, 0x1

    .line 4197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCameraIdFromPreferences()I
    .locals 3

    .prologue
    .line 4203
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
    .line 4207
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMCORDER_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getDefaultAutoNightDetectionMode()I
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 4211
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_NIGHT_DETECTION:Z

    if-nez v2, :cond_1

    .line 4212
    const/4 v0, 0x0

    .line 4221
    :cond_0
    :goto_0
    return v0

    .line 4215
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    .line 4218
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4219
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camera_autonightdetection_key"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4220
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
    .line 4226
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4227
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BACK_CAMCORDER_ANTISHAKE:I

    .line 4229
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
    .line 4234
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 4235
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4245
    :goto_0
    return v0

    .line 4236
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 4237
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4238
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 4239
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_PICTURESIZE:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4240
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 4241
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_PICTURESIZE:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4243
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

    .line 4244
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

    .line 4245
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getDefaultDualTrackRecordingMode()I
    .locals 1

    .prologue
    .line 4250
    const/4 v0, 0x0

    return v0
.end method

.method private getDefaultFlashMode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4254
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4255
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4256
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camera_flash_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4257
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

    .line 4260
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "flashMode":I
    :cond_1
    return v1
.end method

.method private getDefaultFrontFlashMode()I
    .locals 1

    .prologue
    .line 4265
    const/4 v0, 0x0

    return v0
.end method

.method private getDefaultMotionPanoramaMode()I
    .locals 1

    .prologue
    .line 4269
    const/4 v0, 0x1

    return v0
.end method

.method private getDefaultMotionWideSelfieMode()I
    .locals 1

    .prologue
    .line 4273
    const/4 v0, 0x1

    return v0
.end method

.method private getDefaultStorage()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4277
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    .line 4278
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4279
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "csc_pref_setup_storage_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4281
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    return v1
.end method

.method private getEasyCamcorderResolution()I
    .locals 1

    .prologue
    .line 4286
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4287
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4289
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

    .line 4299
    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 4305
    :cond_0
    :goto_0
    return v0

    .line 4301
    :sswitch_0
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 4303
    :sswitch_1
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_SUPPORT_COMPANION_CHIP:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 4299
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

    .line 4310
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4311
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v1, 0x48

    if-ne v0, v1, :cond_1

    .line 4312
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4324
    :goto_0
    return v0

    .line 4313
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    if-ne v0, v2, :cond_2

    .line 4314
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->SHOT_AND_MORE_BACK_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4316
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4319
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    if-ne v0, v2, :cond_4

    .line 4320
    const-string v0, "1920x1080"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4321
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

    .line 4322
    :cond_5
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->WIDE_SELFIE_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4324
    :cond_6
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getKeyboardCoverCamcorderResolution()I
    .locals 1

    .prologue
    .line 4329
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->KEYBOARD_COVER_CAMCORDER_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getKeyboardCoverCameraResolution()I
    .locals 1

    .prologue
    .line 4333
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4334
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->KEYBOARD_COVER_BACK_CAMERA_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4336
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

    .line 4341
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4342
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4343
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 4344
    const-string v2, "double_tab_launch"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4348
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

    .line 4354
    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    move v0, v1

    .line 4420
    :cond_1
    :goto_1
    return v0

    .line 4354
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

    .line 4356
    :pswitch_0
    const/16 v0, 0x3a

    goto/16 :goto_1

    .line 4358
    :pswitch_1
    const/16 v0, 0x31

    goto/16 :goto_1

    .line 4360
    :pswitch_2
    const/16 v0, 0x2a

    goto/16 :goto_1

    :pswitch_3
    move v0, v1

    .line 4362
    goto/16 :goto_1

    :pswitch_4
    move v0, v2

    .line 4364
    goto/16 :goto_1

    .line 4366
    :pswitch_5
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_MOTION_PANORAMA:Z

    if-eqz v0, :cond_2

    .line 4367
    const/16 v0, 0x48

    goto/16 :goto_1

    :cond_2
    move v0, v3

    .line 4369
    goto/16 :goto_1

    .line 4372
    :pswitch_6
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_NOT_SUPPORT_ZSL:Z

    if-nez v1, :cond_1

    const/16 v0, 0x11

    goto/16 :goto_1

    .line 4374
    :pswitch_7
    const/16 v0, 0x2f

    goto/16 :goto_1

    .line 4376
    :pswitch_8
    const/16 v0, 0x43

    goto/16 :goto_1

    .line 4378
    :pswitch_9
    const/16 v0, 0x40

    goto/16 :goto_1

    .line 4380
    :pswitch_a
    const/16 v0, 0x44

    goto/16 :goto_1

    .line 4382
    :pswitch_b
    const/16 v0, 0x4a

    goto/16 :goto_1

    .line 4384
    :pswitch_c
    const/16 v0, 0x17

    goto/16 :goto_1

    .line 4386
    :pswitch_d
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PRO:Z

    if-eqz v0, :cond_3

    .line 4387
    const/16 v0, 0x3b

    goto/16 :goto_1

    .line 4389
    :cond_3
    const/16 v0, 0x4b

    goto/16 :goto_1

    .line 4392
    :pswitch_e
    const/16 v0, 0x38

    goto/16 :goto_1

    :pswitch_f
    move v0, v4

    .line 4394
    goto/16 :goto_1

    .line 4396
    :pswitch_10
    const/16 v0, 0x2d

    goto/16 :goto_1

    .line 4398
    :pswitch_11
    const/16 v0, 0x37

    goto/16 :goto_1

    .line 4400
    :pswitch_12
    const/16 v0, 0x2e

    goto/16 :goto_1

    .line 4402
    :pswitch_13
    const/16 v0, 0x3f

    goto/16 :goto_1

    .line 4404
    :pswitch_14
    const/16 v0, 0x23

    goto/16 :goto_1

    .line 4406
    :pswitch_15
    const/16 v0, 0x28

    goto/16 :goto_1

    .line 4408
    :pswitch_16
    const/16 v0, 0x45

    goto/16 :goto_1

    .line 4410
    :pswitch_17
    const/16 v0, 0x3e

    goto/16 :goto_1

    .line 4412
    :pswitch_18
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_MOTION_WIDE_SELFIE:Z

    if-eqz v0, :cond_4

    .line 4413
    const/16 v0, 0x4e

    goto/16 :goto_1

    .line 4414
    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_WIDE_SELFIE:Z

    if-eqz v0, :cond_5

    .line 4415
    const/16 v0, 0x34

    goto/16 :goto_1

    .line 4417
    :cond_5
    const/16 v0, 0x4d

    goto/16 :goto_1

    .line 4354
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
    .line 4425
    sparse-switch p1, :sswitch_data_0

    .line 4488
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCommandIdByShootingMode(I)I

    move-result v0

    .line 4489
    .local v0, "commandId":I
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isDownloadedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4490
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4493
    .end local v0    # "commandId":I
    :goto_0
    return-object v1

    .line 4427
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0088

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4430
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0091

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4433
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4435
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a008c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4438
    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4440
    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4442
    :sswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4444
    :sswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4446
    :sswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0086

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4448
    :sswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0093

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4450
    :sswitch_a
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4452
    :sswitch_b
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4454
    :sswitch_c
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0089

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4456
    :sswitch_d
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4460
    :sswitch_e
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4463
    :sswitch_f
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4465
    :sswitch_10
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4467
    :sswitch_11
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a009d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4469
    :sswitch_12
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0097

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4471
    :sswitch_13
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0081

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4473
    :sswitch_14
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0083

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4475
    :sswitch_15
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0095

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4477
    :sswitch_16
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a008e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4479
    :sswitch_17
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0099

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4481
    :sswitch_18
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a009b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4483
    :sswitch_19
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4493
    .restart local v0    # "commandId":I
    :cond_0
    const-string v1, ""

    goto/16 :goto_0

    .line 4425
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x7 -> :sswitch_3
        0xe -> :sswitch_5
        0x11 -> :sswitch_1
        0x17 -> :sswitch_4
        0x23 -> :sswitch_6
        0x27 -> :sswitch_4
        0x28 -> :sswitch_7
        0x2a -> :sswitch_8
        0x2d -> :sswitch_a
        0x2e -> :sswitch_b
        0x2f -> :sswitch_9
        0x31 -> :sswitch_14
        0x34 -> :sswitch_e
        0x37 -> :sswitch_c
        0x38 -> :sswitch_d
        0x3a -> :sswitch_13
        0x3b -> :sswitch_f
        0x3e -> :sswitch_11
        0x3f -> :sswitch_10
        0x40 -> :sswitch_12
        0x43 -> :sswitch_15
        0x44 -> :sswitch_17
        0x45 -> :sswitch_16
        0x48 -> :sswitch_2
        0x4a -> :sswitch_18
        0x4b -> :sswitch_f
        0x4d -> :sswitch_e
        0x4e -> :sswitch_e
        0x4f -> :sswitch_19
    .end sparse-switch
.end method

.method private getShootingModeString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "commandId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 4503
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v0

    .line 4505
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
    .line 4536
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-gtz v3, :cond_0

    .line 4556
    :goto_0
    monitor-exit p0

    return-void

    .line 4540
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

    .line 4541
    .local v2, "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4542
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

    .line 4543
    .local v0, "listener":Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    iget v7, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mModeid:I

    invoke-interface {v0, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(II)V

    goto :goto_2

    .line 4545
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

    .line 4536
    .end local v2    # "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 4545
    .restart local v2    # "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    :cond_1
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4546
    :try_start_5
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4547
    :try_start_6
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 4548
    .local v1, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    if-eqz v1, :cond_2

    .line 4549
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    .line 4550
    .restart local v0    # "listener":Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    iget v7, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mModeid:I

    invoke-interface {v0, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(II)V

    goto :goto_3

    .line 4553
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

    .line 4555
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
    .line 4509
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p2, v5}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;-><init>(IILcom/sec/android/app/camera/setting/CameraSettingsImpl$1;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4511
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_1

    .line 4533
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4515
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isEmptyRequestQueue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4516
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

    .line 4517
    .local v2, "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4518
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

    .line 4519
    .local v0, "listener":Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    iget v7, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mModeid:I

    invoke-interface {v0, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(II)V

    goto :goto_2

    .line 4521
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

    .line 4509
    .end local v2    # "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 4521
    .restart local v2    # "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    :cond_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4522
    :try_start_5
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4523
    :try_start_6
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 4524
    .local v1, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    if-eqz v1, :cond_3

    .line 4525
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    .line 4526
    .restart local v0    # "listener":Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    iget v7, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mModeid:I

    invoke-interface {v0, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(II)V

    goto :goto_3

    .line 4529
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

    .line 4531
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

    .line 4559
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_FOCUS:Z

    if-nez v0, :cond_6

    .line 4560
    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 4561
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4571
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedBackCamcorderResolutionFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    if-nez v0, :cond_1

    .line 4572
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    .line 4573
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_rear_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4574
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4577
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_2

    .line 4578
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4581
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getObjectTrackingAF()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4583
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 4586
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSeparatedShootingMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4587
    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    .line 4589
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSeparatedShootingMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4590
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    .line 4593
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCameraPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4594
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateIfResolutionChanged()V

    .line 4596
    :cond_5
    return-void

    .line 4563
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFocusMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 4566
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 4567
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

    .line 4600
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_FOCUS:Z

    if-nez v0, :cond_0

    .line 4601
    new-array v0, v4, [I

    const/4 v1, 0x5

    aput v1, v0, v3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->loadFromPreferences([I)V

    .line 4604
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedFrontCamcorderResolutionFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4605
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    .line 4606
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_front_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4607
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4610
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_2

    .line 4611
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4614
    :cond_2
    new-array v0, v4, [I

    const/16 v1, 0x7d

    aput v1, v0, v3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->loadFromPreferences([I)V

    .line 4616
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 4619
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSeparatedShootingMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4620
    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    .line 4622
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSeparatedShootingMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4623
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    .line 4626
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCameraPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4627
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateIfResolutionChanged()V

    .line 4629
    :cond_5
    return-void
.end method

.method private isSeparatedShootingMode(I)Z
    .locals 1
    .param p1, "shootingMode"    # I

    .prologue
    .line 4632
    const/16 v0, 0x32

    if-eq p1, v0, :cond_0

    const/16 v0, 0x46

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
    .line 4636
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 4637
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

    .line 4638
    sparse-switch v0, :sswitch_data_0

    .line 4861
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

    .line 4636
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4640
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFlashMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    .line 4641
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

    .line 4642
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_1

    .line 4645
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFlashMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    .line 4646
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

    .line 4647
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_1

    .line 4650
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontFlashMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    .line 4651
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

    .line 4652
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_1

    .line 4655
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontFlashMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    .line 4656
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

    .line 4657
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4660
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 4661
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

    .line 4662
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4665
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFocusMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 4666
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

    .line 4667
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4670
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraDualEffect()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    .line 4671
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

    .line 4672
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4675
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getWhiteBalance()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    .line 4676
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

    .line 4677
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4680
    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getExposureValue()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 4681
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

    .line 4682
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4685
    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraISO()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    .line 4686
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

    .line 4687
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4690
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraExposureMeter()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    .line 4691
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

    .line 4692
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4695
    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getViewMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    .line 4696
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

    .line 4697
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4700
    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    .line 4701
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

    .line 4702
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4705
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGPS()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    .line 4706
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

    .line 4707
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4710
    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getReview()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    .line 4711
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

    .line 4712
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4715
    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionPhoto()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    .line 4716
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

    .line 4717
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4720
    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraShutterSound()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    .line 4721
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

    .line 4722
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4725
    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStorage()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    .line 4726
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

    .line 4727
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4730
    :sswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSelfFlip()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    .line 4731
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

    .line 4732
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4735
    :sswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    .line 4736
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

    .line 4737
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4740
    :sswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderAntiShake()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    .line 4741
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

    .line 4742
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4745
    :sswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraVoiceCommand()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    .line 4746
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

    .line 4747
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4750
    :sswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGuideline()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    .line 4751
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

    .line 4752
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4755
    :sswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getObjectTrackingAF()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    .line 4756
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

    .line 4757
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4760
    :sswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSaveRichTone()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    .line 4761
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

    .line 4762
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4765
    :sswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGestureControlMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    .line 4766
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

    .line 4767
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4770
    :sswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVolumeKeyAs()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    .line 4771
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

    .line 4772
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4775
    :sswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAutoNightDetectionMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    .line 4776
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

    .line 4777
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4780
    :sswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBeautyLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    .line 4781
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

    .line 4782
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4785
    :sswitch_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSlimFaceLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    .line 4786
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

    .line 4787
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4790
    :sswitch_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEyeEnlargeLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    .line 4791
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

    .line 4792
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4795
    :sswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackBeautyLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    .line 4796
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

    .line 4797
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4800
    :sswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAntiFogLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    .line 4801
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

    .line 4802
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4805
    :sswitch_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    .line 4806
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

    .line 4807
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4810
    :sswitch_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    .line 4811
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

    .line 4812
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4815
    :sswitch_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    .line 4816
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

    .line 4817
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4820
    :sswitch_24
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageRecordingTime()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    .line 4821
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

    .line 4822
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4825
    :sswitch_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getPictureFormat()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    .line 4826
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

    .line 4827
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4830
    :sswitch_26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionPanoramaMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    .line 4831
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

    .line 4832
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4835
    :sswitch_27
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionWideSelfieMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    .line 4836
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

    .line 4837
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4840
    :sswitch_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getColorTune()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    .line 4841
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

    .line 4842
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4845
    :sswitch_29
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQRCodeDetection()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    .line 4846
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

    .line 4847
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4850
    :sswitch_2a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFoodBlurType()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    .line 4851
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

    .line 4852
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4855
    :sswitch_2b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFloatingCameraButton()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    .line 4856
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

    .line 4857
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4865
    .end local v0    # "index":I
    :cond_0
    return-void

    .line 4638
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
    .line 4868
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mNotificationHandler:Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mNotificationHandler:Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4869
    return-void
.end method

.method private notifyCameraSettingChanged(IIZ)V
    .locals 0
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I
    .param p3, "syncmode"    # Z

    .prologue
    .line 4872
    if-eqz p3, :cond_0

    .line 4873
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->handleNotification(II)V

    .line 4877
    :goto_0
    return-void

    .line 4875
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method private resetCameraGlobalSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4880
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraShutterSound(I)V

    .line 4881
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VOLUME_KEY_AS:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setVolumeKeyAs(I)V

    .line 4882
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraShutterSound(I)V

    .line 4883
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_CAMERA_HDR:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraHDR(I)V

    .line 4884
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setRearLensDistortionCorrection(I)V

    .line 4885
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setObjectTrackingAF(I)V

    .line 4886
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setGuideline(I)V

    .line 4887
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setReview(I)V

    .line 4888
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setTimer(I)V

    .line 4889
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setInterval(I)V

    .line 4890
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setGestureControlMode(I)V

    .line 4891
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultAutoNightDetectionMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setAutoNightDetectionMode(I)V

    .line 4892
    const/16 v0, 0x57

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    invoke-direct {p0, v0, v1, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 4893
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setSaveRichTone(I)V

    .line 4894
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraVoiceCommand(I)V

    .line 4895
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VIEW_MODE:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setViewMode(I)V

    .line 4896
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setVideoCollageType(IZ)V

    .line 4897
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setVideoCollageRecordingTime(I)V

    .line 4898
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setPictureFormat(I)V

    .line 4899
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setQRCodeDetection(I)V

    .line 4900
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setHRMShutter(I)V

    .line 4901
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFoodBlurType(I)V

    .line 4902
    const/16 v0, 0x238c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setWatermarkId(I)V

    .line 4903
    return-void
.end method

.method private resetCameraLocalSettings(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4907
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 4909
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setSelfFlip(I)V

    .line 4910
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolution(I)Z

    .line 4911
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCamcorderResolution(I)Z

    .line 4913
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setZoomValue(I)V

    .line 4914
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFlashMode(I)V

    .line 4915
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFrontFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFrontFlashMode(I)V

    .line 4916
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setExposureValue(I)V

    .line 4917
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setTimer(I)V

    .line 4918
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setWhiteBalance(I)V

    .line 4919
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    if-ne v0, v2, :cond_2

    .line 4920
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_DUAL_EFFECT:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraDualEffect(I)V

    .line 4924
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraISO(I)V

    .line 4925
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraExposureMeter(I)V

    .line 4926
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCamcorderAudioRecording(I)V

    .line 4927
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderAntishake()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCamcorderAntiShake(I)V

    .line 4928
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setMotionPhoto(I)V

    .line 4929
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setBeautyLevel(I)V

    .line 4930
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SLIMFACE:Z

    if-eqz v0, :cond_0

    .line 4931
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setSlimFaceLevel(I)V

    .line 4933
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_EYEENLARGE:Z

    if-eqz v0, :cond_1

    .line 4934
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setEyeEnlargeLevel(I)V

    .line 4936
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraVoiceCommand(I)V

    .line 4938
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    .line 4939
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    .line 4940
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    .line 4941
    return-void

    .line 4922
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraEffect(I)V

    goto :goto_0
.end method

.method private resetCommonGlobalSettings()V
    .locals 2

    .prologue
    .line 4944
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_DisableGPSMenu"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4945
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setGPS(I)V

    .line 4947
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultStorage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setStorage(I)V

    .line 4948
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isStorageMounted()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateStorage(Z)V

    .line 4949
    return-void
.end method

.method private resetEffectLevelSettingValue()V
    .locals 2

    .prologue
    .line 4952
    const-string v0, "CameraSettings"

    const-string v1, "resetEffectLevelSettingValue"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4953
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setEffectStrengthLevel(I)V

    .line 4954
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setEffectVignetteLevel(I)V

    .line 4955
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

    .line 4958
    sparse-switch p1, :sswitch_data_0

    .line 5018
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 5021
    :goto_0
    return-void

    .line 4960
    :sswitch_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-eqz v0, :cond_1

    .line 4961
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-eqz v0, :cond_0

    .line 4962
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4964
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4966
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-eqz v0, :cond_2

    .line 4967
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4969
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4973
    :sswitch_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SOUND_AND_SHOT:Z

    if-eqz v0, :cond_4

    .line 4974
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SOUND_AND_SHOT:Z

    if-eqz v0, :cond_3

    .line 4975
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4977
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4979
    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SOUND_AND_SHOT:Z

    if-eqz v0, :cond_5

    .line 4980
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4982
    :cond_5
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4986
    :sswitch_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v0, :cond_7

    .line 4987
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v0, :cond_6

    .line 4988
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4990
    :cond_6
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4992
    :cond_7
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v0, :cond_8

    .line 4993
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4995
    :cond_8
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4999
    :sswitch_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v0, :cond_a

    .line 5000
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v0, :cond_9

    .line 5001
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 5003
    :cond_9
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 5005
    :cond_a
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v0, :cond_b

    .line 5006
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 5008
    :cond_b
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 5015
    :sswitch_4
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4958
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
    .line 5024
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

    .line 5026
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 5027
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_front_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5033
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 5028
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 5029
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_rear_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 5031
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
    .line 5038
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->initializeDefaultFrontCameraShootingModeOrderList()V

    .line 5040
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 5042
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

    .line 5043
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

    .line 5046
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

    .line 5047
    return-void
.end method

.method private setDualMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 5050
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    if-eq v0, p1, :cond_0

    .line 5051
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

    .line 5052
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    .line 5054
    :cond_0
    return-void
.end method

.method private setManualExposureMeter(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5057
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureMeter:I

    .line 5058
    return-void
.end method

.method private setManualExposureValue(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5061
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    .line 5062
    return-void
.end method

.method private setManualFocusLength(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5065
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualFocusLength:I

    .line 5066
    return-void
.end method

.method private setManualISO(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5069
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualISO:I

    .line 5070
    return-void
.end method

.method private setManualMultiAF(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5073
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    .line 5074
    return-void
.end method

.method private setManualShutterSpeed(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5077
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    .line 5078
    return-void
.end method

.method private setManualWhiteBalance(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5081
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    .line 5082
    return-void
.end method

.method private updateDualCameraSetting(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 5086
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_DUALCAMERA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    .line 5111
    :cond_0
    :goto_0
    return-void

    .line 5089
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

    .line 5091
    const-string v0, "pref_camera_rear_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_camera_dual_rear_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5092
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

    .line 5093
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

    .line 5096
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5097
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_rear_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5099
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5100
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_rear_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 5102
    :cond_6
    const-string v0, "pref_camera_front_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "pref_camera_dual_front_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5103
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

    .line 5104
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

    .line 5107
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5108
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
    .locals 3

    .prologue
    .line 841
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_colortune"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCommandIdByCurrentShootingMode()I
    .locals 1

    .prologue
    .line 857
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCommandIdByShootingMode(I)I

    move-result v0

    return v0
.end method

.method public getCommandIdByShootingMode(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 862
    const/4 v0, 0x0

    .line 864
    .local v0, "commandId":I
    packed-switch p1, :pswitch_data_0

    .line 969
    :goto_0
    :pswitch_0
    return v0

    .line 866
    :pswitch_1
    const/16 v0, 0x12c

    .line 867
    goto :goto_0

    .line 869
    :pswitch_2
    const/16 v0, 0x13d

    .line 870
    goto :goto_0

    .line 872
    :pswitch_3
    const/16 v0, 0x12d

    .line 873
    goto :goto_0

    .line 875
    :pswitch_4
    const/16 v0, 0x133

    .line 876
    goto :goto_0

    .line 878
    :pswitch_5
    const/16 v0, 0x12e

    .line 879
    goto :goto_0

    .line 881
    :pswitch_6
    const/16 v0, 0x162

    .line 882
    goto :goto_0

    .line 884
    :pswitch_7
    const/16 v0, 0x150

    .line 885
    goto :goto_0

    .line 887
    :pswitch_8
    const/16 v0, 0x152

    .line 888
    goto :goto_0

    .line 890
    :pswitch_9
    const/16 v0, 0x149

    .line 891
    goto :goto_0

    .line 893
    :pswitch_a
    const/16 v0, 0x151

    .line 894
    goto :goto_0

    .line 896
    :pswitch_b
    const/16 v0, 0x13f

    .line 897
    goto :goto_0

    .line 899
    :pswitch_c
    const/16 v0, 0x14d

    .line 900
    goto :goto_0

    .line 902
    :pswitch_d
    const/16 v0, 0x14e

    .line 903
    goto :goto_0

    .line 905
    :pswitch_e
    const/16 v0, 0x14f

    .line 906
    goto :goto_0

    .line 908
    :pswitch_f
    const/16 v0, 0x13a

    .line 909
    goto :goto_0

    .line 911
    :pswitch_10
    const/16 v0, 0x157

    .line 912
    goto :goto_0

    .line 914
    :pswitch_11
    const/16 v0, 0x154

    .line 915
    goto :goto_0

    .line 917
    :pswitch_12
    const/16 v0, 0x156

    .line 918
    goto :goto_0

    .line 920
    :pswitch_13
    const/16 v0, 0x166

    .line 921
    goto :goto_0

    .line 923
    :pswitch_14
    const/16 v0, 0x167

    .line 924
    goto :goto_0

    .line 926
    :pswitch_15
    const/16 v0, 0x158

    .line 927
    goto :goto_0

    .line 929
    :pswitch_16
    const/16 v0, 0x164

    .line 930
    goto :goto_0

    .line 932
    :pswitch_17
    const/16 v0, 0x15a

    .line 933
    goto :goto_0

    .line 935
    :pswitch_18
    const/16 v0, 0x15b

    .line 936
    goto :goto_0

    .line 938
    :pswitch_19
    const/16 v0, 0x15c

    .line 939
    goto :goto_0

    .line 941
    :pswitch_1a
    const/16 v0, 0x15d

    .line 942
    goto :goto_0

    .line 944
    :pswitch_1b
    const/16 v0, 0x15e

    .line 945
    goto :goto_0

    .line 947
    :pswitch_1c
    const/16 v0, 0x161

    .line 948
    goto :goto_0

    .line 950
    :pswitch_1d
    const/16 v0, 0x15f

    .line 951
    goto :goto_0

    .line 953
    :pswitch_1e
    const/16 v0, 0x160

    .line 954
    goto :goto_0

    .line 956
    :pswitch_1f
    const/16 v0, 0x163

    .line 957
    goto :goto_0

    .line 959
    :pswitch_20
    const/16 v0, 0x155

    .line 960
    goto :goto_0

    .line 962
    :pswitch_21
    const/16 v0, 0x165

    .line 963
    goto :goto_0

    .line 965
    :pswitch_22
    const/16 v0, 0x168

    goto :goto_0

    .line 864
    nop

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
        :pswitch_22
    .end packed-switch
.end method

.method public getDefaultBackBeautyLevel()I
    .locals 1

    .prologue
    .line 974
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
    .line 979
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDefaultBeautyLevel()I
    .locals 1

    .prologue
    .line 984
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    return v0
.end method

.method public getDefaultCamcorderResolution()I
    .locals 3

    .prologue
    .line 989
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 990
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_0

    .line 991
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 992
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 993
    const-string v1, "csc_pref_camcorder_resolution_key"

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1000
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :goto_0
    return v1

    .line 996
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 997
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 998
    :cond_2
    const-string v1, "1920x1080"

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 1000
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
    .line 1006
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDefaultShootingModeByCurrentCameraId()I
    .locals 1

    .prologue
    .line 1011
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    .line 1014
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEffectListType()I
    .locals 3

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_effect_list_type"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_EFFECT_LIST_TYPE:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1023
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
    .line 1039
    if-nez p1, :cond_0

    .line 1040
    const-string v0, "None"

    .line 1057
    :goto_0
    return-object v0

    .line 1042
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_4

    .line 1043
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1044
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1047
    :cond_1
    const-string v0, "None"

    goto :goto_0

    .line 1050
    :cond_2
    invoke-static {p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isValidExternalId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1051
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1053
    :cond_3
    const-string v0, "None"

    goto :goto_0

    .line 1057
    :cond_4
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraParameters;->getEffectString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEffectProcessorMode()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1064
    const/4 v0, 0x0

    .line 1066
    .local v0, "mode":I
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1067
    const/4 v0, 0x1

    .line 1070
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    sparse-switch v1, :sswitch_data_0

    .line 1098
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isSwitchToCamcorderPreview()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isEffectRecordingRestricted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1099
    const/4 v0, 0x0

    .line 1102
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_3

    .line 1104
    const/4 v0, 0x0

    .line 1107
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

    .line 1109
    return v0

    .line 1072
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

    .line 1073
    const/4 v0, 0x2

    goto :goto_0

    .line 1077
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getColorTune()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1078
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

    .line 1079
    const/4 v0, 0x3

    goto :goto_0

    .line 1083
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 1084
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 1085
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 1086
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 1088
    :cond_5
    const/4 v0, 0x0

    .line 1090
    goto/16 :goto_0

    .line 1092
    :sswitch_3
    const/4 v0, 0x5

    .line 1093
    goto/16 :goto_0

    .line 1070
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
    .line 1114
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffectStrengthLevel:I

    .line 1117
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffectStrengthLevel:I

    goto :goto_0
.end method

.method public getEffectVignetteLevel()I
    .locals 1

    .prologue
    .line 1134
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffectVignetteLevel:I

    .line 1137
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffectVignetteLevel:I

    goto :goto_0
.end method

.method public getExposureValue()I
    .locals 3

    .prologue
    .line 1153
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    if-nez v0, :cond_0

    .line 1154
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 1156
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

    .line 1178
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 1181
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
    .line 1198
    const/4 v0, 0x0

    .line 1199
    .local v0, "featureId":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 1398
    :goto_0
    return-object v0

    .line 1201
    :sswitch_0
    const-string v0, "0020"

    .line 1202
    goto :goto_0

    .line 1205
    :sswitch_1
    const-string v0, "0040"

    .line 1206
    goto :goto_0

    .line 1208
    :sswitch_2
    const-string v0, "G008"

    .line 1209
    goto :goto_0

    .line 1211
    :sswitch_3
    const-string v0, "Z007"

    .line 1212
    goto :goto_0

    .line 1214
    :sswitch_4
    const-string v0, "Z010"

    .line 1215
    goto :goto_0

    .line 1217
    :sswitch_5
    const-string v0, "Z092"

    .line 1218
    goto :goto_0

    .line 1220
    :sswitch_6
    const-string v0, "Z012"

    .line 1221
    goto :goto_0

    .line 1223
    :sswitch_7
    const-string v0, "Z013"

    .line 1224
    goto :goto_0

    .line 1226
    :sswitch_8
    const-string v0, "Z014"

    .line 1227
    goto :goto_0

    .line 1229
    :sswitch_9
    const-string v0, "Z015"

    .line 1230
    goto :goto_0

    .line 1232
    :sswitch_a
    if-eqz p2, :cond_0

    .line 1233
    const-string v0, "Z018"

    goto :goto_0

    .line 1235
    :cond_0
    const-string v0, "Z017"

    .line 1237
    goto :goto_0

    .line 1239
    :sswitch_b
    if-eqz p2, :cond_1

    .line 1240
    const-string v0, "Z020"

    goto :goto_0

    .line 1242
    :cond_1
    const-string v0, "Z019"

    .line 1244
    goto :goto_0

    .line 1246
    :sswitch_c
    const-string v0, "Z022"

    .line 1247
    goto :goto_0

    .line 1249
    :sswitch_d
    const-string v0, "Z023"

    .line 1250
    goto :goto_0

    .line 1252
    :sswitch_e
    const-string v0, "Z024"

    .line 1253
    goto :goto_0

    .line 1255
    :sswitch_f
    const-string v0, "Z025"

    .line 1256
    goto :goto_0

    .line 1258
    :sswitch_10
    const-string v0, "Z083"

    .line 1259
    goto :goto_0

    .line 1261
    :sswitch_11
    const-string v0, "Z053"

    .line 1262
    goto :goto_0

    .line 1264
    :sswitch_12
    const-string v0, "Z054"

    .line 1265
    goto :goto_0

    .line 1267
    :sswitch_13
    const-string v0, "Z055"

    .line 1268
    goto :goto_0

    .line 1270
    :sswitch_14
    const-string v0, "Z056"

    .line 1271
    goto :goto_0

    .line 1273
    :sswitch_15
    const-string v0, "Z057"

    .line 1274
    goto :goto_0

    .line 1276
    :sswitch_16
    const-string v0, "Z058"

    .line 1277
    goto :goto_0

    .line 1279
    :sswitch_17
    const-string v0, "Z061"

    .line 1280
    goto :goto_0

    .line 1282
    :sswitch_18
    const-string v0, "Z104"

    .line 1283
    goto :goto_0

    .line 1285
    :sswitch_19
    const-string v0, "Z116"

    .line 1286
    goto :goto_0

    .line 1288
    :sswitch_1a
    const-string v0, "Z105"

    .line 1289
    goto :goto_0

    .line 1291
    :sswitch_1b
    const-string v0, "Z142"

    .line 1292
    goto :goto_0

    .line 1294
    :sswitch_1c
    const-string v0, "Z084"

    .line 1295
    goto :goto_0

    .line 1297
    :sswitch_1d
    const-string v0, "Z085"

    .line 1298
    goto :goto_0

    .line 1300
    :sswitch_1e
    const-string v0, "Z088"

    .line 1301
    goto :goto_0

    .line 1303
    :sswitch_1f
    const-string v0, "G007"

    .line 1304
    goto :goto_0

    .line 1306
    :sswitch_20
    const-string v0, "0013"

    .line 1307
    goto :goto_0

    .line 1309
    :sswitch_21
    const-string v0, "0037"

    .line 1310
    goto :goto_0

    .line 1312
    :sswitch_22
    const-string v0, "Z009"

    .line 1313
    goto :goto_0

    .line 1315
    :sswitch_23
    const-string v0, "Z034"

    .line 1316
    goto :goto_0

    .line 1318
    :sswitch_24
    const-string v0, "Z008"

    .line 1319
    goto :goto_0

    .line 1321
    :sswitch_25
    const-string v0, "0042"

    .line 1322
    goto :goto_0

    .line 1324
    :sswitch_26
    const-string v0, "Z134"

    .line 1325
    goto :goto_0

    .line 1327
    :sswitch_27
    const-string v0, "Z121"

    .line 1328
    goto/16 :goto_0

    .line 1330
    :sswitch_28
    const-string v0, "Z122"

    .line 1331
    goto/16 :goto_0

    .line 1333
    :sswitch_29
    const-string v0, "Z123"

    .line 1334
    goto/16 :goto_0

    .line 1336
    :sswitch_2a
    const-string v0, "Z124"

    .line 1337
    goto/16 :goto_0

    .line 1339
    :sswitch_2b
    const-string v0, "Z125"

    .line 1340
    goto/16 :goto_0

    .line 1342
    :sswitch_2c
    const-string v0, "Z126"

    .line 1343
    goto/16 :goto_0

    .line 1345
    :sswitch_2d
    const-string v0, "Z127"

    .line 1346
    goto/16 :goto_0

    .line 1348
    :sswitch_2e
    const-string v0, "Z128"

    .line 1349
    goto/16 :goto_0

    .line 1351
    :sswitch_2f
    const-string v0, "Z129"

    .line 1352
    goto/16 :goto_0

    .line 1354
    :sswitch_30
    const-string v0, "Z080"

    .line 1355
    goto/16 :goto_0

    .line 1357
    :sswitch_31
    const-string v0, "Z077"

    .line 1358
    goto/16 :goto_0

    .line 1360
    :sswitch_32
    const-string v0, "Z078"

    .line 1361
    goto/16 :goto_0

    .line 1363
    :sswitch_33
    const-string v0, "Z079"

    .line 1364
    goto/16 :goto_0

    .line 1366
    :sswitch_34
    const-string v0, "Z076"

    .line 1367
    goto/16 :goto_0

    .line 1369
    :sswitch_35
    const-string v0, "G004"

    .line 1370
    goto/16 :goto_0

    .line 1372
    :sswitch_36
    const-string v0, "Z132"

    .line 1373
    goto/16 :goto_0

    .line 1375
    :sswitch_37
    const-string v0, "Z144"

    .line 1376
    goto/16 :goto_0

    .line 1378
    :sswitch_38
    const-string v0, "G009"

    .line 1379
    goto/16 :goto_0

    .line 1381
    :sswitch_39
    const-string v0, "G002"

    .line 1382
    goto/16 :goto_0

    .line 1384
    :sswitch_3a
    const-string v0, "G006"

    .line 1385
    goto/16 :goto_0

    .line 1387
    :sswitch_3b
    const-string v0, "G019"

    .line 1388
    goto/16 :goto_0

    .line 1390
    :sswitch_3c
    const-string v0, "G020"

    .line 1391
    goto/16 :goto_0

    .line 1393
    :sswitch_3d
    const-string v0, "G021"

    .line 1394
    goto/16 :goto_0

    .line 1199
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
    .line 1403
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
    .line 1432
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

    .line 1448
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualFocusLength:I

    if-nez v1, :cond_0

    .line 1451
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
    .line 1476
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFontScale:F

    return v0
.end method

.method public getFoodBlurType()I
    .locals 1

    .prologue
    .line 1489
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    return v0
.end method

.method public getFoodColorTuneValue()I
    .locals 3

    .prologue
    const/4 v0, 0x4

    .line 1503
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 1506
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

    .line 1523
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_1

    .line 1524
    const/4 v1, 0x0

    .line 1525
    .local v1, "forcedShutterSound":I
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1526
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 1527
    const-string v3, "csc_pref_camera_forced_shuttersound_key"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1531
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

    .line 1534
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "forcedShutterSound":I
    :goto_1
    return v1

    .line 1529
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

    .line 1534
    goto :goto_1
.end method

.method public getFrontCameraShootingModeOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 1542
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDefaultFrontCameraShootingModeOrder()V

    .line 1544
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

    .line 1545
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1546
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 1548
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

    .line 1565
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-eqz v1, :cond_1

    .line 1566
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    .line 1572
    :cond_0
    :goto_0
    return v0

    .line 1567
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-nez v1, :cond_0

    .line 1569
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v1, :cond_0

    .line 1570
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
    .line 1602
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
    .line 1617
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

    .line 1634
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    .line 1637
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
    .line 1656
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
    .line 1671
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1672
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    .line 1674
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

    .line 1679
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_1

    .line 1686
    :cond_0
    :goto_0
    return v0

    .line 1683
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1686
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
    .line 1705
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
    .line 1723
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mLowBattery:Z

    return v0
.end method

.method public getMenuIdByPreferenceKey(Ljava/lang/String;)I
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;

    .prologue
    .line 1737
    const-string v0, "pref_global_camera_volume_key_as"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "camera_volume_key_spinner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1738
    :cond_0
    const/16 v0, 0x49

    .line 1782
    :goto_0
    return v0

    .line 1739
    :cond_1
    const-string v0, "pref_camera_rear_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_camera_front_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1740
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 1741
    :cond_3
    const-string v0, "pref_camcorder_rear_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_camcorder_front_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1742
    :cond_4
    const/16 v0, 0xbb9

    goto :goto_0

    .line 1743
    :cond_5
    const-string v0, "pref_global_setup_storage_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1744
    const/16 v0, 0x16

    goto :goto_0

    .line 1745
    :cond_6
    const-string v0, "pref_global_setup_voice_control_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1746
    const/16 v0, 0x47

    goto :goto_0

    .line 1747
    :cond_7
    const-string v0, "pref_global_camera_detection_mode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1748
    const/16 v0, 0x7d

    goto :goto_0

    .line 1749
    :cond_8
    const-string v0, "pref_global_camcorder_antishake_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1750
    const/16 v0, 0xbbf

    goto :goto_0

    .line 1751
    :cond_9
    const-string v0, "pref_global_rear_lens_distortion_correction_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1752
    const/16 v0, 0x33

    goto :goto_0

    .line 1753
    :cond_a
    const-string v0, "pref_global_setup_self_flip_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1754
    const/16 v0, 0x26

    goto :goto_0

    .line 1755
    :cond_b
    const-string v0, "pref_camera_guideline_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1756
    const/16 v0, 0x13

    goto :goto_0

    .line 1757
    :cond_c
    const-string v0, "pref_global_setup_object_trackingaf_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1758
    const/16 v0, 0x17

    goto :goto_0

    .line 1759
    :cond_d
    const-string v0, "pref_global_setup_gps_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1760
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 1761
    :cond_e
    const-string v0, "pref_global_setup_review_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1762
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 1763
    :cond_f
    const-string v0, "pref_global_motion_photo_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1764
    const/16 v0, 0x2a

    goto/16 :goto_0

    .line 1765
    :cond_10
    const-string v0, "pref_global_camera_shutter_sound_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1766
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 1767
    :cond_11
    const-string v0, "pref_global_camera_fullpreview_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1768
    const/16 v0, 0x138

    goto/16 :goto_0

    .line 1769
    :cond_12
    const-string v0, "pref_global_camera_picture_format"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1770
    const/16 v0, 0x13b

    goto/16 :goto_0

    .line 1771
    :cond_13
    const-string v0, "pref_camera_qrcode_detection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1772
    const/16 v0, 0x13c

    goto/16 :goto_0

    .line 1773
    :cond_14
    const-string v0, "pref_camera_tap_to_take_pictures_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1774
    const/16 v0, 0x73

    goto/16 :goto_0

    .line 1775
    :cond_15
    const-string v0, "pref_camera_hrm_shutter_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1776
    const/16 v0, 0x74

    goto/16 :goto_0

    .line 1777
    :cond_16
    const-string v0, "pref_camera_focus_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1778
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 1779
    :cond_17
    const-string v0, "pref_global_setup_floating_camera_button_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1780
    const/16 v0, 0xb5

    goto/16 :goto_0

    .line 1782
    :cond_18
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public getMotionPanoramaMode()I
    .locals 3

    .prologue
    .line 1787
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

    .line 1803
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    .line 1809
    :goto_0
    return v0

    .line 1806
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

    .line 1807
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
    .line 1827
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
    .line 1843
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    if-nez v0, :cond_0

    .line 1844
    const/4 v0, 0x0

    .line 1846
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
    .line 1868
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiWindowMode:I

    return v0
.end method

.method public getObjectTrackingAF()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1881
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1884
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

    .line 1905
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 1908
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
    .line 1925
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_qrcode_detection"

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

.method public getRearLensDistortionCorrection()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1941
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1945
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_rear_lens_distortion_correction_key"

    .line 1946
    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v0

    .line 1945
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
    .line 1961
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
    .line 1978
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedMediaRecorderProfileInfo:Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;

    return-object v0
.end method

.method public getRequestedRecordingDurationLimit()I
    .locals 1

    .prologue
    .line 1988
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedRecordingDurationLimit:I

    return v0
.end method

.method public getRequestedRecordingSizeLimit()J
    .locals 2

    .prologue
    .line 1998
    iget-wide v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedRecordingSizeLimit:J

    return-wide v0
.end method

.method public getRequestedSaveUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getReview()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2018
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 2021
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
    .line 2040
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

    .line 2056
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    .line 2059
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
    .line 2076
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingValue(I)I
    .locals 1
    .param p1, "menuId"    # I

    .prologue
    .line 2081
    sparse-switch p1, :sswitch_data_0

    .line 2211
    const/16 v0, 0x7fff

    :goto_0
    return v0

    .line 2083
    :sswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    goto :goto_0

    .line 2086
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFlashMode()I

    move-result v0

    goto :goto_0

    .line 2089
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontFlashMode()I

    move-result v0

    goto :goto_0

    .line 2091
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v0

    goto :goto_0

    .line 2093
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFocusMode()I

    move-result v0

    goto :goto_0

    .line 2095
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer()I

    move-result v0

    goto :goto_0

    .line 2097
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getExposureValue()I

    move-result v0

    goto :goto_0

    .line 2099
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraSingleEffect()I

    move-result v0

    goto :goto_0

    .line 2101
    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraDualEffect()I

    move-result v0

    goto :goto_0

    .line 2103
    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getWhiteBalance()I

    move-result v0

    goto :goto_0

    .line 2105
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraISO()I

    move-result v0

    goto :goto_0

    .line 2107
    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShutterSpeed()I

    move-result v0

    goto :goto_0

    .line 2109
    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFocusLength()I

    move-result v0

    goto :goto_0

    .line 2111
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraExposureMeter()I

    move-result v0

    goto :goto_0

    .line 2113
    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getViewMode()I

    move-result v0

    goto :goto_0

    .line 2115
    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v0

    goto :goto_0

    .line 2117
    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraQuality()I

    move-result v0

    goto :goto_0

    .line 2119
    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getZoomValue()I

    move-result v0

    goto :goto_0

    .line 2121
    :sswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGuideline()I

    move-result v0

    goto :goto_0

    .line 2123
    :sswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getObjectTrackingAF()I

    move-result v0

    goto :goto_0

    .line 2125
    :sswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGPS()I

    move-result v0

    goto :goto_0

    .line 2127
    :sswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getReview()I

    move-result v0

    goto :goto_0

    .line 2129
    :sswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionPhoto()I

    move-result v0

    goto :goto_0

    .line 2131
    :sswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSelfFlip()I

    move-result v0

    goto :goto_0

    .line 2133
    :sswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraShutterSound()I

    move-result v0

    goto :goto_0

    .line 2135
    :sswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStorage()I

    move-result v0

    goto :goto_0

    .line 2137
    :sswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    goto/16 :goto_0

    .line 2139
    :sswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    goto/16 :goto_0

    .line 2141
    :sswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderAntiShake()I

    move-result v0

    goto/16 :goto_0

    .line 2143
    :sswitch_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderAudioRecording()I

    move-result v0

    goto/16 :goto_0

    .line 2145
    :sswitch_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraVoiceCommand()I

    move-result v0

    goto/16 :goto_0

    .line 2147
    :sswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSaveRichTone()I

    move-result v0

    goto/16 :goto_0

    .line 2149
    :sswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVolumeKeyAs()I

    move-result v0

    goto/16 :goto_0

    .line 2151
    :sswitch_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSoundAndShotMode()I

    move-result v0

    goto/16 :goto_0

    .line 2153
    :sswitch_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGestureControlMode()I

    move-result v0

    goto/16 :goto_0

    .line 2155
    :sswitch_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAutoNightDetectionMode()I

    move-result v0

    goto/16 :goto_0

    .line 2157
    :sswitch_24
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQuickLaunchType()I

    move-result v0

    goto/16 :goto_0

    .line 2159
    :sswitch_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v0

    goto/16 :goto_0

    .line 2161
    :sswitch_26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageRecordingTime()I

    move-result v0

    goto/16 :goto_0

    .line 2163
    :sswitch_27
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getPictureFormat()I

    move-result v0

    goto/16 :goto_0

    .line 2165
    :sswitch_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBeautyMode()I

    move-result v0

    goto/16 :goto_0

    .line 2167
    :sswitch_29
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionPanoramaMode()I

    move-result v0

    goto/16 :goto_0

    .line 2169
    :sswitch_2a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionWideSelfieMode()I

    move-result v0

    goto/16 :goto_0

    .line 2171
    :sswitch_2b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getColorTune()I

    move-result v0

    goto/16 :goto_0

    .line 2173
    :sswitch_2c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v0

    goto/16 :goto_0

    .line 2175
    :sswitch_2d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShapeCorrection()I

    move-result v0

    goto/16 :goto_0

    .line 2177
    :sswitch_2e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTapToTakePictures()I

    move-result v0

    goto/16 :goto_0

    .line 2179
    :sswitch_2f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getHRMShutter()I

    move-result v0

    goto/16 :goto_0

    .line 2181
    :sswitch_30
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFoodBlurType()I

    move-result v0

    goto/16 :goto_0

    .line 2183
    :sswitch_31
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMultiAFMode()I

    move-result v0

    goto/16 :goto_0

    .line 2185
    :sswitch_32
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getRecordingMotionSpeed()I

    move-result v0

    goto/16 :goto_0

    .line 2187
    :sswitch_33
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQRCodeDetection()I

    move-result v0

    goto/16 :goto_0

    .line 2189
    :sswitch_34
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBeautyLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2191
    :sswitch_35
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSlimFaceLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2193
    :sswitch_36
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSpotlightLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2195
    :sswitch_37
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEyeEnlargeLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2197
    :sswitch_38
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSkinColorLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2199
    :sswitch_39
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackBeautyLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2201
    :sswitch_3a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getRearLensDistortionCorrection()I

    move-result v0

    goto/16 :goto_0

    .line 2203
    :sswitch_3b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAntiFogLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2205
    :sswitch_3c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getWatermarkId()I

    move-result v0

    goto/16 :goto_0

    .line 2207
    :sswitch_3d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getWatermarkCategory()I

    move-result v0

    goto/16 :goto_0

    .line 2209
    :sswitch_3e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFloatingCameraButton()I

    move-result v0

    goto/16 :goto_0

    .line 2081
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
    .line 2217
    sparse-switch p1, :sswitch_data_0

    .line 2285
    :goto_0
    const-string v0, ""

    :goto_1
    return-object v0

    .line 2222
    :sswitch_0
    packed-switch p2, :pswitch_data_0

    .line 2231
    :sswitch_1
    packed-switch p2, :pswitch_data_1

    .line 2240
    :sswitch_2
    packed-switch p2, :pswitch_data_2

    .line 2247
    :sswitch_3
    packed-switch p2, :pswitch_data_3

    .line 2254
    :sswitch_4
    packed-switch p2, :pswitch_data_4

    .line 2261
    :sswitch_5
    packed-switch p2, :pswitch_data_5

    .line 2269
    :sswitch_6
    packed-switch p2, :pswitch_data_6

    .line 2278
    :sswitch_7
    packed-switch p2, :pswitch_data_7

    goto :goto_0

    .line 2280
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2224
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a023f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2226
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a023e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2228
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0240

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2233
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0244

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2235
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0243

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2237
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0245

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2242
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a024d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2244
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a024e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2249
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0241

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2251
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0242

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2256
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0249

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2258
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a024a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2264
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a024b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2266
    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a024c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2271
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0246

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2273
    :pswitch_10
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0248

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2275
    :pswitch_11
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0247

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2282
    :pswitch_12
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0250

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2217
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

    .line 2222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2231
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 2240
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 2247
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 2254
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 2261
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 2269
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 2278
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

    .line 2291
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SHAPECORRECTION:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v2, 0x37

    if-eq v1, v2, :cond_2

    .line 2292
    :cond_0
    const/4 v0, 0x0

    .line 2299
    :cond_1
    :goto_0
    return v0

    .line 2295
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-nez v1, :cond_1

    .line 2299
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

    .line 2317
    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 2423
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeIdByModeName(Ljava/lang/String;)I

    move-result v0

    :goto_1
    :pswitch_0
    return v0

    .line 2317
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

    .line 2321
    :pswitch_1
    const/16 v0, 0x3a

    goto/16 :goto_1

    .line 2324
    :pswitch_2
    const/16 v0, 0x31

    goto/16 :goto_1

    .line 2327
    :pswitch_3
    const/16 v0, 0x2a

    goto/16 :goto_1

    :pswitch_4
    move v0, v1

    .line 2334
    goto/16 :goto_1

    :pswitch_5
    move v0, v2

    .line 2337
    goto/16 :goto_1

    .line 2340
    :pswitch_6
    const/16 v0, 0x48

    goto/16 :goto_1

    .line 2343
    :pswitch_7
    const/16 v0, 0x11

    goto/16 :goto_1

    :pswitch_8
    move v0, v3

    .line 2346
    goto/16 :goto_1

    .line 2350
    :pswitch_9
    const/16 v0, 0x2f

    goto/16 :goto_1

    .line 2353
    :pswitch_a
    const/16 v0, 0x43

    goto/16 :goto_1

    .line 2356
    :pswitch_b
    const/16 v0, 0x40

    goto/16 :goto_1

    .line 2360
    :pswitch_c
    const/16 v0, 0x44

    goto/16 :goto_1

    .line 2363
    :pswitch_d
    const/16 v0, 0x4a

    goto/16 :goto_1

    .line 2366
    :pswitch_e
    const/16 v0, 0x17

    goto/16 :goto_1

    .line 2369
    :pswitch_f
    const/16 v0, 0x27

    goto/16 :goto_1

    .line 2372
    :pswitch_10
    const/16 v0, 0x3b

    goto/16 :goto_1

    .line 2375
    :pswitch_11
    const/16 v0, 0x4b

    goto/16 :goto_1

    .line 2379
    :pswitch_12
    const/16 v0, 0x38

    goto/16 :goto_1

    :pswitch_13
    move v0, v4

    .line 2382
    goto/16 :goto_1

    .line 2385
    :pswitch_14
    const/16 v0, 0x2d

    goto/16 :goto_1

    .line 2388
    :pswitch_15
    const/16 v0, 0x37

    goto/16 :goto_1

    .line 2392
    :pswitch_16
    const/16 v0, 0x2e

    goto/16 :goto_1

    .line 2395
    :pswitch_17
    const/16 v0, 0x3f

    goto/16 :goto_1

    .line 2399
    :pswitch_18
    const/16 v0, 0x23

    goto/16 :goto_1

    .line 2403
    :pswitch_19
    const/16 v0, 0x28

    goto/16 :goto_1

    .line 2406
    :pswitch_1a
    const/16 v0, 0x45

    goto/16 :goto_1

    .line 2409
    :pswitch_1b
    const/16 v0, 0x3e

    goto/16 :goto_1

    .line 2412
    :pswitch_1c
    const/16 v0, 0x34

    goto/16 :goto_1

    .line 2415
    :pswitch_1d
    const/16 v0, 0x4d

    goto/16 :goto_1

    .line 2417
    :pswitch_1e
    const/16 v0, 0x4e

    goto/16 :goto_1

    .line 2419
    :pswitch_1f
    const/16 v0, 0x4f

    goto/16 :goto_1

    .line 2421
    :pswitch_20
    const/16 v0, 0x46

    goto/16 :goto_1

    .line 2317
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
    .end packed-switch
.end method

.method public getShootingModeNameForLogging()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2429
    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    .line 2430
    .local v0, "shootingModeCommandId":I
    invoke-static {v0}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getShootingModeResourceString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2435
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShootingModeResourceStringById(I)Ljava/lang/String;
    .locals 1
    .param p1, "shootingMode"    # I

    .prologue
    .line 2440
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

    .line 2445
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

    .line 2446
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    sparse-switch v3, :sswitch_data_0

    move v0, v1

    .line 2513
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 2448
    :sswitch_1
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_NIGHT_DETECTION:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_AUTO_LLS_LITE:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2451
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2452
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2454
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 2458
    goto :goto_0

    .line 2461
    :sswitch_3
    const/16 v0, 0x22

    goto :goto_0

    :sswitch_4
    move v0, v2

    .line 2463
    goto :goto_0

    .line 2465
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

    .line 2468
    goto :goto_0

    .line 2472
    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 2474
    :sswitch_7
    const/16 v0, 0x9

    goto :goto_0

    .line 2478
    :sswitch_8
    const/16 v0, 0xb

    goto :goto_0

    .line 2480
    :sswitch_9
    const/16 v0, 0xf

    goto :goto_0

    .line 2482
    :sswitch_a
    const/16 v0, 0x10

    goto :goto_0

    .line 2484
    :sswitch_b
    const/16 v0, 0x11

    goto :goto_0

    .line 2486
    :sswitch_c
    const/16 v0, 0x12

    goto :goto_0

    .line 2488
    :sswitch_d
    const/16 v0, 0x13

    goto :goto_0

    .line 2490
    :sswitch_e
    const/16 v0, 0x14

    goto :goto_0

    .line 2495
    :sswitch_f
    const/16 v0, 0x1b

    goto :goto_0

    .line 2497
    :sswitch_10
    const/16 v0, 0x1c

    goto :goto_0

    .line 2499
    :sswitch_11
    const/16 v0, 0x1d

    goto :goto_0

    .line 2501
    :sswitch_12
    const/16 v0, 0x1e

    goto :goto_0

    .line 2503
    :sswitch_13
    const/16 v0, 0x1f

    goto :goto_0

    .line 2505
    :sswitch_14
    const/16 v0, 0x23

    goto :goto_0

    .line 2507
    :sswitch_15
    const/16 v0, 0x24

    goto :goto_0

    .line 2509
    :sswitch_16
    const/16 v0, 0x25

    goto :goto_0

    .line 2446
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

    .line 2519
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    if-nez v1, :cond_0

    .line 2522
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

    .line 2544
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 2547
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

    const-string v2, "pref_global_camera_slimface_level_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getSoundAndShotMode()I
    .locals 1

    .prologue
    .line 2584
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    return v0
.end method

.method public getSpotlightLevel()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2598
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v2, 0x37

    if-eq v1, v2, :cond_1

    .line 2601
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
    .line 2638
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 2639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    .line 2640
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2641
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2642
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2643
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2644
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x74

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2645
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x7d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2646
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2647
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x49

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2648
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2649
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xbb9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2650
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xbbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2651
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2652
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2653
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2654
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x6f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2655
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2656
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2657
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2658
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2659
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2660
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xaa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2661
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2662
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2663
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2664
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2665
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2666
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2667
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xb5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2668
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2669
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2671
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isQRCodeDetectionSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2672
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x13c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2674
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->REAR_LENS_DISTORTION_CORRECTION:Z

    if-eqz v0, :cond_2

    .line 2675
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2677
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_ANTI_FOG:Z

    if-eqz v0, :cond_3

    .line 2678
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2681
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStorage()I
    .locals 3

    .prologue
    .line 2686
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
    .line 2706
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

    .line 2721
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    .line 2725
    :goto_0
    return v0

    :cond_0
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
    .line 2743
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    return v0
.end method

.method public getVideoCollageRecordingTime()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2756
    const/4 v0, 0x0

    .line 2758
    .local v0, "recordingTime":I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2759
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_front_video_collage_recording_time"

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2763
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

    .line 2765
    return v0

    .line 2761
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

    .line 2791
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2792
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_type"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2794
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
    .line 2801
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-nez v0, :cond_0

    .line 2802
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VIEW_MODE:I

    .line 2804
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
    .line 2824
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
    .line 2840
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
    .line 2855
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isWatermarkSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2856
    const/16 v0, 0x238c

    .line 2858
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkId:I

    goto :goto_0
.end method

.method public getWatermarkInputText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2873
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkInputText:Ljava/lang/String;

    return-object v0
.end method

.method public getWhiteBalance()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2883
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    if-nez v1, :cond_0

    .line 2886
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
    .line 2908
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2909
    const/4 v0, 0x0

    .line 2911
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

    .line 2926
    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachBackVideoFixedResolution:I

    .line 2927
    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachFrontVideoFixedResolution:I

    .line 2928
    return-void
.end method

.method public initRequestedMediaRecorderProfileInfo()V
    .locals 1

    .prologue
    .line 2932
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedMediaRecorderProfileInfo:Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;

    .line 2933
    return-void
.end method

.method public initRequestedRecordingDurationLimit()V
    .locals 1

    .prologue
    .line 2937
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedRecordingDurationLimit:I

    .line 2938
    return-void
.end method

.method public initRequestedRecordingSizeLimit()V
    .locals 2

    .prologue
    .line 2942
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedRecordingSizeLimit:J

    .line 2943
    return-void
.end method

.method public initRequestedSaveUri()V
    .locals 1

    .prologue
    .line 2947
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedSaveUri:Landroid/net/Uri;

    .line 2948
    return-void
.end method

.method public initializeCamera()V
    .locals 2

    .prologue
    .line 2952
    const-string v0, "CameraSettings"

    const-string v1, "initializeCamera"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2955
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->initializeBackCamera()V

    .line 2959
    :cond_0
    :goto_0
    return-void

    .line 2956
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2957
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->initializeFrontCamera()V

    goto :goto_0
.end method

.method public initializeCameraId(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2963
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 2964
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    .line 2965
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    .line 2976
    :cond_0
    :goto_0
    return-void

    .line 2966
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 2967
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    .line 2968
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    goto :goto_0

    .line 2969
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 2970
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    .line 2971
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    goto :goto_0

    .line 2972
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2973
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    .line 2974
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    goto :goto_0
.end method

.method public initializeCameraResolution()V
    .locals 5

    .prologue
    .line 2980
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2981
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedBackCameraResolution()Ljava/lang/String;

    move-result-object v0

    .line 2982
    .local v0, "fixedBackResolution":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2983
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 2984
    const-string v2, "CameraSettings"

    const-string v3, "wrong back camera resolution value is changed to fixed resolution."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 2986
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_rear_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3011
    .end local v0    # "fixedBackResolution":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2990
    .restart local v0    # "fixedBackResolution":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2991
    const-string v2, "CameraSettings"

    const-string v3, "unsupported back camera resolution value is changed to default."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 2993
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_rear_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 2995
    .end local v0    # "fixedBackResolution":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2996
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedFrontCameraResolution()Ljava/lang/String;

    move-result-object v1

    .line 2997
    .local v1, "fixedFrontResolution":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 2998
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 2999
    const-string v2, "CameraSettings"

    const-string v3, "wrong front camera resolution value is changed to fixed resolution."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3001
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_front_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 3005
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3006
    const-string v2, "CameraSettings"

    const-string v3, "unsupported front camera resolution value is changed to default."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3008
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

    .line 3016
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_14

    .line 3017
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    .line 3021
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3023
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PRO:Z

    if-eqz v0, :cond_0

    .line 3024
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x158

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3026
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PRO_LITE:Z

    if-eqz v0, :cond_1

    .line 3027
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x164

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3029
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PANORAMA_SHOT:Z

    if-eqz v0, :cond_2

    .line 3030
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3032
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_MOTION_PANORAMA:Z

    if-eqz v0, :cond_3

    .line 3033
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x162

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3035
    :cond_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SELECTIVE_FOCUS:Z

    if-eqz v0, :cond_4

    .line 3036
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x151

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3038
    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SLOW_MOTION:Z

    if-eqz v0, :cond_5

    .line 3039
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3041
    :cond_5
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_HYPER_MOTION:Z

    if-eqz v0, :cond_6

    .line 3042
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x163

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3044
    :cond_6
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_FAST_MOTION:Z

    if-eqz v0, :cond_7

    .line 3045
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3047
    :cond_7
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_CONTINUOUS_SHOT:Z

    if-eqz v0, :cond_8

    .line 3048
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_NOT_SUPPORT_ZSL:Z

    if-eqz v0, :cond_25

    .line 3049
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3054
    :cond_8
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_RICH_TONE:Z

    if-eqz v0, :cond_9

    .line 3055
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3057
    :cond_9
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_NIGHT_SHOT:Z

    if-eqz v0, :cond_a

    .line 3058
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3060
    :cond_a
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_NIGHT_SHOT_SCENE:Z

    if-eqz v0, :cond_b

    .line 3061
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x14d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3063
    :cond_b
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_FOOD:Z

    if-eqz v0, :cond_c

    .line 3064
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3066
    :cond_c
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v0, :cond_d

    .line 3067
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3069
    :cond_d
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v0, :cond_e

    .line 3070
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x160

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3072
    :cond_e
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_LVB:Z

    if-eqz v0, :cond_f

    .line 3073
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x165

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3075
    :cond_f
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_ANTI_FOG:Z

    if-eqz v0, :cond_10

    .line 3076
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3078
    :cond_10
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_AQUA:Z

    if-eqz v0, :cond_11

    .line 3079
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x14f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3081
    :cond_11
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_TAG_SHOT:Z

    if-eqz v0, :cond_12

    .line 3082
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3084
    :cond_12
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PRODUCT_SEARCH:Z

    if-eqz v0, :cond_13

    .line 3085
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x168

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3087
    :cond_13
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v0, :cond_14

    .line 3088
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    .line 3089
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3094
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_24

    .line 3096
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-nez v0, :cond_15

    invoke-static {v4, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3097
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3099
    :cond_16
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SHOT_AND_MORE:Z

    if-nez v0, :cond_17

    const/16 v0, 0x152

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3100
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x152

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3102
    :cond_18
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_DUAL:Z

    if-nez v0, :cond_19

    const/16 v0, 0x150

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3103
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x150

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3105
    :cond_1a
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_REAR_SELFIE:Z

    if-nez v0, :cond_1b

    const/16 v0, 0x157

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3106
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x157

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3108
    :cond_1c
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SPORTS_SCENE:Z

    if-nez v0, :cond_1d

    invoke-static {v6, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3109
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3111
    :cond_1e
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_ANIMATEDGIF:Z

    if-nez v0, :cond_1f

    const/16 v0, 0x15d

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3112
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3114
    :cond_20
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SOUND_AND_SHOT:Z

    if-nez v0, :cond_21

    invoke-static {v5, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3115
    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3117
    :cond_22
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_FOOD:Z

    if-nez v0, :cond_23

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3118
    :cond_23
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3121
    :cond_24
    return-void

    .line 3051
    :cond_25
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

    .line 3126
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_e

    .line 3127
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    .line 3130
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_AUTO:Z

    if-eqz v0, :cond_0

    .line 3131
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3133
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELFIE:Z

    if-eqz v0, :cond_1

    .line 3134
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x154

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3136
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_WIDE_SELFIE:Z

    if-eqz v0, :cond_2

    .line 3137
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3138
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x156

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3141
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_WIDE_SELFIE_LITE:Z

    if-eqz v0, :cond_3

    .line 3142
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3143
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x166

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3146
    :cond_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_MOTION_WIDE_SELFIE:Z

    if-eqz v0, :cond_4

    .line 3147
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 3148
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x167

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3151
    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_CONTINUOUS_SHOT:Z

    if-eqz v0, :cond_5

    .line 3152
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 3153
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_NOT_SUPPORT_ZSL:Z

    if-eqz v0, :cond_14

    .line 3154
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3160
    :cond_5
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v0, :cond_6

    .line 3161
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 3162
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3165
    :cond_6
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v0, :cond_7

    .line 3166
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 3167
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x160

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3170
    :cond_7
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_LVB:Z

    if-eqz v0, :cond_8

    .line 3171
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x165

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3173
    :cond_8
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-eqz v0, :cond_9

    .line 3174
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x133

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3176
    :cond_9
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_NIGHT_SHOT:Z

    if-eqz v0, :cond_a

    .line 3177
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3179
    :cond_a
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_NIGHT_SHOT_SCENE:Z

    if-eqz v0, :cond_b

    .line 3180
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x14d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3182
    :cond_b
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_RICH_TONE:Z

    if-eqz v0, :cond_c

    .line 3183
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    .line 3184
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3187
    :cond_c
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_PRODUCT_SEARCH:Z

    if-eqz v0, :cond_d

    .line 3188
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x168

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3190
    :cond_d
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v0, :cond_e

    .line 3191
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    .line 3192
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3197
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_13

    .line 3199
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_ANIMATEDGIF:Z

    if-nez v0, :cond_f

    invoke-static {v5, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3200
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    .line 3201
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3204
    :cond_10
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SHOT_AND_MORE:Z

    if-eqz v0, :cond_11

    invoke-static {v4, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3205
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    .line 3206
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3209
    :cond_11
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SOUND_AND_SHOT:Z

    if-nez v0, :cond_12

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3210
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    .line 3211
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3215
    :cond_13
    return-void

    .line 3156
    :cond_14
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
    .line 3219
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeIdByActivityName(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    .line 3220
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraIdByShootingModeId(II)V

    .line 3221
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    return v0
.end method

.method public initializeShootingModeId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "shootingModeActivityName"    # Ljava/lang/String;
    .param p2, "cameraFacingName"    # Ljava/lang/String;

    .prologue
    .line 3226
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeIdByActivityName(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    .line 3227
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraIdFromName(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraIdByShootingModeId(II)V

    .line 3228
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    return v0
.end method

.method public initializeShootingModeWhenSwitchCamera()I
    .locals 1

    .prologue
    .line 3233
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3234
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3235
    const/4 v0, 0x0

    .line 3243
    :goto_0
    return v0

    .line 3237
    :cond_0
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    goto :goto_0

    .line 3240
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3241
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    goto :goto_0

    .line 3243
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    goto :goto_0
.end method

.method public isAttachImageMode()Z
    .locals 1

    .prologue
    .line 3250
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachImageMode:Z

    return v0
.end method

.method public isAttachVideoFixedResolution()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 3263
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachBackVideoFixedResolution:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachFrontVideoFixedResolution:I

    if-eq v0, v1, :cond_0

    .line 3264
    const/4 v0, 0x1

    .line 3266
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttachVideoMode()Z
    .locals 1

    .prologue
    .line 3271
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachVideoMode:Z

    return v0
.end method

.method public isBackCamera()Z
    .locals 2

    .prologue
    .line 3281
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

    .line 3286
    sparse-switch p1, :sswitch_data_0

    .line 3300
    const/4 v0, 0x1

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 3292
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v1

    if-nez v1, :cond_0

    .line 3293
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_REAR_ANTISHAKE_QHD:Z

    goto :goto_0

    .line 3298
    :sswitch_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_REAR_ANTISHAKE_FHD_60FPS:Z

    goto :goto_0

    .line 3286
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
    .line 3306
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    return v0
.end method

.method public isCurrentSeparatedShootingMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3333
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3339
    :cond_0
    :goto_0
    return v0

    .line 3336
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedAndPreloadedShootingMode(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3339
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultFrontShootingMode(I)Z
    .locals 1
    .param p1, "shootingMode"    # I

    .prologue
    .line 3344
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
    .line 3349
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
    .line 3354
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
    .line 3359
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
    .line 3364
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    return v0
.end method

.method public isEffectRecordingRestricted()Z
    .locals 2

    .prologue
    .line 3384
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_GPU_EFFECT_RECORDING:Z

    if-eqz v0, :cond_0

    .line 3385
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    .line 3386
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    .line 3387
    :cond_0
    const/4 v0, 0x1

    .line 3389
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirstLaunchCameraByHomeKey()Z
    .locals 3

    .prologue
    .line 3394
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_first_launch_camera_key_by_home_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFrontCamera()Z
    .locals 2

    .prologue
    .line 3399
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
    .line 3404
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    return v0
.end method

.method public isNotificationExist()Z
    .locals 2

    .prologue
    .line 3417
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mNotificationHandler:Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isResetRequested()Z
    .locals 3

    .prologue
    .line 3422
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
    .line 3427
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    return v0
.end method

.method public isSecureCamera()Z
    .locals 1

    .prologue
    .line 3447
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    return v0
.end method

.method public isSilverCamera()Z
    .locals 1

    .prologue
    .line 3469
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSilverCamera:Z

    return v0
.end method

.method public isSingleEffect()Z
    .locals 1

    .prologue
    .line 3474
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
    .line 3479
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_0

    .line 3480
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMCORDER_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3481
    const/4 v0, 0x1

    .line 3511
    :goto_0
    return v0

    .line 3485
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 3511
    const/4 v0, 0x0

    goto :goto_0

    .line 3487
    :sswitch_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_3840X2160:Z

    goto :goto_0

    .line 3489
    :sswitch_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_2560X1440:Z

    goto :goto_0

    .line 3491
    :sswitch_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1920X1080:Z

    goto :goto_0

    .line 3493
    :sswitch_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1920X1080_60FPS:Z

    goto :goto_0

    .line 3495
    :sswitch_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1440X1440:Z

    goto :goto_0

    .line 3497
    :sswitch_5
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1440X1080:Z

    goto :goto_0

    .line 3499
    :sswitch_6
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1072X1072:Z

    goto :goto_0

    .line 3501
    :sswitch_7
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1280X720:Z

    goto :goto_0

    .line 3503
    :sswitch_8
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_720X480:Z

    goto :goto_0

    .line 3505
    :sswitch_9
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_640X480:Z

    goto :goto_0

    .line 3507
    :sswitch_a
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_320X240:Z

    goto :goto_0

    .line 3509
    :sswitch_b
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_176X144:Z

    goto :goto_0

    .line 3485
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

    .line 3517
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedBackCameraResolution()Ljava/lang/String;

    move-result-object v0

    .line 3518
    .local v0, "fixedResolution":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3520
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 3537
    :cond_0
    :goto_0
    return v2

    .line 3525
    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v1

    .line 3526
    .local v1, "resolutionString":Ljava/lang/String;
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_MEDIUM:Ljava/lang/String;

    .line 3527
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_SMALL:Ljava/lang/String;

    .line 3528
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    .line 3529
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_MEDIUM:Ljava/lang/String;

    .line 3530
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_SMALL:Ljava/lang/String;

    .line 3531
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    .line 3532
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_MEDIUM:Ljava/lang/String;

    .line 3533
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_SMALL:Ljava/lang/String;

    .line 3534
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3537
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSupportedFrontCamcorderResolutionFeature(I)Z
    .locals 1
    .param p1, "resolution"    # I

    .prologue
    .line 3543
    sparse-switch p1, :sswitch_data_0

    .line 3563
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3545
    :sswitch_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_2560X1440:Z

    goto :goto_0

    .line 3547
    :sswitch_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1920X1080:Z

    goto :goto_0

    .line 3549
    :sswitch_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1440X1440:Z

    goto :goto_0

    .line 3551
    :sswitch_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1280X720:Z

    goto :goto_0

    .line 3553
    :sswitch_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1072X1072:Z

    goto :goto_0

    .line 3555
    :sswitch_5
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_720X480:Z

    goto :goto_0

    .line 3557
    :sswitch_6
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_640X480:Z

    goto :goto_0

    .line 3559
    :sswitch_7
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_320X240:Z

    goto :goto_0

    .line 3561
    :sswitch_8
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_176X144:Z

    goto :goto_0

    .line 3543
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

    .line 3569
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedFrontCameraResolution()Ljava/lang/String;

    move-result-object v0

    .line 3570
    .local v0, "fixedResolution":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3572
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 3589
    :cond_0
    :goto_0
    return v2

    .line 3577
    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v1

    .line 3578
    .local v1, "resolutionString":Ljava/lang/String;
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_MEDIUM:Ljava/lang/String;

    .line 3579
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_SMALL:Ljava/lang/String;

    .line 3580
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    .line 3581
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_MEDIUM:Ljava/lang/String;

    .line 3582
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_SMALL:Ljava/lang/String;

    .line 3583
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    .line 3584
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_MEDIUM:Ljava/lang/String;

    .line 3585
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_SMALL:Ljava/lang/String;

    .line 3586
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3589
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isTemperatureHighToRecord()Z
    .locals 1

    .prologue
    .line 3595
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToRecord:Z

    return v0
.end method

.method public isTemperatureHighToUseFlash()Z
    .locals 1

    .prologue
    .line 3605
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToUseFlash:Z

    return v0
.end method

.method public isTemperatureLowToUseFlash()Z
    .locals 1

    .prologue
    .line 3615
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureLowToUseFlash:Z

    return v0
.end method

.method public onEmpty()V
    .locals 0

    .prologue
    .line 3625
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->handleNotification()V

    .line 3626
    return-void
.end method

.method public overrideCamcorderResolution(I)V
    .locals 3
    .param p1, "resolutionId"    # I

    .prologue
    .line 3630
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

    .line 3632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    .line 3633
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCamcorderResolution(I)Z

    .line 3634
    return-void
.end method

.method public overrideFocusMode(I)V
    .locals 3
    .param p1, "focusMode"    # I

    .prologue
    .line 3638
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

    .line 3639
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    if-eq v0, p1, :cond_0

    .line 3640
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    .line 3642
    :cond_0
    return-void
.end method

.method public refreshButtonDimForCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3647
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStorage()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3648
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3649
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbbf

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderAntiShake()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3650
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-interface {v0, v3, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3651
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3652
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3653
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3654
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x12c

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTorchLightStatus()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3655
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x136

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCallStatus()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3656
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getObjectTrackingAF()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3657
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x7f

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3658
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

    .line 3659
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1770

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3661
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachImageMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3662
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3668
    :goto_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3669
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1b58

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3671
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    if-eqz v0, :cond_2

    .line 3672
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x13d

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3674
    :cond_2
    return-void

    .line 3663
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3664
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x2

    invoke-interface {v0, v4, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_0

    .line 3666
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_0
.end method

.method public refreshSettingValuesFromPreferencesWhenSwitchCamera()V
    .locals 3

    .prologue
    .line 3678
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x84

    aput v2, v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->loadFromPreferences([I)V

    .line 3679
    return-void
.end method

.method public registerAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    .prologue
    .line 3683
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v1

    .line 3684
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3685
    monitor-exit v1

    .line 3686
    return-void

    .line 3685
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
    .line 3690
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3691
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3692
    .local v0, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    if-eqz v0, :cond_0

    .line 3693
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3699
    :goto_0
    monitor-exit v2

    .line 3700
    return-void

    .line 3695
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3696
    .restart local v0    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3697
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 3699
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

    .line 3704
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffect:I

    .line 3705
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffect:I

    .line 3706
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraEffect(IZ)V

    .line 3707
    return-void
.end method

.method public resetCameraSettingsInDual()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3711
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    .line 3712
    const/16 v0, 0x12

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 3713
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 3714
    const/4 v0, 0x7

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 3715
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    .line 3716
    const/16 v0, 0x9

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 3717
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    .line 3718
    const/16 v0, 0xa

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 3719
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 3720
    return-void
.end method

.method public resetCameraSettingsToDefault()V
    .locals 1

    .prologue
    .line 3725
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraLocalSettings(I)V

    .line 3726
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraLocalSettings(I)V

    .line 3727
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraLocalSettings(I)V

    .line 3728
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraLocalSettings(I)V

    .line 3733
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCommonGlobalSettings()V

    .line 3734
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraGlobalSettings()V

    .line 3735
    return-void
.end method

.method public resetListeners()V
    .locals 4

    .prologue
    .line 3739
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v3

    .line 3740
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3741
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3742
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v3

    .line 3743
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3744
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 3745
    .local v1, "key":I
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3743
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3741
    .end local v0    # "i":I
    .end local v1    # "key":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3747
    .restart local v0    # "i":I
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 3748
    monitor-exit v3

    .line 3749
    return-void

    .line 3748
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
    .line 3753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    .line 3754
    return-void
.end method

.method public resetOverriddenFocusMode()V
    .locals 1

    .prologue
    .line 3758
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    .line 3759
    return-void
.end method

.method public resetShootingModeOrder()V
    .locals 3

    .prologue
    .line 3763
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDefaultBackCameraShootingModeOrder()V

    .line 3764
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setBackCameraShootingModeOrder(Ljava/lang/String;)V

    .line 3766
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3767
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3768
    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getBaseColumnIds(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3767
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->updateShootingModeOrder(Landroid/content/Context;Ljava/util/ArrayList;)Z

    .line 3771
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDefaultFrontCameraShootingModeOrder()V

    .line 3772
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFrontCameraShootingModeOrder(Ljava/lang/String;)V

    .line 3774
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3775
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3776
    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getBaseColumnIds(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3775
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->updateShootingModeFrontOrder(Landroid/content/Context;Ljava/util/ArrayList;)Z

    .line 3778
    :cond_1
    return-void
.end method

.method public resetZoomValue()V
    .locals 2

    .prologue
    .line 3782
    const-string v0, "CameraSettings"

    const-string v1, "resetZoomValue"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3783
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    .line 3784
    return-void
.end method

.method public restoreDualResolution(I)V
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    .line 3788
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_dual_rear_resolution_key"

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 3790
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

    .line 3791
    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3793
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionChanged(Z)V

    .line 3794
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 3795
    return-void
.end method

.method public restoreShootingModeAfterRecording()I
    .locals 2

    .prologue
    .line 3799
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPreviousShootingModeForRecording:I

    .line 3800
    .local v0, "mode":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPreviousShootingModeForRecording:I

    .line 3801
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
    .line 3255
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachImageMode:Z

    if-eq v0, p1, :cond_0

    .line 3256
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

    .line 3257
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachImageMode:Z

    .line 3259
    :cond_0
    return-void
.end method

.method public setAttachVideoFixedResolution(II)V
    .locals 0
    .param p1, "backResolution"    # I
    .param p2, "frontResolution"    # I

    .prologue
    .line 3806
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachBackVideoFixedResolution:I

    .line 3807
    iput p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachFrontVideoFixedResolution:I

    .line 3808
    return-void
.end method

.method public setAttachVideoMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 3276
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachVideoMode:Z

    .line 3277
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
    .line 3812
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCallStatus:I

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_2

    .line 3813
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

    .line 3814
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCallStatus:I

    .line 3815
    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    .line 3817
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x136

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3820
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

    .line 3825
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachVideoFixedResolution()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3860
    :cond_0
    :goto_0
    return v0

    .line 3829
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    if-eqz v1, :cond_2

    .line 3830
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_overridden_camcorder_resolution"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    .line 3841
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    if-eq v1, p1, :cond_0

    .line 3842
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

    .line 3843
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    .line 3845
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    if-eqz v0, :cond_6

    .line 3846
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_overridden_camcorder_resolution"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3857
    :goto_2
    const/16 v0, 0xbb9

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 3858
    const/4 v0, 0x1

    goto :goto_0

    .line 3832
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3833
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

    .line 3834
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3835
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

    .line 3837
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

    .line 3848
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3849
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_rear_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 3850
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3851
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_dual_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 3853
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
    .line 3865
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraEffect(IZ)V

    .line 3866
    return-void
.end method

.method public setCameraEffect(IZ)V
    .locals 1
    .param p1, "effect"    # I
    .param p2, "notify"    # Z

    .prologue
    .line 3870
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3871
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffect:I

    if-eq v0, p1, :cond_0

    .line 3872
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffect:I

    .line 3881
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 3882
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3883
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetEffectLevelSettingValue()V

    .line 3885
    :cond_1
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 3887
    :cond_2
    return-void

    .line 3875
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffect:I

    if-eq v0, p1, :cond_0

    .line 3876
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

    .line 3891
    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v2, :cond_2

    .line 3892
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3893
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionChanged(Z)V

    .line 3894
    invoke-direct {p0, v5, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    move v0, v1

    .line 3947
    :cond_1
    :goto_0
    return v0

    .line 3898
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3899
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

    .line 3901
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3902
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

    .line 3904
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3905
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

    .line 3907
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3908
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

    .line 3912
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3913
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

    .line 3922
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

    .line 3923
    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    if-eq v2, p1, :cond_1

    .line 3924
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

    .line 3925
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3927
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3928
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_camera_rear_resolution_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3929
    const-string v0, "pref_camera_rear_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    .line 3943
    :cond_8
    :goto_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionChanged(Z)V

    .line 3944
    invoke-direct {p0, v5, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    move v0, v1

    .line 3945
    goto/16 :goto_0

    .line 3914
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3915
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

    .line 3916
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3917
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

    .line 3918
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3919
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

    .line 3930
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3931
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_camera_front_resolution_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3932
    const-string v0, "pref_camera_front_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    goto :goto_2

    .line 3933
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3934
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_camera_dual_front_resolution_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3935
    const-string v0, "pref_camera_dual_front_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 3936
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3937
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_camera_dual_rear_resolution_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3938
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
    .line 846
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getColorTune()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    .line 847
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    if-eq v0, p1, :cond_0

    .line 848
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

    .line 849
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    .line 850
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_colortune"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 851
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 853
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

    .line 3311
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_SVIEW_COVER_CAMERA:Z

    if-nez v2, :cond_1

    .line 3329
    :cond_0
    :goto_0
    return-void

    .line 3315
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-eq v2, p1, :cond_0

    .line 3316
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

    .line 3317
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    .line 3319
    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-eqz v2, :cond_2

    .line 3320
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 3321
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v5, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3325
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleCoverCameraChanged(Z)V

    .line 3326
    if-eqz p1, :cond_3

    :goto_2
    invoke-direct {p0, v5, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0

    .line 3323
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v5, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 3326
    goto :goto_2
.end method

.method public setDefaultBackCameraShootingModeOrder()V
    .locals 4

    .prologue
    .line 3953
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->initializeDefaultBackCameraShootingModeOrderList()V

    .line 3955
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    .line 3957
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

    .line 3958
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

    .line 3961
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

    .line 3962
    return-void
.end method

.method public setEasyCamera(Z)V
    .locals 3
    .param p1, "easyCamera"    # Z

    .prologue
    .line 3369
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eq v0, p1, :cond_1

    .line 3370
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

    .line 3371
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    .line 3373
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_1

    .line 3374
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

    .line 3375
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 3376
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDualMode(I)V

    .line 3380
    :cond_1
    return-void
.end method

.method public setEffectListType(I)V
    .locals 3
    .param p1, "effectListType"    # I

    .prologue
    .line 1029
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

    .line 1030
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_effect_list_type"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1035
    :goto_0
    return-void

    .line 1033
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
    .line 1123
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1124
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffectStrengthLevel:I

    .line 1128
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

    .line 1129
    .local v0, "intensity":I
    const/16 v1, 0x97

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1130
    return-void

    .line 1126
    .end local v0    # "intensity":I
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffectStrengthLevel:I

    goto :goto_0
.end method

.method public setEffectVignetteLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 1143
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffectVignetteLevel:I

    .line 1148
    :goto_0
    const/16 v0, 0x98

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1149
    return-void

    .line 1146
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffectVignetteLevel:I

    goto :goto_0
.end method

.method public setEngine(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 0
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    .line 3966
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 3967
    return-void
.end method

.method public setExposureValue(I)V
    .locals 4
    .param p1, "exposureValue"    # I

    .prologue
    const/4 v3, 0x1

    .line 1162
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    if-ne v0, v3, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_exposure_value_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 1166
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    if-eq v0, p1, :cond_2

    .line 1167
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

    .line 1168
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 1169
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    if-ne v0, v3, :cond_1

    .line 1170
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_exposure_value_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1172
    :cond_1
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 1174
    :cond_2
    return-void
.end method

.method public setEyeEnlargeLevel(I)V
    .locals 3
    .param p1, "eyeEnlargeLevel"    # I

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_eyeenlarge_level_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    .line 1187
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    if-eq v0, p1, :cond_0

    .line 1188
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

    .line 1189
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    .line 1190
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_eyeenlarge_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1192
    const/16 v0, 0x70

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1194
    :cond_0
    return-void
.end method

.method public setFlashMode(I)V
    .locals 5
    .param p1, "flashMode"    # I

    .prologue
    const/16 v4, 0x6c

    const/4 v3, 0x3

    .line 1408
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_flash_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFlashMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    .line 1409
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getLowBatteryStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1410
    :cond_0
    const/4 p1, 0x0

    .line 1412
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    if-eq v0, p1, :cond_2

    .line 1413
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

    .line 1414
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    .line 1415
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_flash_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1417
    const-string v0, "pref_flash_key"

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    .line 1419
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-eqz v0, :cond_3

    .line 1420
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1421
    invoke-direct {p0, v4, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1428
    :cond_2
    :goto_0
    return-void

    .line 1422
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_4

    .line 1423
    invoke-direct {p0, v4, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0

    .line 1425
    :cond_4
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setFloatingCameraButton(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1437
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

    .line 1438
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    if-eq v0, p1, :cond_0

    .line 1439
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

    .line 1440
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    .line 1441
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_floating_camera_button_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1442
    const/16 v0, 0xb5

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1444
    :cond_0
    return-void
.end method

.method public setFocusLength(I)V
    .locals 3
    .param p1, "focusLength"    # I

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_focus_length"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusLength:I

    .line 1459
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusLength:I

    if-eq v0, p1, :cond_3

    .line 1460
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

    .line 1461
    if-gez p1, :cond_0

    .line 1462
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetOverriddenFocusMode()V

    .line 1464
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusLength:I

    if-gez v0, :cond_1

    .line 1465
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->overrideFocusMode(I)V

    .line 1467
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusLength:I

    .line 1468
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualFocusLength:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1469
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_focus_length"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1471
    :cond_2
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1473
    :cond_3
    return-void
.end method

.method public setFocusMode(I)V
    .locals 3
    .param p1, "focusMode"    # I

    .prologue
    .line 3971
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 3972
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    if-eq v0, p1, :cond_0

    .line 3973
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

    .line 3974
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 3975
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3977
    :cond_0
    return-void
.end method

.method public setFocusMode(II)V
    .locals 3
    .param p1, "focusMode"    # I
    .param p2, "overriddenFocusMode"    # I

    .prologue
    .line 3981
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

    .line 3982
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 3983
    iput p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    .line 3984
    return-void
.end method

.method public setFontScale(F)V
    .locals 1
    .param p1, "fontScale"    # F

    .prologue
    .line 1480
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->MAX_FONT_SCALE:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1481
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->MAX_FONT_SCALE:F

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFontScale:F

    .line 1485
    :goto_0
    return-void

    .line 1483
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFontScale:F

    goto :goto_0
.end method

.method public setFoodBlurType(I)V
    .locals 3
    .param p1, "foodBlurType"    # I

    .prologue
    .line 1494
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    if-eq v0, p1, :cond_0

    .line 1495
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

    .line 1496
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    .line 1497
    const/16 v0, 0x8d

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1499
    :cond_0
    return-void
.end method

.method public setFoodColorTuneValue(I)V
    .locals 3
    .param p1, "colorTuneValue"    # I

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_food_level_key"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodColorTuneValue:I

    .line 1512
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodColorTuneValue:I

    if-eq v0, p1, :cond_0

    .line 1513
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

    .line 1514
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodColorTuneValue:I

    .line 1515
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_food_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodColorTuneValue:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1517
    const/16 v0, 0x76

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodColorTuneValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1519
    :cond_0
    return-void
.end method

.method public setFrontCameraShootingModeOrder(Ljava/lang/String;)V
    .locals 3
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_front_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 1554
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1555
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

    .line 1556
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 1557
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_front_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    :cond_0
    return-void
.end method

.method public setFrontFlashMode(I)V
    .locals 3
    .param p1, "flashMode"    # I

    .prologue
    .line 1578
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v0, :cond_0

    .line 1579
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_flash_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFrontFlashMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    .line 1582
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getLowBatteryStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1583
    const/4 p1, 0x0

    .line 1586
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    if-eq v0, p1, :cond_3

    .line 1587
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

    .line 1588
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    .line 1589
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v0, :cond_2

    .line 1590
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_flash_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1592
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_4

    .line 1593
    const/16 v0, 0x6a

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1598
    :cond_3
    :goto_0
    return-void

    .line 1595
    :cond_4
    const/16 v0, 0xaa

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setGPS(I)V
    .locals 3
    .param p1, "gps"    # I

    .prologue
    .line 1607
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

    .line 1608
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    if-eq v0, p1, :cond_0

    .line 1609
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

    .line 1610
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    .line 1611
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_gps_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1613
    :cond_0
    return-void
.end method

.method public setGestureControlMode(I)V
    .locals 4
    .param p1, "gestureControlMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 1622
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_detection_mode_key"

    .line 1623
    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    .line 1622
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    .line 1624
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    if-eq v0, p1, :cond_0

    .line 1625
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

    .line 1626
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    .line 1627
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_detection_mode_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1628
    const/16 v0, 0x7d

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    invoke-direct {p0, v0, v1, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 1630
    :cond_0
    return-void
.end method

.method public setGuideline(I)V
    .locals 3
    .param p1, "guideline"    # I

    .prologue
    .line 1642
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_1

    .line 1652
    :cond_0
    :goto_0
    return-void

    .line 1645
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_guideline_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    .line 1646
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    if-eq v0, p1, :cond_0

    .line 1647
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

    .line 1648
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    .line 1649
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_guideline_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1650
    const/16 v0, 0x13

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setHRMShutter(I)V
    .locals 3
    .param p1, "hrmShutter"    # I

    .prologue
    .line 1661
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

    .line 1662
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHRMShutter:I

    if-eq v0, p1, :cond_0

    .line 1663
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

    .line 1664
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHRMShutter:I

    .line 1665
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_hrm_shutter_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHRMShutter:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1667
    :cond_0
    return-void
.end method

.method public setInterval(I)V
    .locals 4
    .param p1, "interval"    # I

    .prologue
    const/16 v3, 0x7f

    .line 1691
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    .line 1693
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    if-eq v0, p1, :cond_0

    .line 1694
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

    .line 1695
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    .line 1696
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_interval_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1699
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 1701
    :cond_0
    return-void
.end method

.method public setIsFirstLaunchCameraByHomeKey(Z)V
    .locals 3
    .param p1, "isFirstLaunchByHomeKey"    # Z

    .prologue
    .line 3988
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_first_launch_camera_key_by_home_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsFirstLaunchCameraByHomeKey:Z

    .line 3989
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsFirstLaunchCameraByHomeKey:Z

    if-eq v0, p1, :cond_0

    .line 3990
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsFirstLaunchCameraByHomeKey : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3991
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsFirstLaunchCameraByHomeKey:Z

    .line 3992
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_first_launch_camera_key_by_home_key"

    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsFirstLaunchCameraByHomeKey:Z

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3994
    :cond_0
    return-void
.end method

.method public setKelvinValue(I)V
    .locals 3
    .param p1, "kValue"    # I

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_kelvin_key"

    const/16 v2, 0x37

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKelvin:I

    .line 1712
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKelvin:I

    if-eq v0, p1, :cond_0

    .line 1713
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

    .line 1714
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKelvin:I

    .line 1715
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_kelvin_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1717
    const/16 v0, 0x23

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1719
    :cond_0
    return-void
.end method

.method public setKeyboardCoverCamera(Z)V
    .locals 3
    .param p1, "keyboardCoverCamera"    # Z

    .prologue
    .line 3409
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    if-eq v0, p1, :cond_0

    .line 3410
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

    .line 3411
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    .line 3413
    :cond_0
    return-void
.end method

.method public setLowBatteryStatus(Z)V
    .locals 0
    .param p1, "lowBattery"    # Z

    .prologue
    .line 1728
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mLowBattery:Z

    .line 1729
    return-void
.end method

.method public setManualSettings(I)V
    .locals 3
    .param p1, "manual"    # I

    .prologue
    .line 3998
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

    .line 4000
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualExposureValue(I)V

    .line 4001
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualShutterSpeed(I)V

    .line 4002
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualISO(I)V

    .line 4003
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualWhiteBalance(I)V

    .line 4004
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualFocusLength(I)V

    .line 4005
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualExposureMeter(I)V

    .line 4006
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualMultiAF(I)V

    .line 4007
    return-void
.end method

.method public setMotionPanoramaMode(I)V
    .locals 3
    .param p1, "motionPanoramaMode"    # I

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_panorama_mode"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultMotionPanoramaMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    .line 1793
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    if-eq v0, p1, :cond_0

    .line 1794
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

    .line 1795
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    .line 1796
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_panorama_mode"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1797
    const/16 v0, 0x87

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1799
    :cond_0
    return-void
.end method

.method public setMotionPhoto(I)V
    .locals 3
    .param p1, "motionPhoto"    # I

    .prologue
    .line 1814
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

    .line 1816
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    if-eq v0, p1, :cond_0

    .line 1817
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

    .line 1818
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    .line 1820
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_motion_photo_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1821
    const/16 v0, 0x2a

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1823
    :cond_0
    return-void
.end method

.method public setMotionWideSelfieMode(I)V
    .locals 3
    .param p1, "motionWideSelfieMode"    # I

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_wide_selfie_mode"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultMotionWideSelfieMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    .line 1833
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    if-eq v0, p1, :cond_0

    .line 1834
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

    .line 1835
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    .line 1836
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_wide_selfie_mode"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1837
    const/16 v0, 0xad

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1839
    :cond_0
    return-void
.end method

.method public setMultiAFMode(I)V
    .locals 4
    .param p1, "multiAFMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 1852
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    if-ne v0, v3, :cond_0

    .line 1853
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_multi_af_mode"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_MULTI_AF_MODE:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiAFMode:I

    .line 1856
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiAFMode:I

    if-eq v0, p1, :cond_2

    .line 1857
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

    .line 1858
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiAFMode:I

    .line 1859
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    if-ne v0, v3, :cond_1

    .line 1860
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_multi_af_mode"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiAFMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1862
    :cond_1
    const/16 v0, 0x91

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1864
    :cond_2
    return-void
.end method

.method public setMultiWindowMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1873
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiWindowMode:I

    if-eq v0, p1, :cond_0

    .line 1874
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

    .line 1875
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiWindowMode:I

    .line 1877
    :cond_0
    return-void
.end method

.method public setObjectTrackingAF(I)V
    .locals 4
    .param p1, "ObjectTrackingAF"    # I

    .prologue
    const/16 v3, 0x17

    .line 1889
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_0

    .line 1901
    :goto_0
    return-void

    .line 1892
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_object_trackingaf_key"

    const/4 v2, 0x0

    .line 1893
    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    .line 1892
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    .line 1894
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    if-eq v0, p1, :cond_1

    .line 1895
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

    .line 1896
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    .line 1897
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_object_trackingaf_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1898
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1900
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
    .line 1913
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

    .line 1914
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    if-eq v0, p1, :cond_0

    .line 1915
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

    .line 1916
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    .line 1917
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_picture_format"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1919
    const/16 v0, 0x13b

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1921
    :cond_0
    return-void
.end method

.method public setQRCodeDetection(I)V
    .locals 3
    .param p1, "qrCodeDetection"    # I

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_qrcode_detection"

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    .line 1931
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    if-eq v0, p1, :cond_0

    .line 1932
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

    .line 1933
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    .line 1934
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_qrcode_detection"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1935
    const/16 v0, 0x13c

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1937
    :cond_0
    return-void
.end method

.method public setRearLensDistortionCorrection(I)V
    .locals 3
    .param p1, "correction"    # I

    .prologue
    .line 1951
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

    .line 1952
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRearLensDistortionCorrection:I

    if-eq v0, p1, :cond_0

    .line 1953
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

    .line 1954
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRearLensDistortionCorrection:I

    .line 1955
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_rear_lens_distortion_correction_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRearLensDistortionCorrection:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1957
    :cond_0
    return-void
.end method

.method public setRecordingMotionSpeed(I)V
    .locals 3
    .param p1, "motionSpeed"    # I

    .prologue
    .line 1966
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getRecordingMotionSpeed()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionSpeed:I

    .line 1968
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionSpeed:I

    if-eq v0, p1, :cond_0

    .line 1969
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

    .line 1970
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionSpeed:I

    .line 1971
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_recording_motion_speed_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionSpeed:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1972
    const/16 v0, 0x170d

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionSpeed:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1974
    :cond_0
    return-void
.end method

.method public setRequestedMediaRecorderProfileInfo(Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;

    .prologue
    .line 1983
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedMediaRecorderProfileInfo:Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;

    .line 1984
    return-void
.end method

.method public setRequestedRecordingDurationLimit(I)V
    .locals 0
    .param p1, "durationLimit"    # I

    .prologue
    .line 1993
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedRecordingDurationLimit:I

    .line 1994
    return-void
.end method

.method public setRequestedRecordingSizeLimit(J)V
    .locals 1
    .param p1, "sizeLimit"    # J

    .prologue
    .line 2003
    iput-wide p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedRecordingSizeLimit:J

    .line 2004
    return-void
.end method

.method public setRequestedSaveUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2013
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedSaveUri:Landroid/net/Uri;

    .line 2014
    return-void
.end method

.method public setResizableCamera(Z)V
    .locals 3
    .param p1, "resizableCamera"    # Z

    .prologue
    .line 3432
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eq v0, p1, :cond_1

    .line 3433
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

    .line 3434
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    .line 3436
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v0, :cond_1

    .line 3437
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

    .line 3438
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 3439
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDualMode(I)V

    .line 3443
    :cond_1
    return-void
.end method

.method public setReview(I)V
    .locals 3
    .param p1, "review"    # I

    .prologue
    .line 2026
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v0, :cond_1

    .line 2036
    :cond_0
    :goto_0
    return-void

    .line 2029
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

    .line 2030
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    if-eq v0, p1, :cond_0

    .line 2031
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

    .line 2032
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    .line 2033
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_review_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2034
    const/16 v0, 0x11

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setSaveRichTone(I)V
    .locals 3
    .param p1, "saveRichTone"    # I

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_save_richtone_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    .line 2046
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    if-eq v0, p1, :cond_0

    .line 2047
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

    .line 2048
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    .line 2049
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_save_richtone_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2050
    const/16 v0, 0x22

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 2052
    :cond_0
    return-void
.end method

.method public setSecureCamera(Z)V
    .locals 4
    .param p1, "secureCamera"    # Z

    .prologue
    const/16 v3, 0x13d

    .line 3452
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    if-eq v0, p1, :cond_1

    .line 3453
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

    .line 3454
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    .line 3456
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    if-eqz v0, :cond_2

    .line 3457
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

    .line 3458
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 3460
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x1

    invoke-interface {v0, v3, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3465
    :cond_1
    :goto_0
    return-void

    .line 3462
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
    .line 2064
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

    .line 2065
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    if-eq v0, p1, :cond_0

    .line 2066
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

    .line 2067
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    .line 2068
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_self_flip_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2070
    const/16 v0, 0x26

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2072
    :cond_0
    return-void
.end method

.method public setSeparatedShootingMode(ILjava/lang/String;)V
    .locals 3
    .param p1, "commandId"    # I
    .param p2, "shootingModeName"    # Ljava/lang/String;

    .prologue
    .line 4011
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-nez v0, :cond_0

    .line 4012
    const-string v0, "CameraSettings"

    const-string v1, "Cannot support Separated ShootingMode"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 4027
    .end local p2    # "shootingModeName":Ljava/lang/String;
    :goto_0
    return-void

    .line 4016
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

    .line 4018
    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2    # "shootingModeName":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    .line 4020
    invoke-static {p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    .line 4022
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4023
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    goto :goto_0

    .line 4025
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    goto :goto_0
.end method

.method public setShapeCorrection(I)V
    .locals 3
    .param p1, "shapeCorrection"    # I

    .prologue
    .line 2304
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_shapecorrection_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShapeCorrectionMode:I

    .line 2305
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShapeCorrectionMode:I

    if-eq v0, p1, :cond_0

    .line 2306
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

    .line 2307
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShapeCorrectionMode:I

    .line 2308
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_shapecorrection_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShapeCorrectionMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2310
    const/16 v0, 0x71

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShapeCorrectionMode:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2312
    :cond_0
    return-void
.end method

.method public setShootingMode(I)V
    .locals 4
    .param p1, "shootingMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 4031
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    if-eq v0, p1, :cond_0

    invoke-static {v3, p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4032
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

    .line 4034
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    .line 4035
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    .line 4037
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4038
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    .line 4051
    :goto_0
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 4053
    :cond_0
    return-void

    .line 4039
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4040
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_DUAL:Z

    if-eqz v0, :cond_2

    .line 4041
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    goto :goto_0

    .line 4043
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    goto :goto_0

    .line 4045
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4046
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    goto :goto_0

    .line 4048
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

    .line 2528
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    if-ne v0, v3, :cond_0

    .line 2529
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_shutter_speed_key"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSpeed:I

    .line 2532
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSpeed:I

    if-eq v0, p1, :cond_2

    .line 2533
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

    .line 2534
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSpeed:I

    .line 2535
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    if-ne v0, v3, :cond_1

    .line 2536
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_shutter_speed_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2538
    :cond_1
    const/16 v0, 0x1f

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2540
    :cond_2
    return-void
.end method

.method public setSkinColorLevel(I)V
    .locals 3
    .param p1, "skinColorLevel"    # I

    .prologue
    .line 2552
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_skincolor_level_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    .line 2553
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    if-eq v0, p1, :cond_0

    .line 2554
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

    .line 2555
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    .line 2556
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_skincolor_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2558
    const/16 v0, 0x7a

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2560
    :cond_0
    return-void
.end method

.method public setSlimFaceLevel(I)V
    .locals 3
    .param p1, "slimFaceLevel"    # I

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_slimface_level_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    .line 2573
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    if-eq v0, p1, :cond_0

    .line 2574
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

    .line 2575
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    .line 2576
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_slimface_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2578
    const/16 v0, 0x6e

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2580
    :cond_0
    return-void
.end method

.method public setSoundAndShotMode(I)V
    .locals 3
    .param p1, "SoundAndShotMode"    # I

    .prologue
    .line 2589
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    if-eq v0, p1, :cond_0

    .line 2590
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

    .line 2591
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    .line 2592
    const/16 v0, 0x4d

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 2594
    :cond_0
    return-void
.end method

.method public setSpotlightLevel(I)V
    .locals 3
    .param p1, "spotlightLevel"    # I

    .prologue
    .line 2606
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_spotlight_level_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightLevel:I

    .line 2607
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightLevel:I

    if-eq v0, p1, :cond_0

    .line 2608
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

    .line 2609
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightLevel:I

    .line 2610
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_spotlight_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2612
    const/16 v0, 0x6f

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2614
    :cond_0
    return-void
.end method

.method public setSpotlightPosition(I)V
    .locals 3
    .param p1, "spotlightPosition"    # I

    .prologue
    .line 2626
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_spotlight_position_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightPosition:I

    .line 2627
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightPosition:I

    if-eq v0, p1, :cond_0

    .line 2628
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

    .line 2629
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightPosition:I

    .line 2630
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_spotlight_position_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightPosition:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2632
    const/16 v0, 0x77

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightPosition:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2634
    :cond_0
    return-void
.end method

.method public setStorage(I)V
    .locals 4
    .param p1, "storage"    # I

    .prologue
    const/16 v3, 0x16

    .line 2691
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_storage_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultStorage()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    .line 2692
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    if-eq v0, p1, :cond_0

    .line 2693
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

    .line 2694
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    .line 2695
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_storage_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2697
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2698
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setStorageStatus(I)V

    .line 2699
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    .line 2701
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 2702
    return-void
.end method

.method public setTapToTakePictures(I)V
    .locals 3
    .param p1, "tapToTakePictures"    # I

    .prologue
    .line 2711
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

    .line 2712
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTapToTakePictures:I

    if-eq v0, p1, :cond_0

    .line 2713
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

    .line 2714
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTapToTakePictures:I

    .line 2715
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_tap_to_take_pictures_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTapToTakePictures:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2717
    :cond_0
    return-void
.end method

.method public setTemperatureHighToRecord(Z)V
    .locals 0
    .param p1, "highTemperature"    # Z

    .prologue
    .line 3600
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToRecord:Z

    .line 3601
    return-void
.end method

.method public setTemperatureHighToUseFlash(Z)V
    .locals 0
    .param p1, "highTemperature"    # Z

    .prologue
    .line 3610
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToUseFlash:Z

    .line 3611
    return-void
.end method

.method public setTemperatureLowToUseFlash(Z)V
    .locals 0
    .param p1, "lowTemperature"    # Z

    .prologue
    .line 3620
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureLowToUseFlash:Z

    .line 3621
    return-void
.end method

.method public setTimer(I)V
    .locals 3
    .param p1, "timer"    # I

    .prologue
    .line 2730
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    .line 2732
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    if-eq v0, p1, :cond_0

    .line 2733
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

    .line 2734
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    .line 2735
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_timer_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2737
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x7f

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 2739
    :cond_0
    return-void
.end method

.method public setTorchLightStatus(I)V
    .locals 3
    .param p1, "torchLight"    # I

    .prologue
    .line 2748
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    if-eq v0, p1, :cond_0

    .line 2749
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    .line 2750
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x12c

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 2752
    :cond_0
    return-void
.end method

.method public setVideoCollageRecordingTime(I)V
    .locals 3
    .param p1, "recordingTime"    # I

    .prologue
    const/4 v2, 0x1

    .line 2770
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2771
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_recording_time"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    .line 2776
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    if-eq v0, p1, :cond_0

    .line 2777
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    .line 2778
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

    .line 2780
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2781
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_recording_time"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2785
    :goto_1
    const/16 v0, 0x84

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2787
    :cond_0
    return-void

    .line 2773
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_back_video_collage_recording_time"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    goto :goto_0

    .line 2783
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
    .line 4057
    const-string v2, "CameraSettings"

    const-string v3, "setVideoCollageResolution()"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4061
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4084
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4085
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    .line 4089
    .local v1, "cameraResolution":Ljava/lang/String;
    :goto_0
    const-string v0, "960x720"

    .line 4094
    .local v0, "camcorderResolution":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 4095
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 4096
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 4097
    :cond_0
    const-string v0, "640x480"

    .line 4100
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

    .line 4102
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolution(I)Z

    .line 4103
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->overrideCamcorderResolution(I)V

    .line 4104
    return-void

    .line 4067
    .end local v0    # "camcorderResolution":Ljava/lang/String;
    .end local v1    # "cameraResolution":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4068
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    .line 4072
    .restart local v1    # "cameraResolution":Ljava/lang/String;
    :goto_2
    const-string v0, "960x960"

    .line 4073
    .restart local v0    # "camcorderResolution":Ljava/lang/String;
    goto :goto_1

    .line 4070
    .end local v0    # "camcorderResolution":Ljava/lang/String;
    .end local v1    # "cameraResolution":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    .restart local v1    # "cameraResolution":Ljava/lang/String;
    goto :goto_2

    .line 4087
    .end local v1    # "cameraResolution":Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    .restart local v1    # "cameraResolution":Ljava/lang/String;
    goto :goto_0

    .line 4061
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

    .line 4108
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4109
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_type"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    .line 4114
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    if-eq v0, p1, :cond_0

    .line 4115
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    .line 4116
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

    .line 4118
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4119
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_type"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4124
    :goto_1
    if-eqz p2, :cond_0

    .line 4125
    const/16 v0, 0x83

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 4128
    :cond_0
    return-void

    .line 4111
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_back_video_collage_type"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    goto :goto_0

    .line 4121
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
    .line 2809
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-nez v0, :cond_1

    .line 2820
    :cond_0
    :goto_0
    return-void

    .line 2812
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

    .line 2813
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    if-eq v0, p1, :cond_0

    .line 2814
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

    .line 2815
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    .line 2816
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_fullpreview_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2818
    const/16 v0, 0x138

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setVolumeKeyAs(I)V
    .locals 3
    .param p1, "volumeKeyAs"    # I

    .prologue
    .line 2829
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_volume_key_as"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VOLUME_KEY_AS:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    .line 2830
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    if-eq v0, p1, :cond_0

    .line 2831
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

    .line 2832
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    .line 2833
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_volume_key_as"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2834
    const/16 v0, 0x49

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2836
    :cond_0
    return-void
.end method

.method public setWatermarkCategory(I)V
    .locals 2
    .param p1, "watermarkCategory"    # I

    .prologue
    .line 2845
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getWatermarkCategory()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkCategory:I

    .line 2846
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkCategory:I

    if-eq v0, p1, :cond_0

    .line 2847
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkCategory:I

    .line 2848
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_watermark_category"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2849
    const/16 v0, 0xa1

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkCategory:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2851
    :cond_0
    return-void
.end method

.method public setWatermarkId(I)V
    .locals 4
    .param p1, "watermarkId"    # I

    .prologue
    const/16 v3, 0xa0

    .line 2863
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkId:I

    if-eq v0, p1, :cond_0

    .line 2864
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

    .line 2865
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkId:I

    .line 2866
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2867
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 2869
    :cond_0
    return-void
.end method

.method public setWatermarkInputText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2878
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkInputText:Ljava/lang/String;

    .line 2879
    return-void
.end method

.method public setWhiteBalance(I)V
    .locals 4
    .param p1, "whiteBalance"    # I

    .prologue
    const/4 v3, 0x1

    .line 2892
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    if-ne v0, v3, :cond_0

    .line 2893
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_white_balance_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    .line 2896
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    if-eq v0, p1, :cond_2

    .line 2897
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

    .line 2898
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    .line 2899
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    if-ne v0, v3, :cond_1

    .line 2900
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_white_balance_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2902
    :cond_1
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2904
    :cond_2
    return-void
.end method

.method public setZoomValue(I)V
    .locals 3
    .param p1, "zoomValue"    # I

    .prologue
    .line 2917
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    if-eq v0, p1, :cond_0

    .line 2918
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

    .line 2919
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    .line 2920
    const/16 v0, 0x12

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2922
    :cond_0
    return-void
.end method

.method public storeShootingModeBeforeRecording()V
    .locals 1

    .prologue
    .line 4132
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPreviousShootingModeForRecording:I

    .line 4133
    return-void
.end method

.method public unregisterAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    .prologue
    .line 4137
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v1

    .line 4138
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4139
    monitor-exit v1

    .line 4140
    return-void

    .line 4139
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
    .line 4144
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v2

    .line 4145
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4146
    .local v0, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    if-nez v0, :cond_0

    .line 4147
    const-string v1, "CameraSettings"

    const-string v3, "Could not find listener. return."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4148
    monitor-exit v2

    .line 4153
    :goto_0
    return-void

    .line 4150
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4152
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
    .line 4157
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

    .line 4159
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4160
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 4161
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_WIDE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4162
    .local v0, "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    .line 4187
    .end local v0    # "resolutionID":I
    :cond_0
    :goto_0
    return-void

    .line 4163
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4164
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_WIDE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4165
    .restart local v0    # "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    .line 4166
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    goto :goto_0

    .line 4168
    .end local v0    # "resolutionID":I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4169
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 4170
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_SQUARE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4171
    .restart local v0    # "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    goto :goto_0

    .line 4172
    .end local v0    # "resolutionID":I
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4173
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_SQUARE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4174
    .restart local v0    # "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    .line 4175
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    goto :goto_0

    .line 4178
    .end local v0    # "resolutionID":I
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 4179
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_NORMAL_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4180
    .restart local v0    # "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    goto/16 :goto_0

    .line 4181
    .end local v0    # "resolutionID":I
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4182
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_NORMAL_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4183
    .restart local v0    # "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    .line 4184
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
    .line 4191
    return-void
.end method

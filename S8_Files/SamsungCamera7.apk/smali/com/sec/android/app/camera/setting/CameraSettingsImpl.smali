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

.field private mAutoFilterPinSelected:Z

.field private mAutoNightDetection:I

.field private mBackBeautyLevel:I

.field private mBackCameraShootingModeOrder:Ljava/lang/String;

.field private mBackShootingMode:I

.field private mBeautyLevel:I

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

.field private mEasyCamera:Z

.field private mEffectCategory:I

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mExposureMeter:I

.field private mExposureValue:I

.field private mEyeEnlargeLevel:I

.field private mFilterEffect:I

.field private mFilterEffectStrengthLevel:I

.field private mFilterEffectVignetteLevel:I

.field private mFlashMode:I

.field private mFlip:I

.field private mFloatingCameraButton:I

.field private mFocusMode:I

.field private mFontScale:F

.field private mFoodBlurType:I

.field private mFrontCameraShootingModeOrder:Ljava/lang/String;

.field private mFrontFlashMode:I

.field private mFrontShootingMode:I

.field private mGPS:I

.field private mGestureControlMode:I

.field private mGuideLine:I

.field private mHDR:I

.field private mISO:I

.field private mInitialShootingMode:I

.field private mInterval:I

.field private mIsCamcorderResolutionOverridden:Z

.field private mIsTemperatureHighToRecord:Z

.field private mIsTemperatureHighToUseFlash:Z

.field private mIsTemperatureLowToUseFlash:Z

.field private mKeyboardCoverCamera:Z

.field private final mListenersForAllChanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenersForSpecifiedChanges:Landroid/util/SparseArray;
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

.field private mResolution:I

.field private mReview:I

.field private mSaveRichTone:I

.field private mSecureCamera:Z

.field private mSeparatedShootingModeName:Ljava/lang/String;

.field private mSettingLandingState:Ljava/lang/String;

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

.field private mShootingMode:I

.field private mShutterSound:I

.field private mShutterSpeed:I

.field private mSimpleCamera:Z

.field private mSkinColorLevel:I

.field private mSlimFaceLevel:I

.field private mSoundAndShotMode:I

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

.field private mStickerId:I

.field private mStickerPackageId:I

.field private mStickerRandomId:I

.field private mStickerSoundMute:I

.field private mStickerType:I

.field private mStorage:I

.field private mTimer:I

.field private mTorchLight:I

.field private mVideoCollageRecordingTime:I

.field private mVideoCollageType:I

.field private mViewModePreview:I

.field private mVoiceCommand:I

.field private mVolumeKeyAs:I

.field private mWB:I

.field private mWatermarkInputText:Ljava/lang/String;

.field private mWideTeleDualMode:I

.field private mZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 78
    sget v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_DEFAULT_LIVE_BEAUTY_LEVEL:I

    sput v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    .line 81
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FONT_SCALE:F

    .line 82
    const v0, 0x3f99999a    # 1.2f

    sput v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->MAX_FONT_SCALE:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 6
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;

    .prologue
    const/16 v5, 0x2710

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 92
    iput-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    .line 93
    iput-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    .line 105
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    .line 108
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    .line 111
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    .line 112
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    .line 113
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    .line 114
    iput v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    .line 118
    iput v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    .line 122
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    .line 123
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    .line 124
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFilterEffect:I

    .line 126
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    .line 127
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    .line 128
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSpeed:I

    .line 129
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    .line 130
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 131
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VIEW_MODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    .line 134
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQuality:I

    .line 137
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    .line 139
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualISO:I

    .line 140
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    .line 141
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    .line 142
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualFocusLength:I

    .line 143
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    .line 144
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureMeter:I

    .line 145
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    .line 150
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    .line 151
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAudioRecording:I

    .line 157
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    .line 158
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    .line 160
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    .line 161
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCallStatus:I

    .line 163
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    .line 164
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    .line 165
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    .line 166
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    .line 168
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    .line 170
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    .line 172
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    .line 174
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    .line 176
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    .line 177
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    .line 185
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFilterEffectStrengthLevel:I

    .line 186
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFilterEffectVignetteLevel:I

    .line 188
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    .line 190
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    .line 192
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    .line 193
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    .line 194
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    .line 196
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    .line 197
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiWindowMode:I

    .line 199
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    .line 201
    iput-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 204
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraResolutionChanged:Z

    .line 205
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    .line 207
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mLowBattery:Z

    .line 208
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToUseFlash:Z

    .line 209
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureLowToUseFlash:Z

    .line 210
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToRecord:Z

    .line 212
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    .line 214
    const/16 v0, 0x1e78

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEffectCategory:I

    .line 215
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoFilterPinSelected:Z

    .line 217
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FONT_SCALE:F

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFontScale:F

    .line 219
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWideTeleDualMode:I

    .line 221
    iput v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerId:I

    .line 222
    const/16 v0, 0x2713

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerPackageId:I

    .line 223
    iput v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerRandomId:I

    .line 226
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerType:I

    .line 227
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerSoundMute:I

    .line 229
    iput-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkInputText:Ljava/lang/String;

    .line 231
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 232
    new-instance v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;-><init>(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mNotificationHandler:Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    .line 237
    const-string v0, "Setting"

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingLandingState:Ljava/lang/String;

    .line 240
    const-string v0, "Create CameraSettings"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 242
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 243
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraIdFromPreferences()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    .line 245
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 246
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->handleNotification(II)V

    return-void
.end method

.method private getBackInterval()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4205
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_1

    .line 4212
    :cond_0
    :goto_0
    return v0

    .line 4209
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackTimer()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4212
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

.method private getCameraIdFromName(Ljava/lang/String;)I
    .locals 1
    .param p1, "cameraFacingName"    # Ljava/lang/String;

    .prologue
    .line 4229
    const-string v0, "front"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4230
    const/4 v0, 0x1

    .line 4232
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCameraIdFromPreferences()I
    .locals 3

    .prologue
    .line 4238
    const-string v0, "0"

    .line 4239
    .local v0, "id":Ljava/lang/String;
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_WIDE_TELE_DUAL_MODE:Z

    if-eqz v1, :cond_0

    .line 4240
    const-string v0, "20"

    .line 4242
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_id_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getCoverCamcorderResolution()I
    .locals 1

    .prologue
    .line 4246
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMCORDER_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getDefaultAutoNightDetectionMode()I
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 4250
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_NIGHT_DETECTION:Z

    if-nez v2, :cond_1

    .line 4251
    const/4 v0, 0x0

    .line 4260
    :cond_0
    :goto_0
    return v0

    .line 4254
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    .line 4257
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4258
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camera_autonightdetection_key"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4259
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
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4265
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4268
    :cond_0
    return v1
.end method

.method private getDefaultCameraResolution(I)I
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 4273
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getSeamlessZoomCameraId()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getPortraitCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 4274
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4286
    :goto_0
    return v0

    .line 4275
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 4276
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4277
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 4278
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4279
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 4280
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_PICTURESIZE:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4281
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 4282
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_PICTURESIZE:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4284
    :cond_5
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

    .line 4285
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

    .line 4286
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method private getDefaultFlashMode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4291
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v2

    if-nez v2, :cond_0

    .line 4292
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4293
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camera_flash_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4294
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

    .line 4297
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "flashMode":I
    :cond_0
    return v1
.end method

.method private getDefaultFrontFlashMode()I
    .locals 1

    .prologue
    .line 4302
    const/4 v0, 0x0

    return v0
.end method

.method private getDefaultMotionPanoramaMode()I
    .locals 1

    .prologue
    .line 4306
    const/4 v0, 0x1

    return v0
.end method

.method private getDefaultMotionWideSelfieMode()I
    .locals 1

    .prologue
    .line 4310
    const/4 v0, 0x1

    return v0
.end method

.method private getDefaultStorage()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4314
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    .line 4315
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4316
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "csc_pref_setup_storage_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4318
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    return v1
.end method

.method private getEasyCamcorderResolution()I
    .locals 1

    .prologue
    .line 4323
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4324
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4326
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

    .line 4336
    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 4342
    :cond_0
    :goto_0
    return v0

    .line 4338
    :sswitch_0
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_REAR_RT_HDR:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 4340
    :sswitch_1
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FRONT_RT_HDR:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 4336
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

    .line 4347
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4348
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v1, 0x48

    if-ne v0, v1, :cond_1

    .line 4349
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4361
    :goto_0
    return v0

    .line 4350
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    if-ne v0, v2, :cond_2

    .line 4351
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->SHOT_AND_MORE_BACK_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4353
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4356
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    if-ne v0, v2, :cond_4

    .line 4357
    const-string v0, "1920x1080"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4358
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

    .line 4359
    :cond_5
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->WIDE_SELFIE_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4361
    :cond_6
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getFrontInterval()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4366
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_1

    .line 4373
    :cond_0
    :goto_0
    return v0

    .line 4370
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontTimer()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4373
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_front_interval_key"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getKeyboardCoverCamcorderResolution()I
    .locals 1

    .prologue
    .line 4390
    const-string v0, "1440x1440"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getKeyboardCoverCameraResolution()I
    .locals 1

    .prologue
    .line 4394
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4395
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->KEYBOARD_COVER_BACK_CAMERA_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4397
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->KEYBOARD_COVER_FRONT_CAMERA_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getShootingModeResourceString(I)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 4402
    sparse-switch p1, :sswitch_data_0

    .line 4463
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCommandIdByShootingMode(I)I

    move-result v0

    .line 4464
    .local v0, "commandId":I
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isDownloadedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4465
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4468
    .end local v0    # "commandId":I
    :goto_0
    return-object v1

    .line 4404
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09008a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4407
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090093

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4410
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4412
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09008e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4415
    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4417
    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4419
    :sswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4421
    :sswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900b3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4423
    :sswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090088

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4425
    :sswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090095

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4427
    :sswitch_a
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4429
    :sswitch_b
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4431
    :sswitch_c
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09008b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4433
    :sswitch_d
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4437
    :sswitch_e
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4440
    :sswitch_f
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4442
    :sswitch_10
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4444
    :sswitch_11
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09009e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4446
    :sswitch_12
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4448
    :sswitch_13
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090083

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4450
    :sswitch_14
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090085

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4452
    :sswitch_15
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090097

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4454
    :sswitch_16
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090090

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4456
    :sswitch_17
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4458
    :sswitch_18
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09009c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4468
    .restart local v0    # "commandId":I
    :cond_0
    const-string v1, ""

    goto/16 :goto_0

    .line 4402
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
    .end sparse-switch
.end method

.method private getShootingModeString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "commandId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 4478
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v0

    .line 4480
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
    .line 4511
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-gtz v3, :cond_0

    .line 4531
    :goto_0
    monitor-exit p0

    return-void

    .line 4515
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

    .line 4516
    .local v2, "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4517
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

    .line 4518
    .local v0, "listener":Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    iget v7, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mModeid:I

    invoke-interface {v0, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(II)V

    goto :goto_2

    .line 4520
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

    .line 4511
    .end local v2    # "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 4520
    .restart local v2    # "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    :cond_1
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4521
    :try_start_5
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4522
    :try_start_6
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 4523
    .local v1, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    if-eqz v1, :cond_2

    .line 4524
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    .line 4525
    .restart local v0    # "listener":Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    iget v7, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mModeid:I

    invoke-interface {v0, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(II)V

    goto :goto_3

    .line 4528
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

    .line 4530
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
    .line 4484
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p2, v5}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;-><init>(IILcom/sec/android/app/camera/setting/CameraSettingsImpl$1;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4486
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_1

    .line 4508
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4490
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isEmptyRequestQueue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4491
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

    .line 4492
    .local v2, "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4493
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

    .line 4494
    .local v0, "listener":Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    iget v7, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mModeid:I

    invoke-interface {v0, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(II)V

    goto :goto_2

    .line 4496
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

    .line 4484
    .end local v2    # "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 4496
    .restart local v2    # "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    :cond_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4497
    :try_start_5
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4498
    :try_start_6
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 4499
    .local v1, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    if-eqz v1, :cond_3

    .line 4500
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    .line 4501
    .restart local v0    # "listener":Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    iget v7, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mModeid:I

    invoke-interface {v0, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(II)V

    goto :goto_3

    .line 4504
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

    .line 4506
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

    .line 4534
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_FOCUS:Z

    if-nez v0, :cond_6

    .line 4535
    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 4536
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4546
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    if-nez v0, :cond_1

    .line 4547
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    .line 4548
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_rear_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4549
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4552
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_REAR_RT_HDR:Z

    if-eqz v0, :cond_2

    .line 4553
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4556
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getObjectTrackingAF()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4558
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 4561
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSeparatedShootingMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4562
    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    .line 4564
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSeparatedShootingMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4565
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    .line 4568
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCameraPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4569
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateIfResolutionChanged()V

    .line 4571
    :cond_5
    return-void

    .line 4538
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFocusMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 4541
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 4542
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

    .line 4575
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_FOCUS:Z

    if-nez v0, :cond_0

    .line 4576
    new-array v0, v4, [I

    const/4 v1, 0x5

    aput v1, v0, v3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->loadFromPreferences([I)V

    .line 4579
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCamcorderResolutionFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4580
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    .line 4581
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_front_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4582
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4585
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FRONT_RT_HDR:Z

    if-eqz v0, :cond_2

    .line 4586
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4589
    :cond_2
    new-array v0, v4, [I

    const/16 v1, 0x7d

    aput v1, v0, v3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->loadFromPreferences([I)V

    .line 4591
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 4594
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSeparatedShootingMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4595
    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    .line 4597
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSeparatedShootingMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4598
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    .line 4601
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCameraPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4602
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateIfResolutionChanged()V

    .line 4604
    :cond_5
    return-void
.end method

.method private isSeparatedShootingMode(I)Z
    .locals 1
    .param p1, "shootingMode"    # I

    .prologue
    .line 4607
    const/16 v0, 0x32

    if-eq p1, v0, :cond_0

    const/16 v0, 0x46

    if-eq p1, v0, :cond_0

    const/16 v0, 0x4f

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
    .line 4611
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 4612
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

    .line 4613
    sparse-switch v0, :sswitch_data_0

    .line 4826
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

    .line 4611
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4615
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFlashMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    .line 4616
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

    .line 4617
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_1

    .line 4620
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontFlashMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    .line 4621
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

    .line 4622
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_1

    .line 4625
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 4626
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

    .line 4627
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_1

    .line 4630
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFocusMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 4631
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

    .line 4632
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4635
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraDualEffect()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    .line 4636
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

    .line 4637
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4640
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getWhiteBalance()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    .line 4641
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

    .line 4642
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4645
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getExposureValue()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 4646
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

    .line 4647
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4650
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraISO()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    .line 4651
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

    .line 4652
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4655
    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraExposureMeter()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    .line 4656
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

    .line 4657
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4660
    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getViewMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    .line 4661
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

    .line 4662
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4665
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    .line 4666
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

    .line 4667
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4670
    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGPS()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    .line 4671
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

    .line 4672
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4675
    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getReview()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    .line 4676
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

    .line 4677
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4680
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionPhoto()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    .line 4681
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

    .line 4682
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4685
    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraShutterSound()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    .line 4686
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

    .line 4687
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4690
    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStorage()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    .line 4691
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

    .line 4692
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4695
    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSelfFlip()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    .line 4696
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

    .line 4697
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4700
    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    .line 4701
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

    .line 4702
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4705
    :sswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderAntiShake()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    .line 4706
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

    .line 4707
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4710
    :sswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraVoiceCommand()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    .line 4711
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

    .line 4712
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4715
    :sswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGuideline()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    .line 4716
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

    .line 4717
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4720
    :sswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getObjectTrackingAF()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    .line 4721
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

    .line 4722
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4725
    :sswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSaveRichTone()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    .line 4726
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

    .line 4727
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4730
    :sswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGestureControlMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    .line 4731
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

    .line 4732
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4735
    :sswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVolumeKeyAs()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    .line 4736
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

    .line 4737
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4740
    :sswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAutoNightDetectionMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    .line 4741
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

    .line 4742
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4745
    :sswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBeautyLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    .line 4746
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

    .line 4747
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4750
    :sswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSlimFaceLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    .line 4751
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

    .line 4752
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4755
    :sswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEyeEnlargeLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    .line 4756
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

    .line 4757
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4760
    :sswitch_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackBeautyLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    .line 4761
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

    .line 4762
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4765
    :sswitch_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAntiFogLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    .line 4766
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

    .line 4767
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4770
    :sswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    .line 4771
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

    .line 4772
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4775
    :sswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    .line 4776
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

    .line 4777
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4780
    :sswitch_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    .line 4781
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

    .line 4782
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4785
    :sswitch_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageRecordingTime()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    .line 4786
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

    .line 4787
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4790
    :sswitch_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getPictureFormat()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    .line 4791
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

    .line 4792
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4795
    :sswitch_24
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionPanoramaMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    .line 4796
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

    .line 4797
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4800
    :sswitch_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionWideSelfieMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    .line 4801
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

    .line 4802
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4805
    :sswitch_26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getColorTune()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    .line 4806
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

    .line 4807
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4810
    :sswitch_27
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQRCodeDetection()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    .line 4811
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

    .line 4812
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4815
    :sswitch_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFoodBlurType()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    .line 4816
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

    .line 4817
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4820
    :sswitch_29
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFloatingCameraButton()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    .line 4821
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

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4822
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4830
    .end local v0    # "index":I
    :cond_0
    return-void

    .line 4613
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_1f
        0x7 -> :sswitch_6
        0x9 -> :sswitch_5
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0xc -> :sswitch_a
        0xe -> :sswitch_26
        0x11 -> :sswitch_c
        0x13 -> :sswitch_14
        0x14 -> :sswitch_b
        0x15 -> :sswitch_e
        0x16 -> :sswitch_f
        0x17 -> :sswitch_15
        0x22 -> :sswitch_16
        0x26 -> :sswitch_10
        0x2a -> :sswitch_d
        0x47 -> :sswitch_13
        0x49 -> :sswitch_18
        0x57 -> :sswitch_19
        0x5a -> :sswitch_4
        0x6d -> :sswitch_1a
        0x6e -> :sswitch_1b
        0x70 -> :sswitch_1c
        0x75 -> :sswitch_1e
        0x7d -> :sswitch_17
        0x7f -> :sswitch_20
        0x83 -> :sswitch_21
        0x84 -> :sswitch_22
        0x87 -> :sswitch_24
        0x8d -> :sswitch_28
        0xaa -> :sswitch_1
        0xad -> :sswitch_25
        0xb4 -> :sswitch_1d
        0xb5 -> :sswitch_29
        0x138 -> :sswitch_9
        0x13b -> :sswitch_23
        0x13c -> :sswitch_27
        0xbb9 -> :sswitch_11
        0xbbf -> :sswitch_12
    .end sparse-switch
.end method

.method private notifyCameraSettingChanged(II)V
    .locals 3
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I

    .prologue
    .line 4833
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mNotificationHandler:Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mNotificationHandler:Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4834
    return-void
.end method

.method private notifyCameraSettingChanged(IIZ)V
    .locals 0
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I
    .param p3, "syncmode"    # Z

    .prologue
    .line 4837
    if-eqz p3, :cond_0

    .line 4838
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->handleNotification(II)V

    .line 4842
    :goto_0
    return-void

    .line 4840
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method private resetCameraGlobalSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4845
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraShutterSound(I)V

    .line 4846
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VOLUME_KEY_AS:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setVolumeKeyAs(I)V

    .line 4847
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraShutterSound(I)V

    .line 4848
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_REAR_CAMERA_HDR:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraHDR(I)V

    .line 4849
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setRearLensDistortionCorrection(I)V

    .line 4850
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setObjectTrackingAF(I)V

    .line 4851
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setGuideline(I)V

    .line 4852
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setReview(I)V

    .line 4853
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setTimer(I)V

    .line 4854
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setInterval(I)V

    .line 4855
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setGestureControlMode(I)V

    .line 4856
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultAutoNightDetectionMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setAutoNightDetectionMode(I)V

    .line 4857
    const/16 v0, 0x57

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    invoke-direct {p0, v0, v1, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 4858
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setSaveRichTone(I)V

    .line 4859
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraVoiceCommand(I)V

    .line 4860
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VIEW_MODE:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setViewMode(I)V

    .line 4861
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setVideoCollageType(IZ)V

    .line 4862
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setVideoCollageRecordingTime(I)V

    .line 4863
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setPictureFormat(I)V

    .line 4864
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setQRCodeDetection(I)V

    .line 4865
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setHRMShutter(I)V

    .line 4866
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFoodBlurType(I)V

    .line 4867
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraDualEffect(I)V

    .line 4868
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraEffect(I)V

    .line 4869
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setStickerId(I)V

    .line 4870
    const/16 v0, 0x1e78

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setEffectCategory(I)V

    .line 4871
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setStickerSoundMute(I)V

    .line 4872
    return-void
.end method

.method private resetCameraLocalSettings(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4876
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 4878
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_SELF_FLIP:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setSelfFlip(I)V

    .line 4879
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolution(I)Z

    .line 4880
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCamcorderResolution(I)Z

    .line 4882
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setZoomValue(I)V

    .line 4883
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFlashMode(I)V

    .line 4884
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFrontFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFrontFlashMode(I)V

    .line 4885
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setExposureValue(I)V

    .line 4886
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setTimer(I)V

    .line 4887
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setWhiteBalance(I)V

    .line 4888
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraISO(I)V

    .line 4889
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraExposureMeter(I)V

    .line 4890
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCamcorderAudioRecording(I)V

    .line 4891
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderAntishake()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCamcorderAntiShake(I)V

    .line 4892
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setMotionPhoto(I)V

    .line 4893
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setBeautyLevel(I)V

    .line 4894
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SLIMFACE:Z

    if-eqz v0, :cond_0

    .line 4895
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setSlimFaceLevel(I)V

    .line 4897
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_EYEENLARGE:Z

    if-eqz v0, :cond_1

    .line 4898
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setEyeEnlargeLevel(I)V

    .line 4900
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraVoiceCommand(I)V

    .line 4902
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    .line 4903
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    .line 4904
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    .line 4905
    return-void
.end method

.method private resetCommonGlobalSettings()V
    .locals 2

    .prologue
    .line 4908
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_DisableGPSMenu"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4909
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setGPS(I)V

    .line 4911
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultStorage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setStorage(I)V

    .line 4912
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isExternalSDStorageMounted()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateStorage(Z)V

    .line 4913
    return-void
.end method

.method private resetEffectLevelSettingValue()V
    .locals 2

    .prologue
    .line 4916
    const-string v0, "CameraSettings"

    const-string v1, "resetEffectLevelSettingValue"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4917
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setEffectStrengthLevel(I)V

    .line 4918
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setEffectVignetteLevel(I)V

    .line 4919
    return-void
.end method

.method private setBackInterval(I)V
    .locals 4
    .param p1, "interval"    # I

    .prologue
    const/16 v3, 0x7f

    .line 4216
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackInterval()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    .line 4218
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    if-eq v0, p1, :cond_0

    .line 4219
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackInterval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4220
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    .line 4221
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_interval_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4223
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 4224
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4226
    :cond_0
    return-void
.end method

.method private setCameraFacing(I)V
    .locals 3
    .param p1, "cameraFacing"    # I

    .prologue
    .line 540
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 541
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

    .line 547
    :goto_0
    return-void

    .line 544
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

    .line 546
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

    .line 4922
    sparse-switch p1, :sswitch_data_0

    .line 4982
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 4985
    :goto_0
    return-void

    .line 4924
    :sswitch_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-eqz v0, :cond_1

    .line 4925
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-eqz v0, :cond_0

    .line 4926
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4928
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4930
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-eqz v0, :cond_2

    .line 4931
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4933
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4937
    :sswitch_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SOUND_AND_SHOT:Z

    if-eqz v0, :cond_4

    .line 4938
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SOUND_AND_SHOT:Z

    if-eqz v0, :cond_3

    .line 4939
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4941
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4943
    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SOUND_AND_SHOT:Z

    if-eqz v0, :cond_5

    .line 4944
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4946
    :cond_5
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4950
    :sswitch_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v0, :cond_7

    .line 4951
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v0, :cond_6

    .line 4952
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4954
    :cond_6
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4956
    :cond_7
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v0, :cond_8

    .line 4957
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4959
    :cond_8
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4963
    :sswitch_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v0, :cond_a

    .line 4964
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v0, :cond_9

    .line 4965
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4967
    :cond_9
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4969
    :cond_a
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v0, :cond_b

    .line 4970
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4972
    :cond_b
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4979
    :sswitch_4
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4922
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
    .line 4988
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

    .line 4990
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 4991
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_front_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4997
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 4992
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 4993
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_rear_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 4995
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
    .line 5002
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->initializeDefaultFrontCameraShootingModeOrderList()V

    .line 5004
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 5006
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

    .line 5007
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

    .line 5010
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

    .line 5011
    return-void
.end method

.method private setFrontInterval(I)V
    .locals 4
    .param p1, "interval"    # I

    .prologue
    const/16 v3, 0x7f

    .line 4377
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontInterval()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    .line 4379
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    if-eq v0, p1, :cond_0

    .line 4380
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrontInterval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4381
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    .line 4382
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_interval_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4384
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 4385
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4387
    :cond_0
    return-void
.end method

.method private setManualExposureMeter(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5014
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureMeter:I

    .line 5015
    return-void
.end method

.method private setManualExposureValue(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5018
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    .line 5019
    return-void
.end method

.method private setManualFocusLength(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5022
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualFocusLength:I

    .line 5023
    return-void
.end method

.method private setManualISO(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5026
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualISO:I

    .line 5027
    return-void
.end method

.method private setManualMultiAF(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5030
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    .line 5031
    return-void
.end method

.method private setManualShutterSpeed(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5034
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    .line 5035
    return-void
.end method

.method private setManualWhiteBalance(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5038
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    .line 5039
    return-void
.end method

.method private updateDualCameraSetting(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 5043
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_DUALCAMERA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    .line 5068
    :cond_0
    :goto_0
    return-void

    .line 5046
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

    .line 5048
    const-string v0, "pref_camera_rear_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_camera_dual_rear_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5049
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5050
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

    .line 5053
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5054
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_rear_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5056
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5057
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_rear_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 5059
    :cond_5
    const-string v0, "pref_camera_front_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_camera_dual_front_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5060
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5061
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

    .line 5064
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5065
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
    .line 250
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetListeners()V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 252
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public getAntiFogLevel()I
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 261
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    .line 264
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
    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getAttachVideoFixedResolution()I

    move-result v0

    return v0
.end method

.method public getAutoFilterPinSelected()Z
    .locals 1

    .prologue
    .line 2602
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoFilterPinSelected:Z

    return v0
.end method

.method public getAutoNightDetectionMode()I
    .locals 3

    .prologue
    .line 287
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_NIGHT_DETECTION:Z

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x0

    .line 290
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

    .line 307
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 310
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
    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDefaultBackCameraShootingModeOrder()V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

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

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    .line 334
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

.method protected getBackTimer()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4163
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    .line 4166
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

.method public getBeautyLevel()I
    .locals 3

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v0, :cond_1

    .line 352
    :cond_0
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    .line 354
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
    .line 371
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
    .line 388
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCallStatus:I

    return v0
.end method

.method public getCamcorderAntiShake()I
    .locals 3

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderAntishake()I

    move-result v0

    .line 399
    :goto_0
    return v0

    .line 396
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_FRONT_ANTISHAKE:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    const/4 v0, 0x0

    goto :goto_0

    .line 399
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
    .line 422
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAudioRecording:I

    return v0
.end method

.method public getCamcorderResolution()I
    .locals 3

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_overridden_camcorder_resolution"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 453
    :goto_0
    return v0

    .line 439
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_1

    .line 440
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCoverCamcorderResolution()I

    move-result v0

    goto :goto_0

    .line 441
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    if-eqz v0, :cond_2

    .line 442
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getKeyboardCoverCamcorderResolution()I

    move-result v0

    goto :goto_0

    .line 443
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_3

    .line 444
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEasyCamcorderResolution()I

    move-result v0

    goto :goto_0

    .line 445
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->isAttachVideoFixedResolution()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getAttachVideoFixedResolution()I

    move-result v0

    goto :goto_0

    .line 448
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_rear_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 450
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 451
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_dual_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 453
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_front_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_0
.end method

.method public getCamcorderResolution(I)I
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 460
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_rear_resolution_key"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 465
    :goto_0
    return v0

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_dual_resolution_key"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 465
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_front_resolution_key"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCamcorderVideoDurationInMS()I
    .locals 1

    .prologue
    .line 471
    const/4 v0, -0x1

    return v0
.end method

.method public getCameraDualEffect()I
    .locals 3

    .prologue
    const/16 v2, 0x30

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_dual_effect"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraDualEffect(I)V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_dual_effect"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraExposureMeter()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 506
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_1

    .line 513
    :cond_0
    :goto_0
    return v0

    .line 510
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureMeter:I

    if-eqz v1, :cond_0

    .line 513
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
    .line 536
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    return v0
.end method

.method public getCameraFocusMode()I
    .locals 3

    .prologue
    .line 551
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 552
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    .line 560
    :goto_0
    return v0

    .line 554
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v0, :cond_2

    .line 555
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    const/4 v0, 0x0

    goto :goto_0

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 560
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    goto :goto_0
.end method

.method public getCameraHDR()I
    .locals 3

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_0

    .line 566
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEasyCameraHDR()I

    move-result v0

    .line 572
    :goto_0
    return v0

    .line 569
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_hdr_key"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_CAMERA_HDR:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_rear_hdr_key"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_REAR_CAMERA_HDR:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraISO()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 599
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualISO:I

    if-nez v1, :cond_0

    .line 602
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
    .line 624
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    return v0
.end method

.method public getCameraQuality()I
    .locals 1

    .prologue
    .line 659
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQuality:I

    return v0
.end method

.method public getCameraResolution()I
    .locals 3

    .prologue
    .line 674
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-eqz v0, :cond_0

    .line 675
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 688
    :goto_0
    return v0

    .line 676
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    if-eqz v0, :cond_1

    .line 677
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getKeyboardCoverCameraResolution()I

    move-result v0

    goto :goto_0

    .line 678
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_2

    .line 679
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEasyCameraResolution()I

    move-result v0

    goto :goto_0

    .line 681
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 682
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

    .line 683
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 684
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

    .line 685
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 686
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

    .line 688
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

.method public getCameraResolution(I)I
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 695
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_rear_resolution_key"

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 702
    :goto_0
    return v0

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_resolution_key"

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 700
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_rear_resolution_key"

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 702
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
    .line 708
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraResolutionChanged:Z

    return v0
.end method

.method public getCameraResolutionForDual()I
    .locals 3

    .prologue
    .line 718
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_NORMAL_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 720
    .local v0, "resolutionID":I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 721
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 722
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_WIDE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 740
    :cond_0
    :goto_0
    return v0

    .line 723
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 724
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_WIDE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 726
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 727
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 728
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_SQUARE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 729
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 730
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_SQUARE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 733
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 734
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_NORMAL_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 735
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 736
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_NORMAL_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraShutterSound()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 745
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getForcedShutterSound()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 748
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
    .line 771
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isEffectSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 772
    const/4 v0, 0x0

    .line 774
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFilterEffect:I

    goto :goto_0
.end method

.method public getCameraVoiceCommand()I
    .locals 3

    .prologue
    .line 779
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
    .line 813
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
    .line 829
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCommandIdByShootingMode(I)I

    move-result v0

    return v0
.end method

.method public getCommandIdByShootingMode(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 834
    const/4 v0, 0x0

    .line 836
    .local v0, "commandId":I
    packed-switch p1, :pswitch_data_0

    .line 942
    :goto_0
    :pswitch_0
    return v0

    .line 838
    :pswitch_1
    const/16 v0, 0x12c

    .line 839
    goto :goto_0

    .line 841
    :pswitch_2
    const/16 v0, 0x13d

    .line 842
    goto :goto_0

    .line 844
    :pswitch_3
    const/16 v0, 0x12d

    .line 845
    goto :goto_0

    .line 847
    :pswitch_4
    const/16 v0, 0x133

    .line 848
    goto :goto_0

    .line 850
    :pswitch_5
    const/16 v0, 0x12e

    .line 851
    goto :goto_0

    .line 853
    :pswitch_6
    const/16 v0, 0x162

    .line 854
    goto :goto_0

    .line 856
    :pswitch_7
    const/16 v0, 0x150

    .line 857
    goto :goto_0

    .line 859
    :pswitch_8
    const/16 v0, 0x152

    .line 860
    goto :goto_0

    .line 862
    :pswitch_9
    const/16 v0, 0x149

    .line 863
    goto :goto_0

    .line 865
    :pswitch_a
    const/16 v0, 0x151

    .line 866
    goto :goto_0

    .line 868
    :pswitch_b
    const/16 v0, 0x13f

    .line 869
    goto :goto_0

    .line 871
    :pswitch_c
    const/16 v0, 0x14d

    .line 872
    goto :goto_0

    .line 874
    :pswitch_d
    const/16 v0, 0x14e

    .line 875
    goto :goto_0

    .line 877
    :pswitch_e
    const/16 v0, 0x14f

    .line 878
    goto :goto_0

    .line 880
    :pswitch_f
    const/16 v0, 0x13a

    .line 881
    goto :goto_0

    .line 883
    :pswitch_10
    const/16 v0, 0x157

    .line 884
    goto :goto_0

    .line 886
    :pswitch_11
    const/16 v0, 0x154

    .line 887
    goto :goto_0

    .line 889
    :pswitch_12
    const/16 v0, 0x156

    .line 890
    goto :goto_0

    .line 892
    :pswitch_13
    const/16 v0, 0x166

    .line 893
    goto :goto_0

    .line 895
    :pswitch_14
    const/16 v0, 0x167

    .line 896
    goto :goto_0

    .line 898
    :pswitch_15
    const/16 v0, 0x158

    .line 899
    goto :goto_0

    .line 901
    :pswitch_16
    const/16 v0, 0x164

    .line 902
    goto :goto_0

    .line 904
    :pswitch_17
    const/16 v0, 0x15a

    .line 905
    goto :goto_0

    .line 907
    :pswitch_18
    const/16 v0, 0x15b

    .line 908
    goto :goto_0

    .line 910
    :pswitch_19
    const/16 v0, 0x15c

    .line 911
    goto :goto_0

    .line 913
    :pswitch_1a
    const/16 v0, 0x15d

    .line 914
    goto :goto_0

    .line 916
    :pswitch_1b
    const/16 v0, 0x15e

    .line 917
    goto :goto_0

    .line 919
    :pswitch_1c
    const/16 v0, 0x161

    .line 920
    goto :goto_0

    .line 922
    :pswitch_1d
    const/16 v0, 0x15f

    .line 923
    goto :goto_0

    .line 925
    :pswitch_1e
    const/16 v0, 0x160

    .line 926
    goto :goto_0

    .line 928
    :pswitch_1f
    const/16 v0, 0x163

    .line 929
    goto :goto_0

    .line 931
    :pswitch_20
    const/16 v0, 0x155

    .line 932
    goto :goto_0

    .line 934
    :pswitch_21
    const/16 v0, 0x165

    .line 935
    goto :goto_0

    .line 937
    :pswitch_22
    const/16 v0, 0x168

    goto :goto_0

    .line 836
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
    .line 947
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
    .line 952
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDefaultBeautyLevel()I
    .locals 1

    .prologue
    .line 957
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    return v0
.end method

.method public getDefaultCamcorderResolution(I)I
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 962
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 963
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_0

    .line 964
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 965
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 966
    const-string v1, "csc_pref_camcorder_resolution_key"

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 973
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :goto_0
    return v1

    .line 969
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 970
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 971
    :cond_2
    const-string v1, "1920x1080"

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 973
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
    .line 979
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDefaultQuickLaunch()I
    .locals 3

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 984
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_HOME_KEY:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_POWER_KEY:Z

    if-eqz v2, :cond_2

    .line 985
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isSoftwareNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 993
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 988
    goto :goto_0

    .line 990
    :cond_2
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_HOME_KEY:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_POWER_KEY:Z

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 993
    goto :goto_0
.end method

.method public getDefaultShootingModeByCurrentCameraId()I
    .locals 1

    .prologue
    .line 999
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    .line 1002
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEffectCategory()I
    .locals 1

    .prologue
    .line 1008
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEffectCategory:I

    return v0
.end method

.method public getEffectNameForLogging(I)Ljava/lang/String;
    .locals 1
    .param p1, "effectId"    # I

    .prologue
    .line 1033
    if-nez p1, :cond_0

    .line 1034
    const-string v0, "None"

    .line 1051
    :goto_0
    return-object v0

    .line 1036
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_4

    .line 1037
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1038
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1041
    :cond_1
    const-string v0, "None"

    goto :goto_0

    .line 1044
    :cond_2
    invoke-static {p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isValidExternalId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1045
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1047
    :cond_3
    const-string v0, "None"

    goto :goto_0

    .line 1051
    :cond_4
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraParameters;->getEffectString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEffectProcessorMode()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1058
    const/4 v0, 0x0

    .line 1060
    .local v0, "mode":I
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1061
    const/4 v0, 0x1

    .line 1064
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    sparse-switch v1, :sswitch_data_0

    .line 1130
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isSwitchToCamcorderPreview()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderEffectAvailableFeature(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1131
    const/4 v0, 0x0

    .line 1134
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_3

    .line 1136
    const/4 v0, 0x0

    .line 1139
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

    .line 1141
    return v0

    .line 1067
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1068
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isStickerMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1069
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStickerType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1071
    :pswitch_0
    const/4 v0, 0x6

    .line 1072
    goto :goto_0

    .line 1074
    :pswitch_1
    const/4 v0, 0x7

    .line 1075
    goto :goto_0

    .line 1077
    :pswitch_2
    const/16 v0, 0x8

    .line 1078
    goto :goto_0

    .line 1086
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1087
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isStickerMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1088
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStickerType()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1090
    :pswitch_3
    const/4 v0, 0x6

    .line 1091
    goto :goto_0

    .line 1093
    :pswitch_4
    const/4 v0, 0x7

    .line 1094
    goto :goto_0

    .line 1096
    :pswitch_5
    const/16 v0, 0x8

    .line 1097
    goto :goto_0

    .line 1101
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShapeCorrection()I

    move-result v1

    if-eq v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSpotlightLevel()I

    move-result v1

    if-lez v1, :cond_1

    .line 1102
    :cond_5
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 1107
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getColorTune()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1108
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

    .line 1109
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 1113
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v1

    if-eq v1, v2, :cond_6

    .line 1114
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    .line 1115
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    .line 1116
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 1118
    :cond_6
    const/4 v0, 0x0

    .line 1120
    goto/16 :goto_0

    .line 1122
    :sswitch_4
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOOD_ADDED_LENS:Z

    if-eqz v1, :cond_1

    .line 1123
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 1064
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_0
        0x37 -> :sswitch_1
        0x3b -> :sswitch_2
        0x44 -> :sswitch_4
        0x45 -> :sswitch_3
    .end sparse-switch

    .line 1069
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1088
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getEffectStrengthLevel()I
    .locals 1

    .prologue
    .line 1146
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFilterEffectStrengthLevel:I

    return v0
.end method

.method public getEffectVignetteLevel()I
    .locals 1

    .prologue
    .line 1158
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFilterEffectVignetteLevel:I

    return v0
.end method

.method public getExposureValue()I
    .locals 3

    .prologue
    .line 1169
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    if-nez v0, :cond_0

    .line 1170
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 1172
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

    .line 1194
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 1197
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
    .line 1214
    const/4 v0, 0x0

    .line 1215
    .local v0, "featureId":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 1414
    :goto_0
    return-object v0

    .line 1217
    :sswitch_0
    const-string v0, "0020"

    .line 1218
    goto :goto_0

    .line 1221
    :sswitch_1
    const-string v0, "0040"

    .line 1222
    goto :goto_0

    .line 1224
    :sswitch_2
    const-string v0, "G008"

    .line 1225
    goto :goto_0

    .line 1227
    :sswitch_3
    const-string v0, "Z007"

    .line 1228
    goto :goto_0

    .line 1230
    :sswitch_4
    const-string v0, "Z010"

    .line 1231
    goto :goto_0

    .line 1233
    :sswitch_5
    const-string v0, "Z092"

    .line 1234
    goto :goto_0

    .line 1236
    :sswitch_6
    const-string v0, "Z012"

    .line 1237
    goto :goto_0

    .line 1239
    :sswitch_7
    const-string v0, "Z013"

    .line 1240
    goto :goto_0

    .line 1242
    :sswitch_8
    const-string v0, "Z014"

    .line 1243
    goto :goto_0

    .line 1245
    :sswitch_9
    const-string v0, "Z015"

    .line 1246
    goto :goto_0

    .line 1248
    :sswitch_a
    if-eqz p2, :cond_0

    .line 1249
    const-string v0, "Z018"

    goto :goto_0

    .line 1251
    :cond_0
    const-string v0, "Z017"

    .line 1253
    goto :goto_0

    .line 1255
    :sswitch_b
    if-eqz p2, :cond_1

    .line 1256
    const-string v0, "Z020"

    goto :goto_0

    .line 1258
    :cond_1
    const-string v0, "Z019"

    .line 1260
    goto :goto_0

    .line 1262
    :sswitch_c
    const-string v0, "Z022"

    .line 1263
    goto :goto_0

    .line 1265
    :sswitch_d
    const-string v0, "Z023"

    .line 1266
    goto :goto_0

    .line 1268
    :sswitch_e
    const-string v0, "Z024"

    .line 1269
    goto :goto_0

    .line 1271
    :sswitch_f
    const-string v0, "Z025"

    .line 1272
    goto :goto_0

    .line 1274
    :sswitch_10
    const-string v0, "Z083"

    .line 1275
    goto :goto_0

    .line 1277
    :sswitch_11
    const-string v0, "Z053"

    .line 1278
    goto :goto_0

    .line 1280
    :sswitch_12
    const-string v0, "Z054"

    .line 1281
    goto :goto_0

    .line 1283
    :sswitch_13
    const-string v0, "Z055"

    .line 1284
    goto :goto_0

    .line 1286
    :sswitch_14
    const-string v0, "Z056"

    .line 1287
    goto :goto_0

    .line 1289
    :sswitch_15
    const-string v0, "Z057"

    .line 1290
    goto :goto_0

    .line 1292
    :sswitch_16
    const-string v0, "Z058"

    .line 1293
    goto :goto_0

    .line 1295
    :sswitch_17
    const-string v0, "Z061"

    .line 1296
    goto :goto_0

    .line 1298
    :sswitch_18
    const-string v0, "Z104"

    .line 1299
    goto :goto_0

    .line 1301
    :sswitch_19
    const-string v0, "Z116"

    .line 1302
    goto :goto_0

    .line 1304
    :sswitch_1a
    const-string v0, "Z105"

    .line 1305
    goto :goto_0

    .line 1307
    :sswitch_1b
    const-string v0, "Z142"

    .line 1308
    goto :goto_0

    .line 1310
    :sswitch_1c
    const-string v0, "Z084"

    .line 1311
    goto :goto_0

    .line 1313
    :sswitch_1d
    const-string v0, "Z085"

    .line 1314
    goto :goto_0

    .line 1316
    :sswitch_1e
    const-string v0, "Z088"

    .line 1317
    goto :goto_0

    .line 1319
    :sswitch_1f
    const-string v0, "G007"

    .line 1320
    goto :goto_0

    .line 1322
    :sswitch_20
    const-string v0, "0013"

    .line 1323
    goto :goto_0

    .line 1325
    :sswitch_21
    const-string v0, "0037"

    .line 1326
    goto :goto_0

    .line 1328
    :sswitch_22
    const-string v0, "Z009"

    .line 1329
    goto :goto_0

    .line 1331
    :sswitch_23
    const-string v0, "Z034"

    .line 1332
    goto :goto_0

    .line 1334
    :sswitch_24
    const-string v0, "Z008"

    .line 1335
    goto :goto_0

    .line 1337
    :sswitch_25
    const-string v0, "0042"

    .line 1338
    goto :goto_0

    .line 1340
    :sswitch_26
    const-string v0, "Z134"

    .line 1341
    goto :goto_0

    .line 1343
    :sswitch_27
    const-string v0, "Z121"

    .line 1344
    goto/16 :goto_0

    .line 1346
    :sswitch_28
    const-string v0, "Z122"

    .line 1347
    goto/16 :goto_0

    .line 1349
    :sswitch_29
    const-string v0, "Z123"

    .line 1350
    goto/16 :goto_0

    .line 1352
    :sswitch_2a
    const-string v0, "Z124"

    .line 1353
    goto/16 :goto_0

    .line 1355
    :sswitch_2b
    const-string v0, "Z125"

    .line 1356
    goto/16 :goto_0

    .line 1358
    :sswitch_2c
    const-string v0, "Z126"

    .line 1359
    goto/16 :goto_0

    .line 1361
    :sswitch_2d
    const-string v0, "Z127"

    .line 1362
    goto/16 :goto_0

    .line 1364
    :sswitch_2e
    const-string v0, "Z128"

    .line 1365
    goto/16 :goto_0

    .line 1367
    :sswitch_2f
    const-string v0, "Z129"

    .line 1368
    goto/16 :goto_0

    .line 1370
    :sswitch_30
    const-string v0, "Z080"

    .line 1371
    goto/16 :goto_0

    .line 1373
    :sswitch_31
    const-string v0, "Z077"

    .line 1374
    goto/16 :goto_0

    .line 1376
    :sswitch_32
    const-string v0, "Z078"

    .line 1377
    goto/16 :goto_0

    .line 1379
    :sswitch_33
    const-string v0, "Z079"

    .line 1380
    goto/16 :goto_0

    .line 1382
    :sswitch_34
    const-string v0, "Z076"

    .line 1383
    goto/16 :goto_0

    .line 1385
    :sswitch_35
    const-string v0, "G004"

    .line 1386
    goto/16 :goto_0

    .line 1388
    :sswitch_36
    const-string v0, "Z132"

    .line 1389
    goto/16 :goto_0

    .line 1391
    :sswitch_37
    const-string v0, "Z144"

    .line 1392
    goto/16 :goto_0

    .line 1394
    :sswitch_38
    const-string v0, "G009"

    .line 1395
    goto/16 :goto_0

    .line 1397
    :sswitch_39
    const-string v0, "G002"

    .line 1398
    goto/16 :goto_0

    .line 1400
    :sswitch_3a
    const-string v0, "G006"

    .line 1401
    goto/16 :goto_0

    .line 1403
    :sswitch_3b
    const-string v0, "G019"

    .line 1404
    goto/16 :goto_0

    .line 1406
    :sswitch_3c
    const-string v0, "G020"

    .line 1407
    goto/16 :goto_0

    .line 1409
    :sswitch_3d
    const-string v0, "G021"

    .line 1410
    goto/16 :goto_0

    .line 1215
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
    .line 1419
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
    .line 1441
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

    .line 1457
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualFocusLength:I

    if-nez v1, :cond_0

    .line 1460
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
    .line 1483
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFontScale:F

    return v0
.end method

.method public getFoodBlurType()I
    .locals 1

    .prologue
    .line 1496
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    return v0
.end method

.method public getFoodColorTuneValue()I
    .locals 3

    .prologue
    const/4 v0, 0x4

    .line 1510
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 1513
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

    .line 1530
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_3

    .line 1531
    const/4 v1, 0x0

    .line 1532
    .local v1, "forcedShutterSound":I
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1533
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1534
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 1535
    const-string v3, "csc_pref_camera_forced_shuttersound_key"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1542
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
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

    .line 1545
    .end local v1    # "forcedShutterSound":I
    :goto_1
    return v1

    .line 1538
    .restart local v1    # "forcedShutterSound":I
    :cond_1
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->COUNTRY_JAPAN:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->COUNTRY_KOREA:Z

    if-eqz v2, :cond_0

    .line 1539
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .end local v1    # "forcedShutterSound":I
    :cond_3
    move v1, v2

    .line 1545
    goto :goto_1
.end method

.method public getFrontCameraShootingModeOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 1553
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDefaultFrontCameraShootingModeOrder()V

    .line 1555
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 1556
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1557
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 1559
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

    .line 1576
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-eqz v1, :cond_1

    .line 1577
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    .line 1583
    :cond_0
    :goto_0
    return v0

    .line 1578
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-nez v1, :cond_0

    .line 1580
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v1, :cond_0

    .line 1581
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

.method protected getFrontTimer()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4184
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    .line 4188
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_front_timer_key"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getGPS()I
    .locals 3

    .prologue
    .line 1605
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
    .line 1620
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

    .line 1637
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    .line 1640
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
    .line 1659
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
    .line 1673
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1674
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    .line 1676
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultShootingModeByCurrentCameraId()I

    move-result v0

    goto :goto_0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 1681
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1682
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackInterval()I

    move-result v0

    .line 1684
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontInterval()I

    move-result v0

    goto :goto_0
.end method

.method public getInterval(I)I
    .locals 1
    .param p1, "cameraid"    # I

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1700
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackInterval()I

    move-result v0

    .line 1702
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontInterval()I

    move-result v0

    goto :goto_0
.end method

.method public getKelvinValue()I
    .locals 3

    .prologue
    .line 1708
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
    .line 1725
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mLowBattery:Z

    return v0
.end method

.method public getMotionPanoramaMode()I
    .locals 3

    .prologue
    .line 1735
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

    .line 1751
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    .line 1757
    :goto_0
    return v0

    .line 1754
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

    .line 1755
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
    .line 1775
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
    .line 1791
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    if-nez v0, :cond_0

    .line 1792
    const/4 v0, 0x0

    .line 1794
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
    .line 1816
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiWindowMode:I

    return v0
.end method

.method public getObjectTrackingAF()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1829
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    .line 1832
    :goto_0
    return v0

    :cond_0
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

    .line 1853
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 1856
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
    .line 1873
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

.method public getQuickLaunchType()I
    .locals 3

    .prologue
    .line 1888
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1889
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1890
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 1891
    const-string v1, "double_tab_launch"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultQuickLaunch()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1895
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :goto_0
    return v1

    .line 1893
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultQuickLaunch()I

    move-result v1

    goto :goto_0

    .line 1895
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getRandomStickerId()I
    .locals 1

    .prologue
    .line 1901
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerRandomId:I

    return v0
.end method

.method public getRearLensDistortionCorrection()I
    .locals 3

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_rear_lens_distortion_correction_key"

    const/4 v2, 0x0

    .line 1907
    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    .line 1906
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public getRecordingMotionSpeed()I
    .locals 3

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_recording_motion_speed_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getReview()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1939
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 1942
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
    .line 1961
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
    .line 1977
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_0

    .line 1978
    const/4 v0, 0x0

    .line 1980
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_self_flip_key"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_SELF_FLIP:I

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

.method public getSeparatedShootingModeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingLandingState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingLandingState:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingValue(I)I
    .locals 1
    .param p1, "menuId"    # I

    .prologue
    .line 2012
    sparse-switch p1, :sswitch_data_0

    .line 2142
    const/16 v0, 0x7fff

    :goto_0
    return v0

    .line 2014
    :sswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    goto :goto_0

    .line 2016
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFlashMode()I

    move-result v0

    goto :goto_0

    .line 2018
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontFlashMode()I

    move-result v0

    goto :goto_0

    .line 2020
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v0

    goto :goto_0

    .line 2022
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFocusMode()I

    move-result v0

    goto :goto_0

    .line 2024
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer()I

    move-result v0

    goto :goto_0

    .line 2026
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getExposureValue()I

    move-result v0

    goto :goto_0

    .line 2028
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraSingleEffect()I

    move-result v0

    goto :goto_0

    .line 2030
    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraDualEffect()I

    move-result v0

    goto :goto_0

    .line 2032
    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getWhiteBalance()I

    move-result v0

    goto :goto_0

    .line 2034
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraISO()I

    move-result v0

    goto :goto_0

    .line 2036
    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShutterSpeed()I

    move-result v0

    goto :goto_0

    .line 2038
    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFocusLength()I

    move-result v0

    goto :goto_0

    .line 2040
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraExposureMeter()I

    move-result v0

    goto :goto_0

    .line 2042
    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getViewMode()I

    move-result v0

    goto :goto_0

    .line 2044
    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v0

    goto :goto_0

    .line 2046
    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraQuality()I

    move-result v0

    goto :goto_0

    .line 2048
    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getZoomValue()I

    move-result v0

    goto :goto_0

    .line 2050
    :sswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGuideline()I

    move-result v0

    goto :goto_0

    .line 2052
    :sswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getObjectTrackingAF()I

    move-result v0

    goto :goto_0

    .line 2054
    :sswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGPS()I

    move-result v0

    goto :goto_0

    .line 2056
    :sswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getReview()I

    move-result v0

    goto :goto_0

    .line 2058
    :sswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionPhoto()I

    move-result v0

    goto :goto_0

    .line 2060
    :sswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSelfFlip()I

    move-result v0

    goto :goto_0

    .line 2062
    :sswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraShutterSound()I

    move-result v0

    goto :goto_0

    .line 2064
    :sswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStorage()I

    move-result v0

    goto :goto_0

    .line 2066
    :sswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    goto/16 :goto_0

    .line 2068
    :sswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    goto/16 :goto_0

    .line 2070
    :sswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderAntiShake()I

    move-result v0

    goto/16 :goto_0

    .line 2072
    :sswitch_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderAudioRecording()I

    move-result v0

    goto/16 :goto_0

    .line 2074
    :sswitch_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraVoiceCommand()I

    move-result v0

    goto/16 :goto_0

    .line 2076
    :sswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSaveRichTone()I

    move-result v0

    goto/16 :goto_0

    .line 2078
    :sswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVolumeKeyAs()I

    move-result v0

    goto/16 :goto_0

    .line 2080
    :sswitch_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSoundAndShotMode()I

    move-result v0

    goto/16 :goto_0

    .line 2082
    :sswitch_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGestureControlMode()I

    move-result v0

    goto/16 :goto_0

    .line 2084
    :sswitch_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAutoNightDetectionMode()I

    move-result v0

    goto/16 :goto_0

    .line 2086
    :sswitch_24
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQuickLaunchType()I

    move-result v0

    goto/16 :goto_0

    .line 2088
    :sswitch_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v0

    goto/16 :goto_0

    .line 2090
    :sswitch_26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageRecordingTime()I

    move-result v0

    goto/16 :goto_0

    .line 2092
    :sswitch_27
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getPictureFormat()I

    move-result v0

    goto/16 :goto_0

    .line 2094
    :sswitch_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBeautyMode()I

    move-result v0

    goto/16 :goto_0

    .line 2096
    :sswitch_29
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionPanoramaMode()I

    move-result v0

    goto/16 :goto_0

    .line 2098
    :sswitch_2a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionWideSelfieMode()I

    move-result v0

    goto/16 :goto_0

    .line 2100
    :sswitch_2b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getColorTune()I

    move-result v0

    goto/16 :goto_0

    .line 2102
    :sswitch_2c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v0

    goto/16 :goto_0

    .line 2104
    :sswitch_2d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShapeCorrection()I

    move-result v0

    goto/16 :goto_0

    .line 2106
    :sswitch_2e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTapToTakePictures()I

    move-result v0

    goto/16 :goto_0

    .line 2108
    :sswitch_2f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getHRMShutter()I

    move-result v0

    goto/16 :goto_0

    .line 2110
    :sswitch_30
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFoodBlurType()I

    move-result v0

    goto/16 :goto_0

    .line 2112
    :sswitch_31
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMultiAFMode()I

    move-result v0

    goto/16 :goto_0

    .line 2114
    :sswitch_32
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getRecordingMotionSpeed()I

    move-result v0

    goto/16 :goto_0

    .line 2116
    :sswitch_33
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQRCodeDetection()I

    move-result v0

    goto/16 :goto_0

    .line 2118
    :sswitch_34
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBeautyLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2120
    :sswitch_35
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSlimFaceLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2122
    :sswitch_36
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSpotlightLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2124
    :sswitch_37
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEyeEnlargeLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2126
    :sswitch_38
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSkinColorLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2128
    :sswitch_39
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackBeautyLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2130
    :sswitch_3a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getRearLensDistortionCorrection()I

    move-result v0

    goto/16 :goto_0

    .line 2132
    :sswitch_3b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAntiFogLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2134
    :sswitch_3c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFloatingCameraButton()I

    move-result v0

    goto/16 :goto_0

    .line 2136
    :sswitch_3d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getWideTeleDualMode()I

    move-result v0

    goto/16 :goto_0

    .line 2138
    :sswitch_3e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEffectCategory()I

    move-result v0

    goto/16 :goto_0

    .line 2140
    :sswitch_3f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStickerId()I

    move-result v0

    goto/16 :goto_0

    .line 2012
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
        0xa5 -> :sswitch_3e
        0xaa -> :sswitch_2
        0xad -> :sswitch_2a
        0xb4 -> :sswitch_39
        0xb5 -> :sswitch_3c
        0xb6 -> :sswitch_3d
        0xbe -> :sswitch_3f
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
    .line 2148
    sparse-switch p1, :sswitch_data_0

    .line 2230
    const-string v0, ""

    :goto_0
    return-object v0

    .line 2151
    :sswitch_0
    packed-switch p2, :pswitch_data_0

    .line 2159
    const-string v0, ""

    goto :goto_0

    .line 2153
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09024e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2155
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09024d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2157
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2162
    :sswitch_1
    packed-switch p2, :pswitch_data_1

    .line 2170
    const-string v0, ""

    goto :goto_0

    .line 2164
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090253

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2166
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2168
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090254

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2173
    :sswitch_2
    packed-switch p2, :pswitch_data_2

    .line 2179
    const-string v0, ""

    goto :goto_0

    .line 2175
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09025c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2177
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09025d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2182
    :sswitch_3
    packed-switch p2, :pswitch_data_3

    .line 2188
    const-string v0, ""

    goto/16 :goto_0

    .line 2184
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090250

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2186
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2191
    :sswitch_4
    packed-switch p2, :pswitch_data_4

    .line 2197
    const-string v0, ""

    goto/16 :goto_0

    .line 2193
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090258

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2195
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090259

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2200
    :sswitch_5
    packed-switch p2, :pswitch_data_5

    .line 2207
    const-string v0, ""

    goto/16 :goto_0

    .line 2203
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09025a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2205
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09025b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2210
    :sswitch_6
    packed-switch p2, :pswitch_data_6

    .line 2218
    const-string v0, ""

    goto/16 :goto_0

    .line 2212
    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090255

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2214
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090257

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2216
    :pswitch_10
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090256

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2221
    :sswitch_7
    packed-switch p2, :pswitch_data_7

    .line 2227
    const-string v0, ""

    goto/16 :goto_0

    .line 2223
    :pswitch_11
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09025e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2225
    :pswitch_12
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09025f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2148
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xb -> :sswitch_6
        0xc -> :sswitch_1
        0x4d -> :sswitch_7
        0x87 -> :sswitch_4
        0x8d -> :sswitch_3
        0x91 -> :sswitch_2
        0xaa -> :sswitch_0
        0xad -> :sswitch_5
    .end sparse-switch

    .line 2151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2162
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2173
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 2182
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 2191
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 2200
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 2210
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_e
        :pswitch_10
        :pswitch_f
    .end packed-switch

    .line 2221
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public getShapeCorrection()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2236
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SHAPECORRECTION:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v2, 0x37

    if-eq v1, v2, :cond_2

    .line 2237
    :cond_0
    const/4 v0, 0x0

    .line 2244
    :cond_1
    :goto_0
    return v0

    .line 2240
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-nez v1, :cond_1

    .line 2244
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

    .line 2262
    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 2368
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeIdByModeName(Ljava/lang/String;)I

    move-result v0

    :goto_1
    :pswitch_0
    return v0

    .line 2262
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
    const-string v6, "com.sec.android.app.camera.plb.Camera"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x45

    goto/16 :goto_0

    :sswitch_46
    const-string v6, "com.sec.android.app.camera.shootingmode.sight.SightActivity"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x46

    goto/16 :goto_0

    .line 2266
    :pswitch_1
    const/16 v0, 0x3a

    goto/16 :goto_1

    .line 2269
    :pswitch_2
    const/16 v0, 0x31

    goto/16 :goto_1

    .line 2272
    :pswitch_3
    const/16 v0, 0x2a

    goto/16 :goto_1

    :pswitch_4
    move v0, v1

    .line 2279
    goto/16 :goto_1

    :pswitch_5
    move v0, v2

    .line 2282
    goto/16 :goto_1

    .line 2285
    :pswitch_6
    const/16 v0, 0x48

    goto/16 :goto_1

    .line 2288
    :pswitch_7
    const/16 v0, 0x11

    goto/16 :goto_1

    :pswitch_8
    move v0, v3

    .line 2291
    goto/16 :goto_1

    .line 2295
    :pswitch_9
    const/16 v0, 0x2f

    goto/16 :goto_1

    .line 2298
    :pswitch_a
    const/16 v0, 0x43

    goto/16 :goto_1

    .line 2301
    :pswitch_b
    const/16 v0, 0x40

    goto/16 :goto_1

    .line 2305
    :pswitch_c
    const/16 v0, 0x44

    goto/16 :goto_1

    .line 2308
    :pswitch_d
    const/16 v0, 0x4a

    goto/16 :goto_1

    .line 2311
    :pswitch_e
    const/16 v0, 0x17

    goto/16 :goto_1

    .line 2314
    :pswitch_f
    const/16 v0, 0x27

    goto/16 :goto_1

    .line 2317
    :pswitch_10
    const/16 v0, 0x3b

    goto/16 :goto_1

    .line 2320
    :pswitch_11
    const/16 v0, 0x4b

    goto/16 :goto_1

    .line 2324
    :pswitch_12
    const/16 v0, 0x38

    goto/16 :goto_1

    :pswitch_13
    move v0, v4

    .line 2327
    goto/16 :goto_1

    .line 2330
    :pswitch_14
    const/16 v0, 0x2d

    goto/16 :goto_1

    .line 2333
    :pswitch_15
    const/16 v0, 0x37

    goto/16 :goto_1

    .line 2337
    :pswitch_16
    const/16 v0, 0x2e

    goto/16 :goto_1

    .line 2340
    :pswitch_17
    const/16 v0, 0x3f

    goto/16 :goto_1

    .line 2344
    :pswitch_18
    const/16 v0, 0x23

    goto/16 :goto_1

    .line 2348
    :pswitch_19
    const/16 v0, 0x28

    goto/16 :goto_1

    .line 2351
    :pswitch_1a
    const/16 v0, 0x45

    goto/16 :goto_1

    .line 2354
    :pswitch_1b
    const/16 v0, 0x3e

    goto/16 :goto_1

    .line 2357
    :pswitch_1c
    const/16 v0, 0x34

    goto/16 :goto_1

    .line 2360
    :pswitch_1d
    const/16 v0, 0x4d

    goto/16 :goto_1

    .line 2362
    :pswitch_1e
    const/16 v0, 0x4e

    goto/16 :goto_1

    .line 2364
    :pswitch_1f
    const/16 v0, 0x46

    goto/16 :goto_1

    .line 2366
    :pswitch_20
    const/16 v0, 0x4f

    goto/16 :goto_1

    .line 2262
    :sswitch_data_0
    .sparse-switch
        -0x793d7854 -> :sswitch_34
        -0x7924a515 -> :sswitch_3f
        -0x78cc21ea -> :sswitch_16
        -0x70724d59 -> :sswitch_1a
        -0x6f6b8718 -> :sswitch_1b
        -0x6efcf5fa -> :sswitch_46
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
        -0x1594d420 -> :sswitch_45
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

.method public getShootingModeIdByModeName(Ljava/lang/String;)I
    .locals 7
    .param p1, "shootingModeName"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xe

    const/4 v2, 0x7

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2375
    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    move v0, v1

    .line 2441
    :cond_1
    :goto_1
    return v0

    .line 2375
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
    const-string v6, "Slow motion"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v6, "Sound & shot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v6, "Sports"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v6, "Video Collage"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v6, "Virtual shot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v6, "Wechat video"

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

    .line 2377
    :pswitch_0
    const/16 v0, 0x3a

    goto/16 :goto_1

    .line 2379
    :pswitch_1
    const/16 v0, 0x31

    goto/16 :goto_1

    .line 2381
    :pswitch_2
    const/16 v0, 0x2a

    goto/16 :goto_1

    :pswitch_3
    move v0, v1

    .line 2383
    goto/16 :goto_1

    :pswitch_4
    move v0, v2

    .line 2385
    goto/16 :goto_1

    .line 2387
    :pswitch_5
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_MOTION_PANORAMA:Z

    if-eqz v0, :cond_2

    .line 2388
    const/16 v0, 0x48

    goto/16 :goto_1

    :cond_2
    move v0, v3

    .line 2390
    goto/16 :goto_1

    .line 2393
    :pswitch_6
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_NOT_SUPPORT_ZSL:Z

    if-nez v1, :cond_1

    const/16 v0, 0x11

    goto/16 :goto_1

    .line 2395
    :pswitch_7
    const/16 v0, 0x2f

    goto/16 :goto_1

    .line 2397
    :pswitch_8
    const/16 v0, 0x43

    goto/16 :goto_1

    .line 2399
    :pswitch_9
    const/16 v0, 0x40

    goto/16 :goto_1

    .line 2401
    :pswitch_a
    const/16 v0, 0x44

    goto/16 :goto_1

    .line 2403
    :pswitch_b
    const/16 v0, 0x4a

    goto/16 :goto_1

    .line 2405
    :pswitch_c
    const/16 v0, 0x17

    goto/16 :goto_1

    .line 2407
    :pswitch_d
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PRO:Z

    if-eqz v0, :cond_3

    .line 2408
    const/16 v0, 0x3b

    goto/16 :goto_1

    .line 2410
    :cond_3
    const/16 v0, 0x4b

    goto/16 :goto_1

    .line 2413
    :pswitch_e
    const/16 v0, 0x38

    goto/16 :goto_1

    :pswitch_f
    move v0, v4

    .line 2415
    goto/16 :goto_1

    .line 2417
    :pswitch_10
    const/16 v0, 0x2d

    goto/16 :goto_1

    .line 2419
    :pswitch_11
    const/16 v0, 0x37

    goto/16 :goto_1

    .line 2421
    :pswitch_12
    const/16 v0, 0x3f

    goto/16 :goto_1

    .line 2423
    :pswitch_13
    const/16 v0, 0x23

    goto/16 :goto_1

    .line 2425
    :pswitch_14
    const/16 v0, 0x28

    goto/16 :goto_1

    .line 2427
    :pswitch_15
    const/16 v0, 0x45

    goto/16 :goto_1

    .line 2429
    :pswitch_16
    const/16 v0, 0x3e

    goto/16 :goto_1

    .line 2431
    :pswitch_17
    const/16 v0, 0x4f

    goto/16 :goto_1

    .line 2433
    :pswitch_18
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_MOTION_WIDE_SELFIE:Z

    if-eqz v0, :cond_4

    .line 2434
    const/16 v0, 0x4e

    goto/16 :goto_1

    .line 2435
    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_WIDE_SELFIE:Z

    if-eqz v0, :cond_5

    .line 2436
    const/16 v0, 0x34

    goto/16 :goto_1

    .line 2438
    :cond_5
    const/16 v0, 0x4d

    goto/16 :goto_1

    .line 2375
    :sswitch_data_0
    .sparse-switch
        -0x6c9bda78 -> :sswitch_11
        -0x6bff4c61 -> :sswitch_14
        -0x5e426cdf -> :sswitch_17
        -0x4c2de052 -> :sswitch_15
        -0x2d24e020 -> :sswitch_8
        -0x2511d74f -> :sswitch_f
        -0x23b798fb -> :sswitch_13
        -0x216450f1 -> :sswitch_16
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
        0x4593d295 -> :sswitch_12
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

.method public getShootingModeNameForLogging()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2447
    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    .line 2448
    .local v0, "shootingModeCommandId":I
    invoke-static {v0}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getShootingModeResourceString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2453
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShootingModeResourceStringById(I)Ljava/lang/String;
    .locals 1
    .param p1, "shootingMode"    # I

    .prologue
    .line 2458
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

    .line 2463
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

    .line 2464
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    sparse-switch v3, :sswitch_data_0

    move v0, v1

    .line 2531
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 2466
    :sswitch_1
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_NIGHT_DETECTION:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2469
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2470
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2472
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 2476
    goto :goto_0

    .line 2479
    :sswitch_3
    const/16 v0, 0x22

    goto :goto_0

    :sswitch_4
    move v0, v2

    .line 2481
    goto :goto_0

    .line 2483
    :sswitch_5
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_NIGHT_DETECTION:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v0, v2

    .line 2486
    goto :goto_0

    .line 2490
    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 2492
    :sswitch_7
    const/16 v0, 0x9

    goto :goto_0

    .line 2496
    :sswitch_8
    const/16 v0, 0xb

    goto :goto_0

    .line 2498
    :sswitch_9
    const/16 v0, 0xf

    goto :goto_0

    .line 2500
    :sswitch_a
    const/16 v0, 0x10

    goto :goto_0

    .line 2502
    :sswitch_b
    const/16 v0, 0x11

    goto :goto_0

    .line 2504
    :sswitch_c
    const/16 v0, 0x12

    goto :goto_0

    .line 2506
    :sswitch_d
    const/16 v0, 0x13

    goto :goto_0

    .line 2508
    :sswitch_e
    const/16 v0, 0x14

    goto :goto_0

    .line 2513
    :sswitch_f
    const/16 v0, 0x1b

    goto :goto_0

    .line 2515
    :sswitch_10
    const/16 v0, 0x1c

    goto :goto_0

    .line 2517
    :sswitch_11
    const/16 v0, 0x1d

    goto :goto_0

    .line 2519
    :sswitch_12
    const/16 v0, 0x1e

    goto :goto_0

    .line 2521
    :sswitch_13
    const/16 v0, 0x1f

    goto :goto_0

    .line 2523
    :sswitch_14
    const/16 v0, 0x23

    goto :goto_0

    .line 2525
    :sswitch_15
    const/16 v0, 0x24

    goto :goto_0

    .line 2527
    :sswitch_16
    const/16 v0, 0x25

    goto :goto_0

    .line 2464
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
    const/4 v0, 0x0

    .line 2537
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    if-nez v1, :cond_0

    .line 2540
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

    .line 2562
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    .line 2565
    :goto_0
    return v0

    :cond_0
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

    .line 2582
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 2585
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
    .line 2614
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    return v0
.end method

.method public getSpotlightLevel()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2628
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v2, 0x37

    if-eq v1, v2, :cond_1

    .line 2631
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

    .line 2646
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v2, 0x37

    if-eq v1, v2, :cond_1

    .line 2649
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
    .line 2664
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 2665
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    .line 2666
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2667
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2668
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2669
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2670
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x74

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2671
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x7d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2672
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2673
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x49

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2674
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2675
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xbb9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2676
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xbbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2677
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2678
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2679
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2680
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x6f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2681
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2682
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2683
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2684
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2685
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2686
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xaa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2687
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2688
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2689
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2690
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2691
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2692
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2693
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xb5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2694
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2695
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2697
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isQRCodeDetectionSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2698
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x13c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2700
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->REAR_LENS_DISTORTION_CORRECTION:Z

    if-eqz v0, :cond_2

    .line 2701
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2703
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_ANTI_FOG:Z

    if-eqz v0, :cond_3

    .line 2704
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2707
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStickerId()I
    .locals 2

    .prologue
    const/16 v0, 0x2710

    .line 2712
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-nez v1, :cond_1

    .line 2718
    :cond_0
    :goto_0
    return v0

    .line 2715
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isEffectSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2718
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerId:I

    goto :goto_0
.end method

.method public getStickerPackageId()I
    .locals 1

    .prologue
    .line 2741
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerPackageId:I

    return v0
.end method

.method public getStickerSoundMute()I
    .locals 1

    .prologue
    .line 2754
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerSoundMute:I

    return v0
.end method

.method public getStickerType()I
    .locals 2

    .prologue
    .line 2768
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStickerId()I

    move-result v0

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_0

    .line 2769
    const/4 v0, 0x0

    .line 2771
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerType:I

    goto :goto_0
.end method

.method public getStorage()I
    .locals 3

    .prologue
    .line 2784
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
    .line 2803
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
    .locals 1

    .prologue
    .line 2817
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    .line 2818
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackTimer()I

    move-result v0

    .line 2820
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontTimer()I

    move-result v0

    goto :goto_0
.end method

.method public getTimer(I)I
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 2835
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 2836
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackTimer()I

    move-result v0

    .line 2838
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontTimer()I

    move-result v0

    goto :goto_0
.end method

.method public getTorchLightStatus()I
    .locals 1

    .prologue
    .line 2844
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    return v0
.end method

.method public getVideoCollageRecordingTime()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2859
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2860
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_front_video_collage_recording_time"

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2864
    .local v0, "recordingTime":I
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

    .line 2866
    return v0

    .line 2862
    .end local v0    # "recordingTime":I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_back_video_collage_recording_time"

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "recordingTime":I
    goto :goto_0
.end method

.method public getVideoCollageType()I
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 2892
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2893
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_type"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2895
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
    .line 2902
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-nez v0, :cond_0

    .line 2903
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VIEW_MODE:I

    .line 2905
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
    .line 2922
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_volume_key_as"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VOLUME_KEY_AS:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWatermarkInputText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2938
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkInputText:Ljava/lang/String;

    return-object v0
.end method

.method public getWhiteBalance()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2948
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    if-nez v1, :cond_0

    .line 2951
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

.method public getWideTeleDualMode()I
    .locals 1

    .prologue
    .line 2973
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWideTeleDualMode:I

    return v0
.end method

.method public getZoomValue()I
    .locals 1

    .prologue
    .line 2988
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2989
    const/4 v0, 0x0

    .line 2991
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    goto :goto_0
.end method

.method public initializeCamera()V
    .locals 2

    .prologue
    .line 3006
    const-string v0, "CameraSettings"

    const-string v1, "initializeCamera"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3009
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->initializeBackCamera()V

    .line 3013
    :cond_0
    :goto_0
    return-void

    .line 3010
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3011
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->initializeFrontCamera()V

    goto :goto_0
.end method

.method public initializeCameraId(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3017
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 3018
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    .line 3030
    :cond_0
    :goto_0
    return-void

    .line 3019
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 3020
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    goto :goto_0

    .line 3021
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 3022
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    goto :goto_0

    .line 3023
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 3024
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    goto :goto_0

    .line 3025
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getSeamlessZoomCameraId()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 3026
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    goto :goto_0

    .line 3027
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getPortraitCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3028
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    goto :goto_0
.end method

.method public initializeCameraResolution()V
    .locals 5

    .prologue
    .line 3034
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3035
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedBackCameraResolution()Ljava/lang/String;

    move-result-object v0

    .line 3036
    .local v0, "fixedBackResolution":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3037
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 3038
    const-string v2, "CameraSettings"

    const-string v3, "wrong back camera resolution value is changed to fixed resolution."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3040
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_rear_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3065
    .end local v0    # "fixedBackResolution":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3044
    .restart local v0    # "fixedBackResolution":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3045
    const-string v2, "CameraSettings"

    const-string v3, "unsupported back camera resolution value is changed to default."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3047
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_rear_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 3049
    .end local v0    # "fixedBackResolution":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3050
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedFrontCameraResolution()Ljava/lang/String;

    move-result-object v1

    .line 3051
    .local v1, "fixedFrontResolution":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 3052
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 3053
    const-string v2, "CameraSettings"

    const-string v3, "wrong front camera resolution value is changed to fixed resolution."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3055
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_front_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 3059
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3060
    const-string v2, "CameraSettings"

    const-string v3, "unsupported front camera resolution value is changed to default."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3062
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

    .line 3070
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_14

    .line 3071
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    .line 3075
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3077
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PRO:Z

    if-eqz v0, :cond_0

    .line 3078
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x158

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3080
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PRO_LITE:Z

    if-eqz v0, :cond_1

    .line 3081
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x164

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3083
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PANORAMA_SHOT:Z

    if-eqz v0, :cond_2

    .line 3084
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3086
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_MOTION_PANORAMA:Z

    if-eqz v0, :cond_3

    .line 3087
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x162

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3089
    :cond_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SELECTIVE_FOCUS:Z

    if-eqz v0, :cond_4

    .line 3090
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x151

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3092
    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SLOW_MOTION:Z

    if-eqz v0, :cond_5

    .line 3093
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3095
    :cond_5
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_HYPER_MOTION:Z

    if-eqz v0, :cond_6

    .line 3096
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x163

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3098
    :cond_6
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_FOOD:Z

    if-eqz v0, :cond_7

    .line 3099
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3101
    :cond_7
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v0, :cond_8

    .line 3102
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3104
    :cond_8
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v0, :cond_9

    .line 3105
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x160

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3107
    :cond_9
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_LVB:Z

    if-eqz v0, :cond_a

    .line 3108
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x165

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3110
    :cond_a
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_CONTINUOUS_SHOT:Z

    if-eqz v0, :cond_b

    .line 3111
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_NOT_SUPPORT_ZSL:Z

    if-eqz v0, :cond_25

    .line 3112
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3117
    :cond_b
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_FAST_MOTION:Z

    if-eqz v0, :cond_c

    .line 3118
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3120
    :cond_c
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_ANTI_FOG:Z

    if-eqz v0, :cond_d

    .line 3121
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3123
    :cond_d
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_AQUA:Z

    if-eqz v0, :cond_e

    .line 3124
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x14f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3126
    :cond_e
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_TAG_SHOT:Z

    if-eqz v0, :cond_f

    .line 3127
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3129
    :cond_f
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_RICH_TONE:Z

    if-eqz v0, :cond_10

    .line 3130
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3132
    :cond_10
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_NIGHT_SHOT:Z

    if-eqz v0, :cond_11

    .line 3133
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3135
    :cond_11
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_NIGHT_SHOT_SCENE:Z

    if-eqz v0, :cond_12

    .line 3136
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x14d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3138
    :cond_12
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_WECHAT_VIDEO:Z

    if-eqz v0, :cond_13

    .line 3139
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x168

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3141
    :cond_13
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v0, :cond_14

    .line 3142
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_14

    .line 3143
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3149
    :cond_14
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-nez v0, :cond_15

    invoke-static {v4, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3150
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3152
    :cond_16
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_DUAL:Z

    if-nez v0, :cond_17

    const/16 v0, 0x150

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3153
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x150

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3155
    :cond_18
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_REAR_SELFIE:Z

    if-nez v0, :cond_19

    const/16 v0, 0x157

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3156
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x157

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3158
    :cond_1a
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SPORTS_SCENE:Z

    if-nez v0, :cond_1b

    invoke-static {v6, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3159
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3161
    :cond_1c
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_ANIMATEDGIF:Z

    if-nez v0, :cond_1d

    const/16 v0, 0x15d

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3162
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3164
    :cond_1e
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SHOT_AND_MORE:Z

    if-nez v0, :cond_1f

    const/16 v0, 0x152

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3165
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x152

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3167
    :cond_20
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SOUND_AND_SHOT:Z

    if-nez v0, :cond_21

    invoke-static {v5, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3168
    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3170
    :cond_22
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_FOOD:Z

    if-nez v0, :cond_23

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3171
    :cond_23
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3173
    :cond_24
    return-void

    .line 3114
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

    .line 3178
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_f

    .line 3179
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    .line 3182
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_AUTO:Z

    if-eqz v0, :cond_0

    .line 3183
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3185
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELFIE:Z

    if-eqz v0, :cond_1

    .line 3186
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x154

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3188
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_WIDE_SELFIE:Z

    if-eqz v0, :cond_2

    .line 3189
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3190
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x156

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3193
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_WIDE_SELFIE_LITE:Z

    if-eqz v0, :cond_3

    .line 3194
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3195
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x166

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3198
    :cond_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_MOTION_WIDE_SELFIE:Z

    if-eqz v0, :cond_4

    .line 3199
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3200
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x167

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3203
    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELECTIVE_FOCUS:Z

    if-eqz v0, :cond_5

    .line 3204
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x151

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3206
    :cond_5
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v0, :cond_6

    .line 3207
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3208
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3211
    :cond_6
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v0, :cond_7

    .line 3212
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3213
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x160

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3216
    :cond_7
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_LVB:Z

    if-eqz v0, :cond_8

    .line 3217
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x165

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3219
    :cond_8
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-eqz v0, :cond_9

    .line 3220
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x133

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3222
    :cond_9
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_CONTINUOUS_SHOT:Z

    if-eqz v0, :cond_a

    .line 3223
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3224
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_NOT_SUPPORT_ZSL:Z

    if-eqz v0, :cond_16

    .line 3225
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3231
    :cond_a
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_NIGHT_SHOT:Z

    if-eqz v0, :cond_b

    .line 3232
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3234
    :cond_b
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_NIGHT_SHOT_SCENE:Z

    if-eqz v0, :cond_c

    .line 3235
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x14d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3237
    :cond_c
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_RICH_TONE:Z

    if-eqz v0, :cond_d

    .line 3238
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3239
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3242
    :cond_d
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_WECHAT_VIDEO:Z

    if-eqz v0, :cond_e

    .line 3243
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x168

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3245
    :cond_e
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v0, :cond_f

    .line 3246
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_f

    .line 3247
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3253
    :cond_f
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_ANIMATEDGIF:Z

    if-nez v0, :cond_10

    invoke-static {v5, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3254
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_11

    .line 3255
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3258
    :cond_11
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SHOT_AND_MORE:Z

    if-nez v0, :cond_12

    invoke-static {v4, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3259
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_13

    .line 3260
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3263
    :cond_13
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SOUND_AND_SHOT:Z

    if-nez v0, :cond_14

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3264
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_15

    .line 3265
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3268
    :cond_15
    return-void

    .line 3227
    :cond_16
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
    .line 3272
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeIdByActivityName(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    .line 3273
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraIdByShootingModeId(II)V

    .line 3274
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    return v0
.end method

.method public initializeShootingModeId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "shootingModeActivityName"    # Ljava/lang/String;
    .param p2, "cameraFacingName"    # Ljava/lang/String;

    .prologue
    .line 3279
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeIdByActivityName(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    .line 3280
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraIdFromName(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraIdByShootingModeId(II)V

    .line 3281
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    return v0
.end method

.method public initializeShootingModeWhenSwitchCamera()I
    .locals 1

    .prologue
    .line 3286
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3287
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3288
    const/4 v0, 0x0

    .line 3296
    :goto_0
    return v0

    .line 3290
    :cond_0
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    goto :goto_0

    .line 3293
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3294
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    goto :goto_0

    .line 3296
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    goto :goto_0
.end method

.method public isAttachImageMode()Z
    .locals 1

    .prologue
    .line 3304
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachImageMode()Z

    move-result v0

    return v0
.end method

.method public isAttachVideoFixedResolution()Z
    .locals 1

    .prologue
    .line 3310
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3311
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->isAttachVideoFixedResolution()Z

    move-result v0

    .line 3313
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttachVideoMode()Z
    .locals 1

    .prologue
    .line 3320
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v0

    return v0
.end method

.method public isBackCamera()Z
    .locals 2

    .prologue
    .line 3325
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

.method public isCoverCamera()Z
    .locals 1

    .prologue
    .line 3330
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    return v0
.end method

.method public isCurrentSeparatedShootingMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3357
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3360
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedAndPreloadedShootingMode(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isDefaultFrontShootingMode(I)Z
    .locals 1
    .param p1, "shootingMode"    # I

    .prologue
    .line 3365
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
    .line 3370
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
    .line 3375
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
    .line 3380
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
    .line 3385
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    return v0
.end method

.method public isFrontCamera()Z
    .locals 2

    .prologue
    .line 3404
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
    .line 3409
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    return v0
.end method

.method public isNetworkPermissionEnabled()Z
    .locals 3

    .prologue
    .line 3422
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_check_network_permission_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNotificationExist()Z
    .locals 2

    .prologue
    .line 3435
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mNotificationHandler:Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isResetRequested()Z
    .locals 3

    .prologue
    .line 3440
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
    .line 3445
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    return v0
.end method

.method public isSecureCamera()Z
    .locals 1

    .prologue
    .line 3464
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    return v0
.end method

.method public isSingleEffect()Z
    .locals 1

    .prologue
    .line 3486
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

.method public isStickerMode()Z
    .locals 2

    .prologue
    .line 3491
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStickerId()I

    move-result v0

    const/16 v1, 0x2710

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportedBackCameraResolutionFeature(I)Z
    .locals 2
    .param p1, "resolution"    # I

    .prologue
    .line 3496
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedBackCameraResolution()Ljava/lang/String;

    move-result-object v0

    .line 3497
    .local v0, "fixedResolution":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3499
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 3500
    const/4 v1, 0x1

    .line 3504
    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v1

    goto :goto_0
.end method

.method public isSupportedFrontCameraResolutionFeature(I)Z
    .locals 2
    .param p1, "resolution"    # I

    .prologue
    .line 3509
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedFrontCameraResolution()Ljava/lang/String;

    move-result-object v0

    .line 3510
    .local v0, "fixedResolution":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3512
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 3513
    const/4 v1, 0x1

    .line 3516
    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v1

    goto :goto_0
.end method

.method public isTemperatureHighToRecord()Z
    .locals 1

    .prologue
    .line 3521
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToRecord:Z

    return v0
.end method

.method public isTemperatureHighToUseFlash()Z
    .locals 1

    .prologue
    .line 3531
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToUseFlash:Z

    return v0
.end method

.method public isTemperatureLowToUseFlash()Z
    .locals 1

    .prologue
    .line 3541
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureLowToUseFlash:Z

    return v0
.end method

.method public onEmpty()V
    .locals 0

    .prologue
    .line 3551
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->handleNotification()V

    .line 3552
    return-void
.end method

.method public overrideCamcorderResolution(I)V
    .locals 3
    .param p1, "resolutionId"    # I

    .prologue
    .line 3556
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

    .line 3558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    .line 3559
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCamcorderResolution(I)Z

    .line 3560
    return-void
.end method

.method public overrideFocusMode(I)V
    .locals 3
    .param p1, "focusMode"    # I

    .prologue
    .line 3564
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

    .line 3565
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    if-eq v0, p1, :cond_0

    .line 3566
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    .line 3568
    :cond_0
    return-void
.end method

.method public overrideStickerCamcorderResolution()V
    .locals 5

    .prologue
    .line 3573
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getAspectRatioType(I)I

    move-result v1

    .line 3574
    .local v1, "type":I
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "overrideStickerCamcorderResolution Type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    if-eqz v1, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 3576
    :cond_0
    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->STICKER_CAMCORDER_RESOLUTION_WIDE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 3582
    .local v0, "resolutionId":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->overrideCamcorderResolution(I)V

    .line 3583
    return-void

    .line 3577
    .end local v0    # "resolutionId":I
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 3578
    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->STICKER_CAMCORDER_RESOLUTION_SQUARE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "resolutionId":I
    goto :goto_0

    .line 3580
    .end local v0    # "resolutionId":I
    :cond_2
    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->STICKER_CAMCORDER_RESOLUTION_NORMAL:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "resolutionId":I
    goto :goto_0
.end method

.method public refreshButtonDimForCamera()V
    .locals 6

    .prologue
    const/16 v5, 0x17

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3588
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStorage()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3589
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3590
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbbf

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderAntiShake()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3591
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-interface {v0, v3, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3592
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3593
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3594
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3595
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x12c

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTorchLightStatus()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3596
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x136

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCallStatus()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3597
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 3598
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3602
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x7f

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3603
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

    .line 3604
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1770

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3606
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachImageMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3607
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3613
    :goto_1
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3614
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1b58

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3616
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    if-eqz v0, :cond_2

    .line 3617
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x13d

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3619
    :cond_2
    return-void

    .line 3600
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getObjectTrackingAF()I

    move-result v1

    invoke-interface {v0, v5, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_0

    .line 3608
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3609
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x2

    invoke-interface {v0, v4, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_1

    .line 3611
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_1
.end method

.method public refreshSettingValuesFromPreferencesWhenSwitchCamera()V
    .locals 3

    .prologue
    .line 3623
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x84

    aput v2, v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->loadFromPreferences([I)V

    .line 3624
    return-void
.end method

.method public registerAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    .prologue
    .line 3628
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v1

    .line 3629
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3630
    monitor-exit v1

    .line 3631
    return-void

    .line 3630
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
    .line 3635
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3636
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3637
    .local v0, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    if-eqz v0, :cond_0

    .line 3638
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3644
    :goto_0
    monitor-exit v2

    .line 3645
    return-void

    .line 3640
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3641
    .restart local v0    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3642
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 3644
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

    .line 3649
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFilterEffect:I

    .line 3650
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraEffect(IZ)V

    .line 3651
    return-void
.end method

.method public resetCameraSettingsInDual()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3655
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    .line 3656
    const/16 v0, 0x12

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 3657
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 3658
    const/4 v0, 0x7

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 3659
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    .line 3660
    const/16 v0, 0x9

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 3661
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    .line 3662
    const/16 v0, 0xa

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 3663
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 3664
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3665
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer(I)I

    move-result v0

    invoke-direct {p0, v3, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 3670
    :goto_0
    return-void

    .line 3667
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer(I)I

    move-result v0

    invoke-direct {p0, v3, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    goto :goto_0
.end method

.method public resetCameraSettingsToDefault()V
    .locals 1

    .prologue
    .line 3675
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraLocalSettings(I)V

    .line 3676
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraLocalSettings(I)V

    .line 3677
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraLocalSettings(I)V

    .line 3678
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraLocalSettings(I)V

    .line 3683
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCommonGlobalSettings()V

    .line 3684
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraGlobalSettings()V

    .line 3685
    return-void
.end method

.method public resetListeners()V
    .locals 4

    .prologue
    .line 3689
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v3

    .line 3690
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3691
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3692
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v3

    .line 3693
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3694
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 3695
    .local v1, "key":I
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3693
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3691
    .end local v0    # "i":I
    .end local v1    # "key":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3697
    .restart local v0    # "i":I
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 3698
    monitor-exit v3

    .line 3699
    return-void

    .line 3698
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
    .line 3703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    .line 3704
    return-void
.end method

.method public resetOverriddenFocusMode()V
    .locals 1

    .prologue
    .line 3708
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    .line 3709
    return-void
.end method

.method public resetShootingModeOrder()V
    .locals 3

    .prologue
    .line 3713
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDefaultBackCameraShootingModeOrder()V

    .line 3714
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setBackCameraShootingModeOrder(Ljava/lang/String;)V

    .line 3716
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3717
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3718
    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getBaseColumnIds(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3717
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->updateShootingModeOrder(Landroid/content/Context;Ljava/util/ArrayList;)Z

    .line 3721
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDefaultFrontCameraShootingModeOrder()V

    .line 3722
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFrontCameraShootingModeOrder(Ljava/lang/String;)V

    .line 3724
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3725
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3726
    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getBaseColumnIds(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3725
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->updateShootingModeFrontOrder(Landroid/content/Context;Ljava/util/ArrayList;)Z

    .line 3728
    :cond_1
    return-void
.end method

.method public resetZoomValue()V
    .locals 2

    .prologue
    .line 3732
    const-string v0, "CameraSettings"

    const-string v1, "resetZoomValue"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3733
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    .line 3734
    return-void
.end method

.method public restoreDualResolution(I)V
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    .line 3738
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_dual_rear_resolution_key"

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 3740
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

    .line 3741
    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3743
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionChanged(Z)V

    .line 3744
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 3745
    return-void
.end method

.method public restoreShootingModeAfterRecording()I
    .locals 2

    .prologue
    .line 3749
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPreviousShootingModeForRecording:I

    .line 3750
    .local v0, "mode":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPreviousShootingModeForRecording:I

    .line 3751
    return v0
.end method

.method public setAntiFogLevel(I)V
    .locals 3
    .param p1, "antiFogLevel"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_anti_fog_level_key"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    .line 270
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    if-eq v0, p1, :cond_0

    .line 271
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

    .line 272
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_anti_fog_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 275
    const/16 v0, 0x75

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 277
    :cond_0
    return-void
.end method

.method public setAutoFilterPinSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 2607
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoFilterPinSelected:Z

    if-eq v0, p1, :cond_0

    .line 2608
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoFilterPinSelected:Z

    .line 2610
    :cond_0
    return-void
.end method

.method public setAutoNightDetectionMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_auto_night_detection_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultAutoNightDetectionMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    .line 297
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    if-eq v0, p1, :cond_0

    .line 298
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

    .line 299
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_auto_night_detection_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 301
    const/16 v0, 0x57

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 303
    :cond_0
    return-void
.end method

.method public setBackBeautyLevel(I)V
    .locals 3
    .param p1, "beautyLevel"    # I

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_back_camera_beauty_level_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    .line 316
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    if-eq v0, p1, :cond_0

    .line 317
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

    .line 318
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_back_camera_beauty_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 321
    const/16 v0, 0xb4

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 323
    :cond_0
    return-void
.end method

.method public setBackCameraShootingModeOrder(Ljava/lang/String;)V
    .locals 3
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_back_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
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

    .line 342
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_back_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_0
    return-void
.end method

.method protected setBackTimer(I)V
    .locals 3
    .param p1, "timer"    # I

    .prologue
    .line 4171
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackTimer()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    .line 4173
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    if-eq v0, p1, :cond_0

    .line 4174
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

    .line 4175
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    .line 4176
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBackCamera setTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4177
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_timer_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4178
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 4179
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x7f

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackInterval()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4181
    :cond_0
    return-void
.end method

.method public setBeautyLevel(I)V
    .locals 3
    .param p1, "beautyLevel"    # I

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_beauty_level_key"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    .line 360
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    if-eq v0, p1, :cond_0

    .line 361
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

    .line 362
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_beauty_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 365
    const/16 v0, 0x6d

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 367
    :cond_0
    return-void
.end method

.method public setBeautyMode(I)V
    .locals 4
    .param p1, "beautyMode"    # I

    .prologue
    .line 376
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_beauty_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 377
    .local v0, "mode":I
    if-eq v0, p1, :cond_0

    .line 378
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBeautyMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    move v0, p1

    .line 380
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_beauty_mode"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 382
    const/16 v1, 0x81

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 384
    :cond_0
    return-void
.end method

.method public setCallStatus(IZ)V
    .locals 3
    .param p1, "callStatus"    # I
    .param p2, "isLaunched"    # Z

    .prologue
    .line 3756
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCallStatus:I

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_2

    .line 3757
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

    .line 3758
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCallStatus:I

    .line 3759
    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    .line 3761
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x136

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3764
    :cond_2
    return-void
.end method

.method public setCamcorderAntiShake(I)V
    .locals 3
    .param p1, "antiShake"    # I

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_FRONT_ANTISHAKE:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
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

    .line 411
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    if-eq v0, p1, :cond_0

    .line 412
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

    .line 413
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camcorder_antishake_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 416
    const/16 v0, 0xbbf

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setCamcorderAudioRecording(I)V
    .locals 3
    .param p1, "audioRecording"    # I

    .prologue
    .line 427
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAudioRecording:I

    if-eq v0, p1, :cond_0

    .line 428
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

    .line 429
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAudioRecording:I

    .line 431
    :cond_0
    return-void
.end method

.method public setCamcorderResolution(II)V
    .locals 2
    .param p1, "cameraId"    # I
    .param p2, "resolution"    # I

    .prologue
    .line 3809
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 3810
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_rear_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3816
    :cond_0
    :goto_0
    return-void

    .line 3811
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 3812
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_front_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 3813
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3814
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_dual_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setCamcorderResolution(I)Z
    .locals 4
    .param p1, "resolution"    # I

    .prologue
    const/4 v0, 0x0

    .line 3769
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->isAttachVideoFixedResolution()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3804
    :cond_0
    :goto_0
    return v0

    .line 3773
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    if-eqz v1, :cond_2

    .line 3774
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_overridden_camcorder_resolution"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    .line 3785
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    if-eq v1, p1, :cond_0

    .line 3786
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

    .line 3787
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    .line 3789
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    if-eqz v0, :cond_6

    .line 3790
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_overridden_camcorder_resolution"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3801
    :goto_2
    const/16 v0, 0xbb9

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 3802
    const/4 v0, 0x1

    goto :goto_0

    .line 3776
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3777
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camcorder_rear_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    goto :goto_1

    .line 3778
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3779
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camcorder_dual_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    goto :goto_1

    .line 3781
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camcorder_front_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    goto/16 :goto_1

    .line 3792
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3793
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_rear_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 3794
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3795
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_dual_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 3797
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
    .line 488
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

    .line 490
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_dual_effect"

    const/16 v2, 0x30

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    .line 492
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    if-eq v0, p1, :cond_0

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 493
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    .line 494
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_dual_effect"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 497
    :cond_0
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_1

    .line 498
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setZoomValue(I)V

    .line 501
    :cond_1
    const/16 v0, 0x5a

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 502
    return-void
.end method

.method public setCameraEffect(I)V
    .locals 1
    .param p1, "effect"    # I

    .prologue
    .line 3820
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraEffect(IZ)V

    .line 3821
    return-void
.end method

.method public setCameraEffect(IZ)V
    .locals 1
    .param p1, "effect"    # I
    .param p2, "notify"    # Z

    .prologue
    .line 3825
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFilterEffect:I

    if-eq v0, p1, :cond_0

    .line 3826
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFilterEffect:I

    .line 3830
    :cond_0
    if-eqz p2, :cond_2

    .line 3831
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3832
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetEffectLevelSettingValue()V

    .line 3834
    :cond_1
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 3836
    :cond_2
    return-void
.end method

.method public setCameraExposureMeter(I)V
    .locals 4
    .param p1, "exposureMeter"    # I

    .prologue
    const/4 v3, 0x1

    .line 519
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureMeter:I

    if-ne v0, v3, :cond_0

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_exposure_meter_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    .line 523
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    if-eq v0, p1, :cond_2

    .line 524
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

    .line 525
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    .line 526
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureMeter:I

    if-ne v0, v3, :cond_1

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_exposure_meter_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 530
    :cond_1
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 532
    :cond_2
    return-void
.end method

.method public setCameraHDR(I)V
    .locals 4
    .param p1, "hdr"    # I

    .prologue
    const/16 v3, 0xc

    .line 578
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_1

    .line 579
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEasyCameraHDR()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    .line 584
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    if-eq v0, p1, :cond_0

    .line 585
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

    .line 586
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    .line 587
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_hdr_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 592
    :goto_1
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_0

    .line 590
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

    .line 608
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualISO:I

    if-ne v0, v3, :cond_0

    .line 609
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_iso_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    .line 612
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    if-eq v0, p1, :cond_2

    .line 613
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

    .line 614
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    .line 615
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualISO:I

    if-ne v0, v3, :cond_1

    .line 616
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_iso_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 618
    :cond_1
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 620
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

    .line 629
    if-gez p1, :cond_1

    .line 630
    const-string v0, "CameraSettings"

    const-string v1, "wrong camera id, so return setCameraId"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    if-eq v0, p1, :cond_0

    .line 635
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

    .line 636
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 639
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getSeamlessZoomCameraId()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getPortraitCameraId()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 640
    :cond_2
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraFacing(I)V

    .line 645
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getSeamlessZoomCameraId()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 646
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setWideTeleDualMode(I)V

    .line 651
    :cond_3
    :goto_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    invoke-direct {p0, v5, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 652
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    invoke-interface {v0, v5, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :cond_4
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraFacing(I)V

    goto :goto_1

    .line 647
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getPortraitCameraId()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 648
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setWideTeleDualMode(I)V

    goto :goto_2
.end method

.method public setCameraQuality(I)V
    .locals 3
    .param p1, "quality"    # I

    .prologue
    .line 664
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQuality:I

    if-eq v0, p1, :cond_0

    .line 665
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

    .line 666
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQuality:I

    .line 668
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->handleNotification(II)V

    .line 670
    :cond_0
    return-void
.end method

.method public setCameraResolution(II)V
    .locals 2
    .param p1, "cameraId"    # I
    .param p2, "resolution"    # I

    .prologue
    .line 3901
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3902
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_rear_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3910
    :goto_0
    return-void

    .line 3903
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 3904
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 3905
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 3906
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_rear_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 3908
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_front_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setCameraResolution(I)Z
    .locals 6
    .param p1, "resolution"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3840
    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v2, :cond_2

    .line 3841
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3842
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionChanged(Z)V

    .line 3843
    invoke-direct {p0, v5, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    move v0, v1

    .line 3896
    :cond_1
    :goto_0
    return v0

    .line 3847
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3848
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

    .line 3850
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3851
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

    .line 3853
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3854
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

    .line 3856
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3857
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

    .line 3861
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3862
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

    .line 3871
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

    .line 3872
    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    if-eq v2, p1, :cond_1

    .line 3873
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

    .line 3874
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3876
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3877
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_camera_rear_resolution_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3878
    const-string v0, "pref_camera_rear_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    .line 3892
    :cond_8
    :goto_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionChanged(Z)V

    .line 3893
    invoke-direct {p0, v5, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    move v0, v1

    .line 3894
    goto/16 :goto_0

    .line 3863
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3864
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

    .line 3865
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3866
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

    .line 3867
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3868
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

    .line 3879
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3880
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_camera_front_resolution_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3881
    const-string v0, "pref_camera_front_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    goto :goto_2

    .line 3882
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3883
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_camera_dual_front_resolution_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3884
    const-string v0, "pref_camera_dual_front_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 3885
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3886
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_camera_dual_rear_resolution_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3887
    const-string v0, "pref_camera_dual_rear_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    goto/16 :goto_2
.end method

.method public setCameraResolutionChanged(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .prologue
    .line 713
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraResolutionChanged:Z

    .line 714
    return-void
.end method

.method public setCameraShutterSound(I)V
    .locals 4
    .param p1, "shutterSound"    # I

    .prologue
    const/4 v3, 0x1

    .line 753
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getForcedShutterSound()I

    move-result v0

    .line 754
    .local v0, "forcedShutterSound":I
    if-ne v0, v3, :cond_1

    .line 755
    const-string v1, "CameraSettings"

    const-string v2, "In this model, shutter sound must be playbacked"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 759
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

    .line 760
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    if-eq v1, p1, :cond_0

    .line 761
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

    .line 762
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    .line 763
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_shutter_sound_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 765
    const/16 v1, 0x15

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setCameraVoiceCommand(I)V
    .locals 3
    .param p1, "voiceCommand"    # I

    .prologue
    .line 786
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isMicroPhoneRestricted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraVoiceCommand()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    .line 792
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    if-eq v0, p1, :cond_0

    .line 793
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

    .line 794
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    .line 797
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 798
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 799
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startVoiceRecognizer()V

    .line 806
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_voice_control_key"

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 807
    const/16 v0, 0x47

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0

    .line 802
    :cond_3
    const-string v0, "CameraSettings"

    const-string v1, "setCameraVoiceCommand OFF"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopVoiceRecognizer()V

    goto :goto_1
.end method

.method public setColorTune(I)V
    .locals 3
    .param p1, "colorTune"    # I

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getColorTune()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    .line 819
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    if-eq v0, p1, :cond_0

    .line 820
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

    .line 821
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_colortune"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 823
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 825
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

    .line 3335
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_SVIEW_COVER_CAMERA:Z

    if-nez v2, :cond_1

    .line 3353
    :cond_0
    :goto_0
    return-void

    .line 3339
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-eq v2, p1, :cond_0

    .line 3340
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

    .line 3341
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    .line 3343
    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-eqz v2, :cond_2

    .line 3344
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 3345
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v5, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3349
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleCoverCameraChanged(Z)V

    .line 3350
    if-eqz p1, :cond_3

    :goto_2
    invoke-direct {p0, v5, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0

    .line 3347
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v5, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 3350
    goto :goto_2
.end method

.method public setDefaultBackCameraShootingModeOrder()V
    .locals 4

    .prologue
    .line 3915
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->initializeDefaultBackCameraShootingModeOrderList()V

    .line 3917
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    .line 3919
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

    .line 3920
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

    .line 3923
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

    .line 3924
    return-void
.end method

.method public setEasyCamera(Z)V
    .locals 3
    .param p1, "easyCamera"    # Z

    .prologue
    .line 3390
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eq v0, p1, :cond_1

    .line 3391
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

    .line 3392
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    .line 3394
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_1

    .line 3395
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

    .line 3396
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 3400
    :cond_1
    return-void
.end method

.method public setEffectCategory(I)V
    .locals 3
    .param p1, "effectCategory"    # I

    .prologue
    .line 1013
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEffectCategory:I

    if-eq v0, p1, :cond_1

    .line 1014
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffectCategory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEffectCategory:I

    .line 1016
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEffectCategory:I

    const/16 v1, 0x1e78

    if-ne v0, v1, :cond_2

    .line 1017
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->startAutoFilter()V

    .line 1027
    :cond_0
    :goto_0
    const/16 v0, 0xa5

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEffectCategory:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1029
    :cond_1
    return-void

    .line 1021
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraSingleEffect()I

    move-result v0

    const/16 v1, 0x400

    if-eq v0, v1, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopAutoFilter()V

    goto :goto_0
.end method

.method public setEffectStrengthLevel(I)V
    .locals 6
    .param p1, "level"    # I

    .prologue
    .line 1151
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFilterEffectStrengthLevel:I

    .line 1152
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

    .line 1153
    .local v0, "intensity":I
    const/16 v1, 0x97

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1154
    return-void
.end method

.method public setEffectVignetteLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 1163
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFilterEffectVignetteLevel:I

    .line 1164
    const/16 v0, 0x98

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1165
    return-void
.end method

.method public setEngine(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 0
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    .line 3928
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 3929
    return-void
.end method

.method public setExposureValue(I)V
    .locals 4
    .param p1, "exposureValue"    # I

    .prologue
    const/4 v3, 0x1

    .line 1178
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    if-ne v0, v3, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_exposure_value_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 1182
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    if-eq v0, p1, :cond_2

    .line 1183
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

    .line 1184
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 1185
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    if-ne v0, v3, :cond_1

    .line 1186
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_exposure_value_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1188
    :cond_1
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 1190
    :cond_2
    return-void
.end method

.method public setEyeEnlargeLevel(I)V
    .locals 3
    .param p1, "eyeEnlargeLevel"    # I

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_eyeenlarge_level_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    .line 1203
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    if-eq v0, p1, :cond_0

    .line 1204
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

    .line 1205
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    .line 1206
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_eyeenlarge_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1208
    const/16 v0, 0x70

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1210
    :cond_0
    return-void
.end method

.method public setFlashMode(I)V
    .locals 3
    .param p1, "flashMode"    # I

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_flash_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFlashMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    .line 1425
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getLowBatteryStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1426
    :cond_0
    const/4 p1, 0x0

    .line 1428
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    if-eq v0, p1, :cond_2

    .line 1429
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

    .line 1430
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    .line 1431
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_flash_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1433
    const-string v0, "pref_flash_key"

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    .line 1435
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1437
    :cond_2
    return-void
.end method

.method public setFloatingCameraButton(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1446
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

    .line 1447
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    if-eq v0, p1, :cond_0

    .line 1448
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

    .line 1449
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    .line 1450
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_floating_camera_button_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1451
    const/16 v0, 0xb5

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1453
    :cond_0
    return-void
.end method

.method public setFocusLength(I)V
    .locals 4
    .param p1, "focusLength"    # I

    .prologue
    .line 1466
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_focus_length"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1467
    .local v0, "length":I
    if-eq v0, p1, :cond_3

    .line 1468
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFocusLength "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    if-gez p1, :cond_0

    .line 1470
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetOverriddenFocusMode()V

    .line 1472
    :cond_0
    if-gez v0, :cond_1

    .line 1473
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->overrideFocusMode(I)V

    .line 1475
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualFocusLength:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1476
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_focus_length"

    invoke-static {v1, v2, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1478
    :cond_2
    const/16 v1, 0x18

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1480
    :cond_3
    return-void
.end method

.method public setFocusMode(I)V
    .locals 3
    .param p1, "focusMode"    # I

    .prologue
    .line 3933
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 3934
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    if-eq v0, p1, :cond_0

    .line 3935
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraParameters;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3936
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 3937
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3939
    :cond_0
    return-void
.end method

.method public setFocusMode(II)V
    .locals 3
    .param p1, "focusMode"    # I
    .param p2, "overriddenFocusMode"    # I

    .prologue
    .line 3943
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusMode focusMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraParameters;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", overriddenFocusMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/sec/android/app/camera/util/CameraParameters;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3944
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 3945
    iput p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    .line 3946
    return-void
.end method

.method public setFontScale(F)V
    .locals 1
    .param p1, "fontScale"    # F

    .prologue
    .line 1487
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->MAX_FONT_SCALE:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1488
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->MAX_FONT_SCALE:F

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFontScale:F

    .line 1492
    :goto_0
    return-void

    .line 1490
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFontScale:F

    goto :goto_0
.end method

.method public setFoodBlurType(I)V
    .locals 3
    .param p1, "foodBlurType"    # I

    .prologue
    .line 1501
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    if-eq v0, p1, :cond_0

    .line 1502
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

    .line 1503
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    .line 1504
    const/16 v0, 0x8d

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1506
    :cond_0
    return-void
.end method

.method public setFoodColorTuneValue(I)V
    .locals 4
    .param p1, "colorTuneValue"    # I

    .prologue
    .line 1518
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_food_level_key"

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1519
    .local v0, "foodColorTuneValue":I
    if-eq v0, p1, :cond_0

    .line 1520
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFoodColorTuneValue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    move v0, p1

    .line 1522
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_food_level_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1524
    const/16 v1, 0x76

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1526
    :cond_0
    return-void
.end method

.method public setFrontCameraShootingModeOrder(Ljava/lang/String;)V
    .locals 3
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_front_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 1565
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1566
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

    .line 1567
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 1568
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_front_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    :cond_0
    return-void
.end method

.method public setFrontFlashMode(I)V
    .locals 3
    .param p1, "flashMode"    # I

    .prologue
    .line 1589
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v0, :cond_0

    .line 1590
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_flash_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFrontFlashMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    .line 1593
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    if-eq v0, p1, :cond_2

    .line 1594
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

    .line 1595
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    .line 1596
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v0, :cond_1

    .line 1597
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_flash_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1599
    :cond_1
    const/16 v0, 0xaa

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1601
    :cond_2
    return-void
.end method

.method protected setFrontTimer(I)V
    .locals 3
    .param p1, "timer"    # I

    .prologue
    .line 4192
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontTimer()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    .line 4193
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrontTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4195
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    if-eq v0, p1, :cond_0

    .line 4196
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    .line 4197
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFront setTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4198
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_timer_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4199
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 4200
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x7f

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontInterval()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4202
    :cond_0
    return-void
.end method

.method public setGPS(I)V
    .locals 3
    .param p1, "gps"    # I

    .prologue
    .line 1610
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

    .line 1611
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    if-eq v0, p1, :cond_0

    .line 1612
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

    .line 1613
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    .line 1614
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_gps_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1616
    :cond_0
    return-void
.end method

.method public setGestureControlMode(I)V
    .locals 4
    .param p1, "gestureControlMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 1625
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_detection_mode_key"

    .line 1626
    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    .line 1625
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    .line 1627
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    if-eq v0, p1, :cond_0

    .line 1628
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

    .line 1629
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    .line 1630
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_detection_mode_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1631
    const/16 v0, 0x7d

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    invoke-direct {p0, v0, v1, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 1633
    :cond_0
    return-void
.end method

.method public setGuideline(I)V
    .locals 3
    .param p1, "guideline"    # I

    .prologue
    .line 1645
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_1

    .line 1655
    :cond_0
    :goto_0
    return-void

    .line 1648
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_guideline_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    .line 1649
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    if-eq v0, p1, :cond_0

    .line 1650
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

    .line 1651
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    .line 1652
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_guideline_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1653
    const/16 v0, 0x13

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setHRMShutter(I)V
    .locals 4
    .param p1, "hrmShutter"    # I

    .prologue
    .line 1664
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_hrm_shutter_key"

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    .line 1665
    .local v0, "value":I
    if-eq v0, p1, :cond_0

    .line 1666
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHRMShutter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_hrm_shutter_key"

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1669
    :cond_0
    return-void
.end method

.method public setInterval(I)V
    .locals 1
    .param p1, "interval"    # I

    .prologue
    .line 1690
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1691
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setBackInterval(I)V

    .line 1695
    :goto_0
    return-void

    .line 1693
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFrontInterval(I)V

    goto :goto_0
.end method

.method public setInterval(II)V
    .locals 1
    .param p1, "cameraid"    # I
    .param p2, "interval"    # I

    .prologue
    .line 3950
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3951
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setBackInterval(I)V

    .line 3955
    :goto_0
    return-void

    .line 3953
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFrontInterval(I)V

    goto :goto_0
.end method

.method public setKelvinValue(I)V
    .locals 4
    .param p1, "kValue"    # I

    .prologue
    .line 1713
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_kelvin_key"

    const/16 v3, 0x37

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1715
    .local v0, "value":I
    if-eq v0, p1, :cond_0

    .line 1716
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKelvin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_kelvin_key"

    invoke-static {v1, v2, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1719
    const/16 v1, 0x23

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1721
    :cond_0
    return-void
.end method

.method public setKeyboardCoverCamera(Z)V
    .locals 3
    .param p1, "keyboardCoverCamera"    # Z

    .prologue
    .line 3414
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    if-eq v0, p1, :cond_0

    .line 3415
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

    .line 3416
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    .line 3418
    :cond_0
    return-void
.end method

.method public setLowBatteryStatus(Z)V
    .locals 0
    .param p1, "lowBattery"    # Z

    .prologue
    .line 1730
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mLowBattery:Z

    .line 1731
    return-void
.end method

.method public setManualSettings(I)V
    .locals 3
    .param p1, "manual"    # I

    .prologue
    .line 3959
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

    .line 3961
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualExposureValue(I)V

    .line 3962
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualShutterSpeed(I)V

    .line 3963
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualISO(I)V

    .line 3964
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualWhiteBalance(I)V

    .line 3965
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualFocusLength(I)V

    .line 3966
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualExposureMeter(I)V

    .line 3967
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualMultiAF(I)V

    .line 3968
    return-void
.end method

.method public setMotionPanoramaMode(I)V
    .locals 3
    .param p1, "motionPanoramaMode"    # I

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_panorama_mode"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultMotionPanoramaMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    .line 1741
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    if-eq v0, p1, :cond_0

    .line 1742
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

    .line 1743
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    .line 1744
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_panorama_mode"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1745
    const/16 v0, 0x87

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1747
    :cond_0
    return-void
.end method

.method public setMotionPhoto(I)V
    .locals 3
    .param p1, "motionPhoto"    # I

    .prologue
    .line 1762
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

    .line 1764
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    if-eq v0, p1, :cond_0

    .line 1765
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

    .line 1766
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    .line 1768
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_motion_photo_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1769
    const/16 v0, 0x2a

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1771
    :cond_0
    return-void
.end method

.method public setMotionWideSelfieMode(I)V
    .locals 3
    .param p1, "motionWideSelfieMode"    # I

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_wide_selfie_mode"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultMotionWideSelfieMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    .line 1781
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    if-eq v0, p1, :cond_0

    .line 1782
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

    .line 1783
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    .line 1784
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_wide_selfie_mode"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1785
    const/16 v0, 0xad

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1787
    :cond_0
    return-void
.end method

.method public setMultiAFMode(I)V
    .locals 4
    .param p1, "multiAFMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 1800
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    if-ne v0, v3, :cond_0

    .line 1801
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_multi_af_mode"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_MULTI_AF_MODE:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiAFMode:I

    .line 1804
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiAFMode:I

    if-eq v0, p1, :cond_2

    .line 1805
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

    .line 1806
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiAFMode:I

    .line 1807
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    if-ne v0, v3, :cond_1

    .line 1808
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_multi_af_mode"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiAFMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1810
    :cond_1
    const/16 v0, 0x91

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1812
    :cond_2
    return-void
.end method

.method public setMultiWindowMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1821
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiWindowMode:I

    if-eq v0, p1, :cond_0

    .line 1822
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

    .line 1823
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiWindowMode:I

    .line 1825
    :cond_0
    return-void
.end method

.method public setNetworkPermissionEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 3427
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_check_network_permission_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3428
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNetworkPermissionEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3429
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_check_network_permission_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3431
    :cond_0
    return-void
.end method

.method public setObjectTrackingAF(I)V
    .locals 4
    .param p1, "ObjectTrackingAF"    # I

    .prologue
    const/16 v3, 0x17

    .line 1837
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_0

    .line 1849
    :goto_0
    return-void

    .line 1840
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_object_trackingaf_key"

    const/4 v2, 0x0

    .line 1841
    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    .line 1840
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    .line 1842
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    if-eq v0, p1, :cond_1

    .line 1843
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

    .line 1844
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    .line 1845
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_object_trackingaf_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1846
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1848
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
    .line 1861
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

    .line 1862
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    if-eq v0, p1, :cond_0

    .line 1863
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

    .line 1864
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    .line 1865
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_picture_format"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1867
    const/16 v0, 0x13b

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1869
    :cond_0
    return-void
.end method

.method public setQRCodeDetection(I)V
    .locals 3
    .param p1, "qrCodeDetection"    # I

    .prologue
    .line 1878
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

    .line 1879
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    if-eq v0, p1, :cond_0

    .line 1880
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

    .line 1881
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    .line 1882
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_qrcode_detection"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1883
    const/16 v0, 0x13c

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1885
    :cond_0
    return-void
.end method

.method public setRearLensDistortionCorrection(I)V
    .locals 4
    .param p1, "correction"    # I

    .prologue
    .line 1912
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_rear_lens_distortion_correction_key"

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    .line 1913
    .local v0, "rearLensDistortionCorrection":I
    if-eq v0, p1, :cond_0

    .line 1914
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRearLensDistortionCorrection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    move v0, p1

    .line 1916
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_rear_lens_distortion_correction_key"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1918
    :cond_0
    return-void
.end method

.method public setRecordingMotionSpeed(I)V
    .locals 4
    .param p1, "motionSpeed"    # I

    .prologue
    .line 1927
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getRecordingMotionSpeed()I

    move-result v0

    .line 1929
    .local v0, "recordingMotionSpeed":I
    if-eq v0, p1, :cond_0

    .line 1930
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRecordingMotionSpeed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    move v0, p1

    .line 1932
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_recording_motion_speed_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1933
    const/16 v1, 0x170d

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1935
    :cond_0
    return-void
.end method

.method public setResizableCamera(Z)V
    .locals 3
    .param p1, "resizableCamera"    # Z

    .prologue
    .line 3450
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eq v0, p1, :cond_1

    .line 3451
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

    .line 3452
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    .line 3454
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v0, :cond_1

    .line 3455
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

    .line 3456
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 3460
    :cond_1
    return-void
.end method

.method public setReview(I)V
    .locals 3
    .param p1, "review"    # I

    .prologue
    .line 1947
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v0, :cond_1

    .line 1957
    :cond_0
    :goto_0
    return-void

    .line 1950
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

    .line 1951
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    if-eq v0, p1, :cond_0

    .line 1952
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

    .line 1953
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    .line 1954
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_review_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1955
    const/16 v0, 0x11

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setSaveRichTone(I)V
    .locals 3
    .param p1, "saveRichTone"    # I

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_save_richtone_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    .line 1967
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    if-eq v0, p1, :cond_0

    .line 1968
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

    .line 1969
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    .line 1970
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_save_richtone_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1971
    const/16 v0, 0x22

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 1973
    :cond_0
    return-void
.end method

.method public setSecureCamera(Z)V
    .locals 4
    .param p1, "secureCamera"    # Z

    .prologue
    const/16 v3, 0x13d

    .line 3469
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    if-eq v0, p1, :cond_1

    .line 3470
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

    .line 3471
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    .line 3473
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    if-eqz v0, :cond_2

    .line 3474
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

    .line 3475
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 3477
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x1

    invoke-interface {v0, v3, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3482
    :cond_1
    :goto_0
    return-void

    .line 3479
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
    .line 1985
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_self_flip_key"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_SELF_FLIP:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    .line 1986
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    if-eq v0, p1, :cond_0

    .line 1987
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

    .line 1988
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    .line 1989
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_self_flip_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1991
    const/16 v0, 0x26

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1993
    :cond_0
    return-void
.end method

.method public setSeparatedShootingMode(ILjava/lang/String;)V
    .locals 3
    .param p1, "commandId"    # I
    .param p2, "shootingModeName"    # Ljava/lang/String;

    .prologue
    .line 3972
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-nez v0, :cond_0

    .line 3973
    const-string v0, "CameraSettings"

    const-string v1, "Cannot support Separated ShootingMode"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3988
    .end local p2    # "shootingModeName":Ljava/lang/String;
    :goto_0
    return-void

    .line 3977
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

    .line 3979
    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2    # "shootingModeName":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    .line 3981
    invoke-static {p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    .line 3983
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3984
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    goto :goto_0

    .line 3986
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    goto :goto_0
.end method

.method public setSettingLandingState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 2007
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingLandingState:Ljava/lang/String;

    .line 2008
    return-void
.end method

.method public setShapeCorrection(I)V
    .locals 4
    .param p1, "shapeCorrection"    # I

    .prologue
    .line 2249
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_shapecorrection_key"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2250
    .local v0, "shapeCorrectionMode":I
    if-eq v0, p1, :cond_0

    .line 2251
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShapeCorrection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    move v0, p1

    .line 2253
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_shapecorrection_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2255
    const/16 v1, 0x71

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2257
    :cond_0
    return-void
.end method

.method public setShootingMode(I)V
    .locals 4
    .param p1, "shootingMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 3992
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    if-eq v0, p1, :cond_0

    invoke-static {v3, p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3993
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

    .line 3995
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    .line 3996
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    .line 3998
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3999
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    .line 4012
    :goto_0
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 4014
    :cond_0
    return-void

    .line 4000
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4001
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_DUAL:Z

    if-eqz v0, :cond_2

    .line 4002
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    goto :goto_0

    .line 4004
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    goto :goto_0

    .line 4006
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4007
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    goto :goto_0

    .line 4009
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

    .line 2546
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    if-ne v0, v3, :cond_0

    .line 2547
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_shutter_speed_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSpeed:I

    .line 2550
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSpeed:I

    if-eq v0, p1, :cond_2

    .line 2551
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

    .line 2552
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSpeed:I

    .line 2553
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    if-ne v0, v3, :cond_1

    .line 2554
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_shutter_speed_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2556
    :cond_1
    const/16 v0, 0x1f

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2558
    :cond_2
    return-void
.end method

.method public setSkinColorLevel(I)V
    .locals 3
    .param p1, "skinColorLevel"    # I

    .prologue
    .line 2570
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_skincolor_level_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    .line 2571
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    if-eq v0, p1, :cond_0

    .line 2572
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

    .line 2573
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    .line 2574
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_skincolor_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2576
    const/16 v0, 0x7a

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2578
    :cond_0
    return-void
.end method

.method public setSlimFaceLevel(I)V
    .locals 3
    .param p1, "slimFaceLevel"    # I

    .prologue
    .line 2590
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_slimface_level_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    .line 2591
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    if-eq v0, p1, :cond_0

    .line 2592
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

    .line 2593
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    .line 2594
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_slimface_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2596
    const/16 v0, 0x6e

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2598
    :cond_0
    return-void
.end method

.method public setSoundAndShotMode(I)V
    .locals 3
    .param p1, "SoundAndShotMode"    # I

    .prologue
    .line 2619
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    if-eq v0, p1, :cond_0

    .line 2620
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

    .line 2621
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    .line 2622
    const/16 v0, 0x4d

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 2624
    :cond_0
    return-void
.end method

.method public setSpotlightLevel(I)V
    .locals 4
    .param p1, "spotlightLevel"    # I

    .prologue
    .line 2636
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_spotlight_level_key"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2637
    .local v0, "value":I
    if-eq v0, p1, :cond_0

    .line 2638
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSpotlightLevel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_spotlight_level_key"

    invoke-static {v1, v2, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2640
    const/16 v1, 0x6f

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2642
    :cond_0
    return-void
.end method

.method public setSpotlightPosition(I)V
    .locals 4
    .param p1, "spotlightPosition"    # I

    .prologue
    .line 2654
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_spotlight_position_key"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2655
    .local v0, "value":I
    if-eq v0, p1, :cond_0

    .line 2656
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSpotlightPosition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_spotlight_position_key"

    invoke-static {v1, v2, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2658
    const/16 v1, 0x77

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2660
    :cond_0
    return-void
.end method

.method public setStickerId(I)V
    .locals 6
    .param p1, "stickerId"    # I

    .prologue
    const/16 v5, 0x232d

    .line 2723
    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerId:I

    if-ne v2, p1, :cond_0

    if-ne p1, v5, :cond_1

    .line 2724
    :cond_0
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStickerId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerId:I

    .line 2727
    const/16 v2, 0xbe

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2729
    if-ne p1, v5, :cond_1

    .line 2730
    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerPackageId:I

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerPackage(I)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    move-result-object v1

    .line 2731
    .local v1, "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 2732
    .local v0, "r":Ljava/util/Random;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->getStickerList()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;

    iget v2, v2, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;->commandId:I

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->getStickerList()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerRandomId:I

    .line 2733
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stickerRandomId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerRandomId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    const/16 v2, 0xbf

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerRandomId:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2737
    .end local v0    # "r":Ljava/util/Random;
    .end local v1    # "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    :cond_1
    return-void
.end method

.method public setStickerPackageId(I)V
    .locals 3
    .param p1, "stickerPackageId"    # I

    .prologue
    .line 2746
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerPackageId:I

    if-eq v0, p1, :cond_0

    .line 2747
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStickerPackageId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerPackageId:I

    .line 2750
    :cond_0
    return-void
.end method

.method public setStickerSoundMute(I)V
    .locals 3
    .param p1, "soundMute"    # I

    .prologue
    .line 2759
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerSoundMute:I

    if-eq v0, p1, :cond_0

    .line 2760
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStickerSoundMute : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerSoundMute:I

    .line 2762
    const/16 v0, 0x232c

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerSoundMute:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2764
    :cond_0
    return-void
.end method

.method public setStickerType(I)V
    .locals 3
    .param p1, "stickerType"    # I

    .prologue
    .line 2776
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerType:I

    if-eq v0, p1, :cond_0

    .line 2777
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStickerType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerType:I

    .line 2780
    :cond_0
    return-void
.end method

.method public setStorage(I)V
    .locals 4
    .param p1, "storage"    # I

    .prologue
    const/16 v3, 0x16

    .line 2789
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_storage_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultStorage()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    .line 2790
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    if-eq v0, p1, :cond_0

    .line 2791
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

    .line 2792
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    .line 2793
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_storage_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2795
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2796
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    .line 2798
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 2799
    return-void
.end method

.method public setTapToTakePictures(I)V
    .locals 4
    .param p1, "tapToTakePictures"    # I

    .prologue
    .line 2808
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_tap_to_take_pictures_key"

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    .line 2809
    .local v0, "value":I
    if-eq v0, p1, :cond_0

    .line 2810
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTapToTakePictures "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_tap_to_take_pictures_key"

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2813
    :cond_0
    return-void
.end method

.method public setTemperatureHighToRecord(Z)V
    .locals 0
    .param p1, "highTemperature"    # Z

    .prologue
    .line 3526
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToRecord:Z

    .line 3527
    return-void
.end method

.method public setTemperatureHighToUseFlash(Z)V
    .locals 0
    .param p1, "highTemperature"    # Z

    .prologue
    .line 3536
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToUseFlash:Z

    .line 3537
    return-void
.end method

.method public setTemperatureLowToUseFlash(Z)V
    .locals 0
    .param p1, "lowTemperature"    # Z

    .prologue
    .line 3546
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureLowToUseFlash:Z

    .line 3547
    return-void
.end method

.method public setTimer(I)V
    .locals 1
    .param p1, "timer"    # I

    .prologue
    .line 2826
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    .line 2827
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setBackTimer(I)V

    .line 2831
    :goto_0
    return-void

    .line 2829
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFrontTimer(I)V

    goto :goto_0
.end method

.method public setTimer(II)V
    .locals 1
    .param p1, "cameraId"    # I
    .param p2, "timer"    # I

    .prologue
    .line 4018
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 4019
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setBackTimer(I)V

    .line 4023
    :goto_0
    return-void

    .line 4021
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFrontTimer(I)V

    goto :goto_0
.end method

.method public setTorchLightStatus(I)V
    .locals 3
    .param p1, "torchLight"    # I

    .prologue
    .line 2849
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    if-eq v0, p1, :cond_0

    .line 2850
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    .line 2851
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x12c

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 2853
    :cond_0
    return-void
.end method

.method public setVideoCollageRecordingTime(I)V
    .locals 3
    .param p1, "recordingTime"    # I

    .prologue
    const/4 v2, 0x1

    .line 2871
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2872
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_recording_time"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    .line 2877
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    if-eq v0, p1, :cond_0

    .line 2878
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    .line 2879
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

    .line 2881
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2882
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_recording_time"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2886
    :goto_1
    const/16 v0, 0x84

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2888
    :cond_0
    return-void

    .line 2874
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_back_video_collage_recording_time"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    goto :goto_0

    .line 2884
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
    .line 4027
    const-string v2, "CameraSettings"

    const-string v3, "setVideoCollageResolution()"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4031
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4054
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4055
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    .line 4059
    .local v1, "cameraResolution":Ljava/lang/String;
    :goto_0
    const-string v0, "960x720"

    .line 4064
    .local v0, "camcorderResolution":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 4065
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 4066
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 4067
    :cond_0
    const-string v0, "640x480"

    .line 4070
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

    .line 4072
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolution(I)Z

    .line 4073
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->overrideCamcorderResolution(I)V

    .line 4074
    return-void

    .line 4037
    .end local v0    # "camcorderResolution":Ljava/lang/String;
    .end local v1    # "cameraResolution":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4038
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    .line 4042
    .restart local v1    # "cameraResolution":Ljava/lang/String;
    :goto_2
    const-string v0, "960x960"

    .line 4043
    .restart local v0    # "camcorderResolution":Ljava/lang/String;
    goto :goto_1

    .line 4040
    .end local v0    # "camcorderResolution":Ljava/lang/String;
    .end local v1    # "cameraResolution":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    .restart local v1    # "cameraResolution":Ljava/lang/String;
    goto :goto_2

    .line 4057
    .end local v1    # "cameraResolution":Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    .restart local v1    # "cameraResolution":Ljava/lang/String;
    goto :goto_0

    .line 4031
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

    .line 4078
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4079
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_type"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    .line 4084
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    if-eq v0, p1, :cond_0

    .line 4085
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    .line 4086
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

    .line 4088
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4089
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_type"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4094
    :goto_1
    if-eqz p2, :cond_0

    .line 4095
    const/16 v0, 0x83

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 4098
    :cond_0
    return-void

    .line 4081
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_back_video_collage_type"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    goto :goto_0

    .line 4091
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
    .line 2910
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

    .line 2911
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    if-eq v0, p1, :cond_0

    .line 2912
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

    .line 2913
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    .line 2914
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_fullpreview_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2916
    const/16 v0, 0x138

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2918
    :cond_0
    return-void
.end method

.method public setVolumeKeyAs(I)V
    .locals 3
    .param p1, "volumeKeyAs"    # I

    .prologue
    .line 2927
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_volume_key_as"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VOLUME_KEY_AS:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    .line 2928
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    if-eq v0, p1, :cond_0

    .line 2929
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

    .line 2930
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    .line 2931
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_volume_key_as"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2932
    const/16 v0, 0x49

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2934
    :cond_0
    return-void
.end method

.method public setWatermarkInputText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2943
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkInputText:Ljava/lang/String;

    .line 2944
    return-void
.end method

.method public setWhiteBalance(I)V
    .locals 4
    .param p1, "whiteBalance"    # I

    .prologue
    const/4 v3, 0x1

    .line 2957
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    if-ne v0, v3, :cond_0

    .line 2958
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_white_balance_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    .line 2961
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    if-eq v0, p1, :cond_2

    .line 2962
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

    .line 2963
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    .line 2964
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    if-ne v0, v3, :cond_1

    .line 2965
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_white_balance_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2967
    :cond_1
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2969
    :cond_2
    return-void
.end method

.method public setWideTeleDualMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 2978
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWideTeleDualMode:I

    if-eq v0, p1, :cond_0

    .line 2979
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWideTeleDualMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWideTeleDualMode:I

    .line 2982
    const/16 v0, 0xb6

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWideTeleDualMode:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2984
    :cond_0
    return-void
.end method

.method public setZoomValue(I)V
    .locals 3
    .param p1, "zoomValue"    # I

    .prologue
    .line 2997
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    if-eq v0, p1, :cond_0

    .line 2998
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

    .line 2999
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    .line 3000
    const/16 v0, 0x12

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 3002
    :cond_0
    return-void
.end method

.method public storeShootingModeBeforeRecording()V
    .locals 1

    .prologue
    .line 4102
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPreviousShootingModeForRecording:I

    .line 4103
    return-void
.end method

.method public unregisterAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    .prologue
    .line 4107
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v1

    .line 4108
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4109
    monitor-exit v1

    .line 4110
    return-void

    .line 4109
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
    .line 4114
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v2

    .line 4115
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4116
    .local v0, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    if-nez v0, :cond_0

    .line 4117
    const-string v1, "CameraSettings"

    const-string v3, "Could not find listener. return."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4121
    :goto_0
    monitor-exit v2

    .line 4122
    return-void

    .line 4119
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4121
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
    .line 4126
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

    .line 4128
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4129
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 4130
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_WIDE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4131
    .local v0, "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    .line 4156
    .end local v0    # "resolutionID":I
    :cond_0
    :goto_0
    return-void

    .line 4132
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4133
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_WIDE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4134
    .restart local v0    # "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    .line 4135
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    goto :goto_0

    .line 4137
    .end local v0    # "resolutionID":I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4138
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 4139
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_SQUARE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4140
    .restart local v0    # "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    goto :goto_0

    .line 4141
    .end local v0    # "resolutionID":I
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4142
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_SQUARE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4143
    .restart local v0    # "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    .line 4144
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    goto :goto_0

    .line 4147
    .end local v0    # "resolutionID":I
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 4148
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_NORMAL_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4149
    .restart local v0    # "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    goto/16 :goto_0

    .line 4150
    .end local v0    # "resolutionID":I
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4151
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_NORMAL_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4152
    .restart local v0    # "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    .line 4153
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
    .line 4160
    return-void
.end method

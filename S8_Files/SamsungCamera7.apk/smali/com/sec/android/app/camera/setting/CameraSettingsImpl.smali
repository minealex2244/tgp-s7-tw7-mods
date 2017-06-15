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
    .line 65
    new-instance v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 79
    sget v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_DEFAULT_LIVE_BEAUTY_LEVEL:I

    sput v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    .line 82
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FONT_SCALE:F

    .line 83
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

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 93
    iput-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    .line 94
    iput-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    .line 106
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    .line 109
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    .line 112
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    .line 113
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    .line 114
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    .line 115
    iput v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    .line 119
    iput v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    .line 123
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    .line 124
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    .line 125
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFilterEffect:I

    .line 127
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    .line 128
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    .line 129
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSpeed:I

    .line 130
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    .line 131
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 132
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VIEW_MODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    .line 135
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQuality:I

    .line 138
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    .line 140
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualISO:I

    .line 141
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    .line 142
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    .line 143
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualFocusLength:I

    .line 144
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    .line 145
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureMeter:I

    .line 146
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    .line 151
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    .line 152
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAudioRecording:I

    .line 158
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    .line 159
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    .line 161
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    .line 162
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCallStatus:I

    .line 164
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    .line 165
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    .line 166
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    .line 167
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    .line 169
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    .line 171
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    .line 173
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    .line 175
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    .line 177
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    .line 178
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    .line 186
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFilterEffectStrengthLevel:I

    .line 187
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFilterEffectVignetteLevel:I

    .line 189
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    .line 191
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    .line 193
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    .line 194
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    .line 195
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    .line 197
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    .line 198
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiWindowMode:I

    .line 200
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    .line 202
    iput-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 205
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraResolutionChanged:Z

    .line 206
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    .line 208
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mLowBattery:Z

    .line 209
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToUseFlash:Z

    .line 210
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureLowToUseFlash:Z

    .line 211
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToRecord:Z

    .line 213
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    .line 215
    const/16 v0, 0x1e78

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEffectCategory:I

    .line 216
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoFilterPinSelected:Z

    .line 218
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FONT_SCALE:F

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFontScale:F

    .line 220
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWideTeleDualMode:I

    .line 222
    iput v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerId:I

    .line 223
    const/16 v0, 0x2713

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerPackageId:I

    .line 224
    iput v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerRandomId:I

    .line 227
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerType:I

    .line 228
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerSoundMute:I

    .line 230
    iput-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkInputText:Ljava/lang/String;

    .line 232
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 233
    new-instance v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;-><init>(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mNotificationHandler:Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    .line 238
    const-string v0, "Setting"

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingLandingState:Ljava/lang/String;

    .line 241
    const-string v0, "Create CameraSettings"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 243
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 244
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraIdFromPreferences()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    .line 246
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 247
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->handleNotification(II)V

    return-void
.end method

.method private getBackInterval()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4206
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_1

    .line 4213
    :cond_0
    :goto_0
    return v0

    .line 4210
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackTimer()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4213
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
    .line 4230
    const-string v0, "front"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4231
    const/4 v0, 0x1

    .line 4233
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCameraIdFromPreferences()I
    .locals 3

    .prologue
    .line 4239
    const-string v0, "0"

    .line 4240
    .local v0, "id":Ljava/lang/String;
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_WIDE_TELE_DUAL_MODE:Z

    if-eqz v1, :cond_0

    .line 4241
    const-string v0, "20"

    .line 4243
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
    .line 4247
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMCORDER_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getDefaultAutoNightDetectionMode()I
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 4251
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_NIGHT_DETECTION:Z

    if-nez v2, :cond_1

    .line 4252
    const/4 v0, 0x0

    .line 4261
    :cond_0
    :goto_0
    return v0

    .line 4255
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    .line 4258
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4259
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camera_autonightdetection_key"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4260
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

    .line 4266
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4269
    :cond_0
    return v1
.end method

.method private getDefaultCameraResolution(I)I
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 4274
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getSeamlessZoomCameraId()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getPortraitCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 4275
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4287
    :goto_0
    return v0

    .line 4276
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 4277
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4278
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 4279
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4280
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 4281
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_PICTURESIZE:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4282
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 4283
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_PICTURESIZE:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4285
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

    .line 4286
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

    .line 4287
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method private getDefaultFlashMode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4292
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v2

    if-nez v2, :cond_0

    .line 4293
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4294
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camera_flash_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4295
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

    .line 4298
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "flashMode":I
    :cond_0
    return v1
.end method

.method private getDefaultFrontFlashMode()I
    .locals 1

    .prologue
    .line 4303
    const/4 v0, 0x0

    return v0
.end method

.method private getDefaultMotionPanoramaMode()I
    .locals 1

    .prologue
    .line 4307
    const/4 v0, 0x1

    return v0
.end method

.method private getDefaultMotionWideSelfieMode()I
    .locals 1

    .prologue
    .line 4311
    const/4 v0, 0x1

    return v0
.end method

.method private getDefaultStorage()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4315
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    .line 4316
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4317
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "csc_pref_setup_storage_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4319
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    return v1
.end method

.method private getEasyCamcorderResolution()I
    .locals 1

    .prologue
    .line 4324
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4325
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4327
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

    .line 4337
    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 4343
    :cond_0
    :goto_0
    return v0

    .line 4339
    :sswitch_0
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_REAR_RT_HDR:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 4341
    :sswitch_1
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FRONT_RT_HDR:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 4337
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

    .line 4348
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4349
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v1, 0x48

    if-ne v0, v1, :cond_1

    .line 4350
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4362
    :goto_0
    return v0

    .line 4351
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    if-ne v0, v2, :cond_2

    .line 4352
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->SHOT_AND_MORE_BACK_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4354
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4357
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    if-ne v0, v2, :cond_4

    .line 4358
    const-string v0, "1920x1080"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4359
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

    .line 4360
    :cond_5
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->WIDE_SELFIE_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4362
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

    .line 4367
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_1

    .line 4374
    :cond_0
    :goto_0
    return v0

    .line 4371
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontTimer()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4374
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
    .line 4391
    const-string v0, "1440x1440"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getKeyboardCoverCameraResolution()I
    .locals 1

    .prologue
    .line 4395
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4396
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->KEYBOARD_COVER_BACK_CAMERA_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4398
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
    .line 4403
    sparse-switch p1, :sswitch_data_0

    .line 4464
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCommandIdByShootingMode(I)I

    move-result v0

    .line 4465
    .local v0, "commandId":I
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isDownloadedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4466
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4469
    .end local v0    # "commandId":I
    :goto_0
    return-object v1

    .line 4405
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09008a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4408
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090093

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4411
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4413
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09008e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4416
    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4418
    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4420
    :sswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4422
    :sswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900b3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4424
    :sswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090088

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4426
    :sswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090095

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4428
    :sswitch_a
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4430
    :sswitch_b
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4432
    :sswitch_c
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09008b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4434
    :sswitch_d
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4438
    :sswitch_e
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4441
    :sswitch_f
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4443
    :sswitch_10
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4445
    :sswitch_11
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09009e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4447
    :sswitch_12
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4449
    :sswitch_13
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090083

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4451
    :sswitch_14
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090085

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4453
    :sswitch_15
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090097

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4455
    :sswitch_16
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090090

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4457
    :sswitch_17
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4459
    :sswitch_18
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09009c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4469
    .restart local v0    # "commandId":I
    :cond_0
    const-string v1, ""

    goto/16 :goto_0

    .line 4403
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
    .line 4479
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v0

    .line 4481
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
    .line 4512
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-gtz v3, :cond_0

    .line 4532
    :goto_0
    monitor-exit p0

    return-void

    .line 4516
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

    if-eqz v6, :cond_1

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

    .line 4512
    .end local v2    # "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 4521
    .restart local v2    # "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    :cond_1
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
    if-eqz v1, :cond_2

    .line 4525
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

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
    :cond_2
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    .line 4531
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
    .line 4485
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p2, v5}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;-><init>(IILcom/sec/android/app/camera/setting/CameraSettingsImpl$1;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4487
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_1

    .line 4509
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4491
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isEmptyRequestQueue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4492
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

    .line 4493
    .local v2, "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4494
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

    .line 4495
    .local v0, "listener":Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    iget v7, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mModeid:I

    invoke-interface {v0, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(II)V

    goto :goto_2

    .line 4497
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

    .line 4485
    .end local v2    # "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 4497
    .restart local v2    # "value":Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
    :cond_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4498
    :try_start_5
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4499
    :try_start_6
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 4500
    .local v1, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    if-eqz v1, :cond_3

    .line 4501
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    .line 4502
    .restart local v0    # "listener":Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    iget v7, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mModeid:I

    invoke-interface {v0, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(II)V

    goto :goto_3

    .line 4505
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

    .line 4507
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

    .line 4535
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_FOCUS:Z

    if-nez v0, :cond_6

    .line 4536
    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 4537
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4547
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    if-nez v0, :cond_1

    .line 4548
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    .line 4549
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_rear_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4550
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4553
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_REAR_RT_HDR:Z

    if-eqz v0, :cond_2

    .line 4554
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4557
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getObjectTrackingAF()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4559
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 4562
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSeparatedShootingMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4563
    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    .line 4565
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSeparatedShootingMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4566
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    .line 4569
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCameraPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4570
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateIfResolutionChanged()V

    .line 4572
    :cond_5
    return-void

    .line 4539
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFocusMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 4542
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 4543
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

    .line 4576
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_FOCUS:Z

    if-nez v0, :cond_0

    .line 4577
    new-array v0, v4, [I

    const/4 v1, 0x5

    aput v1, v0, v3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->loadFromPreferences([I)V

    .line 4580
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCamcorderResolutionFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4581
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    .line 4582
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_front_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4583
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4586
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FRONT_RT_HDR:Z

    if-eqz v0, :cond_2

    .line 4587
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4590
    :cond_2
    new-array v0, v4, [I

    const/16 v1, 0x7d

    aput v1, v0, v3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->loadFromPreferences([I)V

    .line 4592
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 4595
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSeparatedShootingMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4596
    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    .line 4598
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSeparatedShootingMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4599
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    .line 4602
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCameraPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4603
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateIfResolutionChanged()V

    .line 4605
    :cond_5
    return-void
.end method

.method private isSeparatedShootingMode(I)Z
    .locals 1
    .param p1, "shootingMode"    # I

    .prologue
    .line 4608
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
    .line 4612
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 4613
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

    .line 4614
    sparse-switch v0, :sswitch_data_0

    .line 4827
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

    .line 4612
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4616
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFlashMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    .line 4617
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

    .line 4618
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_1

    .line 4621
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontFlashMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    .line 4622
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

    .line 4623
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_1

    .line 4626
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 4627
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

    .line 4628
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_1

    .line 4631
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFocusMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 4632
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

    .line 4633
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4636
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraDualEffect()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    .line 4637
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

    .line 4638
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4641
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getWhiteBalance()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    .line 4642
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

    .line 4643
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4646
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getExposureValue()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 4647
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

    .line 4648
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4651
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraISO()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    .line 4652
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

    .line 4653
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4656
    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraExposureMeter()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    .line 4657
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

    .line 4658
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4661
    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getViewMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    .line 4662
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

    .line 4663
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4666
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    .line 4667
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

    .line 4668
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4671
    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGPS()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    .line 4672
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

    .line 4673
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4676
    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getReview()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    .line 4677
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

    .line 4678
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4681
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionPhoto()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    .line 4682
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

    .line 4683
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4686
    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraShutterSound()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    .line 4687
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

    .line 4688
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4691
    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStorage()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    .line 4692
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

    .line 4693
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4696
    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSelfFlip()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    .line 4697
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

    .line 4698
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4701
    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    .line 4702
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

    .line 4703
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4706
    :sswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderAntiShake()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    .line 4707
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

    .line 4708
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4711
    :sswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraVoiceCommand()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    .line 4712
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

    .line 4713
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4716
    :sswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGuideline()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    .line 4717
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

    .line 4718
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4721
    :sswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getObjectTrackingAF()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    .line 4722
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

    .line 4723
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4726
    :sswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSaveRichTone()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    .line 4727
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

    .line 4728
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4731
    :sswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGestureControlMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    .line 4732
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

    .line 4733
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4736
    :sswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVolumeKeyAs()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    .line 4737
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

    .line 4738
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4741
    :sswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAutoNightDetectionMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    .line 4742
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

    .line 4743
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4746
    :sswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBeautyLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    .line 4747
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

    .line 4748
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4751
    :sswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSlimFaceLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    .line 4752
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

    .line 4753
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4756
    :sswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEyeEnlargeLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    .line 4757
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

    .line 4758
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4761
    :sswitch_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackBeautyLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    .line 4762
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

    .line 4763
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4766
    :sswitch_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAntiFogLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    .line 4767
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

    .line 4768
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4771
    :sswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    .line 4772
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

    .line 4773
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4776
    :sswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    .line 4777
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

    .line 4778
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4781
    :sswitch_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    .line 4782
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

    .line 4783
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4786
    :sswitch_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageRecordingTime()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    .line 4787
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

    .line 4788
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4791
    :sswitch_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getPictureFormat()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    .line 4792
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

    .line 4793
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4796
    :sswitch_24
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionPanoramaMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    .line 4797
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

    .line 4798
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4801
    :sswitch_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionWideSelfieMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    .line 4802
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

    .line 4803
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4806
    :sswitch_26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getColorTune()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    .line 4807
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

    .line 4808
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4811
    :sswitch_27
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQRCodeDetection()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    .line 4812
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

    .line 4813
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4816
    :sswitch_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFoodBlurType()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    .line 4817
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

    .line 4818
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4821
    :sswitch_29
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFloatingCameraButton()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    .line 4822
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

    .line 4823
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    .line 4831
    .end local v0    # "index":I
    :cond_0
    return-void

    .line 4614
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
    .line 4834
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mNotificationHandler:Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mNotificationHandler:Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4835
    return-void
.end method

.method private notifyCameraSettingChanged(IIZ)V
    .locals 0
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I
    .param p3, "syncmode"    # Z

    .prologue
    .line 4838
    if-eqz p3, :cond_0

    .line 4839
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->handleNotification(II)V

    .line 4843
    :goto_0
    return-void

    .line 4841
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method private resetCameraGlobalSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4846
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraShutterSound(I)V

    .line 4847
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VOLUME_KEY_AS:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setVolumeKeyAs(I)V

    .line 4848
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraShutterSound(I)V

    .line 4849
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_REAR_CAMERA_HDR:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraHDR(I)V

    .line 4850
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setRearLensDistortionCorrection(I)V

    .line 4851
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setObjectTrackingAF(I)V

    .line 4852
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setGuideline(I)V

    .line 4853
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setReview(I)V

    .line 4854
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setTimer(I)V

    .line 4855
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setInterval(I)V

    .line 4856
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setGestureControlMode(I)V

    .line 4857
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultAutoNightDetectionMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setAutoNightDetectionMode(I)V

    .line 4858
    const/16 v0, 0x57

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    invoke-direct {p0, v0, v1, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 4859
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setSaveRichTone(I)V

    .line 4860
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraVoiceCommand(I)V

    .line 4861
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VIEW_MODE:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setViewMode(I)V

    .line 4862
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setVideoCollageType(IZ)V

    .line 4863
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setVideoCollageRecordingTime(I)V

    .line 4864
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setPictureFormat(I)V

    .line 4865
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setQRCodeDetection(I)V

    .line 4866
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setHRMShutter(I)V

    .line 4867
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFoodBlurType(I)V

    .line 4868
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraDualEffect(I)V

    .line 4869
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraEffect(I)V

    .line 4870
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setStickerId(I)V

    .line 4871
    const/16 v0, 0x1e78

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setEffectCategory(I)V

    .line 4872
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setStickerSoundMute(I)V

    .line 4873
    return-void
.end method

.method private resetCameraLocalSettings(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4877
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 4879
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_SELF_FLIP:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setSelfFlip(I)V

    .line 4880
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolution(I)Z

    .line 4881
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCamcorderResolution(I)Z

    .line 4883
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setZoomValue(I)V

    .line 4884
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFlashMode(I)V

    .line 4885
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFrontFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFrontFlashMode(I)V

    .line 4886
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setExposureValue(I)V

    .line 4887
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setTimer(I)V

    .line 4888
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setWhiteBalance(I)V

    .line 4889
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraISO(I)V

    .line 4890
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraExposureMeter(I)V

    .line 4891
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCamcorderAudioRecording(I)V

    .line 4892
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderAntishake()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCamcorderAntiShake(I)V

    .line 4893
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setMotionPhoto(I)V

    .line 4894
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setBeautyLevel(I)V

    .line 4895
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SLIMFACE:Z

    if-eqz v0, :cond_0

    .line 4896
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setSlimFaceLevel(I)V

    .line 4898
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_EYEENLARGE:Z

    if-eqz v0, :cond_1

    .line 4899
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setEyeEnlargeLevel(I)V

    .line 4901
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraVoiceCommand(I)V

    .line 4903
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    .line 4904
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    .line 4905
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    .line 4906
    return-void
.end method

.method private resetCommonGlobalSettings()V
    .locals 2

    .prologue
    .line 4909
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_DisableGPSMenu"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4910
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setGPS(I)V

    .line 4912
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultStorage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setStorage(I)V

    .line 4913
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isExternalSDStorageMounted()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateStorage(Z)V

    .line 4914
    return-void
.end method

.method private resetEffectLevelSettingValue()V
    .locals 2

    .prologue
    .line 4917
    const-string v0, "CameraSettings"

    const-string v1, "resetEffectLevelSettingValue"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4918
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setEffectStrengthLevel(I)V

    .line 4919
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setEffectVignetteLevel(I)V

    .line 4920
    return-void
.end method

.method private setBackInterval(I)V
    .locals 4
    .param p1, "interval"    # I

    .prologue
    const/16 v3, 0x7f

    .line 4217
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackInterval()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    .line 4219
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    if-eq v0, p1, :cond_0

    .line 4220
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

    .line 4221
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    .line 4222
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_interval_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4224
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 4225
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4227
    :cond_0
    return-void
.end method

.method private setCameraFacing(I)V
    .locals 3
    .param p1, "cameraFacing"    # I

    .prologue
    .line 541
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 542
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

    .line 548
    :goto_0
    return-void

    .line 545
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

    .line 547
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

    .line 4923
    sparse-switch p1, :sswitch_data_0

    .line 4983
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 4986
    :goto_0
    return-void

    .line 4925
    :sswitch_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-eqz v0, :cond_1

    .line 4926
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-eqz v0, :cond_0

    .line 4927
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4929
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4931
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-eqz v0, :cond_2

    .line 4932
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4934
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4938
    :sswitch_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SOUND_AND_SHOT:Z

    if-eqz v0, :cond_4

    .line 4939
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SOUND_AND_SHOT:Z

    if-eqz v0, :cond_3

    .line 4940
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4942
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4944
    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SOUND_AND_SHOT:Z

    if-eqz v0, :cond_5

    .line 4945
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4947
    :cond_5
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4951
    :sswitch_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v0, :cond_7

    .line 4952
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v0, :cond_6

    .line 4953
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4955
    :cond_6
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4957
    :cond_7
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v0, :cond_8

    .line 4958
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4960
    :cond_8
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4964
    :sswitch_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v0, :cond_a

    .line 4965
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v0, :cond_9

    .line 4966
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4968
    :cond_9
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4970
    :cond_a
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v0, :cond_b

    .line 4971
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4973
    :cond_b
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4980
    :sswitch_4
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    .line 4923
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
    .line 4989
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

    .line 4991
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 4992
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_front_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4998
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 4993
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 4994
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->saveDualCameraRearResolution(Landroid/content/Context;I)V

    goto :goto_0

    .line 4996
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
    .line 5003
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->initializeDefaultFrontCameraShootingModeOrderList()V

    .line 5005
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 5007
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

    .line 5008
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

    .line 5011
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

    .line 5012
    return-void
.end method

.method private setFrontInterval(I)V
    .locals 4
    .param p1, "interval"    # I

    .prologue
    const/16 v3, 0x7f

    .line 4378
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontInterval()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    .line 4380
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    if-eq v0, p1, :cond_0

    .line 4381
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

    .line 4382
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    .line 4383
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_interval_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4385
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 4386
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4388
    :cond_0
    return-void
.end method

.method private setManualExposureMeter(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5015
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureMeter:I

    .line 5016
    return-void
.end method

.method private setManualExposureValue(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5019
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    .line 5020
    return-void
.end method

.method private setManualFocusLength(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5023
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualFocusLength:I

    .line 5024
    return-void
.end method

.method private setManualISO(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5027
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualISO:I

    .line 5028
    return-void
.end method

.method private setManualMultiAF(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5031
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    .line 5032
    return-void
.end method

.method private setManualShutterSpeed(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5035
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    .line 5036
    return-void
.end method

.method private setManualWhiteBalance(I)V
    .locals 0
    .param p1, "manual"    # I

    .prologue
    .line 5039
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    .line 5040
    return-void
.end method

.method private updateDualCameraSetting(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 5044
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_DUALCAMERA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    .line 5069
    :cond_0
    :goto_0
    return-void

    .line 5047
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

    .line 5049
    const-string v0, "pref_camera_rear_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_camera_dual_rear_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5050
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5051
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

    .line 5054
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5055
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->saveDualCameraRearResolution(Landroid/content/Context;I)V

    .line 5057
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5058
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_rear_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 5060
    :cond_5
    const-string v0, "pref_camera_front_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_camera_dual_front_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5061
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5062
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

    .line 5065
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5066
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
    .line 251
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetListeners()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 253
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public getAntiFogLevel()I
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 262
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    .line 265
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
    .line 283
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
    .line 2603
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoFilterPinSelected:Z

    return v0
.end method

.method public getAutoNightDetectionMode()I
    .locals 3

    .prologue
    .line 288
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_NIGHT_DETECTION:Z

    if-nez v0, :cond_0

    .line 289
    const/4 v0, 0x0

    .line 291
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

    .line 308
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 311
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
    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDefaultBackCameraShootingModeOrder()V

    .line 332
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

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    .line 335
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

    .line 4164
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    .line 4167
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
    .line 352
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v0, :cond_1

    .line 353
    :cond_0
    const/4 v0, 0x0

    .line 355
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
    .line 372
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
    .line 389
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCallStatus:I

    return v0
.end method

.method public getCamcorderAntiShake()I
    .locals 3

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_0

    .line 395
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderAntishake()I

    move-result v0

    .line 400
    :goto_0
    return v0

    .line 397
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_FRONT_ANTISHAKE:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    const/4 v0, 0x0

    goto :goto_0

    .line 400
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
    .line 423
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAudioRecording:I

    return v0
.end method

.method public getCamcorderResolution()I
    .locals 3

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    if-eqz v0, :cond_0

    .line 437
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

    .line 454
    :goto_0
    return v0

    .line 440
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_1

    .line 441
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCoverCamcorderResolution()I

    move-result v0

    goto :goto_0

    .line 442
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    if-eqz v0, :cond_2

    .line 443
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getKeyboardCoverCamcorderResolution()I

    move-result v0

    goto :goto_0

    .line 444
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_3

    .line 445
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEasyCamcorderResolution()I

    move-result v0

    goto :goto_0

    .line 446
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

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getAttachVideoFixedResolution()I

    move-result v0

    goto :goto_0

    .line 449
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 450
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

    .line 451
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 452
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

    .line 454
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
    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_rear_resolution_key"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 466
    :goto_0
    return v0

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 464
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

    .line 466
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
    .line 472
    const/4 v0, -0x1

    return v0
.end method

.method public getCameraDualEffect()I
    .locals 3

    .prologue
    const/16 v2, 0x30

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_dual_effect"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraDualEffect(I)V

    .line 484
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

    .line 507
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v0

    .line 511
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureMeter:I

    if-eqz v1, :cond_0

    .line 514
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
    .line 537
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    return v0
.end method

.method public getCameraFocusMode()I
    .locals 3

    .prologue
    .line 552
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 553
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    .line 561
    :goto_0
    return v0

    .line 555
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v0, :cond_2

    .line 556
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    const/4 v0, 0x0

    goto :goto_0

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 561
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    goto :goto_0
.end method

.method public getCameraHDR()I
    .locals 3

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_0

    .line 567
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEasyCameraHDR()I

    move-result v0

    .line 573
    :goto_0
    return v0

    .line 570
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_hdr_key"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_CAMERA_HDR:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 573
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

    .line 600
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualISO:I

    if-nez v1, :cond_0

    .line 603
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
    .line 625
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    return v0
.end method

.method public getCameraQuality()I
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQuality:I

    return v0
.end method

.method public getCameraResolution()I
    .locals 3

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-eqz v0, :cond_0

    .line 676
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 689
    :goto_0
    return v0

    .line 677
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    if-eqz v0, :cond_1

    .line 678
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getKeyboardCoverCameraResolution()I

    move-result v0

    goto :goto_0

    .line 679
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_2

    .line 680
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEasyCameraResolution()I

    move-result v0

    goto :goto_0

    .line 682
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 683
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

    .line 684
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 685
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

    .line 686
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 687
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

    .line 689
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
    .line 696
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_rear_resolution_key"

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 703
    :goto_0
    return v0

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_resolution_key"

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 701
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_rear_resolution_key"

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 703
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
    .line 709
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraResolutionChanged:Z

    return v0
.end method

.method public getCameraResolutionForDual()I
    .locals 3

    .prologue
    .line 719
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_NORMAL_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 721
    .local v0, "resolutionID":I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 722
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 723
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_WIDE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 741
    :cond_0
    :goto_0
    return v0

    .line 724
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 725
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_WIDE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 727
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 728
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 729
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_SQUARE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 730
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 731
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_SQUARE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 734
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 735
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_NORMAL_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 736
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 737
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_NORMAL_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraShutterSound()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 746
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getForcedShutterSound()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 749
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
    .line 772
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isEffectSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    const/4 v0, 0x0

    .line 775
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFilterEffect:I

    goto :goto_0
.end method

.method public getCameraVoiceCommand()I
    .locals 3

    .prologue
    .line 780
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
    .line 814
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
    .line 830
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCommandIdByShootingMode(I)I

    move-result v0

    return v0
.end method

.method public getCommandIdByShootingMode(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 835
    const/4 v0, 0x0

    .line 837
    .local v0, "commandId":I
    packed-switch p1, :pswitch_data_0

    .line 943
    :goto_0
    :pswitch_0
    return v0

    .line 839
    :pswitch_1
    const/16 v0, 0x12c

    .line 840
    goto :goto_0

    .line 842
    :pswitch_2
    const/16 v0, 0x13d

    .line 843
    goto :goto_0

    .line 845
    :pswitch_3
    const/16 v0, 0x12d

    .line 846
    goto :goto_0

    .line 848
    :pswitch_4
    const/16 v0, 0x133

    .line 849
    goto :goto_0

    .line 851
    :pswitch_5
    const/16 v0, 0x12e

    .line 852
    goto :goto_0

    .line 854
    :pswitch_6
    const/16 v0, 0x162

    .line 855
    goto :goto_0

    .line 857
    :pswitch_7
    const/16 v0, 0x150

    .line 858
    goto :goto_0

    .line 860
    :pswitch_8
    const/16 v0, 0x152

    .line 861
    goto :goto_0

    .line 863
    :pswitch_9
    const/16 v0, 0x149

    .line 864
    goto :goto_0

    .line 866
    :pswitch_a
    const/16 v0, 0x151

    .line 867
    goto :goto_0

    .line 869
    :pswitch_b
    const/16 v0, 0x13f

    .line 870
    goto :goto_0

    .line 872
    :pswitch_c
    const/16 v0, 0x14d

    .line 873
    goto :goto_0

    .line 875
    :pswitch_d
    const/16 v0, 0x14e

    .line 876
    goto :goto_0

    .line 878
    :pswitch_e
    const/16 v0, 0x14f

    .line 879
    goto :goto_0

    .line 881
    :pswitch_f
    const/16 v0, 0x13a

    .line 882
    goto :goto_0

    .line 884
    :pswitch_10
    const/16 v0, 0x157

    .line 885
    goto :goto_0

    .line 887
    :pswitch_11
    const/16 v0, 0x154

    .line 888
    goto :goto_0

    .line 890
    :pswitch_12
    const/16 v0, 0x156

    .line 891
    goto :goto_0

    .line 893
    :pswitch_13
    const/16 v0, 0x166

    .line 894
    goto :goto_0

    .line 896
    :pswitch_14
    const/16 v0, 0x167

    .line 897
    goto :goto_0

    .line 899
    :pswitch_15
    const/16 v0, 0x158

    .line 900
    goto :goto_0

    .line 902
    :pswitch_16
    const/16 v0, 0x164

    .line 903
    goto :goto_0

    .line 905
    :pswitch_17
    const/16 v0, 0x15a

    .line 906
    goto :goto_0

    .line 908
    :pswitch_18
    const/16 v0, 0x15b

    .line 909
    goto :goto_0

    .line 911
    :pswitch_19
    const/16 v0, 0x15c

    .line 912
    goto :goto_0

    .line 914
    :pswitch_1a
    const/16 v0, 0x15d

    .line 915
    goto :goto_0

    .line 917
    :pswitch_1b
    const/16 v0, 0x15e

    .line 918
    goto :goto_0

    .line 920
    :pswitch_1c
    const/16 v0, 0x161

    .line 921
    goto :goto_0

    .line 923
    :pswitch_1d
    const/16 v0, 0x15f

    .line 924
    goto :goto_0

    .line 926
    :pswitch_1e
    const/16 v0, 0x160

    .line 927
    goto :goto_0

    .line 929
    :pswitch_1f
    const/16 v0, 0x163

    .line 930
    goto :goto_0

    .line 932
    :pswitch_20
    const/16 v0, 0x155

    .line 933
    goto :goto_0

    .line 935
    :pswitch_21
    const/16 v0, 0x165

    .line 936
    goto :goto_0

    .line 938
    :pswitch_22
    const/16 v0, 0x168

    goto :goto_0

    .line 837
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
    .line 948
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
    .line 953
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDefaultBeautyLevel()I
    .locals 1

    .prologue
    .line 958
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    return v0
.end method

.method public getDefaultCamcorderResolution(I)I
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 963
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 964
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_0

    .line 965
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 966
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 967
    const-string v1, "csc_pref_camcorder_resolution_key"

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 974
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :goto_0
    return v1

    .line 970
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 971
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 972
    :cond_2
    const-string v1, "1920x1080"

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 974
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
    .line 980
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

    .line 985
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_HOME_KEY:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_POWER_KEY:Z

    if-eqz v2, :cond_2

    .line 986
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isSoftwareNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 994
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 989
    goto :goto_0

    .line 991
    :cond_2
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_HOME_KEY:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_POWER_KEY:Z

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 994
    goto :goto_0
.end method

.method public getDefaultShootingModeByCurrentCameraId()I
    .locals 1

    .prologue
    .line 1000
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    .line 1003
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEffectCategory()I
    .locals 1

    .prologue
    .line 1009
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEffectCategory:I

    return v0
.end method

.method public getEffectNameForLogging(I)Ljava/lang/String;
    .locals 1
    .param p1, "effectId"    # I

    .prologue
    .line 1034
    if-nez p1, :cond_0

    .line 1035
    const-string v0, "None"

    .line 1052
    :goto_0
    return-object v0

    .line 1037
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_4

    .line 1038
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1039
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1040
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1042
    :cond_1
    const-string v0, "None"

    goto :goto_0

    .line 1045
    :cond_2
    invoke-static {p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isValidExternalId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1046
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1048
    :cond_3
    const-string v0, "None"

    goto :goto_0

    .line 1052
    :cond_4
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraParameters;->getEffectString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEffectProcessorMode()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1059
    const/4 v0, 0x0

    .line 1061
    .local v0, "mode":I
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1062
    const/4 v0, 0x1

    .line 1065
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    sparse-switch v1, :sswitch_data_0

    .line 1131
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

    .line 1132
    const/4 v0, 0x0

    .line 1135
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_3

    .line 1137
    const/4 v0, 0x0

    .line 1140
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

    .line 1142
    return v0

    .line 1068
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1069
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isStickerMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1070
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStickerType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1072
    :pswitch_0
    const/4 v0, 0x6

    .line 1073
    goto :goto_0

    .line 1075
    :pswitch_1
    const/4 v0, 0x7

    .line 1076
    goto :goto_0

    .line 1078
    :pswitch_2
    const/16 v0, 0x8

    .line 1079
    goto :goto_0

    .line 1087
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1088
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isStickerMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1089
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStickerType()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1091
    :pswitch_3
    const/4 v0, 0x6

    .line 1092
    goto :goto_0

    .line 1094
    :pswitch_4
    const/4 v0, 0x7

    .line 1095
    goto :goto_0

    .line 1097
    :pswitch_5
    const/16 v0, 0x8

    .line 1098
    goto :goto_0

    .line 1102
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShapeCorrection()I

    move-result v1

    if-eq v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSpotlightLevel()I

    move-result v1

    if-lez v1, :cond_1

    .line 1103
    :cond_5
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 1108
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getColorTune()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1109
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

    .line 1110
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 1114
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v1

    if-eq v1, v2, :cond_6

    .line 1115
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    .line 1116
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    .line 1117
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 1119
    :cond_6
    const/4 v0, 0x0

    .line 1121
    goto/16 :goto_0

    .line 1123
    :sswitch_4
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOOD_ADDED_LENS:Z

    if-eqz v1, :cond_1

    .line 1124
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 1065
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_0
        0x37 -> :sswitch_1
        0x3b -> :sswitch_2
        0x44 -> :sswitch_4
        0x45 -> :sswitch_3
    .end sparse-switch

    .line 1070
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1089
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
    .line 1147
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFilterEffectStrengthLevel:I

    return v0
.end method

.method public getEffectVignetteLevel()I
    .locals 1

    .prologue
    .line 1159
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFilterEffectVignetteLevel:I

    return v0
.end method

.method public getExposureValue()I
    .locals 3

    .prologue
    .line 1170
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    if-nez v0, :cond_0

    .line 1171
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 1173
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

    .line 1195
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 1198
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
    .line 1215
    const/4 v0, 0x0

    .line 1216
    .local v0, "featureId":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 1415
    :goto_0
    return-object v0

    .line 1218
    :sswitch_0
    const-string v0, "0020"

    .line 1219
    goto :goto_0

    .line 1222
    :sswitch_1
    const-string v0, "0040"

    .line 1223
    goto :goto_0

    .line 1225
    :sswitch_2
    const-string v0, "G008"

    .line 1226
    goto :goto_0

    .line 1228
    :sswitch_3
    const-string v0, "Z007"

    .line 1229
    goto :goto_0

    .line 1231
    :sswitch_4
    const-string v0, "Z010"

    .line 1232
    goto :goto_0

    .line 1234
    :sswitch_5
    const-string v0, "Z092"

    .line 1235
    goto :goto_0

    .line 1237
    :sswitch_6
    const-string v0, "Z012"

    .line 1238
    goto :goto_0

    .line 1240
    :sswitch_7
    const-string v0, "Z013"

    .line 1241
    goto :goto_0

    .line 1243
    :sswitch_8
    const-string v0, "Z014"

    .line 1244
    goto :goto_0

    .line 1246
    :sswitch_9
    const-string v0, "Z015"

    .line 1247
    goto :goto_0

    .line 1249
    :sswitch_a
    if-eqz p2, :cond_0

    .line 1250
    const-string v0, "Z018"

    goto :goto_0

    .line 1252
    :cond_0
    const-string v0, "Z017"

    .line 1254
    goto :goto_0

    .line 1256
    :sswitch_b
    if-eqz p2, :cond_1

    .line 1257
    const-string v0, "Z020"

    goto :goto_0

    .line 1259
    :cond_1
    const-string v0, "Z019"

    .line 1261
    goto :goto_0

    .line 1263
    :sswitch_c
    const-string v0, "Z022"

    .line 1264
    goto :goto_0

    .line 1266
    :sswitch_d
    const-string v0, "Z023"

    .line 1267
    goto :goto_0

    .line 1269
    :sswitch_e
    const-string v0, "Z024"

    .line 1270
    goto :goto_0

    .line 1272
    :sswitch_f
    const-string v0, "Z025"

    .line 1273
    goto :goto_0

    .line 1275
    :sswitch_10
    const-string v0, "Z083"

    .line 1276
    goto :goto_0

    .line 1278
    :sswitch_11
    const-string v0, "Z053"

    .line 1279
    goto :goto_0

    .line 1281
    :sswitch_12
    const-string v0, "Z054"

    .line 1282
    goto :goto_0

    .line 1284
    :sswitch_13
    const-string v0, "Z055"

    .line 1285
    goto :goto_0

    .line 1287
    :sswitch_14
    const-string v0, "Z056"

    .line 1288
    goto :goto_0

    .line 1290
    :sswitch_15
    const-string v0, "Z057"

    .line 1291
    goto :goto_0

    .line 1293
    :sswitch_16
    const-string v0, "Z058"

    .line 1294
    goto :goto_0

    .line 1296
    :sswitch_17
    const-string v0, "Z061"

    .line 1297
    goto :goto_0

    .line 1299
    :sswitch_18
    const-string v0, "Z104"

    .line 1300
    goto :goto_0

    .line 1302
    :sswitch_19
    const-string v0, "Z116"

    .line 1303
    goto :goto_0

    .line 1305
    :sswitch_1a
    const-string v0, "Z105"

    .line 1306
    goto :goto_0

    .line 1308
    :sswitch_1b
    const-string v0, "Z142"

    .line 1309
    goto :goto_0

    .line 1311
    :sswitch_1c
    const-string v0, "Z084"

    .line 1312
    goto :goto_0

    .line 1314
    :sswitch_1d
    const-string v0, "Z085"

    .line 1315
    goto :goto_0

    .line 1317
    :sswitch_1e
    const-string v0, "Z088"

    .line 1318
    goto :goto_0

    .line 1320
    :sswitch_1f
    const-string v0, "G007"

    .line 1321
    goto :goto_0

    .line 1323
    :sswitch_20
    const-string v0, "0013"

    .line 1324
    goto :goto_0

    .line 1326
    :sswitch_21
    const-string v0, "0037"

    .line 1327
    goto :goto_0

    .line 1329
    :sswitch_22
    const-string v0, "Z009"

    .line 1330
    goto :goto_0

    .line 1332
    :sswitch_23
    const-string v0, "Z034"

    .line 1333
    goto :goto_0

    .line 1335
    :sswitch_24
    const-string v0, "Z008"

    .line 1336
    goto :goto_0

    .line 1338
    :sswitch_25
    const-string v0, "0042"

    .line 1339
    goto :goto_0

    .line 1341
    :sswitch_26
    const-string v0, "Z134"

    .line 1342
    goto :goto_0

    .line 1344
    :sswitch_27
    const-string v0, "Z121"

    .line 1345
    goto/16 :goto_0

    .line 1347
    :sswitch_28
    const-string v0, "Z122"

    .line 1348
    goto/16 :goto_0

    .line 1350
    :sswitch_29
    const-string v0, "Z123"

    .line 1351
    goto/16 :goto_0

    .line 1353
    :sswitch_2a
    const-string v0, "Z124"

    .line 1354
    goto/16 :goto_0

    .line 1356
    :sswitch_2b
    const-string v0, "Z125"

    .line 1357
    goto/16 :goto_0

    .line 1359
    :sswitch_2c
    const-string v0, "Z126"

    .line 1360
    goto/16 :goto_0

    .line 1362
    :sswitch_2d
    const-string v0, "Z127"

    .line 1363
    goto/16 :goto_0

    .line 1365
    :sswitch_2e
    const-string v0, "Z128"

    .line 1366
    goto/16 :goto_0

    .line 1368
    :sswitch_2f
    const-string v0, "Z129"

    .line 1369
    goto/16 :goto_0

    .line 1371
    :sswitch_30
    const-string v0, "Z080"

    .line 1372
    goto/16 :goto_0

    .line 1374
    :sswitch_31
    const-string v0, "Z077"

    .line 1375
    goto/16 :goto_0

    .line 1377
    :sswitch_32
    const-string v0, "Z078"

    .line 1378
    goto/16 :goto_0

    .line 1380
    :sswitch_33
    const-string v0, "Z079"

    .line 1381
    goto/16 :goto_0

    .line 1383
    :sswitch_34
    const-string v0, "Z076"

    .line 1384
    goto/16 :goto_0

    .line 1386
    :sswitch_35
    const-string v0, "G004"

    .line 1387
    goto/16 :goto_0

    .line 1389
    :sswitch_36
    const-string v0, "Z132"

    .line 1390
    goto/16 :goto_0

    .line 1392
    :sswitch_37
    const-string v0, "Z144"

    .line 1393
    goto/16 :goto_0

    .line 1395
    :sswitch_38
    const-string v0, "G009"

    .line 1396
    goto/16 :goto_0

    .line 1398
    :sswitch_39
    const-string v0, "G002"

    .line 1399
    goto/16 :goto_0

    .line 1401
    :sswitch_3a
    const-string v0, "G006"

    .line 1402
    goto/16 :goto_0

    .line 1404
    :sswitch_3b
    const-string v0, "G019"

    .line 1405
    goto/16 :goto_0

    .line 1407
    :sswitch_3c
    const-string v0, "G020"

    .line 1408
    goto/16 :goto_0

    .line 1410
    :sswitch_3d
    const-string v0, "G021"

    .line 1411
    goto/16 :goto_0

    .line 1216
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
    .line 1420
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
    .line 1442
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

    .line 1458
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualFocusLength:I

    if-nez v1, :cond_0

    .line 1461
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
    .line 1484
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFontScale:F

    return v0
.end method

.method public getFoodBlurType()I
    .locals 1

    .prologue
    .line 1497
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    return v0
.end method

.method public getFoodColorTuneValue()I
    .locals 3

    .prologue
    const/4 v0, 0x4

    .line 1511
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 1514
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

    .line 1531
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_3

    .line 1532
    const/4 v1, 0x0

    .line 1533
    .local v1, "forcedShutterSound":I
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1534
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1535
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 1536
    const-string v3, "csc_pref_camera_forced_shuttersound_key"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1543
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

    .line 1546
    .end local v1    # "forcedShutterSound":I
    :goto_1
    return v1

    .line 1539
    .restart local v1    # "forcedShutterSound":I
    :cond_1
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->COUNTRY_JAPAN:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->COUNTRY_KOREA:Z

    if-eqz v2, :cond_0

    .line 1540
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .end local v1    # "forcedShutterSound":I
    :cond_3
    move v1, v2

    .line 1546
    goto :goto_1
.end method

.method public getFrontCameraShootingModeOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 1554
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDefaultFrontCameraShootingModeOrder()V

    .line 1556
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

    .line 1557
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1558
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 1560
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

    .line 1577
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-eqz v1, :cond_1

    .line 1578
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    .line 1584
    :cond_0
    :goto_0
    return v0

    .line 1579
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-nez v1, :cond_0

    .line 1581
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v1, :cond_0

    .line 1582
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

    .line 4185
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    .line 4189
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
    .line 1606
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
    .line 1621
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

    .line 1638
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    .line 1641
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
    .line 1660
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
    .line 1674
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1675
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    .line 1677
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
    .line 1682
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1683
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackInterval()I

    move-result v0

    .line 1685
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
    .line 1700
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1701
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackInterval()I

    move-result v0

    .line 1703
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
    .line 1709
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
    .line 1726
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mLowBattery:Z

    return v0
.end method

.method public getMotionPanoramaMode()I
    .locals 3

    .prologue
    .line 1736
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

    .line 1752
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    .line 1758
    :goto_0
    return v0

    .line 1755
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

    .line 1756
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
    .line 1776
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
    .line 1792
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    if-nez v0, :cond_0

    .line 1793
    const/4 v0, 0x0

    .line 1795
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
    .line 1817
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiWindowMode:I

    return v0
.end method

.method public getObjectTrackingAF()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1830
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    .line 1833
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

    .line 1854
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 1857
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
    .line 1874
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
    .line 1889
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1890
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1891
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 1892
    const-string v1, "double_tab_launch"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultQuickLaunch()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1896
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :goto_0
    return v1

    .line 1894
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultQuickLaunch()I

    move-result v1

    goto :goto_0

    .line 1896
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getRandomStickerId()I
    .locals 1

    .prologue
    .line 1902
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerRandomId:I

    return v0
.end method

.method public getRearLensDistortionCorrection()I
    .locals 3

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_rear_lens_distortion_correction_key"

    const/4 v2, 0x0

    .line 1908
    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    .line 1907
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
    .line 1923
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

    .line 1940
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 1943
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
    .line 1962
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
    .line 1978
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_0

    .line 1979
    const/4 v0, 0x0

    .line 1981
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
    .line 1998
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingLandingState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingLandingState:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingValue(I)I
    .locals 1
    .param p1, "menuId"    # I

    .prologue
    .line 2013
    sparse-switch p1, :sswitch_data_0

    .line 2143
    const/16 v0, 0x7fff

    :goto_0
    return v0

    .line 2015
    :sswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    goto :goto_0

    .line 2017
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFlashMode()I

    move-result v0

    goto :goto_0

    .line 2019
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontFlashMode()I

    move-result v0

    goto :goto_0

    .line 2021
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v0

    goto :goto_0

    .line 2023
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFocusMode()I

    move-result v0

    goto :goto_0

    .line 2025
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer()I

    move-result v0

    goto :goto_0

    .line 2027
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getExposureValue()I

    move-result v0

    goto :goto_0

    .line 2029
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraSingleEffect()I

    move-result v0

    goto :goto_0

    .line 2031
    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraDualEffect()I

    move-result v0

    goto :goto_0

    .line 2033
    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getWhiteBalance()I

    move-result v0

    goto :goto_0

    .line 2035
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraISO()I

    move-result v0

    goto :goto_0

    .line 2037
    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShutterSpeed()I

    move-result v0

    goto :goto_0

    .line 2039
    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFocusLength()I

    move-result v0

    goto :goto_0

    .line 2041
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraExposureMeter()I

    move-result v0

    goto :goto_0

    .line 2043
    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getViewMode()I

    move-result v0

    goto :goto_0

    .line 2045
    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v0

    goto :goto_0

    .line 2047
    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraQuality()I

    move-result v0

    goto :goto_0

    .line 2049
    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getZoomValue()I

    move-result v0

    goto :goto_0

    .line 2051
    :sswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGuideline()I

    move-result v0

    goto :goto_0

    .line 2053
    :sswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getObjectTrackingAF()I

    move-result v0

    goto :goto_0

    .line 2055
    :sswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGPS()I

    move-result v0

    goto :goto_0

    .line 2057
    :sswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getReview()I

    move-result v0

    goto :goto_0

    .line 2059
    :sswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionPhoto()I

    move-result v0

    goto :goto_0

    .line 2061
    :sswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSelfFlip()I

    move-result v0

    goto :goto_0

    .line 2063
    :sswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraShutterSound()I

    move-result v0

    goto :goto_0

    .line 2065
    :sswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStorage()I

    move-result v0

    goto :goto_0

    .line 2067
    :sswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    goto/16 :goto_0

    .line 2069
    :sswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    goto/16 :goto_0

    .line 2071
    :sswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderAntiShake()I

    move-result v0

    goto/16 :goto_0

    .line 2073
    :sswitch_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderAudioRecording()I

    move-result v0

    goto/16 :goto_0

    .line 2075
    :sswitch_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraVoiceCommand()I

    move-result v0

    goto/16 :goto_0

    .line 2077
    :sswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSaveRichTone()I

    move-result v0

    goto/16 :goto_0

    .line 2079
    :sswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVolumeKeyAs()I

    move-result v0

    goto/16 :goto_0

    .line 2081
    :sswitch_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSoundAndShotMode()I

    move-result v0

    goto/16 :goto_0

    .line 2083
    :sswitch_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGestureControlMode()I

    move-result v0

    goto/16 :goto_0

    .line 2085
    :sswitch_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAutoNightDetectionMode()I

    move-result v0

    goto/16 :goto_0

    .line 2087
    :sswitch_24
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQuickLaunchType()I

    move-result v0

    goto/16 :goto_0

    .line 2089
    :sswitch_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v0

    goto/16 :goto_0

    .line 2091
    :sswitch_26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageRecordingTime()I

    move-result v0

    goto/16 :goto_0

    .line 2093
    :sswitch_27
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getPictureFormat()I

    move-result v0

    goto/16 :goto_0

    .line 2095
    :sswitch_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBeautyMode()I

    move-result v0

    goto/16 :goto_0

    .line 2097
    :sswitch_29
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionPanoramaMode()I

    move-result v0

    goto/16 :goto_0

    .line 2099
    :sswitch_2a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionWideSelfieMode()I

    move-result v0

    goto/16 :goto_0

    .line 2101
    :sswitch_2b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getColorTune()I

    move-result v0

    goto/16 :goto_0

    .line 2103
    :sswitch_2c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v0

    goto/16 :goto_0

    .line 2105
    :sswitch_2d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShapeCorrection()I

    move-result v0

    goto/16 :goto_0

    .line 2107
    :sswitch_2e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTapToTakePictures()I

    move-result v0

    goto/16 :goto_0

    .line 2109
    :sswitch_2f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getHRMShutter()I

    move-result v0

    goto/16 :goto_0

    .line 2111
    :sswitch_30
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFoodBlurType()I

    move-result v0

    goto/16 :goto_0

    .line 2113
    :sswitch_31
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMultiAFMode()I

    move-result v0

    goto/16 :goto_0

    .line 2115
    :sswitch_32
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getRecordingMotionSpeed()I

    move-result v0

    goto/16 :goto_0

    .line 2117
    :sswitch_33
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQRCodeDetection()I

    move-result v0

    goto/16 :goto_0

    .line 2119
    :sswitch_34
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBeautyLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2121
    :sswitch_35
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSlimFaceLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2123
    :sswitch_36
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSpotlightLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2125
    :sswitch_37
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEyeEnlargeLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2127
    :sswitch_38
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSkinColorLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2129
    :sswitch_39
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackBeautyLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2131
    :sswitch_3a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getRearLensDistortionCorrection()I

    move-result v0

    goto/16 :goto_0

    .line 2133
    :sswitch_3b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAntiFogLevel()I

    move-result v0

    goto/16 :goto_0

    .line 2135
    :sswitch_3c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFloatingCameraButton()I

    move-result v0

    goto/16 :goto_0

    .line 2137
    :sswitch_3d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getWideTeleDualMode()I

    move-result v0

    goto/16 :goto_0

    .line 2139
    :sswitch_3e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEffectCategory()I

    move-result v0

    goto/16 :goto_0

    .line 2141
    :sswitch_3f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStickerId()I

    move-result v0

    goto/16 :goto_0

    .line 2013
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
    .line 2149
    sparse-switch p1, :sswitch_data_0

    .line 2231
    const-string v0, ""

    :goto_0
    return-object v0

    .line 2152
    :sswitch_0
    packed-switch p2, :pswitch_data_0

    .line 2160
    const-string v0, ""

    goto :goto_0

    .line 2154
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2156
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090250

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2158
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2163
    :sswitch_1
    packed-switch p2, :pswitch_data_1

    .line 2171
    const-string v0, ""

    goto :goto_0

    .line 2165
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090256

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2167
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090255

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2169
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090257

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2174
    :sswitch_2
    packed-switch p2, :pswitch_data_2

    .line 2180
    const-string v0, ""

    goto :goto_0

    .line 2176
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09025f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2178
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090260

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2183
    :sswitch_3
    packed-switch p2, :pswitch_data_3

    .line 2189
    const-string v0, ""

    goto/16 :goto_0

    .line 2185
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090253

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2187
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090254

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2192
    :sswitch_4
    packed-switch p2, :pswitch_data_4

    .line 2198
    const-string v0, ""

    goto/16 :goto_0

    .line 2194
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09025b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2196
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09025c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2201
    :sswitch_5
    packed-switch p2, :pswitch_data_5

    .line 2208
    const-string v0, ""

    goto/16 :goto_0

    .line 2204
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09025d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2206
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09025e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2211
    :sswitch_6
    packed-switch p2, :pswitch_data_6

    .line 2219
    const-string v0, ""

    goto/16 :goto_0

    .line 2213
    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090258

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2215
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09025a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2217
    :pswitch_10
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090259

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2222
    :sswitch_7
    packed-switch p2, :pswitch_data_7

    .line 2228
    const-string v0, ""

    goto/16 :goto_0

    .line 2224
    :pswitch_11
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090261

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2226
    :pswitch_12
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090262

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2149
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

    .line 2152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2163
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2174
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 2183
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 2192
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 2201
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 2211
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_e
        :pswitch_10
        :pswitch_f
    .end packed-switch

    .line 2222
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public getShapeCorrection()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2237
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SHAPECORRECTION:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v2, 0x37

    if-eq v1, v2, :cond_1

    .line 2245
    :cond_0
    :goto_0
    return v0

    .line 2241
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-nez v1, :cond_0

    .line 2245
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_shapecorrection_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

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

    .line 2263
    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 2369
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeIdByModeName(Ljava/lang/String;)I

    move-result v0

    :goto_1
    :pswitch_0
    return v0

    .line 2263
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

    .line 2267
    :pswitch_1
    const/16 v0, 0x3a

    goto/16 :goto_1

    .line 2270
    :pswitch_2
    const/16 v0, 0x31

    goto/16 :goto_1

    .line 2273
    :pswitch_3
    const/16 v0, 0x2a

    goto/16 :goto_1

    :pswitch_4
    move v0, v1

    .line 2280
    goto/16 :goto_1

    :pswitch_5
    move v0, v2

    .line 2283
    goto/16 :goto_1

    .line 2286
    :pswitch_6
    const/16 v0, 0x48

    goto/16 :goto_1

    .line 2289
    :pswitch_7
    const/16 v0, 0x11

    goto/16 :goto_1

    :pswitch_8
    move v0, v3

    .line 2292
    goto/16 :goto_1

    .line 2296
    :pswitch_9
    const/16 v0, 0x2f

    goto/16 :goto_1

    .line 2299
    :pswitch_a
    const/16 v0, 0x43

    goto/16 :goto_1

    .line 2302
    :pswitch_b
    const/16 v0, 0x40

    goto/16 :goto_1

    .line 2306
    :pswitch_c
    const/16 v0, 0x44

    goto/16 :goto_1

    .line 2309
    :pswitch_d
    const/16 v0, 0x4a

    goto/16 :goto_1

    .line 2312
    :pswitch_e
    const/16 v0, 0x17

    goto/16 :goto_1

    .line 2315
    :pswitch_f
    const/16 v0, 0x27

    goto/16 :goto_1

    .line 2318
    :pswitch_10
    const/16 v0, 0x3b

    goto/16 :goto_1

    .line 2321
    :pswitch_11
    const/16 v0, 0x4b

    goto/16 :goto_1

    .line 2325
    :pswitch_12
    const/16 v0, 0x38

    goto/16 :goto_1

    :pswitch_13
    move v0, v4

    .line 2328
    goto/16 :goto_1

    .line 2331
    :pswitch_14
    const/16 v0, 0x2d

    goto/16 :goto_1

    .line 2334
    :pswitch_15
    const/16 v0, 0x37

    goto/16 :goto_1

    .line 2338
    :pswitch_16
    const/16 v0, 0x2e

    goto/16 :goto_1

    .line 2341
    :pswitch_17
    const/16 v0, 0x3f

    goto/16 :goto_1

    .line 2345
    :pswitch_18
    const/16 v0, 0x23

    goto/16 :goto_1

    .line 2349
    :pswitch_19
    const/16 v0, 0x28

    goto/16 :goto_1

    .line 2352
    :pswitch_1a
    const/16 v0, 0x45

    goto/16 :goto_1

    .line 2355
    :pswitch_1b
    const/16 v0, 0x3e

    goto/16 :goto_1

    .line 2358
    :pswitch_1c
    const/16 v0, 0x34

    goto/16 :goto_1

    .line 2361
    :pswitch_1d
    const/16 v0, 0x4d

    goto/16 :goto_1

    .line 2363
    :pswitch_1e
    const/16 v0, 0x4e

    goto/16 :goto_1

    .line 2365
    :pswitch_1f
    const/16 v0, 0x46

    goto/16 :goto_1

    .line 2367
    :pswitch_20
    const/16 v0, 0x4f

    goto/16 :goto_1

    .line 2263
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

    .line 2376
    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    move v0, v1

    .line 2442
    :cond_1
    :goto_1
    return v0

    .line 2376
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

    .line 2378
    :pswitch_0
    const/16 v0, 0x3a

    goto/16 :goto_1

    .line 2380
    :pswitch_1
    const/16 v0, 0x31

    goto/16 :goto_1

    .line 2382
    :pswitch_2
    const/16 v0, 0x2a

    goto/16 :goto_1

    :pswitch_3
    move v0, v1

    .line 2384
    goto/16 :goto_1

    :pswitch_4
    move v0, v2

    .line 2386
    goto/16 :goto_1

    .line 2388
    :pswitch_5
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_MOTION_PANORAMA:Z

    if-eqz v0, :cond_2

    .line 2389
    const/16 v0, 0x48

    goto/16 :goto_1

    :cond_2
    move v0, v3

    .line 2391
    goto/16 :goto_1

    .line 2394
    :pswitch_6
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_NOT_SUPPORT_ZSL:Z

    if-nez v1, :cond_1

    const/16 v0, 0x11

    goto/16 :goto_1

    .line 2396
    :pswitch_7
    const/16 v0, 0x2f

    goto/16 :goto_1

    .line 2398
    :pswitch_8
    const/16 v0, 0x43

    goto/16 :goto_1

    .line 2400
    :pswitch_9
    const/16 v0, 0x40

    goto/16 :goto_1

    .line 2402
    :pswitch_a
    const/16 v0, 0x44

    goto/16 :goto_1

    .line 2404
    :pswitch_b
    const/16 v0, 0x4a

    goto/16 :goto_1

    .line 2406
    :pswitch_c
    const/16 v0, 0x17

    goto/16 :goto_1

    .line 2408
    :pswitch_d
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PRO:Z

    if-eqz v0, :cond_3

    .line 2409
    const/16 v0, 0x3b

    goto/16 :goto_1

    .line 2411
    :cond_3
    const/16 v0, 0x4b

    goto/16 :goto_1

    .line 2414
    :pswitch_e
    const/16 v0, 0x38

    goto/16 :goto_1

    :pswitch_f
    move v0, v4

    .line 2416
    goto/16 :goto_1

    .line 2418
    :pswitch_10
    const/16 v0, 0x2d

    goto/16 :goto_1

    .line 2420
    :pswitch_11
    const/16 v0, 0x37

    goto/16 :goto_1

    .line 2422
    :pswitch_12
    const/16 v0, 0x3f

    goto/16 :goto_1

    .line 2424
    :pswitch_13
    const/16 v0, 0x23

    goto/16 :goto_1

    .line 2426
    :pswitch_14
    const/16 v0, 0x28

    goto/16 :goto_1

    .line 2428
    :pswitch_15
    const/16 v0, 0x45

    goto/16 :goto_1

    .line 2430
    :pswitch_16
    const/16 v0, 0x3e

    goto/16 :goto_1

    .line 2432
    :pswitch_17
    const/16 v0, 0x4f

    goto/16 :goto_1

    .line 2434
    :pswitch_18
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_MOTION_WIDE_SELFIE:Z

    if-eqz v0, :cond_4

    .line 2435
    const/16 v0, 0x4e

    goto/16 :goto_1

    .line 2436
    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_WIDE_SELFIE:Z

    if-eqz v0, :cond_5

    .line 2437
    const/16 v0, 0x34

    goto/16 :goto_1

    .line 2439
    :cond_5
    const/16 v0, 0x4d

    goto/16 :goto_1

    .line 2376
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
    .line 2448
    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    .line 2449
    .local v0, "shootingModeCommandId":I
    invoke-static {v0}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getShootingModeResourceString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2454
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShootingModeResourceStringById(I)Ljava/lang/String;
    .locals 1
    .param p1, "shootingMode"    # I

    .prologue
    .line 2459
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

    .line 2464
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

    .line 2465
    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    sparse-switch v3, :sswitch_data_0

    move v0, v1

    .line 2532
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 2467
    :sswitch_1
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_NIGHT_DETECTION:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_AUTO_LLS_LITE:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2470
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2471
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2473
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 2477
    goto :goto_0

    .line 2480
    :sswitch_3
    const/16 v0, 0x22

    goto :goto_0

    :sswitch_4
    move v0, v2

    .line 2482
    goto :goto_0

    .line 2484
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

    .line 2487
    goto :goto_0

    .line 2491
    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 2493
    :sswitch_7
    const/16 v0, 0x9

    goto :goto_0

    .line 2497
    :sswitch_8
    const/16 v0, 0xb

    goto :goto_0

    .line 2499
    :sswitch_9
    const/16 v0, 0xf

    goto :goto_0

    .line 2501
    :sswitch_a
    const/16 v0, 0x10

    goto :goto_0

    .line 2503
    :sswitch_b
    const/16 v0, 0x11

    goto :goto_0

    .line 2505
    :sswitch_c
    const/16 v0, 0x12

    goto :goto_0

    .line 2507
    :sswitch_d
    const/16 v0, 0x13

    goto :goto_0

    .line 2509
    :sswitch_e
    const/16 v0, 0x14

    goto :goto_0

    .line 2514
    :sswitch_f
    const/16 v0, 0x1b

    goto :goto_0

    .line 2516
    :sswitch_10
    const/16 v0, 0x1c

    goto :goto_0

    .line 2518
    :sswitch_11
    const/16 v0, 0x1d

    goto :goto_0

    .line 2520
    :sswitch_12
    const/16 v0, 0x1e

    goto :goto_0

    .line 2522
    :sswitch_13
    const/16 v0, 0x1f

    goto :goto_0

    .line 2524
    :sswitch_14
    const/16 v0, 0x23

    goto :goto_0

    .line 2526
    :sswitch_15
    const/16 v0, 0x24

    goto :goto_0

    .line 2528
    :sswitch_16
    const/16 v0, 0x25

    goto :goto_0

    .line 2465
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

    .line 2538
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    if-nez v1, :cond_0

    .line 2541
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

    .line 2563
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 2566
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

    .line 2583
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    .line 2586
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
    .line 2615
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    return v0
.end method

.method public getSpotlightLevel()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2629
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v2, 0x37

    if-eq v1, v2, :cond_1

    .line 2632
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

    .line 2647
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v2, 0x37

    if-eq v1, v2, :cond_1

    .line 2650
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
    .line 2665
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 2666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    .line 2667
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2668
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2669
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2670
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2671
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x74

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2672
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x7d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2673
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2674
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x49

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2675
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2676
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xbb9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2677
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xbbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2678
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2679
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2680
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2681
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x6f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2682
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2683
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2684
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2685
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2686
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2687
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xaa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2688
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2689
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2690
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2691
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2692
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2693
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2694
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xb5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2695
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2696
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2698
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isQRCodeDetectionSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2699
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x13c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2701
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->REAR_LENS_DISTORTION_CORRECTION:Z

    if-eqz v0, :cond_2

    .line 2702
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2704
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_ANTI_FOG:Z

    if-eqz v0, :cond_3

    .line 2705
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2708
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStickerId()I
    .locals 2

    .prologue
    const/16 v0, 0x2710

    .line 2713
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-nez v1, :cond_1

    .line 2719
    :cond_0
    :goto_0
    return v0

    .line 2716
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isEffectSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2719
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerId:I

    goto :goto_0
.end method

.method public getStickerPackageId()I
    .locals 1

    .prologue
    .line 2742
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerPackageId:I

    return v0
.end method

.method public getStickerSoundMute()I
    .locals 1

    .prologue
    .line 2755
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerSoundMute:I

    return v0
.end method

.method public getStickerType()I
    .locals 2

    .prologue
    .line 2769
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStickerId()I

    move-result v0

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_0

    .line 2770
    const/4 v0, 0x0

    .line 2772
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerType:I

    goto :goto_0
.end method

.method public getStorage()I
    .locals 3

    .prologue
    .line 2785
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
    .line 2804
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
    .line 2818
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    .line 2819
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackTimer()I

    move-result v0

    .line 2821
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
    .line 2836
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 2837
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackTimer()I

    move-result v0

    .line 2839
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
    .line 2845
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    return v0
.end method

.method public getVideoCollageRecordingTime()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2860
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2861
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_front_video_collage_recording_time"

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2865
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

    .line 2867
    return v0

    .line 2863
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

    .line 2893
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2894
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_type"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2896
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
    .line 2903
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-nez v0, :cond_0

    .line 2904
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VIEW_MODE:I

    .line 2906
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
    .line 2923
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
    .line 2939
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkInputText:Ljava/lang/String;

    return-object v0
.end method

.method public getWhiteBalance()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2949
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    if-nez v1, :cond_0

    .line 2952
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
    .line 2974
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWideTeleDualMode:I

    return v0
.end method

.method public getZoomValue()I
    .locals 1

    .prologue
    .line 2989
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2990
    const/4 v0, 0x0

    .line 2992
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    goto :goto_0
.end method

.method public initializeCamera()V
    .locals 2

    .prologue
    .line 3007
    const-string v0, "CameraSettings"

    const-string v1, "initializeCamera"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3010
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->initializeBackCamera()V

    .line 3014
    :cond_0
    :goto_0
    return-void

    .line 3011
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3012
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->initializeFrontCamera()V

    goto :goto_0
.end method

.method public initializeCameraId(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3018
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 3019
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    .line 3031
    :cond_0
    :goto_0
    return-void

    .line 3020
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 3021
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    goto :goto_0

    .line 3022
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 3023
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    goto :goto_0

    .line 3024
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 3025
    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    goto :goto_0

    .line 3026
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getSeamlessZoomCameraId()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 3027
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    goto :goto_0

    .line 3028
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getPortraitCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3029
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    goto :goto_0
.end method

.method public initializeCameraResolution()V
    .locals 5

    .prologue
    .line 3035
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3036
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedBackCameraResolution()Ljava/lang/String;

    move-result-object v0

    .line 3037
    .local v0, "fixedBackResolution":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3038
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 3039
    const-string v2, "CameraSettings"

    const-string v3, "wrong back camera resolution value is changed to fixed resolution."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3041
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_rear_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3066
    .end local v0    # "fixedBackResolution":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3045
    .restart local v0    # "fixedBackResolution":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3046
    const-string v2, "CameraSettings"

    const-string v3, "unsupported back camera resolution value is changed to default."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3048
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_rear_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 3050
    .end local v0    # "fixedBackResolution":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3051
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedFrontCameraResolution()Ljava/lang/String;

    move-result-object v1

    .line 3052
    .local v1, "fixedFrontResolution":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 3053
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 3054
    const-string v2, "CameraSettings"

    const-string v3, "wrong front camera resolution value is changed to fixed resolution."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3056
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_front_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 3060
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3061
    const-string v2, "CameraSettings"

    const-string v3, "unsupported front camera resolution value is changed to default."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3062
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3063
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

    .line 3071
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_14

    .line 3072
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    .line 3076
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3078
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PRO:Z

    if-eqz v0, :cond_0

    .line 3079
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x158

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3081
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PRO_LITE:Z

    if-eqz v0, :cond_1

    .line 3082
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x164

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3084
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PANORAMA_SHOT:Z

    if-eqz v0, :cond_2

    .line 3085
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3087
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_MOTION_PANORAMA:Z

    if-eqz v0, :cond_3

    .line 3088
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x162

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3090
    :cond_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SELECTIVE_FOCUS:Z

    if-eqz v0, :cond_4

    .line 3091
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x151

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3093
    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SLOW_MOTION:Z

    if-eqz v0, :cond_5

    .line 3094
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3096
    :cond_5
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_HYPER_MOTION:Z

    if-eqz v0, :cond_6

    .line 3097
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x163

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3099
    :cond_6
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_FOOD:Z

    if-eqz v0, :cond_7

    .line 3100
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3102
    :cond_7
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v0, :cond_8

    .line 3103
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3105
    :cond_8
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v0, :cond_9

    .line 3106
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x160

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3108
    :cond_9
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_LVB:Z

    if-eqz v0, :cond_a

    .line 3109
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x165

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3111
    :cond_a
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_CONTINUOUS_SHOT:Z

    if-eqz v0, :cond_b

    .line 3112
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_NOT_SUPPORT_ZSL:Z

    if-eqz v0, :cond_25

    .line 3113
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3118
    :cond_b
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_FAST_MOTION:Z

    if-eqz v0, :cond_c

    .line 3119
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3121
    :cond_c
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_ANTI_FOG:Z

    if-eqz v0, :cond_d

    .line 3122
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3124
    :cond_d
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_AQUA:Z

    if-eqz v0, :cond_e

    .line 3125
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x14f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3127
    :cond_e
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_TAG_SHOT:Z

    if-eqz v0, :cond_f

    .line 3128
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3130
    :cond_f
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_RICH_TONE:Z

    if-eqz v0, :cond_10

    .line 3131
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3133
    :cond_10
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_NIGHT_SHOT:Z

    if-eqz v0, :cond_11

    .line 3134
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3136
    :cond_11
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_NIGHT_SHOT_SCENE:Z

    if-eqz v0, :cond_12

    .line 3137
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x14d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3139
    :cond_12
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_WECHAT_VIDEO:Z

    if-eqz v0, :cond_13

    .line 3140
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x168

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3142
    :cond_13
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v0, :cond_14

    .line 3143
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_14

    .line 3144
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3150
    :cond_14
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-nez v0, :cond_15

    invoke-static {v4, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3151
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3153
    :cond_16
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_DUAL:Z

    if-nez v0, :cond_17

    const/16 v0, 0x150

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3154
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x150

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3156
    :cond_18
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_REAR_SELFIE:Z

    if-nez v0, :cond_19

    const/16 v0, 0x157

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3157
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x157

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3159
    :cond_1a
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SPORTS_SCENE:Z

    if-nez v0, :cond_1b

    invoke-static {v6, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3160
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3162
    :cond_1c
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_ANIMATEDGIF:Z

    if-nez v0, :cond_1d

    const/16 v0, 0x15d

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3163
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3165
    :cond_1e
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SHOT_AND_MORE:Z

    if-nez v0, :cond_1f

    const/16 v0, 0x152

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3166
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x152

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3168
    :cond_20
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SOUND_AND_SHOT:Z

    if-nez v0, :cond_21

    invoke-static {v5, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3169
    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3171
    :cond_22
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_FOOD:Z

    if-nez v0, :cond_23

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3172
    :cond_23
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3174
    :cond_24
    return-void

    .line 3115
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

    .line 3179
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_f

    .line 3180
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    .line 3183
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_AUTO:Z

    if-eqz v0, :cond_0

    .line 3184
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3186
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELFIE:Z

    if-eqz v0, :cond_1

    .line 3187
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x154

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3189
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_WIDE_SELFIE:Z

    if-eqz v0, :cond_2

    .line 3190
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3191
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x156

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3194
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_WIDE_SELFIE_LITE:Z

    if-eqz v0, :cond_3

    .line 3195
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3196
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x166

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3199
    :cond_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_MOTION_WIDE_SELFIE:Z

    if-eqz v0, :cond_4

    .line 3200
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3201
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x167

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3204
    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELECTIVE_FOCUS:Z

    if-eqz v0, :cond_5

    .line 3205
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x151

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3207
    :cond_5
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v0, :cond_6

    .line 3208
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3209
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3212
    :cond_6
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v0, :cond_7

    .line 3213
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3214
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x160

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3217
    :cond_7
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_LVB:Z

    if-eqz v0, :cond_8

    .line 3218
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x165

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3220
    :cond_8
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-eqz v0, :cond_9

    .line 3221
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x133

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3223
    :cond_9
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_CONTINUOUS_SHOT:Z

    if-eqz v0, :cond_a

    .line 3224
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3225
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_NOT_SUPPORT_ZSL:Z

    if-eqz v0, :cond_16

    .line 3226
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3232
    :cond_a
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_NIGHT_SHOT:Z

    if-eqz v0, :cond_b

    .line 3233
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3235
    :cond_b
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_NIGHT_SHOT_SCENE:Z

    if-eqz v0, :cond_c

    .line 3236
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x14d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3238
    :cond_c
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_RICH_TONE:Z

    if-eqz v0, :cond_d

    .line 3239
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3240
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3243
    :cond_d
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_WECHAT_VIDEO:Z

    if-eqz v0, :cond_e

    .line 3244
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x168

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3246
    :cond_e
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v0, :cond_f

    .line 3247
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_f

    .line 3248
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3254
    :cond_f
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_ANIMATEDGIF:Z

    if-nez v0, :cond_10

    invoke-static {v5, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3255
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_11

    .line 3256
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3259
    :cond_11
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SHOT_AND_MORE:Z

    if-nez v0, :cond_12

    invoke-static {v4, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3260
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_13

    .line 3261
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3264
    :cond_13
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SOUND_AND_SHOT:Z

    if-nez v0, :cond_14

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3265
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_15

    .line 3266
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3269
    :cond_15
    return-void

    .line 3228
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
    .line 3273
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeIdByActivityName(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    .line 3274
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraIdByShootingModeId(II)V

    .line 3275
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    return v0
.end method

.method public initializeShootingModeId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "shootingModeActivityName"    # Ljava/lang/String;
    .param p2, "cameraFacingName"    # Ljava/lang/String;

    .prologue
    .line 3280
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeIdByActivityName(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    .line 3281
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraIdFromName(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraIdByShootingModeId(II)V

    .line 3282
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    return v0
.end method

.method public initializeShootingModeWhenSwitchCamera()I
    .locals 1

    .prologue
    .line 3287
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3288
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3289
    const/4 v0, 0x0

    .line 3297
    :goto_0
    return v0

    .line 3291
    :cond_0
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    goto :goto_0

    .line 3294
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3295
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    goto :goto_0

    .line 3297
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    goto :goto_0
.end method

.method public isAttachImageMode()Z
    .locals 1

    .prologue
    .line 3305
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachImageMode()Z

    move-result v0

    return v0
.end method

.method public isAttachVideoFixedResolution()Z
    .locals 1

    .prologue
    .line 3311
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3312
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->isAttachVideoFixedResolution()Z

    move-result v0

    .line 3314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttachVideoMode()Z
    .locals 1

    .prologue
    .line 3321
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v0

    return v0
.end method

.method public isBackCamera()Z
    .locals 2

    .prologue
    .line 3326
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
    .line 3331
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    return v0
.end method

.method public isCurrentSeparatedShootingMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3358
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3361
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
    .line 3366
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
    .line 3371
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
    .line 3376
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
    .line 3381
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
    .line 3386
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    return v0
.end method

.method public isFrontCamera()Z
    .locals 2

    .prologue
    .line 3405
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
    .line 3410
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    return v0
.end method

.method public isNetworkPermissionEnabled()Z
    .locals 3

    .prologue
    .line 3423
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
    .line 3436
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mNotificationHandler:Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isResetRequested()Z
    .locals 3

    .prologue
    .line 3441
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
    .line 3446
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    return v0
.end method

.method public isSecureCamera()Z
    .locals 1

    .prologue
    .line 3465
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    return v0
.end method

.method public isSingleEffect()Z
    .locals 1

    .prologue
    .line 3487
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
    .line 3492
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
    .line 3497
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedBackCameraResolution()Ljava/lang/String;

    move-result-object v0

    .line 3498
    .local v0, "fixedResolution":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3500
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 3501
    const/4 v1, 0x1

    .line 3505
    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v1

    goto :goto_0
.end method

.method public isSupportedCameraResolutionForDual(I)Z
    .locals 1
    .param p1, "resolution"    # I

    .prologue
    .line 5091
    const/16 v0, 0x50

    if-ne p1, v0, :cond_0

    .line 5092
    const/4 v0, 0x0

    .line 5094
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSupportedFrontCameraResolutionFeature(I)Z
    .locals 2
    .param p1, "resolution"    # I

    .prologue
    .line 3510
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedFrontCameraResolution()Ljava/lang/String;

    move-result-object v0

    .line 3511
    .local v0, "fixedResolution":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3513
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 3514
    const/4 v1, 0x1

    .line 3517
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
    .line 3522
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToRecord:Z

    return v0
.end method

.method public isTemperatureHighToUseFlash()Z
    .locals 1

    .prologue
    .line 3532
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToUseFlash:Z

    return v0
.end method

.method public isTemperatureLowToUseFlash()Z
    .locals 1

    .prologue
    .line 3542
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureLowToUseFlash:Z

    return v0
.end method

.method public onEmpty()V
    .locals 0

    .prologue
    .line 3552
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->handleNotification()V

    .line 3553
    return-void
.end method

.method public overrideCamcorderResolution(I)V
    .locals 3
    .param p1, "resolutionId"    # I

    .prologue
    .line 3557
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

    .line 3559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    .line 3560
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCamcorderResolution(I)Z

    .line 3561
    return-void
.end method

.method public overrideFocusMode(I)V
    .locals 3
    .param p1, "focusMode"    # I

    .prologue
    .line 3565
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

    .line 3566
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    if-eq v0, p1, :cond_0

    .line 3567
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    .line 3569
    :cond_0
    return-void
.end method

.method public overrideStickerCamcorderResolution()V
    .locals 5

    .prologue
    .line 3574
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getAspectRatioType(I)I

    move-result v1

    .line 3575
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

    .line 3576
    if-eqz v1, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 3577
    :cond_0
    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->STICKER_CAMCORDER_RESOLUTION_WIDE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 3583
    .local v0, "resolutionId":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->overrideCamcorderResolution(I)V

    .line 3584
    return-void

    .line 3578
    .end local v0    # "resolutionId":I
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 3579
    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->STICKER_CAMCORDER_RESOLUTION_SQUARE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "resolutionId":I
    goto :goto_0

    .line 3581
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

    .line 3589
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStorage()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3590
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3591
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbbf

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderAntiShake()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3592
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-interface {v0, v3, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3593
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3594
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3595
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3596
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x12c

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTorchLightStatus()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3597
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x136

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCallStatus()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3598
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 3599
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3603
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x7f

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3604
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

    .line 3605
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1770

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3607
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachImageMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3608
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3614
    :goto_1
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3615
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1b58

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3617
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    if-eqz v0, :cond_2

    .line 3618
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x13d

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3620
    :cond_2
    return-void

    .line 3601
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getObjectTrackingAF()I

    move-result v1

    invoke-interface {v0, v5, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_0

    .line 3609
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3610
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x2

    invoke-interface {v0, v4, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_1

    .line 3612
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_1
.end method

.method public refreshSettingValuesFromPreferencesWhenSwitchCamera()V
    .locals 3

    .prologue
    .line 3624
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x84

    aput v2, v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->loadFromPreferences([I)V

    .line 3625
    return-void
.end method

.method public registerAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    .prologue
    .line 3629
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v1

    .line 3630
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3631
    monitor-exit v1

    .line 3632
    return-void

    .line 3631
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
    .line 3636
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3637
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3638
    .local v0, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    if-eqz v0, :cond_0

    .line 3639
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3645
    :goto_0
    monitor-exit v2

    .line 3646
    return-void

    .line 3641
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3642
    .restart local v0    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3643
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 3645
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

    .line 3650
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFilterEffect:I

    .line 3651
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraEffect(IZ)V

    .line 3652
    return-void
.end method

.method public resetCameraSettingsInDual()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3656
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    .line 3657
    const/16 v0, 0x12

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 3658
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 3659
    const/4 v0, 0x7

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 3660
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    .line 3661
    const/16 v0, 0x9

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 3662
    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    .line 3663
    const/16 v0, 0xa

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 3664
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 3665
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3666
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer(I)I

    move-result v0

    invoke-direct {p0, v3, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 3671
    :goto_0
    return-void

    .line 3668
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
    .line 3676
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraLocalSettings(I)V

    .line 3677
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraLocalSettings(I)V

    .line 3678
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraLocalSettings(I)V

    .line 3679
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraLocalSettings(I)V

    .line 3684
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCommonGlobalSettings()V

    .line 3685
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraGlobalSettings()V

    .line 3686
    return-void
.end method

.method public resetListeners()V
    .locals 4

    .prologue
    .line 3690
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v3

    .line 3691
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3692
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3693
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v3

    .line 3694
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3695
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 3696
    .local v1, "key":I
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3694
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3692
    .end local v0    # "i":I
    .end local v1    # "key":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3698
    .restart local v0    # "i":I
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 3699
    monitor-exit v3

    .line 3700
    return-void

    .line 3699
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
    .line 3704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    .line 3705
    return-void
.end method

.method public resetOverriddenFocusMode()V
    .locals 1

    .prologue
    .line 3709
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    .line 3710
    return-void
.end method

.method public resetShootingModeOrder()V
    .locals 3

    .prologue
    .line 3714
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDefaultBackCameraShootingModeOrder()V

    .line 3715
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setBackCameraShootingModeOrder(Ljava/lang/String;)V

    .line 3717
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3718
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3719
    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getBaseColumnIds(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3718
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->updateShootingModeOrder(Landroid/content/Context;Ljava/util/ArrayList;)Z

    .line 3722
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDefaultFrontCameraShootingModeOrder()V

    .line 3723
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFrontCameraShootingModeOrder(Ljava/lang/String;)V

    .line 3725
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3726
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3727
    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getBaseColumnIds(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3726
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->updateShootingModeFrontOrder(Landroid/content/Context;Ljava/util/ArrayList;)Z

    .line 3729
    :cond_1
    return-void
.end method

.method public resetZoomValue()V
    .locals 2

    .prologue
    .line 3733
    const-string v0, "CameraSettings"

    const-string v1, "resetZoomValue"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3734
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    .line 3735
    return-void
.end method

.method public restoreDualResolution(I)V
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    .line 3739
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_dual_rear_resolution_key"

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 3741
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

    .line 3742
    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3744
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionChanged(Z)V

    .line 3745
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 3746
    return-void
.end method

.method public restoreShootingModeAfterRecording()I
    .locals 2

    .prologue
    .line 3750
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPreviousShootingModeForRecording:I

    .line 3751
    .local v0, "mode":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPreviousShootingModeForRecording:I

    .line 3752
    return v0
.end method

.method public saveDualCameraRearResolution(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newResolution"    # I

    .prologue
    .line 5077
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedCameraResolutionForDual(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5078
    const-string v0, "pref_camera_dual_rear_resolution_key"

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5082
    :goto_0
    return-void

    .line 5080
    :cond_0
    const-string v0, "pref_camera_dual_rear_resolution_key"

    invoke-static {p1, v0, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setAntiFogLevel(I)V
    .locals 3
    .param p1, "antiFogLevel"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_anti_fog_level_key"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    .line 271
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    if-eq v0, p1, :cond_0

    .line 272
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

    .line 273
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_anti_fog_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 276
    const/16 v0, 0x75

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 278
    :cond_0
    return-void
.end method

.method public setAutoFilterPinSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 2608
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoFilterPinSelected:Z

    if-eq v0, p1, :cond_0

    .line 2609
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoFilterPinSelected:Z

    .line 2611
    :cond_0
    return-void
.end method

.method public setAutoNightDetectionMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_auto_night_detection_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultAutoNightDetectionMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    .line 298
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    if-eq v0, p1, :cond_0

    .line 299
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

    .line 300
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_auto_night_detection_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 302
    const/16 v0, 0x57

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 304
    :cond_0
    return-void
.end method

.method public setBackBeautyLevel(I)V
    .locals 3
    .param p1, "beautyLevel"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_back_camera_beauty_level_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    .line 317
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    if-eq v0, p1, :cond_0

    .line 318
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

    .line 319
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_back_camera_beauty_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 322
    const/16 v0, 0xb4

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 324
    :cond_0
    return-void
.end method

.method public setBackCameraShootingModeOrder(Ljava/lang/String;)V
    .locals 3
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_back_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
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

    .line 343
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_back_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_0
    return-void
.end method

.method protected setBackTimer(I)V
    .locals 3
    .param p1, "timer"    # I

    .prologue
    .line 4172
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackTimer()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    .line 4174
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    if-eq v0, p1, :cond_0

    .line 4175
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

    .line 4176
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    .line 4177
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

    .line 4178
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_timer_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4179
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 4180
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x7f

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackInterval()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4182
    :cond_0
    return-void
.end method

.method public setBeautyLevel(I)V
    .locals 3
    .param p1, "beautyLevel"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_beauty_level_key"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    .line 361
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    if-eq v0, p1, :cond_0

    .line 362
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

    .line 363
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_beauty_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 366
    const/16 v0, 0x6d

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 368
    :cond_0
    return-void
.end method

.method public setBeautyMode(I)V
    .locals 4
    .param p1, "beautyMode"    # I

    .prologue
    .line 377
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_beauty_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 378
    .local v0, "mode":I
    if-eq v0, p1, :cond_0

    .line 379
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

    .line 380
    move v0, p1

    .line 381
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_beauty_mode"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 383
    const/16 v1, 0x81

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 385
    :cond_0
    return-void
.end method

.method public setCallStatus(IZ)V
    .locals 3
    .param p1, "callStatus"    # I
    .param p2, "isLaunched"    # Z

    .prologue
    .line 3757
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCallStatus:I

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_2

    .line 3758
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

    .line 3759
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCallStatus:I

    .line 3760
    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    .line 3762
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x136

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3765
    :cond_2
    return-void
.end method

.method public setCamcorderAntiShake(I)V
    .locals 3
    .param p1, "antiShake"    # I

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_FRONT_ANTISHAKE:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
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

    .line 412
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    if-eq v0, p1, :cond_0

    .line 413
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

    .line 414
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camcorder_antishake_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 417
    const/16 v0, 0xbbf

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setCamcorderAudioRecording(I)V
    .locals 3
    .param p1, "audioRecording"    # I

    .prologue
    .line 428
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAudioRecording:I

    if-eq v0, p1, :cond_0

    .line 429
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

    .line 430
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAudioRecording:I

    .line 432
    :cond_0
    return-void
.end method

.method public setCamcorderResolution(II)V
    .locals 2
    .param p1, "cameraId"    # I
    .param p2, "resolution"    # I

    .prologue
    .line 3810
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 3811
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_rear_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3817
    :cond_0
    :goto_0
    return-void

    .line 3812
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 3813
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_front_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 3814
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3815
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

    .line 3770
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

    .line 3805
    :cond_0
    :goto_0
    return v0

    .line 3774
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    if-eqz v1, :cond_2

    .line 3775
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

    .line 3786
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    if-eq v1, p1, :cond_0

    .line 3787
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

    .line 3788
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    .line 3790
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    if-eqz v0, :cond_6

    .line 3791
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_overridden_camcorder_resolution"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3802
    :goto_2
    const/16 v0, 0xbb9

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 3803
    const/4 v0, 0x1

    goto :goto_0

    .line 3777
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3778
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

    .line 3779
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3780
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

    .line 3782
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

    .line 3793
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3794
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_rear_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 3795
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3796
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_dual_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 3798
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
    .line 489
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

    .line 491
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_dual_effect"

    const/16 v2, 0x30

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    .line 493
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    if-eq v0, p1, :cond_0

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 494
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    .line 495
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_dual_effect"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 498
    :cond_0
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_1

    .line 499
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setZoomValue(I)V

    .line 502
    :cond_1
    const/16 v0, 0x5a

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 503
    return-void
.end method

.method public setCameraEffect(I)V
    .locals 1
    .param p1, "effect"    # I

    .prologue
    .line 3821
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraEffect(IZ)V

    .line 3822
    return-void
.end method

.method public setCameraEffect(IZ)V
    .locals 1
    .param p1, "effect"    # I
    .param p2, "notify"    # Z

    .prologue
    .line 3826
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFilterEffect:I

    if-eq v0, p1, :cond_0

    .line 3827
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFilterEffect:I

    .line 3831
    :cond_0
    if-eqz p2, :cond_2

    .line 3832
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3833
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetEffectLevelSettingValue()V

    .line 3835
    :cond_1
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 3837
    :cond_2
    return-void
.end method

.method public setCameraExposureMeter(I)V
    .locals 4
    .param p1, "exposureMeter"    # I

    .prologue
    const/4 v3, 0x1

    .line 520
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureMeter:I

    if-ne v0, v3, :cond_0

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_exposure_meter_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    .line 524
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    if-eq v0, p1, :cond_2

    .line 525
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

    .line 526
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    .line 527
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureMeter:I

    if-ne v0, v3, :cond_1

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_exposure_meter_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 531
    :cond_1
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 533
    :cond_2
    return-void
.end method

.method public setCameraHDR(I)V
    .locals 4
    .param p1, "hdr"    # I

    .prologue
    const/16 v3, 0xc

    .line 579
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_1

    .line 580
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEasyCameraHDR()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    .line 585
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    if-eq v0, p1, :cond_0

    .line 586
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

    .line 587
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    .line 588
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_hdr_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 593
    :goto_1
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 594
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_0

    .line 591
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

    .line 609
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualISO:I

    if-ne v0, v3, :cond_0

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_iso_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    .line 613
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    if-eq v0, p1, :cond_2

    .line 614
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

    .line 615
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    .line 616
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualISO:I

    if-ne v0, v3, :cond_1

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_iso_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 619
    :cond_1
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 621
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

    .line 630
    if-gez p1, :cond_1

    .line 631
    const-string v0, "CameraSettings"

    const-string v1, "wrong camera id, so return setCameraId"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    if-eq v0, p1, :cond_0

    .line 636
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

    .line 637
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 640
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getSeamlessZoomCameraId()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getPortraitCameraId()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 641
    :cond_2
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraFacing(I)V

    .line 646
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getSeamlessZoomCameraId()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 647
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setWideTeleDualMode(I)V

    .line 652
    :cond_3
    :goto_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    invoke-direct {p0, v5, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    invoke-interface {v0, v5, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 654
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 643
    :cond_4
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraFacing(I)V

    goto :goto_1

    .line 648
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getPortraitCameraId()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 649
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setWideTeleDualMode(I)V

    goto :goto_2
.end method

.method public setCameraQuality(I)V
    .locals 3
    .param p1, "quality"    # I

    .prologue
    .line 665
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQuality:I

    if-eq v0, p1, :cond_0

    .line 666
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

    .line 667
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQuality:I

    .line 669
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->handleNotification(II)V

    .line 671
    :cond_0
    return-void
.end method

.method public setCameraResolution(II)V
    .locals 2
    .param p1, "cameraId"    # I
    .param p2, "resolution"    # I

    .prologue
    .line 3902
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3903
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_rear_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3911
    :goto_0
    return-void

    .line 3904
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 3905
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 3906
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 3907
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->saveDualCameraRearResolution(Landroid/content/Context;I)V

    goto :goto_0

    .line 3909
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

    .line 3841
    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v2, :cond_2

    .line 3842
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3843
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionChanged(Z)V

    .line 3844
    invoke-direct {p0, v5, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    move v0, v1

    .line 3897
    :cond_1
    :goto_0
    return v0

    .line 3848
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3849
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

    .line 3851
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3852
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

    .line 3854
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3855
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

    .line 3857
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3858
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

    .line 3862
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3863
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

    .line 3872
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

    .line 3873
    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    if-eq v2, p1, :cond_1

    .line 3874
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

    .line 3875
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    .line 3877
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3878
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_camera_rear_resolution_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3879
    const-string v0, "pref_camera_rear_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    .line 3893
    :cond_8
    :goto_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionChanged(Z)V

    .line 3894
    invoke-direct {p0, v5, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    move v0, v1

    .line 3895
    goto/16 :goto_0

    .line 3864
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3865
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

    .line 3866
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3867
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

    .line 3868
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3869
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

    .line 3880
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3881
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_camera_front_resolution_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3882
    const-string v0, "pref_camera_front_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    goto :goto_2

    .line 3883
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3884
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_camera_dual_front_resolution_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3885
    const-string v0, "pref_camera_dual_front_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 3886
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3887
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->saveDualCameraRearResolution(Landroid/content/Context;I)V

    .line 3888
    const-string v0, "pref_camera_dual_rear_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    goto/16 :goto_2
.end method

.method public setCameraResolutionChanged(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .prologue
    .line 714
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraResolutionChanged:Z

    .line 715
    return-void
.end method

.method public setCameraShutterSound(I)V
    .locals 4
    .param p1, "shutterSound"    # I

    .prologue
    const/4 v3, 0x1

    .line 754
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getForcedShutterSound()I

    move-result v0

    .line 755
    .local v0, "forcedShutterSound":I
    if-ne v0, v3, :cond_1

    .line 756
    const-string v1, "CameraSettings"

    const-string v2, "In this model, shutter sound must be playbacked"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 760
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

    .line 761
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    if-eq v1, p1, :cond_0

    .line 762
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

    .line 763
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    .line 764
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_shutter_sound_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 766
    const/16 v1, 0x15

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setCameraVoiceCommand(I)V
    .locals 3
    .param p1, "voiceCommand"    # I

    .prologue
    .line 787
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isMicroPhoneRestricted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraVoiceCommand()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    .line 793
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    if-eq v0, p1, :cond_0

    .line 794
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

    .line 795
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    .line 798
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 799
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startVoiceRecognizer()V

    .line 807
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_voice_control_key"

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 808
    const/16 v0, 0x47

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0

    .line 803
    :cond_3
    const-string v0, "CameraSettings"

    const-string v1, "setCameraVoiceCommand OFF"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopVoiceRecognizer()V

    goto :goto_1
.end method

.method public setColorTune(I)V
    .locals 3
    .param p1, "colorTune"    # I

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getColorTune()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    .line 820
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    if-eq v0, p1, :cond_0

    .line 821
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

    .line 822
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    .line 823
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_colortune"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 824
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 826
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

    .line 3336
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_SVIEW_COVER_CAMERA:Z

    if-nez v2, :cond_1

    .line 3354
    :cond_0
    :goto_0
    return-void

    .line 3340
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-eq v2, p1, :cond_0

    .line 3341
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

    .line 3342
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    .line 3344
    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-eqz v2, :cond_2

    .line 3345
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 3346
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v5, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3350
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleCoverCameraChanged(Z)V

    .line 3351
    if-eqz p1, :cond_3

    :goto_2
    invoke-direct {p0, v5, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0

    .line 3348
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v5, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 3351
    goto :goto_2
.end method

.method public setDefaultBackCameraShootingModeOrder()V
    .locals 4

    .prologue
    .line 3916
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->initializeDefaultBackCameraShootingModeOrderList()V

    .line 3918
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    .line 3920
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

    .line 3921
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

    .line 3924
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

    .line 3925
    return-void
.end method

.method public setEasyCamera(Z)V
    .locals 3
    .param p1, "easyCamera"    # Z

    .prologue
    .line 3391
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eq v0, p1, :cond_1

    .line 3392
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

    .line 3393
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    .line 3395
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_1

    .line 3396
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

    .line 3397
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 3401
    :cond_1
    return-void
.end method

.method public setEffectCategory(I)V
    .locals 3
    .param p1, "effectCategory"    # I

    .prologue
    .line 1014
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEffectCategory:I

    if-eq v0, p1, :cond_1

    .line 1015
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

    .line 1016
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEffectCategory:I

    .line 1017
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEffectCategory:I

    const/16 v1, 0x1e78

    if-ne v0, v1, :cond_2

    .line 1018
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->startAutoFilter()V

    .line 1028
    :cond_0
    :goto_0
    const/16 v0, 0xa5

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEffectCategory:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1030
    :cond_1
    return-void

    .line 1022
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraSingleEffect()I

    move-result v0

    const/16 v1, 0x400

    if-eq v0, v1, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopAutoFilter()V

    goto :goto_0
.end method

.method public setEffectStrengthLevel(I)V
    .locals 6
    .param p1, "level"    # I

    .prologue
    .line 1152
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFilterEffectStrengthLevel:I

    .line 1153
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

    .line 1154
    .local v0, "intensity":I
    const/16 v1, 0x97

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1155
    return-void
.end method

.method public setEffectVignetteLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 1164
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFilterEffectVignetteLevel:I

    .line 1165
    const/16 v0, 0x98

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1166
    return-void
.end method

.method public setEngine(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 0
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    .line 3929
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 3930
    return-void
.end method

.method public setExposureValue(I)V
    .locals 4
    .param p1, "exposureValue"    # I

    .prologue
    const/4 v3, 0x1

    .line 1179
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    if-ne v0, v3, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_exposure_value_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 1183
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    if-eq v0, p1, :cond_2

    .line 1184
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

    .line 1185
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    .line 1186
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    if-ne v0, v3, :cond_1

    .line 1187
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_exposure_value_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1189
    :cond_1
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 1191
    :cond_2
    return-void
.end method

.method public setEyeEnlargeLevel(I)V
    .locals 3
    .param p1, "eyeEnlargeLevel"    # I

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_eyeenlarge_level_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    .line 1204
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    if-eq v0, p1, :cond_0

    .line 1205
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

    .line 1206
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    .line 1207
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_eyeenlarge_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1209
    const/16 v0, 0x70

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1211
    :cond_0
    return-void
.end method

.method public setFlashMode(I)V
    .locals 3
    .param p1, "flashMode"    # I

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_flash_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFlashMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    .line 1426
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getLowBatteryStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1427
    :cond_0
    const/4 p1, 0x0

    .line 1429
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    if-eq v0, p1, :cond_2

    .line 1430
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

    .line 1431
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    .line 1432
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_flash_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1434
    const-string v0, "pref_flash_key"

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    .line 1436
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1438
    :cond_2
    return-void
.end method

.method public setFloatingCameraButton(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1447
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

    .line 1448
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    if-eq v0, p1, :cond_0

    .line 1449
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

    .line 1450
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    .line 1451
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_floating_camera_button_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1452
    const/16 v0, 0xb5

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1454
    :cond_0
    return-void
.end method

.method public setFocusLength(I)V
    .locals 4
    .param p1, "focusLength"    # I

    .prologue
    .line 1467
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_focus_length"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1468
    .local v0, "length":I
    if-eq v0, p1, :cond_3

    .line 1469
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

    .line 1470
    if-gez p1, :cond_0

    .line 1471
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetOverriddenFocusMode()V

    .line 1473
    :cond_0
    if-gez v0, :cond_1

    .line 1474
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->overrideFocusMode(I)V

    .line 1476
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualFocusLength:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1477
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_focus_length"

    invoke-static {v1, v2, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1479
    :cond_2
    const/16 v1, 0x18

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1481
    :cond_3
    return-void
.end method

.method public setFocusMode(I)V
    .locals 3
    .param p1, "focusMode"    # I

    .prologue
    .line 3934
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 3935
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    if-eq v0, p1, :cond_0

    .line 3936
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

    .line 3937
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 3938
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3940
    :cond_0
    return-void
.end method

.method public setFocusMode(II)V
    .locals 3
    .param p1, "focusMode"    # I
    .param p2, "overriddenFocusMode"    # I

    .prologue
    .line 3944
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

    .line 3945
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    .line 3946
    iput p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    .line 3947
    return-void
.end method

.method public setFontScale(F)V
    .locals 1
    .param p1, "fontScale"    # F

    .prologue
    .line 1488
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->MAX_FONT_SCALE:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1489
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->MAX_FONT_SCALE:F

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFontScale:F

    .line 1493
    :goto_0
    return-void

    .line 1491
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFontScale:F

    goto :goto_0
.end method

.method public setFoodBlurType(I)V
    .locals 3
    .param p1, "foodBlurType"    # I

    .prologue
    .line 1502
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    if-eq v0, p1, :cond_0

    .line 1503
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

    .line 1504
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    .line 1505
    const/16 v0, 0x8d

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1507
    :cond_0
    return-void
.end method

.method public setFoodColorTuneValue(I)V
    .locals 4
    .param p1, "colorTuneValue"    # I

    .prologue
    .line 1519
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_food_level_key"

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1520
    .local v0, "foodColorTuneValue":I
    if-eq v0, p1, :cond_0

    .line 1521
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

    .line 1522
    move v0, p1

    .line 1523
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_food_level_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1525
    const/16 v1, 0x76

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1527
    :cond_0
    return-void
.end method

.method public setFrontCameraShootingModeOrder(Ljava/lang/String;)V
    .locals 3
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_front_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 1566
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1567
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

    .line 1568
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    .line 1569
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1570
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_front_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    :cond_0
    return-void
.end method

.method public setFrontFlashMode(I)V
    .locals 3
    .param p1, "flashMode"    # I

    .prologue
    .line 1590
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v0, :cond_0

    .line 1591
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_flash_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFrontFlashMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    .line 1594
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    if-eq v0, p1, :cond_2

    .line 1595
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

    .line 1596
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    .line 1597
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v0, :cond_1

    .line 1598
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_flash_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1600
    :cond_1
    const/16 v0, 0xaa

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1602
    :cond_2
    return-void
.end method

.method protected setFrontTimer(I)V
    .locals 3
    .param p1, "timer"    # I

    .prologue
    .line 4193
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontTimer()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    .line 4194
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

    .line 4196
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    if-eq v0, p1, :cond_0

    .line 4197
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    .line 4198
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

    .line 4199
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_timer_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4200
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 4201
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x7f

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontInterval()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 4203
    :cond_0
    return-void
.end method

.method public setGPS(I)V
    .locals 3
    .param p1, "gps"    # I

    .prologue
    .line 1611
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

    .line 1612
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    if-eq v0, p1, :cond_0

    .line 1613
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

    .line 1614
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    .line 1615
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_gps_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1617
    :cond_0
    return-void
.end method

.method public setGestureControlMode(I)V
    .locals 4
    .param p1, "gestureControlMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 1626
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_detection_mode_key"

    .line 1627
    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    .line 1626
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    .line 1628
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    if-eq v0, p1, :cond_0

    .line 1629
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

    .line 1630
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    .line 1631
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_detection_mode_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1632
    const/16 v0, 0x7d

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    invoke-direct {p0, v0, v1, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 1634
    :cond_0
    return-void
.end method

.method public setGuideline(I)V
    .locals 3
    .param p1, "guideline"    # I

    .prologue
    .line 1646
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_1

    .line 1656
    :cond_0
    :goto_0
    return-void

    .line 1649
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_guideline_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    .line 1650
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    if-eq v0, p1, :cond_0

    .line 1651
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

    .line 1652
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    .line 1653
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_guideline_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1654
    const/16 v0, 0x13

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setHRMShutter(I)V
    .locals 4
    .param p1, "hrmShutter"    # I

    .prologue
    .line 1665
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

    .line 1666
    .local v0, "value":I
    if-eq v0, p1, :cond_0

    .line 1667
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

    .line 1668
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_hrm_shutter_key"

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1670
    :cond_0
    return-void
.end method

.method public setInterval(I)V
    .locals 1
    .param p1, "interval"    # I

    .prologue
    .line 1691
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1692
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setBackInterval(I)V

    .line 1696
    :goto_0
    return-void

    .line 1694
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFrontInterval(I)V

    goto :goto_0
.end method

.method public setInterval(II)V
    .locals 1
    .param p1, "cameraid"    # I
    .param p2, "interval"    # I

    .prologue
    .line 3951
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3952
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setBackInterval(I)V

    .line 3956
    :goto_0
    return-void

    .line 3954
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFrontInterval(I)V

    goto :goto_0
.end method

.method public setKelvinValue(I)V
    .locals 4
    .param p1, "kValue"    # I

    .prologue
    .line 1714
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_kelvin_key"

    const/16 v3, 0x37

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1716
    .local v0, "value":I
    if-eq v0, p1, :cond_0

    .line 1717
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

    .line 1718
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_kelvin_key"

    invoke-static {v1, v2, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1720
    const/16 v1, 0x23

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1722
    :cond_0
    return-void
.end method

.method public setKeyboardCoverCamera(Z)V
    .locals 3
    .param p1, "keyboardCoverCamera"    # Z

    .prologue
    .line 3415
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    if-eq v0, p1, :cond_0

    .line 3416
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

    .line 3417
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    .line 3419
    :cond_0
    return-void
.end method

.method public setLowBatteryStatus(Z)V
    .locals 0
    .param p1, "lowBattery"    # Z

    .prologue
    .line 1731
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mLowBattery:Z

    .line 1732
    return-void
.end method

.method public setManualSettings(I)V
    .locals 3
    .param p1, "manual"    # I

    .prologue
    .line 3960
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

    .line 3962
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualExposureValue(I)V

    .line 3963
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualShutterSpeed(I)V

    .line 3964
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualISO(I)V

    .line 3965
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualWhiteBalance(I)V

    .line 3966
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualFocusLength(I)V

    .line 3967
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualExposureMeter(I)V

    .line 3968
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualMultiAF(I)V

    .line 3969
    return-void
.end method

.method public setMotionPanoramaMode(I)V
    .locals 3
    .param p1, "motionPanoramaMode"    # I

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_panorama_mode"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultMotionPanoramaMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    .line 1742
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    if-eq v0, p1, :cond_0

    .line 1743
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

    .line 1744
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    .line 1745
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_panorama_mode"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1746
    const/16 v0, 0x87

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1748
    :cond_0
    return-void
.end method

.method public setMotionPhoto(I)V
    .locals 3
    .param p1, "motionPhoto"    # I

    .prologue
    .line 1763
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

    .line 1765
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    if-eq v0, p1, :cond_0

    .line 1766
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

    .line 1767
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    .line 1769
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_motion_photo_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1770
    const/16 v0, 0x2a

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1772
    :cond_0
    return-void
.end method

.method public setMotionWideSelfieMode(I)V
    .locals 3
    .param p1, "motionWideSelfieMode"    # I

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_wide_selfie_mode"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultMotionWideSelfieMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    .line 1782
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    if-eq v0, p1, :cond_0

    .line 1783
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

    .line 1784
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    .line 1785
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_wide_selfie_mode"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1786
    const/16 v0, 0xad

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1788
    :cond_0
    return-void
.end method

.method public setMultiAFMode(I)V
    .locals 4
    .param p1, "multiAFMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 1801
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    if-ne v0, v3, :cond_0

    .line 1802
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_multi_af_mode"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_MULTI_AF_MODE:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiAFMode:I

    .line 1805
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiAFMode:I

    if-eq v0, p1, :cond_2

    .line 1806
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

    .line 1807
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiAFMode:I

    .line 1808
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    if-ne v0, v3, :cond_1

    .line 1809
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_multi_af_mode"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiAFMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1811
    :cond_1
    const/16 v0, 0x91

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1813
    :cond_2
    return-void
.end method

.method public setMultiWindowMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1822
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiWindowMode:I

    if-eq v0, p1, :cond_0

    .line 1823
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

    .line 1824
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiWindowMode:I

    .line 1826
    :cond_0
    return-void
.end method

.method public setNetworkPermissionEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 3428
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_check_network_permission_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3429
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

    .line 3430
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_check_network_permission_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3432
    :cond_0
    return-void
.end method

.method public setObjectTrackingAF(I)V
    .locals 4
    .param p1, "ObjectTrackingAF"    # I

    .prologue
    const/16 v3, 0x17

    .line 1838
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_0

    .line 1850
    :goto_0
    return-void

    .line 1841
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_object_trackingaf_key"

    const/4 v2, 0x0

    .line 1842
    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    .line 1841
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    .line 1843
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    if-eq v0, p1, :cond_1

    .line 1844
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

    .line 1845
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    .line 1846
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_object_trackingaf_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1847
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1849
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
    .line 1862
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

    .line 1863
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    if-eq v0, p1, :cond_0

    .line 1864
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

    .line 1865
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    .line 1866
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_picture_format"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1868
    const/16 v0, 0x13b

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1870
    :cond_0
    return-void
.end method

.method public setQRCodeDetection(I)V
    .locals 3
    .param p1, "qrCodeDetection"    # I

    .prologue
    .line 1879
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

    .line 1880
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    if-eq v0, p1, :cond_0

    .line 1881
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

    .line 1882
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    .line 1883
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_qrcode_detection"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1884
    const/16 v0, 0x13c

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1886
    :cond_0
    return-void
.end method

.method public setRearLensDistortionCorrection(I)V
    .locals 4
    .param p1, "correction"    # I

    .prologue
    .line 1913
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

    .line 1914
    .local v0, "rearLensDistortionCorrection":I
    if-eq v0, p1, :cond_0

    .line 1915
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

    .line 1916
    move v0, p1

    .line 1917
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_rear_lens_distortion_correction_key"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1919
    :cond_0
    return-void
.end method

.method public setRecordingMotionSpeed(I)V
    .locals 4
    .param p1, "motionSpeed"    # I

    .prologue
    .line 1928
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getRecordingMotionSpeed()I

    move-result v0

    .line 1930
    .local v0, "recordingMotionSpeed":I
    if-eq v0, p1, :cond_0

    .line 1931
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

    .line 1932
    move v0, p1

    .line 1933
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_recording_motion_speed_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1934
    const/16 v1, 0x170d

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1936
    :cond_0
    return-void
.end method

.method public setResizableCamera(Z)V
    .locals 3
    .param p1, "resizableCamera"    # Z

    .prologue
    .line 3451
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eq v0, p1, :cond_1

    .line 3452
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

    .line 3453
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    .line 3455
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v0, :cond_1

    .line 3456
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

    .line 3457
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 3461
    :cond_1
    return-void
.end method

.method public setReview(I)V
    .locals 3
    .param p1, "review"    # I

    .prologue
    .line 1948
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v0, :cond_1

    .line 1958
    :cond_0
    :goto_0
    return-void

    .line 1951
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

    .line 1952
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    if-eq v0, p1, :cond_0

    .line 1953
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

    .line 1954
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    .line 1955
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_review_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1956
    const/16 v0, 0x11

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setSaveRichTone(I)V
    .locals 3
    .param p1, "saveRichTone"    # I

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_save_richtone_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    .line 1968
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    if-eq v0, p1, :cond_0

    .line 1969
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

    .line 1970
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    .line 1971
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_save_richtone_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1972
    const/16 v0, 0x22

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 1974
    :cond_0
    return-void
.end method

.method public setSecureCamera(Z)V
    .locals 4
    .param p1, "secureCamera"    # Z

    .prologue
    const/16 v3, 0x13d

    .line 3470
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    if-eq v0, p1, :cond_1

    .line 3471
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

    .line 3472
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    .line 3474
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    if-eqz v0, :cond_2

    .line 3475
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

    .line 3476
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    .line 3478
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x1

    invoke-interface {v0, v3, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3483
    :cond_1
    :goto_0
    return-void

    .line 3480
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
    .line 1986
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

    .line 1987
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    if-eq v0, p1, :cond_0

    .line 1988
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

    .line 1989
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    .line 1990
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_self_flip_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1992
    const/16 v0, 0x26

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 1994
    :cond_0
    return-void
.end method

.method public setSeparatedShootingMode(ILjava/lang/String;)V
    .locals 3
    .param p1, "commandId"    # I
    .param p2, "shootingModeName"    # Ljava/lang/String;

    .prologue
    .line 3973
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-nez v0, :cond_0

    .line 3974
    const-string v0, "CameraSettings"

    const-string v1, "Cannot support Separated ShootingMode"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3989
    .end local p2    # "shootingModeName":Ljava/lang/String;
    :goto_0
    return-void

    .line 3978
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

    .line 3980
    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2    # "shootingModeName":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    .line 3982
    invoke-static {p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    .line 3984
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3985
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    goto :goto_0

    .line 3987
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    goto :goto_0
.end method

.method public setSettingLandingState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 2008
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingLandingState:Ljava/lang/String;

    .line 2009
    return-void
.end method

.method public setShapeCorrection(I)V
    .locals 4
    .param p1, "shapeCorrection"    # I

    .prologue
    .line 2250
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_shapecorrection_key"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2251
    .local v0, "shapeCorrectionMode":I
    if-eq v0, p1, :cond_0

    .line 2252
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

    .line 2253
    move v0, p1

    .line 2254
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_shapecorrection_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2256
    const/16 v1, 0x71

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2258
    :cond_0
    return-void
.end method

.method public setShootingMode(I)V
    .locals 4
    .param p1, "shootingMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 3993
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    if-eq v0, p1, :cond_0

    invoke-static {v3, p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3994
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

    .line 3996
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    .line 3997
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    .line 3999
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4000
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    .line 4013
    :goto_0
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 4015
    :cond_0
    return-void

    .line 4001
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4002
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_DUAL:Z

    if-eqz v0, :cond_2

    .line 4003
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    goto :goto_0

    .line 4005
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    goto :goto_0

    .line 4007
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4008
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    goto :goto_0

    .line 4010
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

    .line 2547
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    if-ne v0, v3, :cond_0

    .line 2548
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_shutter_speed_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSpeed:I

    .line 2551
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSpeed:I

    if-eq v0, p1, :cond_2

    .line 2552
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

    .line 2553
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSpeed:I

    .line 2554
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    if-ne v0, v3, :cond_1

    .line 2555
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_shutter_speed_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2557
    :cond_1
    const/16 v0, 0x1f

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2559
    :cond_2
    return-void
.end method

.method public setSkinColorLevel(I)V
    .locals 3
    .param p1, "skinColorLevel"    # I

    .prologue
    .line 2571
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_skincolor_level_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    .line 2572
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    if-eq v0, p1, :cond_0

    .line 2573
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

    .line 2574
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    .line 2575
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_skincolor_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2577
    const/16 v0, 0x7a

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2579
    :cond_0
    return-void
.end method

.method public setSlimFaceLevel(I)V
    .locals 3
    .param p1, "slimFaceLevel"    # I

    .prologue
    .line 2591
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_slimface_level_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    .line 2592
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    if-eq v0, p1, :cond_0

    .line 2593
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

    .line 2594
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    .line 2595
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_slimface_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2597
    const/16 v0, 0x6e

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2599
    :cond_0
    return-void
.end method

.method public setSoundAndShotMode(I)V
    .locals 3
    .param p1, "SoundAndShotMode"    # I

    .prologue
    .line 2620
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    if-eq v0, p1, :cond_0

    .line 2621
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

    .line 2622
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    .line 2623
    const/16 v0, 0x4d

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    .line 2625
    :cond_0
    return-void
.end method

.method public setSpotlightLevel(I)V
    .locals 4
    .param p1, "spotlightLevel"    # I

    .prologue
    .line 2637
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_spotlight_level_key"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2638
    .local v0, "value":I
    if-eq v0, p1, :cond_0

    .line 2639
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

    .line 2640
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_spotlight_level_key"

    invoke-static {v1, v2, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2641
    const/16 v1, 0x6f

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2643
    :cond_0
    return-void
.end method

.method public setSpotlightPosition(I)V
    .locals 4
    .param p1, "spotlightPosition"    # I

    .prologue
    .line 2655
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_spotlight_position_key"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2656
    .local v0, "value":I
    if-eq v0, p1, :cond_0

    .line 2657
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

    .line 2658
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_spotlight_position_key"

    invoke-static {v1, v2, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2659
    const/16 v1, 0x77

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2661
    :cond_0
    return-void
.end method

.method public setStickerId(I)V
    .locals 6
    .param p1, "stickerId"    # I

    .prologue
    const/16 v5, 0x232d

    .line 2724
    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerId:I

    if-ne v2, p1, :cond_0

    if-ne p1, v5, :cond_1

    .line 2725
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

    .line 2727
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerId:I

    .line 2728
    const/16 v2, 0xbe

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2730
    if-ne p1, v5, :cond_1

    .line 2731
    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerPackageId:I

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerPackage(I)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    move-result-object v1

    .line 2732
    .local v1, "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 2733
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

    .line 2734
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

    .line 2735
    const/16 v2, 0xbf

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerRandomId:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2738
    .end local v0    # "r":Ljava/util/Random;
    .end local v1    # "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    :cond_1
    return-void
.end method

.method public setStickerPackageId(I)V
    .locals 3
    .param p1, "stickerPackageId"    # I

    .prologue
    .line 2747
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerPackageId:I

    if-eq v0, p1, :cond_0

    .line 2748
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

    .line 2749
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerPackageId:I

    .line 2751
    :cond_0
    return-void
.end method

.method public setStickerSoundMute(I)V
    .locals 3
    .param p1, "soundMute"    # I

    .prologue
    .line 2760
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerSoundMute:I

    if-eq v0, p1, :cond_0

    .line 2761
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

    .line 2762
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerSoundMute:I

    .line 2763
    const/16 v0, 0x232c

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerSoundMute:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2765
    :cond_0
    return-void
.end method

.method public setStickerType(I)V
    .locals 3
    .param p1, "stickerType"    # I

    .prologue
    .line 2777
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerType:I

    if-eq v0, p1, :cond_0

    .line 2778
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

    .line 2779
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStickerType:I

    .line 2781
    :cond_0
    return-void
.end method

.method public setStorage(I)V
    .locals 4
    .param p1, "storage"    # I

    .prologue
    const/16 v3, 0x16

    .line 2790
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_storage_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultStorage()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    .line 2791
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    if-eq v0, p1, :cond_0

    .line 2792
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

    .line 2793
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    .line 2794
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_storage_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2796
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2797
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    .line 2799
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 2800
    return-void
.end method

.method public setTapToTakePictures(I)V
    .locals 4
    .param p1, "tapToTakePictures"    # I

    .prologue
    .line 2809
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

    .line 2810
    .local v0, "value":I
    if-eq v0, p1, :cond_0

    .line 2811
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

    .line 2812
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_tap_to_take_pictures_key"

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2814
    :cond_0
    return-void
.end method

.method public setTemperatureHighToRecord(Z)V
    .locals 0
    .param p1, "highTemperature"    # Z

    .prologue
    .line 3527
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToRecord:Z

    .line 3528
    return-void
.end method

.method public setTemperatureHighToUseFlash(Z)V
    .locals 0
    .param p1, "highTemperature"    # Z

    .prologue
    .line 3537
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToUseFlash:Z

    .line 3538
    return-void
.end method

.method public setTemperatureLowToUseFlash(Z)V
    .locals 0
    .param p1, "lowTemperature"    # Z

    .prologue
    .line 3547
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureLowToUseFlash:Z

    .line 3548
    return-void
.end method

.method public setTimer(I)V
    .locals 1
    .param p1, "timer"    # I

    .prologue
    .line 2827
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    .line 2828
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setBackTimer(I)V

    .line 2832
    :goto_0
    return-void

    .line 2830
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFrontTimer(I)V

    goto :goto_0
.end method

.method public setTimer(II)V
    .locals 1
    .param p1, "cameraId"    # I
    .param p2, "timer"    # I

    .prologue
    .line 4019
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 4020
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setBackTimer(I)V

    .line 4024
    :goto_0
    return-void

    .line 4022
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFrontTimer(I)V

    goto :goto_0
.end method

.method public setTorchLightStatus(I)V
    .locals 3
    .param p1, "torchLight"    # I

    .prologue
    .line 2850
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    if-eq v0, p1, :cond_0

    .line 2851
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    .line 2852
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x12c

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 2854
    :cond_0
    return-void
.end method

.method public setVideoCollageRecordingTime(I)V
    .locals 3
    .param p1, "recordingTime"    # I

    .prologue
    const/4 v2, 0x1

    .line 2872
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2873
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_recording_time"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    .line 2878
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    if-eq v0, p1, :cond_0

    .line 2879
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    .line 2880
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

    .line 2882
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2883
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_recording_time"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2887
    :goto_1
    const/16 v0, 0x84

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2889
    :cond_0
    return-void

    .line 2875
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_back_video_collage_recording_time"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    goto :goto_0

    .line 2885
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
    .line 4028
    const-string v2, "CameraSettings"

    const-string v3, "setVideoCollageResolution()"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4032
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4055
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4056
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    .line 4060
    .local v1, "cameraResolution":Ljava/lang/String;
    :goto_0
    const-string v0, "960x720"

    .line 4065
    .local v0, "camcorderResolution":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 4066
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 4067
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 4068
    :cond_0
    const-string v0, "640x480"

    .line 4071
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

    .line 4073
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolution(I)Z

    .line 4074
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->overrideCamcorderResolution(I)V

    .line 4075
    return-void

    .line 4038
    .end local v0    # "camcorderResolution":Ljava/lang/String;
    .end local v1    # "cameraResolution":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4039
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    .line 4043
    .restart local v1    # "cameraResolution":Ljava/lang/String;
    :goto_2
    const-string v0, "960x960"

    .line 4044
    .restart local v0    # "camcorderResolution":Ljava/lang/String;
    goto :goto_1

    .line 4041
    .end local v0    # "camcorderResolution":Ljava/lang/String;
    .end local v1    # "cameraResolution":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    .restart local v1    # "cameraResolution":Ljava/lang/String;
    goto :goto_2

    .line 4058
    .end local v1    # "cameraResolution":Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    .restart local v1    # "cameraResolution":Ljava/lang/String;
    goto :goto_0

    .line 4032
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

    .line 4079
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4080
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_type"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    .line 4085
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    if-eq v0, p1, :cond_0

    .line 4086
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    .line 4087
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

    .line 4089
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4090
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_type"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4095
    :goto_1
    if-eqz p2, :cond_0

    .line 4096
    const/16 v0, 0x83

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 4099
    :cond_0
    return-void

    .line 4082
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_back_video_collage_type"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    goto :goto_0

    .line 4092
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
    .line 2911
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

    .line 2912
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    if-eq v0, p1, :cond_0

    .line 2913
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

    .line 2914
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    .line 2915
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_fullpreview_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2917
    const/16 v0, 0x138

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2919
    :cond_0
    return-void
.end method

.method public setVolumeKeyAs(I)V
    .locals 3
    .param p1, "volumeKeyAs"    # I

    .prologue
    .line 2928
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_volume_key_as"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VOLUME_KEY_AS:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    .line 2929
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    if-eq v0, p1, :cond_0

    .line 2930
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

    .line 2931
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    .line 2932
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_volume_key_as"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2933
    const/16 v0, 0x49

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2935
    :cond_0
    return-void
.end method

.method public setWatermarkInputText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2944
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkInputText:Ljava/lang/String;

    .line 2945
    return-void
.end method

.method public setWhiteBalance(I)V
    .locals 4
    .param p1, "whiteBalance"    # I

    .prologue
    const/4 v3, 0x1

    .line 2958
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    if-ne v0, v3, :cond_0

    .line 2959
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_white_balance_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    .line 2962
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    if-eq v0, p1, :cond_2

    .line 2963
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

    .line 2964
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    .line 2965
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    if-ne v0, v3, :cond_1

    .line 2966
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_white_balance_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2968
    :cond_1
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2970
    :cond_2
    return-void
.end method

.method public setWideTeleDualMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 2979
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWideTeleDualMode:I

    if-eq v0, p1, :cond_0

    .line 2980
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

    .line 2981
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWideTeleDualMode:I

    .line 2983
    const/16 v0, 0xb6

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWideTeleDualMode:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 2985
    :cond_0
    return-void
.end method

.method public setZoomValue(I)V
    .locals 3
    .param p1, "zoomValue"    # I

    .prologue
    .line 2998
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    if-eq v0, p1, :cond_0

    .line 2999
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

    .line 3000
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    .line 3001
    const/16 v0, 0x12

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    .line 3003
    :cond_0
    return-void
.end method

.method public storeShootingModeBeforeRecording()V
    .locals 1

    .prologue
    .line 4103
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPreviousShootingModeForRecording:I

    .line 4104
    return-void
.end method

.method public unregisterAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    .prologue
    .line 4108
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v1

    .line 4109
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4110
    monitor-exit v1

    .line 4111
    return-void

    .line 4110
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
    .line 4115
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v2

    .line 4116
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4117
    .local v0, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;>;"
    if-nez v0, :cond_0

    .line 4118
    const-string v1, "CameraSettings"

    const-string v3, "Could not find listener. return."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4122
    :goto_0
    monitor-exit v2

    .line 4123
    return-void

    .line 4120
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4122
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
    .line 4127
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

    .line 4129
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4130
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 4131
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_WIDE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4132
    .local v0, "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    .line 4157
    .end local v0    # "resolutionID":I
    :cond_0
    :goto_0
    return-void

    .line 4133
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4134
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_WIDE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4135
    .restart local v0    # "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    .line 4136
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    goto :goto_0

    .line 4138
    .end local v0    # "resolutionID":I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4139
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 4140
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_SQUARE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4141
    .restart local v0    # "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    goto :goto_0

    .line 4142
    .end local v0    # "resolutionID":I
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4143
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_SQUARE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4144
    .restart local v0    # "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    .line 4145
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    goto :goto_0

    .line 4148
    .end local v0    # "resolutionID":I
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 4149
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_NORMAL_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4150
    .restart local v0    # "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    goto/16 :goto_0

    .line 4151
    .end local v0    # "resolutionID":I
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4152
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_NORMAL_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 4153
    .restart local v0    # "resolutionID":I
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    .line 4154
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
    .line 4161
    return-void
.end method

.class Lcom/android/server/display/AutomaticBrightnessController;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessController$1;,
        Lcom/android/server/display/AutomaticBrightnessController$2;,
        Lcom/android/server/display/AutomaticBrightnessController$3;,
        Lcom/android/server/display/AutomaticBrightnessController$4;,
        Lcom/android/server/display/AutomaticBrightnessController$5;,
        Lcom/android/server/display/AutomaticBrightnessController$6;,
        Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;,
        Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;,
        Lcom/android/server/display/AutomaticBrightnessController$Callbacks;,
        Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;,
        Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;,
        Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;,
        Lcom/android/server/display/AutomaticBrightnessController$UserSwitchedReceiver;
    }
.end annotation


# static fields
.field private static final AMBIENT_LIGHT_PREDICTION_TIME_MILLIS:J = 0x64L

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.1f

.field private static final BRIGHTNESS_ADJUSTMENT_SAMPLE_DEBOUNCE_MILLIS:I = 0x2710

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static final DEBUG:Z = false

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final HBM_LEVEL_SYSFS_PATH:Ljava/lang/String; = "/sys/class/backlight/panel/auto_brightness_level"

.field public static HBM_USER_ENABLE:Z = false

.field private static final MANUAL_LUX_LIMIT:I = 0x64

.field private static final MSG_BRIGHTNESS_ADJUSTMENT_SAMPLE:I = 0x2

.field private static final MSG_PRINT_LAST_LIGHT_SENSOR_EVENT:I = 0x3

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static SPECIFIC_HBM_FEATURE:Z = false

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessController"

.field private static final TAG_PAB:Ljava/lang/String; = "[PAB] "

.field private static final TWILIGHT_ADJUSTMENT_MAX_GAMMA:F = 1.0f

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z = true


# instance fields
.field private final AUTO_BRIGHTNESS_LEVEL_PATH:Ljava/lang/String;

.field private final COMMON_LUX_PATH:Ljava/lang/String;

.field private final HBM_LUX:I

.field private final LIGHT_SENSOR_ENABLE_TIME_COVEROPEN:J

.field private final LIGHT_SENSOR_UPDATE_TIMEOUT_MILLIS:J

.field private final MDNIE_AUTO_BRIGHTNESS_LEVEL_PATH:Ljava/lang/String;

.field private final OFFSET_FIX:I

.field private final OFFSET_SUB:I

.field private final OFFSET_USER:I

.field private final TAG_DAB:Ljava/lang/String;

.field private final TAG_SENSOR:Ljava/lang/String;

.field private final TCON_BRIGHTNESS_MODE_PATH:Ljava/lang/String;

.field private final TCON_LUX_PATH:Ljava/lang/String;

.field private lastLightSensorEventTime:J

.field private lastLightSensorValue:F

.field private lastRawBrightnessValue:F

.field private mAmbientCandela:F

.field private final mAmbientLightHorizon:I

.field private mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private mAutoBrightnessForEbookOnly:Z

.field private final mBrighteningLightDebounceConfig:J

.field private mBrighteningLuxThreshold:F

.field private mBrightnessAdjustmentSampleOldAdjustment:F

.field private mBrightnessAdjustmentSampleOldBrightness:I

.field private mBrightnessAdjustmentSampleOldGamma:F

.field private mBrightnessAdjustmentSampleOldLux:F

.field private mBrightnessAdjustmentSamplePending:Z

.field private final mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private final mDarkeningLightDebounceConfig:J

.field private mDarkeningLuxThreshold:F

.field private mDebounceLuxDirection:I

.field private mDebounceLuxTime:J

.field private final mDozeScaleFactor:F

.field private mDozing:Z

.field private mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

.field private mExistAutoBrightnessLevelPath:Z

.field private mExistCommonLuxPath:Z

.field private mExistMdnieAutoBrightnessLevelPath:Z

.field private mExistTconBrightnessModePath:Z

.field private mExistTconLuxPath:Z

.field private mHBMDisableLevel:I

.field private mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

.field private mHandlerRegisterInSeperate:Landroid/os/Handler;

.field private mHandlerRegisterInSeperateThread:Landroid/os/HandlerThread;

.field private mHasRetailModeApp:Z

.field private mHighHysteresis:F

.field private mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private mIsBrightnessModeAuto:Z

.field private mIsSupportedSensorHubAutoBrightness:Z

.field private mLastAmbientLux:I

.field private mLastHBM:Z

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastObservedSensorHubLuxTime:J

.field private mLastScreenAutoBrightnessGamma:F

.field private mLatestAnimationTarget:I

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private final mLightSensorListenerUpdateTimeoutRunnable:Ljava/lang/Runnable;

.field private final mLightSensorRate:I

.field private mLightSensorWarmUpTimeConfig:I

.field private final mLockPAB:Ljava/lang/Object;

.field private mLowHysteresis:F

.field private mManualAdjustment:F

.field private mNeedToAddPersonalAutoBrightnessPoint:Z

.field private mPendingPabAddPoint:I

.field private mPendingScreenAutoBrightness:Z

.field private mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

.field private mPrevAutoBrightnessLevel:I

.field private mPrevTconBrightnessMode:Z

.field private mPrevTconLuxLevel:I

.field private mRecentLightSamples:I

.field private mRecentSensorHubSamples:I

.field private final mResetAmbientLuxAfterWarmUpConfig:Z

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSECAverageLux:F

.field private mScreenAutoBrightness:I

.field private mScreenAutoBrightnessAdjustment:F

.field private mScreenAutoBrightnessAdjustmentMaxGamma:F

.field private final mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private mScreenBrightnessModeSetting:I

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenBrightnessSetting:I

.field private mScreenBrightnessSettingDefault:I

.field private final mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;

.field private final mSensorListenerRegistrationRunnable:Ljava/lang/Runnable;

.field private final mSensorListenerUnregistrationRunnable:Ljava/lang/Runnable;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingsObserver:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

.field private mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

.field private final mTwilight:Lcom/android/server/twilight/TwilightManager;

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mUseAutoBrightnessController:Z

.field private mUseHbmAtManualMax:Z

.field private mUseManualAutoBrightness:Z

.field private mUseSystemPowerSaveMode:Z

.field private mUseTwilight:Z

.field private mUserSwitched:Z

.field private mWasTconMaxLevel:Z

.field private final mWeightingIntercept:I


# direct methods
.method static synthetic -get0(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->HBM_LUX:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientCandela:F

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingPabAddPoint:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/scontext/SContextManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessModeSetting:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/scontext/SContextListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/AutomaticBrightnessController;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->lastLightSensorEventTime:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->lastLightSensorValue:F

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUserSwitched:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientCandela:F

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/display/AutomaticBrightnessController;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedSensorHubLuxTime:J

    return-wide p1
.end method

.method static synthetic -set6(Lcom/android/server/display/AutomaticBrightnessController;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    return-wide p1
.end method

.method static synthetic -set7(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/display/AutomaticBrightnessController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/display/AutomaticBrightnessController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessModeSetting:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->collectBrightnessAdjustmentSample()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLuxAndCandelaFromSensorHub()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/display/AutomaticBrightnessController;JF)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->printLastLightSensorEvent()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/display/AutomaticBrightnessController;J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLuxSEC(J)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    .locals 0
    .param p1, "sendUpdate"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightnessSEC(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    .locals 0
    .param p1, "sendUpdate"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    .locals 0
    .param p1, "needUpdate"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->updatePersonalScreenAutoBrightnessTableLocked(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->HBM_USER_ENABLE:Z

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIFIJJZIFLandroid/hardware/scontext/SContextManager;ZLcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;Landroid/content/Context;)V
    .locals 8
    .param p1, "callbacks"    # Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p4, "autoBrightnessSpline"    # Landroid/util/Spline;
    .param p5, "lightSensorWarmUpTime"    # I
    .param p6, "brightnessMin"    # I
    .param p7, "brightnessMax"    # I
    .param p8, "dozeScaleFactor"    # F
    .param p9, "lightSensorRate"    # I
    .param p10, "brighteningLightDebounceConfig"    # J
    .param p12, "darkeningLightDebounceConfig"    # J
    .param p14, "resetAmbientLuxAfterWarmUpConfig"    # Z
    .param p15, "ambientLightHorizon"    # I
    .param p16, "autoBrightnessAdjustmentMaxGamma"    # F
    .param p17, "sContextManager"    # Landroid/hardware/scontext/SContextManager;
    .param p18, "isSupportedSensorHubAutoBrightness"    # Z
    .param p19, "dynamicAutoBrightnessConfig"    # Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    .param p20, "context"    # Landroid/content/Context;

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/high16 v4, 0x43fa0000    # 500.0f

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 221
    const-string/jumbo v4, "[DAB] "

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->TAG_DAB:Ljava/lang/String;

    .line 222
    const-string/jumbo v4, "[sensor] "

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->TAG_SENSOR:Ljava/lang/String;

    .line 226
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z

    .line 227
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseAutoBrightnessController:Z

    .line 228
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseSystemPowerSaveMode:Z

    .line 232
    const-string/jumbo v4, "/sys/class/backlight/panel/auto_brightness"

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BRIGHTNESS_LEVEL_PATH:Ljava/lang/String;

    .line 233
    const-string/jumbo v4, "/sys/class/tcon/tcon/auto_br"

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->TCON_BRIGHTNESS_MODE_PATH:Ljava/lang/String;

    .line 234
    const-string/jumbo v4, "/sys/class/tcon/tcon/lux"

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->TCON_LUX_PATH:Ljava/lang/String;

    .line 235
    const-string/jumbo v4, "/sys/class/lcd/panel/lux"

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->COMMON_LUX_PATH:Ljava/lang/String;

    .line 236
    const-string/jumbo v4, "/sys/class/mdnie/mdnie/auto_brightness"

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->MDNIE_AUTO_BRIGHTNESS_LEVEL_PATH:Ljava/lang/String;

    .line 237
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistAutoBrightnessLevelPath:Z

    .line 238
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistTconBrightnessModePath:Z

    .line 239
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistTconLuxPath:Z

    .line 240
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistCommonLuxPath:Z

    .line 241
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistMdnieAutoBrightnessLevelPath:Z

    .line 242
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevTconLuxLevel:I

    .line 243
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevTconBrightnessMode:Z

    .line 244
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLux:I

    .line 245
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevAutoBrightnessLevel:I

    .line 249
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHasRetailModeApp:Z

    .line 255
    const-wide/16 v4, 0x190

    iput-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->LIGHT_SENSOR_UPDATE_TIMEOUT_MILLIS:J

    .line 259
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLatestAnimationTarget:I

    .line 260
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingScreenAutoBrightness:Z

    .line 270
    const/4 v4, 0x5

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMDisableLevel:I

    .line 273
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseHbmAtManualMax:Z

    .line 277
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    .line 293
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 296
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    .line 303
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 330
    const-wide/16 v4, 0x96

    iput-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->LIGHT_SENSOR_ENABLE_TIME_COVEROPEN:J

    .line 747
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$1;

    invoke-direct {v4, p0}, Lcom/android/server/display/AutomaticBrightnessController$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerRegistrationRunnable:Ljava/lang/Runnable;

    .line 770
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$2;

    invoke-direct {v4, p0}, Lcom/android/server/display/AutomaticBrightnessController$2;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerUnregistrationRunnable:Ljava/lang/Runnable;

    .line 786
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$3;

    invoke-direct {v4, p0}, Lcom/android/server/display/AutomaticBrightnessController$3;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListenerUpdateTimeoutRunnable:Ljava/lang/Runnable;

    .line 1042
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLowHysteresis:F

    .line 1043
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHighHysteresis:F

    .line 1101
    const/high16 v4, 0x437f0000    # 255.0f

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->lastRawBrightnessValue:F

    .line 1102
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    .line 1103
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWasTconMaxLevel:Z

    .line 1360
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$4;

    invoke-direct {v4, p0}, Lcom/android/server/display/AutomaticBrightnessController$4;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 1395
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$5;

    invoke-direct {v4, p0}, Lcom/android/server/display/AutomaticBrightnessController$5;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;

    .line 1428
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$6;

    invoke-direct {v4, p0}, Lcom/android/server/display/AutomaticBrightnessController$6;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 1695
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;

    .line 1711
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->OFFSET_FIX:I

    .line 1712
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->OFFSET_USER:I

    .line 1713
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->OFFSET_SUB:I

    .line 1714
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z

    .line 1715
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingPabAddPoint:I

    .line 348
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    .line 350
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    .line 351
    const-class v4, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/twilight/TwilightManager;

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    .line 352
    iput-object p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 353
    iput-object p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 354
    iput p6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    .line 355
    iput p7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    .line 356
    iput p5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    .line 357
    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    .line 358
    move/from16 v0, p9

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    .line 360
    const-wide/16 v4, 0x7d0

    iput-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    .line 362
    const-wide/16 v4, 0xbb8

    iput-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    .line 363
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    .line 364
    move/from16 v0, p15

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    .line 365
    move/from16 v0, p15

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    .line 366
    move/from16 v0, p16

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustmentMaxGamma:F

    .line 368
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-direct {v4, p0, p2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 370
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    int-to-long v6, v5

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    invoke-direct {v4, v6, v7, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(JI)V

    .line 369
    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 372
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    int-to-long v6, v5

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    invoke-direct {v4, v6, v7, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(JI)V

    .line 371
    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 375
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 378
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 379
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    .line 380
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    .line 381
    new-instance v4, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    .line 383
    new-instance v4, Landroid/os/HandlerThread;

    const-string/jumbo v5, "RegisterInSeperateThread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperateThread:Landroid/os/HandlerThread;

    .line 384
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperateThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 385
    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperateThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    .line 389
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 390
    .local v3, "resolver":Landroid/content/ContentResolver;
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSettingsObserver:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    .line 395
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->readHbmLevelLimitFromFile()V

    .line 396
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->SPECIFIC_HBM_FEATURE:Z

    if-eqz v4, :cond_1

    .line 397
    const/16 v4, 0xbb8

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->HBM_LUX:I

    .line 403
    :goto_0
    const-string/jumbo v4, "screen_brightness_mode"

    .line 402
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 404
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSettingsObserver:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 402
    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 406
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS:Z

    if-eqz v4, :cond_0

    .line 407
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;

    monitor-enter v5

    .line 408
    :try_start_0
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    invoke-direct {v4, p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    .line 409
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "power"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 410
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v4

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessSettingDefault:I

    .line 411
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->updatePersonalScreenAutoBrightnessTableLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 344
    .end local v2    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void

    .line 399
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v4, v4, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessHbmAmbientLux:I

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->HBM_LUX:I

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 829
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 832
    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    int-to-long v2, v1

    sub-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 836
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    .line 839
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    .line 840
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    .line 828
    return-void
.end method

.method private applyLightSensorMeasurementSEC(JF)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 814
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 815
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 816
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSECAverageLux:F

    .line 823
    :goto_0
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    .line 824
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    .line 812
    return-void

    .line 818
    :cond_0
    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    sub-long v0, p1, v2

    .line 819
    .local v0, "timeDelta":J
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    add-float/2addr v2, p3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSECAverageLux:F

    goto :goto_0
.end method

.method private calculateAmbientLux(J)F
    .locals 13
    .param p1, "now"    # J

    .prologue
    .line 858
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 859
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 860
    const-string/jumbo v10, "AutomaticBrightnessController"

    const-string/jumbo v11, "calculateAmbientLux: No ambient light readings available"

    invoke-static {v10, v11}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/high16 v10, -0x40800000    # -1.0f

    return v10

    .line 863
    :cond_0
    const/4 v5, 0x0

    .line 864
    .local v5, "sum":F
    const/4 v8, 0x0

    .line 865
    .local v8, "totalWeight":F
    const-wide/16 v2, 0x64

    .line 866
    .local v2, "endTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 867
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v10

    sub-long v6, v10, p1

    .line 868
    .local v6, "startTime":J
    invoke-direct {p0, v6, v7, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->calculateWeight(JJ)F

    move-result v9

    .line 869
    .local v9, "weight":F
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    .line 875
    .local v4, "lux":F
    add-float/2addr v8, v9

    .line 876
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v10

    mul-float/2addr v10, v9

    add-float/2addr v5, v10

    .line 877
    move-wide v2, v6

    .line 866
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 883
    .end local v4    # "lux":F
    .end local v6    # "startTime":J
    .end local v9    # "weight":F
    :cond_1
    div-float v10, v5, v8

    return v10
.end method

.method private calculateWeight(JJ)F
    .locals 3
    .param p1, "startDelta"    # J
    .param p3, "endDelta"    # J

    .prologue
    .line 887
    invoke-direct {p0, p3, p4}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private cancelBrightnessAdjustmentSample()V
    .locals 2

    .prologue
    .line 1287
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_0

    .line 1288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1289
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 1286
    :cond_0
    return-void
.end method

.method private changeModeInSensorHubAutoBrightness(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 683
    new-instance v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;

    invoke-direct {v0, p1}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;-><init>(I)V

    .line 684
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;

    const/16 v3, 0x27

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    .line 682
    return-void
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1268
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    .line 1267
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private collectBrightnessAdjustmentSample()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1294
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_0

    .line 1295
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1296
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-ltz v0, :cond_0

    .line 1306
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 1307
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldAdjustment:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1308
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1309
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1310
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldGamma:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 1311
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1312
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1313
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1314
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1306
    const v1, 0x88b8

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1293
    :cond_0
    return-void
.end method

.method private getAmbientLuxAndCandelaFromSensorHub()V
    .locals 5

    .prologue
    .line 1761
    const/4 v1, 0x2

    .line 1762
    .local v1, "mode":I
    new-instance v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;

    invoke-direct {v0, v1}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;-><init>(I)V

    .line 1763
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;

    .line 1764
    const/16 v4, 0x27

    .line 1763
    invoke-virtual {v2, v3, v4, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    .line 1765
    const-string/jumbo v2, "AutomaticBrightnessController"

    const-string/jumbo v3, "[PAB] request AmbientLuxAndCandelaFromSensorHub"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    return-void
.end method

.method private handleLightSensorEvent(JF)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 805
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->applyLightSensorMeasurementSEC(JF)V

    .line 806
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLuxSEC(J)V

    .line 798
    return-void
.end method

.method private nextAmbientLightBrighteningTransition(J)J
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 897
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 898
    .local v0, "N":I
    move-wide v2, p1

    .line 899
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 900
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 905
    :cond_0
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    add-long/2addr v4, v2

    return-wide v4

    .line 903
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 899
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private nextAmbientLightDarkeningTransition(J)J
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 909
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 910
    .local v0, "N":I
    move-wide v2, p1

    .line 911
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 912
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 917
    :cond_0
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    add-long/2addr v4, v2

    return-wide v4

    .line 915
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 911
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private notifySurfaceFlinger()V
    .locals 6

    .prologue
    .line 1675
    :try_start_0
    const-string/jumbo v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1676
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 1677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1678
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1679
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1680
    const/16 v3, 0x3ee

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1672
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 1683
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private prepareBrightnessAdjustmentSample()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 1272
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-nez v0, :cond_1

    .line 1273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1274
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldAdjustment:F

    .line 1275
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    :goto_0
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    .line 1276
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    .line 1277
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldGamma:F

    .line 1282
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 1283
    const-wide/16 v2, 0x2710

    .line 1282
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1271
    return-void

    .line 1275
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    .line 1279
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    goto :goto_1
.end method

.method private printLastLightSensorEvent()V
    .locals 4

    .prologue
    .line 1353
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1354
    const-string/jumbo v0, "AutomaticBrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[DAB] printLastLightSensorEvent : lastLightSensorEventTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->lastLightSensorEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1355
    const-string/jumbo v2, " lastLightSensorValue = "

    .line 1354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1355
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->lastLightSensorValue:F

    .line 1354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :cond_0
    return-void
.end method

.method private readHbmLevelLimitFromFile()V
    .locals 4

    .prologue
    .line 474
    const-string/jumbo v1, "/sys/class/backlight/panel/auto_brightness_level"

    invoke-virtual {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "hbmLevelLimit":Ljava/lang/String;
    const-string/jumbo v1, "12"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->SPECIFIC_HBM_FEATURE:Z

    .line 477
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMDisableLevel:I

    .line 478
    const-string/jumbo v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "!@ SPECIFIC_HBM_FEATURE = true, hbmLevelLimit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :goto_0
    return-void

    .line 480
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->SPECIFIC_HBM_FEATURE:Z

    .line 481
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMDisableLevel:I

    .line 482
    const-string/jumbo v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "!@ SPECIFIC_HBM_FEATURE = false, hbmLevelLimit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendLuxLevel(FZ)V
    .locals 10
    .param p1, "lux"    # F
    .param p2, "forceOutdoor"    # Z

    .prologue
    const v9, 0x459c4000    # 5000.0f

    const/high16 v8, 0x447a0000    # 1000.0f

    const/high16 v7, 0x41700000    # 15.0f

    const/high16 v6, 0x43160000    # 150.0f

    const/4 v5, 0x6

    .line 1581
    const/4 v2, 0x0

    .line 1582
    .local v2, "tconLuxLevel":I
    cmpg-float v3, p1, v6

    if-gez v3, :cond_c

    const/4 v2, 0x0

    .line 1585
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistTconLuxPath:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevTconLuxLevel:I

    if-eq v3, v2, :cond_0

    .line 1586
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevTconLuxLevel:I

    .line 1587
    const-string/jumbo v3, "/sys/class/tcon/tcon/lux"

    invoke-static {v3, v2}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1591
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistTconBrightnessModePath:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevTconBrightnessMode:Z

    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsBrightnessModeAuto:Z

    if-eq v3, v4, :cond_1

    .line 1592
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsBrightnessModeAuto:Z

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevTconBrightnessMode:Z

    .line 1593
    const-string/jumbo v4, "/sys/class/tcon/tcon/auto_br"

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsBrightnessModeAuto:Z

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    :goto_1
    invoke-static {v4, v3}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1599
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsBrightnessModeAuto:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseHbmAtManualMax:Z

    if-nez v3, :cond_2

    if-eqz p2, :cond_f

    :cond_2
    float-to-int v0, p1

    .line 1600
    .local v0, "ambientLux":I
    :goto_2
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistCommonLuxPath:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLux:I

    if-eq v3, v0, :cond_3

    .line 1601
    const-string/jumbo v3, "/sys/class/lcd/panel/lux"

    invoke-static {v3, v0}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1602
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLux:I

    .line 1607
    :cond_3
    const/4 v1, 0x0

    .line 1608
    .local v1, "autoBrightnessLevel":I
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsBrightnessModeAuto:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseHbmAtManualMax:Z

    if-eqz v3, :cond_20

    .line 1609
    :cond_4
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->SPECIFIC_HBM_FEATURE:Z

    if-eqz v3, :cond_1a

    .line 1610
    cmpg-float v3, p1, v7

    if-gez v3, :cond_10

    const/4 v1, 0x1

    .line 1635
    :cond_5
    :goto_3
    if-ge v1, v5, :cond_6

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseHbmAtManualMax:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsBrightnessModeAuto:Z

    if-eqz v3, :cond_21

    .line 1640
    :cond_6
    :goto_4
    if-lt v1, v5, :cond_7

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseSystemPowerSaveMode:Z

    if-eqz v3, :cond_7

    .line 1641
    add-int/lit8 v3, v1, -0x2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1644
    :cond_7
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v3, :cond_8

    if-eqz p2, :cond_22

    .line 1649
    :cond_8
    :goto_5
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->HBM_USER_ENABLE:Z

    if-nez v3, :cond_9

    if-lt v1, v5, :cond_9

    .line 1650
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMDisableLevel:I

    .line 1651
    const-string/jumbo v3, "AutomaticBrightnessController"

    const-string/jumbo v4, "[DAB] HBM is disabled from user"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    :cond_9
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevAutoBrightnessLevel:I

    if-eq v3, v1, :cond_b

    .line 1655
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevAutoBrightnessLevel:I

    .line 1656
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistAutoBrightnessLevelPath:Z

    if-eqz v3, :cond_a

    .line 1657
    const-string/jumbo v3, "/sys/class/backlight/panel/auto_brightness"

    invoke-static {v3, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1661
    :cond_a
    const-string/jumbo v3, "/sys/class/mdnie/mdnie/auto_brightness"

    invoke-static {v3, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1579
    :cond_b
    return-void

    .line 1583
    .end local v0    # "ambientLux":I
    .end local v1    # "autoBrightnessLevel":I
    :cond_c
    const v3, 0x469c4000    # 20000.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_d

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1584
    :cond_d
    const/4 v2, 0x2

    goto/16 :goto_0

    .line 1593
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1599
    :cond_f
    const/4 v0, -0x1

    .restart local v0    # "ambientLux":I
    goto :goto_2

    .line 1611
    .restart local v1    # "autoBrightnessLevel":I
    :cond_10
    cmpg-float v3, p1, v6

    if-gez v3, :cond_11

    const/4 v1, 0x2

    goto :goto_3

    .line 1612
    :cond_11
    cmpg-float v3, p1, v8

    if-gez v3, :cond_12

    const/4 v1, 0x3

    goto :goto_3

    .line 1613
    :cond_12
    const v3, 0x453b8000    # 3000.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_13

    const/4 v1, 0x4

    goto :goto_3

    .line 1614
    :cond_13
    const/high16 v3, 0x457a0000    # 4000.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_14

    const/4 v1, 0x6

    goto :goto_3

    .line 1615
    :cond_14
    cmpg-float v3, p1, v9

    if-gez v3, :cond_15

    const/4 v1, 0x7

    goto :goto_3

    .line 1616
    :cond_15
    const v3, 0x461c4000    # 10000.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_16

    const/16 v1, 0x8

    goto/16 :goto_3

    .line 1617
    :cond_16
    const v3, 0x469c4000    # 20000.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_17

    const/16 v1, 0x9

    goto/16 :goto_3

    .line 1618
    :cond_17
    const v3, 0x46ea6000    # 30000.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_18

    const/16 v1, 0xa

    goto/16 :goto_3

    .line 1619
    :cond_18
    const v3, 0x471c4000    # 40000.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_19

    const/16 v1, 0xb

    goto/16 :goto_3

    .line 1620
    :cond_19
    const v3, 0x471c4000    # 40000.0f

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_5

    const/16 v1, 0xc

    goto/16 :goto_3

    .line 1622
    :cond_1a
    cmpg-float v3, p1, v7

    if-gez v3, :cond_1b

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 1623
    :cond_1b
    cmpg-float v3, p1, v6

    if-gez v3, :cond_1c

    const/4 v1, 0x2

    goto/16 :goto_3

    .line 1624
    :cond_1c
    cmpg-float v3, p1, v8

    if-gez v3, :cond_1d

    const/4 v1, 0x3

    goto/16 :goto_3

    .line 1625
    :cond_1d
    cmpg-float v3, p1, v9

    if-gez v3, :cond_1e

    const/4 v1, 0x4

    goto/16 :goto_3

    .line 1626
    :cond_1e
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->HBM_LUX:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1f

    const/4 v1, 0x5

    goto/16 :goto_3

    .line 1627
    :cond_1f
    const/4 v1, 0x6

    goto/16 :goto_3

    .line 1631
    :cond_20
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->HBM_LUX:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-nez v3, :cond_5

    const/4 v1, 0x6

    goto/16 :goto_3

    .line 1636
    :cond_21
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 1645
    :cond_22
    const/4 v1, 0x0

    goto/16 :goto_5
.end method

.method private setAmbientLux(F)V
    .locals 2
    .param p1, "lux"    # F

    .prologue
    .line 852
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 853
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    .line 854
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    .line 851
    return-void
.end method

.method private setLightSensorEnabled(ZZ)Z
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "enableSensorAfterCoverDebounceTime"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 689
    const/4 v0, 0x0

    .line 690
    .local v0, "sensorSwitched":Z
    if-eqz p1, :cond_2

    .line 691
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-nez v1, :cond_0

    .line 692
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 700
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerRegistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 701
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerUnregistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 702
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListenerUpdateTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 704
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->ENABLE_SENSOR_WITH_DELAY:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 705
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerRegistrationRunnable:Ljava/lang/Runnable;

    .line 706
    const-wide/16 v4, 0x96

    .line 705
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 707
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListenerUpdateTimeoutRunnable:Ljava/lang/Runnable;

    .line 708
    const-wide/16 v4, 0x226

    .line 707
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 716
    :goto_0
    const/4 v0, 0x1

    .line 743
    :cond_0
    :goto_1
    return v0

    .line 712
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerRegistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 713
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListenerUpdateTimeoutRunnable:Ljava/lang/Runnable;

    .line 714
    const-wide/16 v4, 0x190

    .line 713
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 720
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 721
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 722
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 723
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 724
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    .line 725
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    .line 726
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 731
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerRegistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 732
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerUnregistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 733
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListenerUpdateTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 734
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerUnregistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 735
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 736
    const/4 v0, 0x1

    .line 738
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->sendLuxLevel(FZ)V

    goto :goto_1

    :cond_3
    move v1, v3

    .line 722
    goto :goto_2
.end method

.method private setScreenAutoBrightnessAdjustment(F)Z
    .locals 1
    .param p1, "adjustment"    # F

    .prologue
    .line 844
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 845
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    .line 846
    const/4 v0, 0x1

    return v0

    .line 848
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setUseTwilight(Z)Z
    .locals 3
    .param p1, "useTwilight"    # Z

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseTwilight:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 614
    :cond_0
    if-eqz p1, :cond_1

    .line 615
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-interface {v0, v1, v2}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 619
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseTwilight:Z

    .line 620
    const/4 v0, 0x1

    return v0

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    invoke-interface {v0, v1}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    goto :goto_0
.end method

.method private updateAmbientLux()V
    .locals 6

    .prologue
    .line 921
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 922
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    int-to-long v4, v3

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 923
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 920
    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 15
    .param p1, "time"    # J

    .prologue
    .line 929
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v1, :cond_1

    .line 931
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v10, v1

    iget-wide v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    add-long v8, v10, v12

    .line 932
    .local v8, "timeWhenSensorWarmedUp":J
    cmp-long v1, p1, v8

    if-gez v1, :cond_0

    .line 938
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v10, 0x1

    invoke-virtual {v1, v10, v8, v9}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 940
    return-void

    .line 942
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(J)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 943
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 949
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 952
    .end local v8    # "timeWhenSensorWarmedUp":J
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v2

    .line 953
    .local v2, "nextBrightenTransition":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v4

    .line 954
    .local v4, "nextDarkenTransition":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(J)F

    move-result v0

    .line 956
    .local v0, "ambientLux":F
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    cmp-long v1, v2, p1

    if-gtz v1, :cond_3

    .line 958
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 966
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 967
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v2

    .line 968
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v4

    .line 970
    :cond_2
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 978
    .local v6, "nextTransitionTime":J
    cmp-long v1, v6, p1

    if-lez v1, :cond_4

    .line 983
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v10, 0x1

    invoke-virtual {v1, v10, v6, v7}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 926
    return-void

    .line 957
    .end local v6    # "nextTransitionTime":J
    :cond_3
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    cmp-long v1, v4, p1

    if-gtz v1, :cond_2

    goto :goto_0

    .line 978
    .restart local v6    # "nextTransitionTime":J
    :cond_4
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    int-to-long v10, v1

    add-long v6, p1, v10

    goto :goto_1
.end method

.method private updateAmbientLuxSEC(J)V
    .locals 9
    .param p1, "time"    # J

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1048
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v2, :cond_0

    .line 1049
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z

    .line 1048
    if-nez v2, :cond_0

    .line 1050
    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    sub-long v2, p1, v2

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1051
    :cond_0
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSECAverageLux:F

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 1052
    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 1053
    iput v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    .line 1054
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    .line 1055
    iput-boolean v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z

    .line 1056
    invoke-direct {p0, v6}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightnessSEC(Z)V

    .line 1057
    return-void

    .line 1061
    :cond_1
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSECAverageLux:F

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHighHysteresis:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 1062
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    if-gtz v2, :cond_2

    .line 1063
    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    .line 1064
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    .line 1066
    :cond_2
    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    add-long v0, v2, v4

    .line 1067
    .local v0, "debounceTime":J
    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    .line 1068
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSECAverageLux:F

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 1069
    invoke-direct {p0, v6}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightnessSEC(Z)V

    .line 1073
    :goto_0
    return-void

    .line 1071
    :cond_3
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v2, v6, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 1077
    .end local v0    # "debounceTime":J
    :cond_4
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSECAverageLux:F

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLowHysteresis:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_7

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const/high16 v3, 0x40800000    # 4.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 1078
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    if-ltz v2, :cond_5

    .line 1079
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    .line 1080
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    .line 1082
    :cond_5
    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    add-long v0, v2, v4

    .line 1083
    .restart local v0    # "debounceTime":J
    cmp-long v2, p1, v0

    if-ltz v2, :cond_6

    .line 1086
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSECAverageLux:F

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 1087
    invoke-direct {p0, v6}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightnessSEC(Z)V

    .line 1091
    :goto_1
    return-void

    .line 1089
    :cond_6
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v2, v6, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_1

    .line 1095
    .end local v0    # "debounceTime":J
    :cond_7
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    if-eqz v2, :cond_8

    .line 1096
    iput v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    .line 1097
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    .line 1045
    :cond_8
    return-void
.end method

.method private updateAutoBrightness(Z)V
    .locals 12
    .param p1, "sendUpdate"    # Z

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    .line 987
    iget-boolean v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v8, :cond_0

    .line 988
    return-void

    .line 991
    :cond_0
    iget-object v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    iget v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v8, v9}, Landroid/util/Spline;->interpolate(F)F

    move-result v7

    .line 992
    .local v7, "value":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 995
    .local v1, "gamma":F
    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1

    .line 996
    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustmentMaxGamma:F

    .line 997
    iget v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    neg-float v9, v9

    const/high16 v10, -0x40800000    # -1.0f

    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v11, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 996
    invoke-static {v8, v9}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    .line 998
    .local v0, "adjGamma":F
    mul-float v1, v11, v0

    .line 1004
    .end local v0    # "adjGamma":F
    :cond_1
    iget-boolean v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseTwilight:Z

    if-eqz v8, :cond_2

    .line 1005
    iget-object v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v8}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v6

    .line 1006
    .local v6, "state":Lcom/android/server/twilight/TwilightState;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1007
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1008
    .local v4, "now":J
    invoke-virtual {v6}, Lcom/android/server/twilight/TwilightState;->getAmount()F

    move-result v8

    mul-float/2addr v8, v11

    add-float/2addr v8, v11

    mul-float/2addr v1, v8

    .line 1015
    .end local v4    # "now":J
    .end local v6    # "state":Lcom/android/server/twilight/TwilightState;
    :cond_2
    cmpl-float v8, v1, v11

    if-eqz v8, :cond_3

    .line 1016
    move v2, v7

    .line 1017
    .local v2, "in":F
    invoke-static {v7, v1}, Landroid/util/MathUtils;->pow(FF)F

    move-result v7

    .line 1025
    .end local v2    # "in":F
    :cond_3
    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v3

    .line 1026
    .local v3, "newScreenAutoBrightness":I
    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-eq v8, v3, :cond_4

    .line 1033
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1034
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 1035
    if-eqz p1, :cond_4

    .line 1036
    iget-object v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v8}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    .line 986
    :cond_4
    return-void
.end method

.method private updateAutoBrightnessSEC(Z)V
    .locals 6
    .param p1, "sendUpdate"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1118
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v3, :cond_0

    .line 1119
    const-string/jumbo v3, "AutomaticBrightnessController"

    const-string/jumbo v4, "[DAB] no lux value from sensor manager"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iput-boolean v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseManualAutoBrightness:Z

    .line 1121
    return-void

    .line 1125
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1126
    .local v1, "gamma":F
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v3, v4}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessValue(F)F

    move-result v2

    .line 1127
    .local v2, "value":F
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    .line 1128
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientCandela:F

    .line 1127
    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessLowHysteresis(F)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLowHysteresis:F

    .line 1129
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    .line 1130
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientCandela:F

    .line 1129
    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessHighHysteresis(F)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHighHysteresis:F

    .line 1132
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/android/server/display/AutomaticBrightnessController;->updateFinalAutoBrightness(ZFFF)V

    .line 1117
    return-void

    .end local v0
    :cond_1
    move v3, v2

    .line 1128
    goto :goto_0

    :cond_2
    move v3, v2

    .line 1130
    goto :goto_1
.end method

.method private updateFinalAutoBrightness(ZFFF)V
    .locals 15
    .param p1, "sendUpdate"    # Z
    .param p2, "value"    # F
    .param p3, "gamma"    # F
    .param p4, "autoBrightnessAdj"    # F

    .prologue
    .line 1161
    const/4 v12, 0x0

    cmpl-float v12, p4, v12

    if-eqz v12, :cond_0

    sget-boolean v12, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS:Z

    if-eqz v12, :cond_b

    .line 1162
    :cond_0
    const/4 v12, 0x0

    cmpl-float v12, p4, v12

    if-eqz v12, :cond_13

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->isManualAutoBrightnessValid()Z

    move-result v12

    .line 1161
    if-eqz v12, :cond_13

    .line 1163
    :goto_0
    move/from16 v0, p4

    neg-float v12, v0

    const/high16 v13, -0x40800000    # -1.0f

    invoke-static {v13, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const/high16 v13, -0x3f600000    # -5.0f

    mul-float v2, v12, v13

    .line 1164
    .local v2, "adjLevel":F
    const/4 v3, 0x0

    .line 1166
    .local v3, "autoBrightnessLevelStepRatio":F
    iget-boolean v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z

    if-eqz v12, :cond_c

    .line 1167
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v3, v12, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatioForEbook:F

    .line 1178
    :goto_1
    const/4 v12, 0x0

    cmpl-float v12, v2, v12

    if-lez v12, :cond_f

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v3

    move v13, v12

    :goto_2
    const/4 v12, 0x0

    cmpl-float v12, v2, v12

    if-lez v12, :cond_10

    move v12, v2

    :goto_3
    invoke-static {v13, v12}, Landroid/util/FloatMath;->pow(FF)F

    move-result v1

    .line 1179
    .local v1, "adjGamma":F
    mul-float p3, p3, v1

    .line 1185
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v12, v12, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mValueOfVirtualZeroCandela:I

    int-to-float v12, v12

    sub-float v12, p2, v12

    mul-float v12, v12, p3

    iget-object v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v13, v13, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mValueOfVirtualZeroCandela:I

    int-to-float v13, v13

    add-float v10, v12, v13

    .line 1186
    .local v10, "valueFromGamma":F
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v7, v12, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumBrightnessStepValue:I

    .line 1187
    .local v7, "minBrightnessStep":I
    float-to-int v12, v2

    mul-int/2addr v12, v7

    move/from16 v0, p2

    float-to-int v13, v0

    add-int v11, v12, v13

    .line 1188
    .local v11, "valueFromOffset":I
    const/4 v12, 0x0

    cmpl-float v12, p4, v12

    if-lez v12, :cond_11

    int-to-float v12, v11

    cmpg-float v12, v10, v12

    if-gez v12, :cond_11

    .line 1190
    :cond_1
    int-to-float v0, v11

    move/from16 p2, v0

    .line 1199
    .end local v1    # "adjGamma":F
    .end local v2    # "adjLevel":F
    .end local v3    # "autoBrightnessLevelStepRatio":F
    .end local v7    # "minBrightnessStep":I
    .end local v10    # "valueFromGamma":F
    .end local v11    # "valueFromOffset":I
    :cond_2
    :goto_4
    const/high16 v12, 0x437f0000    # 255.0f

    cmpl-float v12, p2, v12

    if-lez v12, :cond_3

    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->HBM_LUX:I

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3

    .line 1200
    const/high16 p2, 0x437f0000    # 255.0f

    .line 1204
    :cond_3
    sget-boolean v12, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS:Z

    if-nez v12, :cond_4

    .line 1205
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    move/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getFinalDynamicAutoBrightnessValue(FF)I

    move-result v12

    int-to-float v0, v12

    move/from16 p2, v0

    .line 1208
    :cond_4
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v9

    .line 1210
    .local v9, "newScreenAutoBrightness":I
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->lastRawBrightnessValue:F

    cmpl-float v12, p2, v12

    if-nez v12, :cond_5

    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    const/4 v13, 0x1

    if-gt v12, v13, :cond_6

    .line 1211
    :cond_5
    const-string/jumbo v13, "AutomaticBrightnessController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[DAB] updateAutoBrightnessSEC : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, "("

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ")    "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1212
    iget v14, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLowHysteresis:F

    .line 1211
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1212
    const-string/jumbo v14, " < "

    .line 1211
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1212
    iget v14, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 1211
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1212
    const-string/jumbo v14, " < "

    .line 1211
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1212
    iget v14, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHighHysteresis:F

    .line 1211
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1212
    const-string/jumbo v14, " ("

    .line 1211
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1212
    const-string/jumbo v14, ")"

    .line 1211
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1213
    iget-boolean v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z

    if-eqz v12, :cond_14

    const-string/jumbo v12, " (ebook)"

    .line 1211
    :goto_5
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_6
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->HBM_LUX:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_15

    const/4 v8, 0x1

    .line 1217
    .local v8, "needHBM":Z
    :goto_6
    const/4 v4, 0x0

    .line 1219
    .local v4, "isHBMChanged":Z
    iget-boolean v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    if-eq v12, v8, :cond_7

    .line 1220
    const-string/jumbo v13, "AutomaticBrightnessController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[DAB] HBM is "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz v8, :cond_16

    const-string/jumbo v12, "Enabled"

    :goto_7
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1221
    const-string/jumbo v14, ". mScreenAutoBrightness = "

    .line 1220
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iput-boolean v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    .line 1224
    const/4 v4, 0x1

    .line 1226
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "high_brightness_mode_pms_enter"

    if-eqz v8, :cond_17

    const/4 v12, 0x1

    :goto_8
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1230
    :cond_7
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const v13, 0x469c4000    # 20000.0f

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_18

    const/4 v6, 0x1

    .line 1231
    .local v6, "isTconMaxLevel":Z
    :goto_9
    const/4 v5, 0x0

    .line 1232
    .local v5, "isTconLevelChanged":Z
    iget-boolean v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWasTconMaxLevel:Z

    if-eq v12, v6, :cond_8

    .line 1233
    if-eqz v6, :cond_19

    .line 1234
    const-string/jumbo v12, "AutomaticBrightnessController"

    const-string/jumbo v13, "[DAB] The Ambient Lux has gone over 20000."

    invoke-static {v12, v13}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :goto_a
    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWasTconMaxLevel:Z

    .line 1240
    const/4 v5, 0x1

    .line 1243
    :cond_8
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-ne v12, v9, :cond_9

    .line 1244
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    iget v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLatestAnimationTarget:I

    if-eq v12, v13, :cond_1a

    .line 1245
    :cond_9
    iput v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1246
    move/from16 v0, p3

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 1247
    if-eqz p1, :cond_a

    .line 1248
    const-string/jumbo v12, "AutomaticBrightnessController"

    const-string/jumbo v13, "mCallbacks.updateBrightness()"

    invoke-static {v12, v13}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v12}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    .line 1250
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/android/server/display/AutomaticBrightnessController;->sendLuxLevel(FZ)V

    .line 1262
    :cond_a
    :goto_b
    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->lastRawBrightnessValue:F

    .line 1160
    return-void

    .line 1161
    .end local v4    # "isHBMChanged":Z
    .end local v5    # "isTconLevelChanged":Z
    .end local v6    # "isTconMaxLevel":Z
    .end local v8    # "needHBM":Z
    .end local v9    # "newScreenAutoBrightness":I
    :cond_b
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->HBM_LUX:I

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_0

    goto/16 :goto_0

    .line 1170
    .restart local v2    # "adjLevel":F
    .restart local v3    # "autoBrightnessLevelStepRatio":F
    :cond_c
    sget-boolean v12, Lcom/android/server/power/PowerManagerUtil;->ZERO_PROJECT:Z

    if-nez v12, :cond_d

    sget-boolean v12, Lcom/android/server/power/PowerManagerUtil;->NOBLE_PROJECT:Z

    if-nez v12, :cond_d

    sget-boolean v12, Lcom/android/server/power/PowerManagerUtil;->ZERO2_PROJECT:Z

    if-nez v12, :cond_d

    sget-boolean v12, Lcom/android/server/power/PowerManagerUtil;->AX_PROJECT:Z

    if-eqz v12, :cond_e

    .line 1171
    :cond_d
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_e

    const/4 v12, 0x0

    cmpg-float v12, v2, v12

    if-gez v12, :cond_e

    .line 1172
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v3, v12, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatioAt0Lux:F

    goto/16 :goto_1

    .line 1174
    :cond_e
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v3, v12, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatio:F

    goto/16 :goto_1

    .line 1178
    :cond_f
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v3

    move v13, v12

    goto/16 :goto_2

    :cond_10
    neg-float v12, v2

    goto/16 :goto_3

    .line 1189
    .restart local v1    # "adjGamma":F
    .restart local v7    # "minBrightnessStep":I
    .restart local v10    # "valueFromGamma":F
    .restart local v11    # "valueFromOffset":I
    :cond_11
    const/4 v12, 0x0

    cmpg-float v12, p4, v12

    if-gez v12, :cond_12

    int-to-float v12, v11

    cmpl-float v12, v10, v12

    if-gtz v12, :cond_1

    .line 1192
    :cond_12
    move/from16 p2, v10

    goto/16 :goto_4

    .line 1194
    .end local v1    # "adjGamma":F
    .end local v2    # "adjLevel":F
    .end local v3    # "autoBrightnessLevelStepRatio":F
    .end local v7    # "minBrightnessStep":I
    .end local v10    # "valueFromGamma":F
    .end local v11    # "valueFromOffset":I
    :cond_13
    sget-boolean v12, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS:Z

    if-eqz v12, :cond_2

    .line 1195
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    iget v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v12, v13}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getOffset(F)F

    move-result v12

    add-float p2, p2, v12

    goto/16 :goto_4

    .line 1213
    .restart local v9    # "newScreenAutoBrightness":I
    :cond_14
    const-string/jumbo v12, ""

    goto/16 :goto_5

    .line 1216
    :cond_15
    const/4 v8, 0x0

    .restart local v8    # "needHBM":Z
    goto/16 :goto_6

    .line 1220
    .restart local v4    # "isHBMChanged":Z
    :cond_16
    const-string/jumbo v12, "Disabled"

    goto/16 :goto_7

    .line 1226
    :cond_17
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 1230
    :cond_18
    const/4 v6, 0x0

    .restart local v6    # "isTconMaxLevel":Z
    goto/16 :goto_9

    .line 1236
    .restart local v5    # "isTconLevelChanged":Z
    :cond_19
    const-string/jumbo v12, "AutomaticBrightnessController"

    const-string/jumbo v13, "[DAB] The Ambient Lux has dropped below 20000."

    invoke-static {v12, v13}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1255
    :cond_1a
    if-eqz p1, :cond_a

    if-nez v4, :cond_1b

    if-eqz v5, :cond_a

    .line 1256
    :cond_1b
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v12}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    .line 1257
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/android/server/display/AutomaticBrightnessController;->sendLuxLevel(FZ)V

    goto/16 :goto_b
.end method

.method private updatePersonalScreenAutoBrightnessTableLocked(Z)V
    .locals 9
    .param p1, "needUpdate"    # Z

    .prologue
    const v8, 0xc350

    const/4 v7, 0x0

    const/4 v5, -0x2

    const/4 v6, 0x1

    .line 1718
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS:Z

    if-nez v3, :cond_0

    .line 1719
    const-string/jumbo v3, "AutomaticBrightnessController"

    const-string/jumbo v4, "[PAB] PowerManagerUtil.USE_PERSONAL_AUTO_BRIGHTNESS is false."

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    return-void

    .line 1722
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1723
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessSetting:I

    .line 1725
    .local v1, "oldScreenBrightnessSetting":I
    const-string/jumbo v3, "screen_brightness"

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessSettingDefault:I

    .line 1724
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessSetting:I

    .line 1727
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessModeSetting:I

    .line 1729
    .local v0, "oldScreenBrightnessModeSetting":I
    const-string/jumbo v3, "screen_brightness_mode"

    .line 1728
    invoke-static {v2, v3, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessModeSetting:I

    .line 1732
    if-eqz p1, :cond_2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessModeSetting:I

    if-ne v3, v6, :cond_2

    .line 1733
    const-string/jumbo v3, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[PAB] Settings changed. Mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1734
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessModeSetting:I

    .line 1733
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1735
    const-string/jumbo v5, " Value = "

    .line 1733
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1735
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingPabAddPoint:I

    .line 1733
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z

    .line 1737
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    if-eqz v3, :cond_1

    .line 1738
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLuxAndCandelaFromSensorHub()V

    .line 1743
    :goto_0
    return-void

    .line 1740
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 1741
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    .line 1740
    invoke-virtual {v3, v4, v5, v8, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 1744
    :cond_2
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessModeSetting:I

    if-nez v3, :cond_4

    .line 1745
    if-ne v0, v6, :cond_4

    .line 1746
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseAutoBrightnessController:Z

    if-eqz v3, :cond_3

    .line 1747
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    if-eqz v3, :cond_5

    .line 1748
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLuxAndCandelaFromSensorHub()V

    .line 1754
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->resetPersonalAutoBrightness()V

    .line 1755
    const-string/jumbo v3, "AutomaticBrightnessController"

    const-string/jumbo v4, "[PAB] Setting : It\'s manual. So Reset Personal Auto Brightness."

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :cond_4
    return-void

    .line 1750
    :cond_5
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 1751
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    .line 1750
    invoke-virtual {v3, v4, v5, v8, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_1
.end method

.method private weightIntegral(J)F
    .locals 3
    .param p1, "x"    # J

    .prologue
    .line 893
    long-to-float v0, p1

    long-to-float v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public configure(ZFZZZZZFZZIZ)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "adjustment"    # F
    .param p3, "dozing"    # Z
    .param p4, "userInitiatedChange"    # Z
    .param p5, "useTwilight"    # Z
    .param p6, "autoBrightnessForEbookOnly"    # Z
    .param p7, "useSystemPowerSaveMode"    # Z
    .param p8, "manualAdjustment"    # F
    .param p9, "isBrightnessModeAuto"    # Z
    .param p10, "useHbmAtManualMax"    # Z
    .param p11, "pabAddPoint"    # I
    .param p12, "enableSensorAfterCoverDebounceTime"    # Z

    .prologue
    .line 562
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_0

    .line 563
    const-string/jumbo v1, "AutomaticBrightnessController"

    const-string/jumbo v2, "[DAB] mLightSensor is null."

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void

    .line 566
    :cond_0
    iput-boolean p7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseSystemPowerSaveMode:Z

    .line 568
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS:Z

    if-eqz v1, :cond_1

    .line 569
    const/4 v1, -0x1

    if-eq p11, v1, :cond_1

    .line 570
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;

    monitor-enter v2

    .line 571
    :try_start_0
    iput p11, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingPabAddPoint:I

    .line 572
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updatePersonalScreenAutoBrightnessTableLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 577
    :cond_1
    const/4 v0, 0x0

    .line 578
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z

    if-eq v1, p6, :cond_3

    .line 579
    iput-boolean p6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z

    .line 580
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    if-eqz v1, :cond_2

    .line 582
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z

    if-eqz v1, :cond_9

    .line 583
    const/4 v1, 0x1

    .line 582
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->changeModeInSensorHubAutoBrightness(I)V

    .line 586
    :cond_2
    const/4 v0, 0x1

    .line 589
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseAutoBrightnessController:Z

    if-ne v1, p1, :cond_4

    .line 590
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManualAdjustment:F

    cmpl-float v1, v1, p8

    if-eqz v1, :cond_a

    .line 593
    :cond_4
    :goto_1
    iput p8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManualAdjustment:F

    .line 594
    iput-boolean p9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsBrightnessModeAuto:Z

    .line 595
    iput-boolean p10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseHbmAtManualMax:Z

    .line 596
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseAutoBrightnessController:Z

    .line 597
    const/4 v1, 0x1

    or-int/2addr v0, v1

    .line 599
    .end local v0    # "changed":Z
    :cond_5
    if-eqz p1, :cond_6

    if-eqz p3, :cond_b

    :cond_6
    const/4 v1, 0x0

    :goto_2
    invoke-direct {p0, v1, p12}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 600
    .local v0, "changed":Z
    invoke-direct {p0, p2}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenAutoBrightnessAdjustment(F)Z

    move-result v1

    or-int/2addr v0, v1

    .line 601
    invoke-direct {p0, p5}, Lcom/android/server/display/AutomaticBrightnessController;->setUseTwilight(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 603
    if-eqz v0, :cond_7

    .line 604
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightnessSEC(Z)V

    .line 606
    :cond_7
    if-eqz p1, :cond_8

    if-eqz p3, :cond_c

    .line 561
    :cond_8
    :goto_3
    return-void

    .line 570
    .end local v0    # "changed":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 584
    .local v0, "changed":Z
    :cond_9
    const/4 v1, 0x0

    goto :goto_0

    .line 591
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsBrightnessModeAuto:Z

    if-ne v1, p9, :cond_4

    .line 592
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseHbmAtManualMax:Z

    if-eq v1, p10, :cond_5

    goto :goto_1

    .line 599
    .end local v0    # "changed":Z
    :cond_b
    const/4 v1, 0x1

    goto :goto_2

    .line 606
    .local v0, "changed":Z
    :cond_c
    if-eqz p4, :cond_8

    .line 607
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->prepareBrightnessAdjustmentSample()V

    goto :goto_3
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 624
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 625
    const-string/jumbo v0, "Automatic Brightness Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenAutoBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mBrighteningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDarkeningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mResetAmbientLuxAfterWarmUpConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 635
    const-string/jumbo v0, "Automatic Brightness Controller State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mTwilight.getCurrentState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAmbientLightHorizon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mBrighteningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDarkeningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mInitialHorizonAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 649
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 648
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenAutoBrightnessAdjustmentMaxGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustmentMaxGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLastScreenAutoBrightnessGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 657
    const-string/jumbo v0, "Automatic Brightness in Sensorhub:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mIsSupportedSensorHubAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAmbientCandela="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientCandela:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLastObservedSensorHubLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedSensorHubLuxTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mRecentSensorHubSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentSensorHubSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS:Z

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->dump(Ljava/io/PrintWriter;)V

    .line 668
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  HBM_USER_ENABLE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->HBM_USER_ENABLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLastHBM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  HBM_LUX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->HBM_LUX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  SPECIFIC_HBM_FEATURE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->SPECIFIC_HBM_FEATURE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method public getAmbientLux()F
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    return v0
.end method

.method public getAutomaticScreenBrightness()I
    .locals 2

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    if-eqz v0, :cond_0

    .line 517
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 519
    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    return v0
.end method

.method public isAmbientLuxValid()Z
    .locals 1

    .prologue
    .line 1107
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    return v0
.end method

.method public isHbmEnabled()Z
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    return v0
.end method

.method public isManualAutoBrightnessValid()Z
    .locals 1

    .prologue
    .line 1113
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseManualAutoBrightness:Z

    return v0
.end method

.method public isPabUpdatePending()Z
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 420
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 487
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 489
    .local v1, "line":Ljava/lang/String;
    const/4 v2, 0x0

    .line 492
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 495
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 498
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 500
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string/jumbo v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fail to read file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 502
    if-eqz v2, :cond_0

    .line 504
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 511
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 502
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_1
    if-eqz v3, :cond_2

    .line 504
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_3
    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 505
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 507
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fail to close file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 505
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 507
    const-string/jumbo v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fail to close file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 501
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 502
    :goto_4
    if-eqz v2, :cond_3

    .line 504
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 501
    :cond_3
    :goto_5
    throw v5

    .line 505
    :catch_3
    move-exception v0

    .line 507
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "fail to close file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 501
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 498
    .local v1, "line":Ljava/lang/String;
    .local v2, "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_1
.end method

.method public setOutdoorMode(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1569
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->HBM_LUX:I

    :goto_0
    int-to-float v0, v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->sendLuxLevel(FZ)V

    .line 1568
    return-void

    .line 1569
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDynamicAutoBrightnessConfig(Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;)V
    .locals 1
    .param p1, "dynamicAutoBrightnessConfig"    # Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    .prologue
    .line 1574
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    .line 1575
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightnessSEC(Z)V

    .line 1573
    return-void
.end method

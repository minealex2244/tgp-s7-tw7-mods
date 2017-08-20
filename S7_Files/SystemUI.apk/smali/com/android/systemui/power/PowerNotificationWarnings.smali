.class public Lcom/android/systemui/power/PowerNotificationWarnings;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Lcom/android/systemui/power/PowerUI$WarningsUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerNotificationWarnings$1;,
        Lcom/android/systemui/power/PowerNotificationWarnings$2;,
        Lcom/android/systemui/power/PowerNotificationWarnings$3;,
        Lcom/android/systemui/power/PowerNotificationWarnings$4;,
        Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;
    }
.end annotation


# static fields
.field private static final AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final DEBUG:Z

.field private static final SHOWING_STRINGS:[Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryHealth:I

.field private mBatteryHealthInterruptionDialog:Landroid/app/AlertDialog;

.field mBatteryHealthInterruptionTask:Ljava/lang/Runnable;

.field private mBatteryLevel:I

.field private mBatterySaverRecommend:Z

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryStatus:I

.field private mBucket:I

.field private mBucketDroppedNegativeTimeMs:J

.field private mChargingTime:J

.field private mChargingType:I

.field private mConnectedChargerChangedToast:Landroid/widget/Toast;

.field private final mContext:Landroid/content/Context;

.field private mCurrentBatteryMode:I

.field private mFTAMode:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIncompatibleChargerDialog:Landroid/app/AlertDialog;

.field private mInvalidCharger:Z

.field private final mNoMan:Landroid/app/NotificationManager;

.field private mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

.field private mOldBatteryLevel:I

.field private final mOpenBatterySettings:Landroid/content/Intent;

.field private final mOpenBatterySmartManagerSettings:Landroid/content/Intent;

.field private final mOpenLowBatterySmartManagerSettings:Landroid/content/Intent;

.field private final mOpenSaverDetail:Landroid/content/Intent;

.field private mOverheatNoticeDialog:Landroid/app/AlertDialog;

.field private mOverheatShutdownHappenedDialog:Landroid/app/AlertDialog;

.field mOverheatShutdownTask:Ljava/lang/Runnable;

.field private mPlaySound:Z

.field private final mPowerMan:Landroid/os/PowerManager;

.field private mPowerSupplyingInLowBatteryNoticeDialog:Landroid/app/AlertDialog;

.field private final mPowersavingObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

.field private mSafeModeDialog:Landroid/app/AlertDialog;

.field private mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field private mScreenOffTime:J

.field private mShowChargingNotice:Z

.field private mShowing:I

.field private mSlowChargerToast:Landroid/widget/Toast;

.field private final mSmartManagerBatterySettings:Landroid/content/Intent;

.field private final mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWarning:Z

.field mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

.field private mWillOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

.field private mWirelessChargerDisconnectToast:Landroid/widget/Toast;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/power/PowerNotificationWarnings;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStatus:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/power/PowerNotificationWarnings;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenLowBatterySmartManagerSettings:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/power/PowerNotificationWarnings;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFTAMode:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatNoticeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSupplyingInLowBatteryNoticeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSafeModeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissOverheatShutdownHappenedPopUp()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissPowerSavingNotification()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissWillOverheatShutdownPopUp()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/power/PowerNotificationWarnings;Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->setSaverMode(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showOverHeatPopUp()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showSafeModePopUp()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showStartSaverConfirmation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 88
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    .line 95
    new-array v0, v3, [Ljava/lang/String;

    .line 96
    const-string/jumbo v1, "SHOWING_NOTHING"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 97
    const-string/jumbo v1, "SHOWING_WARNING"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 98
    const-string/jumbo v1, "SHOWING_SAVER"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 99
    const-string/jumbo v1, "SHOWING_INVALID_CHARGER"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 95
    sput-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    .line 111
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 113
    const/16 v1, 0xd

    .line 111
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    .line 121
    const-string/jumbo v1, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    .line 138
    iput v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStatus:I

    .line 139
    iput v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    .line 168
    const-string/jumbo v1, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSmartManagerBatterySettings:Landroid/content/Intent;

    .line 176
    iput-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowChargingNotice:Z

    .line 178
    iput v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    .line 179
    iput v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOldBatteryLevel:I

    .line 180
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    .line 190
    iput v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    .line 196
    const-string/jumbo v1, "com.samsung.android.sm.POWER_MODE_CHANGE"

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenSaverDetail:Landroid/content/Intent;

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySmartManagerSettings:Landroid/content/Intent;

    .line 205
    iput-boolean v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySaverRecommend:Z

    .line 228
    const-string/jumbo v1, "com.samsung.android.sm.ACTION_LOW_BATTERY"

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenLowBatterySmartManagerSettings:Landroid/content/Intent;

    .line 235
    iput-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFTAMode:Z

    .line 838
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$1;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownTask:Ljava/lang/Runnable;

    .line 1124
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$2;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionTask:Ljava/lang/Runnable;

    .line 1793
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$3;

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings$3;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingObserver:Landroid/database/ContentObserver;

    .line 1909
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$4;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

    .line 241
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 242
    const-string/jumbo v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    .line 243
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerMan:Landroid/os/PowerManager;

    .line 244
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    invoke-virtual {v1}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->init()V

    .line 247
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 248
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingObserver:Landroid/database/ContentObserver;

    .line 247
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 250
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 252
    .local v0, "powerSaving":I
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    .line 240
    :goto_0
    return-void

    .line 255
    :cond_0
    if-eqz v0, :cond_1

    .line 256
    iput v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    goto :goto_0

    .line 258
    :cond_1
    iput v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    goto :goto_0
.end method

.method private addCloseSaverRecommendAction(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "nb"    # Landroid/app/Notification$Builder;

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0634

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.systemui.power.action.ACTION_BATTERY_CLOSE_SAVER_RECOMMEND"

    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1431
    return-void
.end method

.method private attachLowBatterySound(Landroid/app/Notification$Builder;)V
    .locals 11
    .param p1, "b"    # Landroid/app/Notification$Builder;

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 509
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 512
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v6, "low_battery_sound_timeout"

    .line 511
    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 513
    .local v1, "silenceAfter":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScreenOffTime:J

    sub-long v2, v6, v8

    .line 514
    .local v2, "offTime":J
    if-lez v1, :cond_0

    .line 515
    iget-wide v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScreenOffTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 516
    int-to-long v6, v1

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 517
    const-string/jumbo v6, "PowerUI.Notification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "screen off too long ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms, limit "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 518
    const-string/jumbo v8, "ms): not waking up the user with low battery sound"

    .line 517
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-void

    .line 522
    :cond_0
    sget-boolean v6, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 523
    const-string/jumbo v6, "PowerUI.Notification"

    const-string/jumbo v7, "playing low battery sound. pick-a-doop!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_1
    const-string/jumbo v6, "power_sounds_enabled"

    invoke-static {v0, v6, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 528
    const-string/jumbo v6, "low_battery_sound"

    .line 527
    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 529
    .local v4, "soundPath":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 530
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 531
    .local v5, "soundUri":Landroid/net/Uri;
    if-eqz v5, :cond_2

    .line 532
    sget-object v6, Lcom/android/systemui/power/PowerNotificationWarnings;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 533
    sget-boolean v6, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "PowerUI.Notification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "playing sound "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .end local v4    # "soundPath":Ljava/lang/String;
    .end local v5    # "soundUri":Landroid/net/Uri;
    :cond_2
    return-void
.end method

.method private dismissChargingNotification()V
    .locals 4

    .prologue
    .line 1272
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissChargingNotification()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "charging_state"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x7f130039

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1271
    return-void
.end method

.method private dismissFullBatteryNotification()V
    .locals 4

    .prologue
    .line 638
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissing full battery notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "full_battery"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x7f130039

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 637
    return-void
.end method

.method private dismissIncompatibleChargerNotification()V
    .locals 4

    .prologue
    .line 1564
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissing incompatible charger notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "incompatible_charger_state"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x7f130039

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1563
    return-void
.end method

.method private dismissInvalidChargerNotification()V
    .locals 2

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissing invalid charger notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 547
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 544
    return-void
.end method

.method private dismissLowBatteryNotification()V
    .locals 2

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissing low battery notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    .line 470
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 467
    return-void
.end method

.method private dismissOverheatNotification()V
    .locals 4

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "over_heat"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x7f130039

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 750
    return-void
.end method

.method private dismissOverheatShutdownHappenedPopUp()V
    .locals 2

    .prologue
    .line 918
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissOverheatShutdownHappenedPopUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 917
    :cond_0
    return-void
.end method

.method private dismissPowerSavingNotification()V
    .locals 4

    .prologue
    .line 1787
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissing saver notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "battery_saver"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x7f130039

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1786
    return-void
.end method

.method private dismissPowerSavingRecommendNotification()V
    .locals 4

    .prologue
    .line 1442
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySaverRecommend:Z

    if-eqz v0, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "battery_saver_recommend"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x7f130039

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySaverRecommend:Z

    .line 1441
    :cond_0
    return-void
.end method

.method private dismissPowerSupplyingInLowBatteryPopUp()V
    .locals 1

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSupplyingInLowBatteryNoticeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSupplyingInLowBatteryNoticeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1610
    :cond_0
    return-void
.end method

.method private dismissWillOverheatShutdownPopUp()V
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 825
    :cond_0
    return-void
.end method

.method private getChargeEstimateTime()J
    .locals 4

    .prologue
    .line 1277
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-nez v1, :cond_0

    .line 1278
    const-string/jumbo v1, "batterystats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1281
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_1

    .line 1282
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1284
    :catch_0
    move-exception v0

    .line 1285
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "Error calling IBatteryStats: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1287
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private getFormattedTime(J)Ljava/lang/String;
    .locals 13
    .param p1, "millis"    # J

    .prologue
    .line 1291
    const/16 v1, 0x3c

    .line 1292
    .local v1, "SECONDS_PER_MINUTE":I
    const/16 v0, 0xe10

    .line 1295
    .local v0, "SECONDS_PER_HOUR":I
    const-wide/16 v8, 0x3e8

    div-long v6, p1, v8

    .line 1297
    .local v6, "secondsLong":J
    const/4 v3, 0x0

    .local v3, "hours":I
    const/4 v4, 0x0

    .local v4, "minutes":I
    const/4 v5, 0x0

    .line 1299
    .local v5, "seconds":I
    const-wide/16 v8, 0xe10

    cmp-long v8, v6, v8

    if-ltz v8, :cond_0

    .line 1300
    const-wide/16 v8, 0xe10

    div-long v8, v6, v8

    long-to-int v3, v8

    .line 1301
    int-to-long v8, v3

    const-wide/16 v10, 0xe10

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    .line 1303
    :cond_0
    const-wide/16 v8, 0x3c

    cmp-long v8, v6, v8

    if-ltz v8, :cond_1

    .line 1304
    const-wide/16 v8, 0x3c

    div-long v8, v6, v8

    long-to-int v4, v8

    .line 1305
    int-to-long v8, v4

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    .line 1307
    :cond_1
    long-to-int v5, v6

    .line 1309
    if-nez v3, :cond_2

    const/4 v8, 0x2

    if-lt v4, v8, :cond_2

    const/16 v8, 0x1e

    if-lt v5, v8, :cond_2

    .line 1310
    add-int/lit8 v4, v4, 0x1

    .line 1312
    :cond_2
    if-lez v3, :cond_3

    if-lez v4, :cond_3

    .line 1313
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const v10, 0x7f0f0025

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1333
    .local v2, "formattedTime":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1315
    .end local v2    # "formattedTime":Ljava/lang/String;
    :cond_3
    if-lez v3, :cond_4

    .line 1316
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0f0026

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedTime":Ljava/lang/String;
    goto :goto_0

    .line 1317
    .end local v2    # "formattedTime":Ljava/lang/String;
    :cond_4
    if-lez v4, :cond_7

    .line 1318
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "el"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1319
    const/4 v8, 0x1

    if-ne v4, v8, :cond_5

    .line 1320
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0f0027

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedTime":Ljava/lang/String;
    goto :goto_0

    .line 1322
    .end local v2    # "formattedTime":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x10400a2

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedTime":Ljava/lang/String;
    goto :goto_0

    .line 1324
    .end local v2    # "formattedTime":Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0f0027

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedTime":Ljava/lang/String;
    goto :goto_0

    .line 1327
    .end local v2    # "formattedTime":Ljava/lang/String;
    :cond_7
    const/4 v8, 0x1

    if-le v5, v8, :cond_8

    .line 1328
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x10400a6

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedTime":Ljava/lang/String;
    goto/16 :goto_0

    .line 1330
    .end local v2    # "formattedTime":Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x10400a7

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedTime":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private pendingActivity(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 427
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 428
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x0

    move-object v2, p1

    move v3, v1

    .line 427
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 432
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 433
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 432
    invoke-static {v0, v3, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private playPowerStateSound(II)V
    .locals 8
    .param p1, "soundType"    # I
    .param p2, "ringerMode"    # I

    .prologue
    const/4 v7, 0x1

    .line 1682
    const-string/jumbo v3, "PowerUI.Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "playPowerStateSound : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    const/4 v3, 0x2

    if-ne v3, p2, :cond_1

    .line 1687
    packed-switch p1, :pswitch_data_0

    .line 1702
    :try_start_0
    const-string/jumbo v3, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1706
    .local v2, "soundUri":Landroid/net/Uri;
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/systemui/media/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    .line 1707
    const-string/jumbo v3, "PowerUI.Notification"

    const-string/jumbo v4, "RINGER_MODE_NORMAL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    .end local v2    # "soundUri":Landroid/net/Uri;
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1739
    const-string/jumbo v4, "haptic_feedback_enabled"

    const/4 v5, 0x0

    const/4 v6, -0x2

    .line 1738
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 1740
    if-ne p1, v7, :cond_0

    .line 1741
    if-eq v7, p2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v3, :cond_0

    .line 1742
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    .line 1743
    sget-object v4, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    .line 1742
    const v5, 0xc36b

    const/4 v6, -0x1

    .line 1743
    const/4 v7, 0x0

    .line 1742
    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    .line 1681
    :cond_0
    :goto_2
    return-void

    .line 1689
    :pswitch_0
    const-string/jumbo v3, "system/media/audio/ui/Charger_Connection.ogg"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .restart local v2    # "soundUri":Landroid/net/Uri;
    goto :goto_0

    .line 1693
    .end local v2    # "soundUri":Landroid/net/Uri;
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1694
    const-string/jumbo v4, "low_battery_sound"

    .line 1693
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .restart local v2    # "soundUri":Landroid/net/Uri;
    goto :goto_0

    .line 1698
    .end local v2    # "soundUri":Landroid/net/Uri;
    :pswitch_2
    const-string/jumbo v3, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .restart local v2    # "soundUri":Landroid/net/Uri;
    goto :goto_0

    .line 1708
    .end local v2    # "soundUri":Landroid/net/Uri;
    :cond_1
    if-ne v7, p2, :cond_3

    .line 1710
    packed-switch p1, :pswitch_data_1

    .line 1721
    const v1, 0xc36b

    .line 1725
    .local v1, "hapticFeedback":I
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v3, :cond_2

    .line 1726
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    sget-object v4, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v5, v6, v4}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    .line 1730
    :goto_4
    const-string/jumbo v3, "PowerUI.Notification"

    const-string/jumbo v4, "RINGER_MODE_VIBRATE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1745
    .end local v1    # "hapticFeedback":I
    :catch_0
    move-exception v0

    .line 1746
    .local v0, "exception":Ljava/lang/Exception;
    const-string/jumbo v3, "PowerUI.Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "playPowerSound : Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1712
    .end local v0    # "exception":Ljava/lang/Exception;
    :pswitch_3
    const v1, 0xc36b

    .line 1713
    .restart local v1    # "hapticFeedback":I
    goto :goto_3

    .line 1717
    .end local v1    # "hapticFeedback":I
    :pswitch_4
    const v1, 0xc36f

    .line 1718
    .restart local v1    # "hapticFeedback":I
    goto :goto_3

    .line 1728
    :cond_2
    :try_start_1
    const-string/jumbo v3, "PowerUI.Notification"

    const-string/jumbo v4, "playPowerSound : Vibrator is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1731
    .end local v1    # "hapticFeedback":I
    :cond_3
    if-nez p2, :cond_4

    .line 1732
    const-string/jumbo v3, "PowerUI.Notification"

    const-string/jumbo v4, "RINGER_MODE_SILENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1734
    :cond_4
    const-string/jumbo v3, "PowerUI.Notification"

    const-string/jumbo v4, "unknown RINGER_MODE"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1687
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1710
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private setSaverMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerMan:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    .line 579
    return-void
.end method

.method private static settings(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 438
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1c800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private showBatteryHealthInterruptionPopUp()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1050
    const/4 v2, 0x0

    .line 1051
    .local v2, "messageId":I
    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    packed-switch v3, :pswitch_data_0

    .line 1075
    :goto_0
    :pswitch_0
    if-nez v2, :cond_0

    .line 1076
    const-string/jumbo v3, "PowerUI.Notification"

    const-string/jumbo v4, "status is NotCharging but health is wrong value"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    return-void

    .line 1053
    :pswitch_1
    const v2, 0x7f0f0638

    .line 1054
    goto :goto_0

    .line 1057
    :pswitch_2
    const v2, 0x7f0f0639

    .line 1058
    goto :goto_0

    .line 1064
    :pswitch_3
    const v2, 0x7f0f0636

    .line 1065
    goto :goto_0

    .line 1068
    :pswitch_4
    const v2, 0x7f0f063a

    .line 1069
    goto :goto_0

    .line 1080
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    .line 1081
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1107
    :goto_1
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->playPowerSound(I)V

    .line 1049
    return-void

    .line 1084
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1085
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1086
    const v3, 0x7f0f0635

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1087
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1088
    const v3, 0x104000a

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1090
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1091
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$13;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$13;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1102
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1103
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1104
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroid/app/AlertDialog;

    goto :goto_1

    .line 1051
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private showChargingNotification(I)V
    .locals 13
    .param p1, "priorChargingType"    # I

    .prologue
    const v7, 0x7f0f0622

    const/4 v12, 0x5

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1171
    const-string/jumbo v2, ""

    .line 1173
    .local v2, "text":Ljava/lang/CharSequence;
    const-string/jumbo v5, "PowerUI.Notification"

    const-string/jumbo v6, "showChargingNotification()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    packed-switch v5, :pswitch_data_0

    .line 1217
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1221
    .local v4, "title":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    iget-wide v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_7

    .line 1222
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 1223
    iget v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget-wide v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/power/PowerNotificationWarnings;->getFormattedTime(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 1222
    const v8, 0x7f0f062d

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1229
    :goto_1
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1230
    const v6, 0x7f020569

    .line 1229
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1232
    iget-wide v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    .line 1229
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1238
    const/4 v6, -0x2

    .line 1229
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1239
    const-string/jumbo v6, "sys"

    .line 1229
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1241
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1242
    const v7, 0x106005a

    .line 1241
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 1229
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1245
    .local v1, "nb":Landroid/app/Notification$Builder;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSmartManagerBatterySettings:Landroid/content/Intent;

    invoke-direct {p0, v5}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingActivity(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1249
    iget-wide v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_1

    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    if-ne v5, v12, :cond_8

    .line 1250
    :cond_1
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v5, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1254
    .local v0, "n":Landroid/app/Notification;
    :goto_2
    iget-object v5, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_2

    .line 1255
    iget-object v5, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v6, 0x1020044

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1257
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v6, "charging_state"

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v8, 0x7f130039

    invoke-virtual {v5, v6, v8, v0, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1258
    iput-boolean v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowChargingNotice:Z

    .line 1168
    return-void

    .line 1177
    .end local v0    # "n":Landroid/app/Notification;
    .end local v1    # "nb":Landroid/app/Notification$Builder;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :pswitch_0
    const-string/jumbo v5, "VZW"

    sget-object v6, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "SPR"

    sget-object v6, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1178
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0f0623

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 1180
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 1184
    .end local v4    # "title":Ljava/lang/CharSequence;
    :pswitch_1
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0f0624

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 1188
    .end local v4    # "title":Ljava/lang/CharSequence;
    :pswitch_2
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0f0625

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 1192
    .end local v4    # "title":Ljava/lang/CharSequence;
    :pswitch_3
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0f0626

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 1196
    .end local v4    # "title":Ljava/lang/CharSequence;
    :pswitch_4
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0f062a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1197
    .restart local v4    # "title":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0f062b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1198
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1200
    if-eq p1, v12, :cond_0

    .line 1201
    const v3, 0x7f0f062c

    .line 1203
    .local v3, "textId":I
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowChargerToast:Landroid/widget/Toast;

    if-nez v5, :cond_5

    .line 1204
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowChargerToast:Landroid/widget/Toast;

    .line 1206
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowChargerToast:Landroid/widget/Toast;

    if-eqz v5, :cond_6

    .line 1207
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowChargerToast:Landroid/widget/Toast;

    invoke-virtual {v5, v3}, Landroid/widget/Toast;->setText(I)V

    .line 1208
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowChargerToast:Landroid/widget/Toast;

    invoke-virtual {v5, v10}, Landroid/widget/Toast;->setDuration(I)V

    .line 1209
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowChargerToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1211
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v5, v3, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1225
    .end local v3    # "textId":I
    :cond_7
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-array v7, v11, [Ljava/lang/Object;

    .line 1226
    iget v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    .line 1225
    const v8, 0x7f0f062e

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 1252
    .restart local v1    # "nb":Landroid/app/Notification$Builder;
    :cond_8
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .restart local v0    # "n":Landroid/app/Notification;
    goto/16 :goto_2

    .line 1175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private showChargingTypeSwitchedToast(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "toastText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 1380
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "showChargingTypeSwitchedToast()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 1386
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1387
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 1388
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1379
    :goto_0
    return-void

    .line 1390
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showFullBatteryNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 604
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f05fb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 605
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f05fc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 607
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 608
    const v5, 0x7f02057e

    .line 607
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 610
    iget-wide v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    .line 607
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 611
    const/4 v5, 0x0

    .line 607
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 617
    const/4 v5, -0x2

    .line 607
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 618
    const-string/jumbo v5, "sys"

    .line 607
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 620
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 621
    const v6, 0x7f0b00b7

    .line 620
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 607
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 623
    .local v1, "nb":Landroid/app/Notification$Builder;
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v4, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    .line 625
    .local v0, "n":Landroid/app/Notification;
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_0

    .line 626
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v5, 0x1020044

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 628
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v5, "full_battery"

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v7, 0x7f130039

    invoke-virtual {v4, v5, v7, v0, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 603
    return-void
.end method

.method private showIncompatibleChargerPopUpAndNotification()V
    .locals 15

    .prologue
    .line 1470
    const-string/jumbo v11, "PowerUI.Notification"

    const-string/jumbo v12, "showIncompatibleChargerNotification()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v12, 0x7f0f063b

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1473
    .local v10, "title":Ljava/lang/CharSequence;
    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v12, 0x7f0f063e

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1475
    .local v8, "notiText":Ljava/lang/CharSequence;
    new-instance v11, Landroid/app/Notification$Builder;

    iget-object v12, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1476
    const v12, 0x7f020719

    .line 1475
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1477
    const/4 v12, 0x0

    .line 1475
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1480
    const/4 v12, 0x1

    .line 1475
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1481
    const/4 v12, 0x1

    .line 1475
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1482
    const/4 v12, -0x2

    .line 1475
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1483
    const-string/jumbo v12, "sys"

    .line 1475
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1484
    const/4 v12, 0x1

    .line 1475
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1485
    iget-object v12, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1486
    const v13, 0x7f0b00b8

    const/4 v14, 0x0

    .line 1485
    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v12

    .line 1475
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1490
    .local v7, "nb":Landroid/app/Notification$Builder;
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 1491
    .local v6, "n":Landroid/app/Notification;
    iget-object v11, v6, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v11, :cond_0

    .line 1492
    iget-object v11, v6, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v12, 0x1020044

    const/16 v13, 0x8

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1494
    :cond_0
    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v12, "incompatible_charger_state"

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v14, 0x7f130039

    invoke-virtual {v11, v12, v14, v6, v13}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1496
    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 1497
    const-string/jumbo v12, "com.android.systemui.incompatible_charging"

    const/4 v13, 0x0

    .line 1496
    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1498
    .local v5, "incompatibleChargingSharedPrefs":Landroid/content/SharedPreferences;
    if-eqz v5, :cond_1

    .line 1499
    const-string/jumbo v11, "DoNotShowIncompatibleChargerWarning"

    const/4 v12, 0x0

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1500
    const-string/jumbo v11, "PowerUI.Notification"

    const-string/jumbo v12, "Incompatible charging notice doesn\'t show again"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    return-void

    .line 1505
    :cond_1
    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    if-nez v11, :cond_2

    .line 1506
    new-instance v11, Landroid/view/ContextThemeWrapper;

    iget-object v12, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x1030132

    invoke-direct {v11, v12, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 1507
    .local v9, "themeInflater":Landroid/view/LayoutInflater;
    const v11, 0x7f040020

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1508
    .local v4, "incompatibleChargerConnectView":Landroid/view/View;
    const v11, 0x7f1300ca

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1511
    .local v2, "disableAlertCheckBox":Landroid/widget/CheckBox;
    sget-boolean v11, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v11, :cond_3

    .line 1512
    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v12, 0x7f0f063d

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1516
    .local v1, "dialogText":Ljava/lang/CharSequence;
    :goto_0
    const v11, 0x7f1300c9

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1519
    new-instance v11, Lcom/android/systemui/power/PowerNotificationWarnings$14;

    invoke-direct {v11, p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings$14;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;)V

    .line 1518
    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1527
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1528
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1529
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1531
    new-instance v11, Lcom/android/systemui/power/PowerNotificationWarnings$15;

    invoke-direct {v11, p0, v2, v5}, Lcom/android/systemui/power/PowerNotificationWarnings$15;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V

    .line 1530
    const v12, 0x104000a

    invoke-virtual {v0, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1540
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1542
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1543
    .local v3, "incompatibleChargerConnectDialog":Landroid/app/AlertDialog;
    new-instance v11, Lcom/android/systemui/power/PowerNotificationWarnings$16;

    invoke-direct {v11, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$16;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v3, v11}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1549
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x7d9

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    .line 1550
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1551
    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    .line 1469
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialogText":Ljava/lang/CharSequence;
    .end local v2    # "disableAlertCheckBox":Landroid/widget/CheckBox;
    .end local v3    # "incompatibleChargerConnectDialog":Landroid/app/AlertDialog;
    .end local v4    # "incompatibleChargerConnectView":Landroid/view/View;
    .end local v9    # "themeInflater":Landroid/view/LayoutInflater;
    :cond_2
    return-void

    .line 1514
    .restart local v2    # "disableAlertCheckBox":Landroid/widget/CheckBox;
    .restart local v4    # "incompatibleChargerConnectView":Landroid/view/View;
    .restart local v9    # "themeInflater":Landroid/view/LayoutInflater;
    :cond_3
    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v12, 0x7f0f063c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "dialogText":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private showInvalidChargerNotification()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 318
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 319
    const v3, 0x7f0201a6

    .line 318
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 320
    const-wide/16 v4, 0x0

    .line 318
    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 321
    const/4 v3, 0x0

    .line 318
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 323
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0246

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 324
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0247

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 325
    const/4 v3, 0x2

    .line 318
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 327
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 328
    const v4, 0x106005a

    .line 327
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 318
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 329
    .local v1, "nb":Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 330
    .local v0, "n":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v3, "low_battery"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v5, 0x7f130039

    invoke-virtual {v2, v3, v5, v0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 317
    return-void
.end method

.method private showOverHeatPopUp()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 706
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_SPECIFIC_POWER_REQUEST_BY_VZW:Z

    if-eqz v4, :cond_2

    .line 707
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0601

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 708
    .local v3, "title":Ljava/lang/CharSequence;
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v4, :cond_1

    .line 709
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0604

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatNoticeDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    .line 720
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 721
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 722
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 723
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 724
    const v4, 0x104000a

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 726
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 727
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$6;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 733
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 734
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 735
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatNoticeDialog:Landroid/app/AlertDialog;

    .line 702
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/AlertDialog;
    :cond_0
    return-void

    .line 711
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0603

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 714
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0605

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 715
    .restart local v3    # "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f05ff

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private showOverheatNotification(I)V
    .locals 9
    .param p1, "overheatLevel"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 655
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_SPECIFIC_POWER_REQUEST_BY_VZW:Z

    if-eqz v4, :cond_1

    .line 656
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0601

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 657
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0602

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 666
    .local v2, "notiText":Ljava/lang/CharSequence;
    :goto_0
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 667
    const v5, 0x7f02056b

    .line 666
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 673
    const-string/jumbo v5, "sys"

    .line 666
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 675
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 676
    const v6, 0x7f0b009f

    .line 675
    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 666
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 681
    .local v1, "nb":Landroid/app/Notification$Builder;
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 685
    const-string/jumbo v4, "com.samsung.systemui.power.action.ACTION_BATTERY_OVER_HEAT"

    invoke-direct {p0, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 693
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 695
    .local v0, "n":Landroid/app/Notification;
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_0

    .line 696
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v5, 0x1020044

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 699
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v5, "over_heat"

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v7, 0x7f130039

    invoke-virtual {v4, v5, v7, v0, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 651
    return-void

    .line 659
    .end local v0    # "n":Landroid/app/Notification;
    .end local v1    # "nb":Landroid/app/Notification$Builder;
    .end local v2    # "notiText":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f05fd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 663
    .restart local v3    # "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f05fe

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "notiText":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private showOverheatShutdownHappenedPopUp()V
    .locals 6

    .prologue
    .line 875
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_SPECIFIC_POWER_REQUEST_BY_VZW:Z

    if-eqz v4, :cond_2

    .line 876
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v4, :cond_1

    .line 877
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f060b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 878
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f060d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 888
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    .line 890
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 891
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 892
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 893
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 896
    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$9;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$9;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 895
    const v5, 0x104000a

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 903
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 904
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$10;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$10;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 910
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 911
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 912
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroid/app/AlertDialog;

    .line 914
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/AlertDialog;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    .line 871
    return-void

    .line 880
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f060a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 881
    .restart local v3    # "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f060c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 884
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0613

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 885
    .restart local v3    # "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0614

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private showPowerSavingRecommendNotification(I)V
    .locals 9
    .param p1, "recommendTriggerLevel"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1409
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x7f0f0632

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1410
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0633

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1412
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1413
    const v5, 0x7f020577

    .line 1412
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1418
    const-string/jumbo v5, "com.samsung.systemui.power.action.ACTION_BATTERY_CLOSE_SAVER_RECOMMEND"

    invoke-direct {p0, v5}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1412
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1420
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 1421
    const v6, 0x7f0b00b6

    .line 1420
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 1412
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1423
    .local v1, "nb":Landroid/app/Notification$Builder;
    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->addCloseSaverRecommendAction(Landroid/app/Notification$Builder;)V

    .line 1425
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySmartManagerSettings:Landroid/content/Intent;

    invoke-direct {p0, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingActivity(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1427
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v4, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1428
    .local v0, "n":Landroid/app/Notification;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v5, "battery_saver_recommend"

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v7, 0x7f130039

    invoke-virtual {v4, v5, v7, v0, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1405
    return-void
.end method

.method private showPowerSupplyingInLowBatteryPopUp(I)V
    .locals 8
    .param p1, "online"    # I

    .prologue
    const/4 v7, 0x0

    .line 1578
    move v1, p1

    .line 1579
    .local v1, "currentOnline":I
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0f0641

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1580
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0f0642

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1582
    .local v3, "text":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSupplyingInLowBatteryNoticeDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_0

    .line 1584
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1585
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1586
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1587
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1588
    const v5, 0x104000a

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1590
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1591
    .local v2, "d":Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$17;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$17;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1597
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1598
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1599
    iput-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSupplyingInLowBatteryNoticeDialog:Landroid/app/AlertDialog;

    .line 1601
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v2    # "d":Landroid/app/AlertDialog;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    .line 1577
    return-void
.end method

.method private showSafeModeNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 933
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "showSafeModeNotification()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_SPECIFIC_POWER_REQUEST_BY_VZW:Z

    if-eqz v4, :cond_1

    .line 939
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f061a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 940
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f061b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 946
    .local v2, "notiText":Ljava/lang/CharSequence;
    :goto_0
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 947
    const v5, 0x7f020578

    .line 946
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 954
    const-string/jumbo v5, "sys"

    .line 946
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 956
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 957
    const v6, 0x106005a

    .line 956
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 946
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 959
    .local v1, "nb":Landroid/app/Notification$Builder;
    const-string/jumbo v4, "com.samsung.systemui.power.action.ACTION_BATTERY_SAFE_MODE"

    invoke-direct {p0, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 961
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 963
    .local v0, "n":Landroid/app/Notification;
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_0

    .line 964
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v5, 0x1020044

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 967
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v5, "safe_mode"

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v7, 0x7f130039

    invoke-virtual {v4, v5, v7, v0, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 932
    return-void

    .line 942
    .end local v0    # "n":Landroid/app/Notification;
    .end local v1    # "nb":Landroid/app/Notification$Builder;
    .end local v2    # "notiText":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0615

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 943
    .restart local v3    # "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0616

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "notiText":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private showSafeModePopUp()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 971
    const-string/jumbo v5, "PowerUI.Notification"

    const-string/jumbo v6, "showSafeModePopUp()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->SUPPORT_SPECIFIC_POWER_REQUEST_BY_VZW:Z

    if-eqz v5, :cond_1

    .line 976
    const v4, 0x7f0f061c

    .line 977
    .local v4, "titleId":I
    const v2, 0x7f0f061d

    .line 978
    .local v2, "messageId":I
    const v3, 0x7f0f061e

    .line 985
    .local v3, "positiveButtonId":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSafeModeDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_0

    .line 987
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 988
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 989
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 990
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 991
    const/high16 v5, 0x1040000

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 993
    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$11;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$11;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 992
    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1009
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1010
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$12;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$12;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1016
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1017
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1018
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSafeModeDialog:Landroid/app/AlertDialog;

    .line 970
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/AlertDialog;
    :cond_0
    return-void

    .line 980
    .end local v2    # "messageId":I
    .end local v3    # "positiveButtonId":I
    .end local v4    # "titleId":I
    :cond_1
    const v4, 0x7f0f0617

    .line 981
    .restart local v4    # "titleId":I
    const v2, 0x7f0f0618

    .line 982
    .restart local v2    # "messageId":I
    const v3, 0x7f0f0619

    .restart local v3    # "positiveButtonId":I
    goto :goto_0
.end method

.method private showStartSaverConfirmation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 562
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v1, :cond_0

    return-void

    .line 563
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 564
    .local v0, "d":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    const v1, 0x7f0f0249

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(I)V

    .line 565
    const v1, 0x10405c2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 566
    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 567
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f0f024a

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 568
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 569
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$5;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 575
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    .line 576
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 561
    return-void
.end method

.method private showWarningNotification()V
    .locals 15

    .prologue
    const v14, 0x7f0f0634

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 337
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-array v10, v8, [Ljava/lang/Object;

    iget v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    const v11, 0x7f0f061f

    invoke-virtual {v7, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 338
    .local v6, "title":Ljava/lang/CharSequence;
    iget v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    if-ne v13, v7, :cond_2

    .line 339
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v10, 0x7f0f0621

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, "text":Ljava/lang/CharSequence;
    :goto_0
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 350
    const v10, 0x7f0201a6

    .line 349
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 352
    iget-wide v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    .line 349
    invoke-virtual {v7, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 357
    const-string/jumbo v10, "PNW.dismissedWarning"

    invoke-direct {p0, v10}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 349
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 360
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 361
    const v11, 0x106005b

    .line 360
    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    .line 349
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 364
    .local v2, "nb":Landroid/app/Notification$Builder;
    const-string/jumbo v7, "PNW.batterySettings"

    invoke-direct {p0, v7}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 366
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 367
    const-string/jumbo v10, "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

    invoke-direct {p0, v10}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 365
    invoke-virtual {v2, v9, v7, v10}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 377
    iget-boolean v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    if-eqz v7, :cond_1

    .line 379
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->isTelephonyIdle(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 380
    invoke-virtual {p0, v13}, Lcom/android/systemui/power/PowerNotificationWarnings;->playPowerSound(I)V

    .line 403
    :cond_0
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->attachLowBatterySound(Landroid/app/Notification$Builder;)V

    .line 405
    iput-boolean v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 411
    :cond_1
    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v7, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v1

    .line 412
    .local v1, "n":Landroid/app/Notification;
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f040021

    invoke-direct {v3, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 413
    .local v3, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0f0239

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f1300cb

    invoke-virtual {v3, v8, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 414
    const v7, 0x7f130094

    invoke-virtual {v3, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 415
    const v7, 0x7f1300cc

    invoke-virtual {v3, v7, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 416
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f1300cd

    invoke-virtual {v3, v8, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 417
    const-string/jumbo v7, "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

    invoke-direct {p0, v7}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    const v8, 0x7f1300cd

    invoke-virtual {v3, v8, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 418
    iput-object v3, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 423
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v8, "low_battery"

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v10, 0x7f130039

    invoke-virtual {v7, v8, v10, v1, v9}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 333
    return-void

    .line 341
    .end local v1    # "n":Landroid/app/Notification;
    .end local v2    # "nb":Landroid/app/Notification$Builder;
    .end local v3    # "remoteViews":Landroid/widget/RemoteViews;
    .end local v5    # "text":Ljava/lang/CharSequence;
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v10, 0x7f0f0620

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 382
    .restart local v2    # "nb":Landroid/app/Notification$Builder;
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 383
    const-string/jumbo v10, "haptic_feedback_enabled"

    const/4 v11, -0x2

    .line 382
    invoke-static {v7, v10, v9, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v8, :cond_6

    move v0, v8

    .line 384
    .local v0, "hapticsFeedbackEnabled":Z
    :goto_2
    if-eqz v0, :cond_8

    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v7, :cond_8

    .line 385
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    if-nez v7, :cond_4

    .line 386
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "audio"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    .line 389
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v7, :cond_7

    .line 390
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 394
    .local v4, "ringerMode":I
    :goto_3
    if-ne v8, v4, :cond_5

    .line 395
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 396
    const-string/jumbo v8, "zen_mode"

    .line 395
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_0

    .line 397
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    .line 398
    sget-object v8, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    .line 397
    const v10, 0xc36f

    const/4 v11, -0x1

    invoke-virtual {v7, v10, v11, v12, v8}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    goto/16 :goto_1

    .end local v0    # "hapticsFeedbackEnabled":Z
    .end local v4    # "ringerMode":I
    :cond_6
    move v0, v9

    .line 382
    goto :goto_2

    .line 392
    .restart local v0    # "hapticsFeedbackEnabled":Z
    :cond_7
    const/4 v4, 0x2

    .restart local v4    # "ringerMode":I
    goto :goto_3

    .line 400
    .end local v4    # "ringerMode":I
    :cond_8
    const-string/jumbo v7, "PowerUI.Notification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "hapticsFeedbackEnabled = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private showWillOverheatShutdownPopUp()V
    .locals 9

    .prologue
    const v8, 0x7f0f0611

    const v6, 0x104000a

    const/4 v7, 0x0

    .line 774
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_SPECIFIC_POWER_REQUEST_BY_VZW:Z

    if-eqz v4, :cond_2

    .line 775
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0606

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 776
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "button_text":Ljava/lang/CharSequence;
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v4, :cond_1

    .line 778
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0608

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 782
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 783
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 793
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-nez v4, :cond_0

    .line 794
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 795
    .local v1, "d":Landroid/app/ProgressDialog;
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 796
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 797
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 799
    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$7;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 798
    invoke-virtual {v1, v0, v4}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 805
    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$8;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$8;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 810
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 811
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 812
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    .line 814
    .end local v1    # "d":Landroid/app/ProgressDialog;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    .line 769
    return-void

    .line 780
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0607

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 785
    .end local v0    # "button_text":Ljava/lang/CharSequence;
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f060e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 786
    .restart local v3    # "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 787
    .restart local v0    # "button_text":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0f0610

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 788
    .restart local v2    # "text":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 789
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private showWirelessChargerDisconnectToast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1347
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "showWirelessChargerDisconnectToast()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0627

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1351
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerDisconnectToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 1352
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerDisconnectToast:Landroid/widget/Toast;

    .line 1354
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerDisconnectToast:Landroid/widget/Toast;

    if-eqz v1, :cond_1

    .line 1355
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerDisconnectToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerDisconnectToast:Landroid/widget/Toast;

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 1357
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerDisconnectToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1346
    :goto_0
    return-void

    .line 1359
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private turnOnScreen()V
    .locals 6

    .prologue
    .line 1023
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1024
    .local v1, "powerManager":Landroid/os/IPowerManager;
    if-nez v1, :cond_0

    .line 1025
    const-string/jumbo v2, "PowerUI.Notification"

    const-string/jumbo v3, "turnOnScreen : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    return-void

    .line 1030
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "BatteryStateChanged"

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IPowerManager;->wakeUp(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    :goto_0
    return-void

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    .local v0, "exception":Landroid/os/RemoteException;
    const-string/jumbo v2, "PowerUI.Notification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "turnOnScreen : Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateNotification()V
    .locals 4

    .prologue
    .line 298
    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNotification mWarning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPlaySound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 299
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 299
    const-string/jumbo v2, " mInvalidCharger="

    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 299
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    if-eqz v0, :cond_1

    .line 301
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showInvalidChargerNotification()V

    .line 302
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    .line 297
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    if-eqz v0, :cond_3

    .line 305
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isBatteryNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showWarningNotification()V

    .line 310
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0

    .line 306
    :cond_2
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "We do not show warning notifications due to KNOX."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void

    .line 312
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "low_battery"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x7f130039

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 313
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0
.end method


# virtual methods
.method public dismissBatteryHealthInterruptionPopUp()V
    .locals 2

    .prologue
    .line 1118
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissChargingNotification()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1117
    :cond_0
    return-void
.end method

.method public dismissBatteryHealthInterruptionWarning()V
    .locals 2

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1114
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissBatteryHealthInterruptionPopUp()V

    .line 1111
    return-void
.end method

.method public dismissChargingNotice()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1264
    iput v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    .line 1265
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    .line 1266
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowChargingNotice:Z

    .line 1268
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissChargingNotification()V

    .line 1263
    return-void
.end method

.method public dismissFullBatteryNotice()V
    .locals 3

    .prologue
    .line 633
    const-string/jumbo v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissing full battery notice: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissFullBatteryNotification()V

    .line 632
    return-void
.end method

.method public dismissIncompatibleChargerNotice()V
    .locals 1

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1560
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissIncompatibleChargerNotification()V

    .line 1556
    return-void
.end method

.method public dismissInvalidChargerWarning()V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissInvalidChargerNotification()V

    .line 540
    return-void
.end method

.method public dismissLowBatteryWarning()V
    .locals 3

    .prologue
    .line 463
    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V

    .line 462
    return-void
.end method

.method public dismissOverheatWarning()V
    .locals 2

    .prologue
    .line 741
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissOverheatWarning()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatNoticeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatNoticeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 747
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissOverheatNotification()V

    .line 740
    return-void
.end method

.method public dismissPowerSavingRecommendNotice()V
    .locals 2

    .prologue
    .line 1437
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissPowerSavingRecommendNotice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissPowerSavingRecommendNotification()V

    .line 1436
    return-void
.end method

.method public dismissPowerSupplyingInLowBatteryNotice()V
    .locals 2

    .prologue
    .line 1606
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissPowerSupplyingInLowBatteryNotice"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissPowerSupplyingInLowBatteryPopUp()V

    .line 1605
    return-void
.end method

.method public dismissWaterProtectionAlertDialog()V
    .locals 1

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1947
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1945
    :cond_0
    return-void
.end method

.method public dismissWillOverheatShutdownWarning()V
    .locals 2

    .prologue
    .line 819
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissWillOverheatShutdownWarning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 822
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissWillOverheatShutdownPopUp()V

    .line 818
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v0, 0x0

    .line 272
    const-string/jumbo v1, "mWarning="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 273
    const-string/jumbo v1, "mPlaySound="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 274
    const-string/jumbo v1, "mInvalidCharger="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 275
    const-string/jumbo v1, "mShowing="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    const-string/jumbo v1, "mSaverConfirmation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v1, :cond_0

    const-string/jumbo v0, "not null"

    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public isInvalidChargerWarningShowing()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    return v0
.end method

.method public isLowBatteryWarningShowing()Z
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    return v0
.end method

.method public playPowerSound(I)V
    .locals 10
    .param p1, "soundType"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 1620
    const-string/jumbo v4, "PowerUI.Notification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "playPowerSound : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KnoxStateMonitor;->isChargerConnectionSoundEnabledState()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1630
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    if-nez v4, :cond_1

    .line 1631
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    .line 1633
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    if-nez v4, :cond_2

    .line 1634
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    .line 1637
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_4

    .line 1638
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 1639
    .local v0, "audioMode":I
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->semIsRecordActive(I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eq v9, v0, :cond_5

    .line 1640
    if-eq v8, v0, :cond_5

    .line 1641
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "playPowerSound - recording so doesn\'t play sound"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    return-void

    .line 1624
    .end local v0    # "audioMode":I
    :cond_3
    if-ne p1, v7, :cond_0

    .line 1625
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "playPowerSound : Knox Custom disabled SOUND_TYPE_CHARGER_CONNECTION"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    return-void

    .line 1645
    :cond_4
    const/4 v0, 0x0

    .line 1648
    .restart local v0    # "audioMode":I
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v4, :cond_6

    .line 1649
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "playPowerSound : NotificationPlayer is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    new-instance v4, Lcom/android/systemui/media/NotificationPlayer;

    const-string/jumbo v5, "PowerUI.Notification"

    invoke-direct {v4, v5}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 1652
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v4, :cond_6

    .line 1653
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "playPowerSound : fail to new NotificationPlayer"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    return-void

    .line 1659
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_9

    .line 1660
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 1665
    .local v3, "targetRingerMode":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1666
    const-string/jumbo v5, "alertoncall_mode"

    const/4 v6, -0x2

    .line 1665
    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v7, :cond_a

    .line 1666
    const/4 v2, 0x1

    .line 1667
    .local v2, "notifyDuringCalls":Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/DeviceState;->isTelephonyIdle(Landroid/content/Context;)Z

    move-result v1

    .line 1668
    .local v1, "isCallIdle":Z
    if-eqz v1, :cond_7

    if-ne v9, v0, :cond_b

    .line 1670
    :cond_7
    :goto_2
    if-eqz v2, :cond_c

    .line 1671
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "calling so vibrate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    const/4 v3, 0x1

    .line 1678
    :cond_8
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->playPowerStateSound(II)V

    .line 1619
    return-void

    .line 1662
    .end local v1    # "isCallIdle":Z
    .end local v2    # "notifyDuringCalls":Z
    .end local v3    # "targetRingerMode":I
    :cond_9
    const/4 v3, 0x2

    .restart local v3    # "targetRingerMode":I
    goto :goto_0

    .line 1666
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "notifyDuringCalls":Z
    goto :goto_1

    .line 1669
    .restart local v1    # "isCallIdle":Z
    :cond_b
    if-ne v8, v0, :cond_8

    goto :goto_2

    .line 1674
    :cond_c
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "calling and doesn\'t notify during calls"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    return-void
.end method

.method public runOverheatShutdownTask(I)V
    .locals 4
    .param p1, "delayTime"    # I

    .prologue
    .line 833
    const-string/jumbo v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runOverheatShutdownTask - Delay time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownTask:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 832
    return-void
.end method

.method public showBatteryHealthInterruptionWarning()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1040
    const-string/jumbo v2, "PowerUI.Notification"

    const-string/jumbo v3, "showBatteryHealthInterruptionWarning()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1042
    .local v0, "isShutdownOn":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1043
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "don\'t show Battery health interruption warning while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    return-void

    .end local v0    # "isShutdownOn":Z
    :cond_0
    move v0, v1

    .line 1041
    goto :goto_0

    .line 1046
    .restart local v0    # "isShutdownOn":Z
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showBatteryHealthInterruptionPopUp()V

    .line 1039
    return-void
.end method

.method public showChargingNotice(I)V
    .locals 8
    .param p1, "chargingType"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    .line 1134
    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    .line 1135
    .local v2, "oldChargingType":I
    iget-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    .line 1137
    .local v0, "oldChargingTime":J
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_BATTERY_CHARGING_ESTIMATE_TIME:Z

    if-nez v3, :cond_2

    .line 1138
    if-eq p1, v4, :cond_2

    .line 1139
    if-eq p1, v5, :cond_2

    .line 1140
    if-eq v2, v4, :cond_0

    if-ne v2, v5, :cond_1

    .line 1141
    :cond_0
    if-eqz p1, :cond_1

    .line 1142
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissChargingNotification()V

    .line 1144
    :cond_1
    const-string/jumbo v3, "PowerUI.Notification"

    const-string/jumbo v4, "Charging estimate time is not supported and connected cable is not a fast/slow charger, so return!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    return-void

    .line 1148
    :cond_2
    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    .line 1150
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_BATTERY_CHARGING_ESTIMATE_TIME:Z

    if-eqz v3, :cond_3

    .line 1151
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->getChargeEstimateTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    .line 1155
    :goto_0
    const-string/jumbo v3, "PowerUI.Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showChargingNotice oldChargingType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " currentChargingType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1156
    const-string/jumbo v5, " oldChargingTime : "

    .line 1155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1156
    const-string/jumbo v5, " mChargingTime : "

    .line 1155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1156
    iget-wide v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    .line 1155
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-boolean v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowChargingNotice:Z

    if-eqz v3, :cond_4

    iget-wide v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    cmp-long v3, v0, v4

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOldBatteryLevel:I

    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    if-ne v3, v4, :cond_4

    .line 1159
    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    if-ne v2, v3, :cond_4

    .line 1160
    const-string/jumbo v3, "PowerUI.Notification"

    const-string/jumbo v4, "There is no change about charging status, so return!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    return-void

    .line 1153
    :cond_3
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    goto :goto_0

    .line 1164
    :cond_4
    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    iput v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOldBatteryLevel:I

    .line 1165
    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->showChargingNotification(I)V

    .line 1133
    return-void
.end method

.method public showChargingTypeSwitchedNotice(Z)V
    .locals 3
    .param p1, "isFromWirelessToCable"    # Z

    .prologue
    .line 1365
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1366
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "GATE tool is running so don\'t show Charging type switched notice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    return-void

    .line 1371
    :cond_0
    if-eqz p1, :cond_1

    .line 1372
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0629

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1376
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showChargingTypeSwitchedToast(Ljava/lang/CharSequence;)V

    .line 1364
    return-void

    .line 1374
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0628

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public showFullBatteryNotice()V
    .locals 4

    .prologue
    .line 586
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 587
    const-string/jumbo v2, "PowerUI.Notification"

    const-string/jumbo v3, "GATE tool is running so don\'t show Full Charge notice"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-void

    .line 591
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showFullBatteryNotification()V

    .line 593
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 594
    .local v1, "powerManager":Landroid/os/PowerManager;
    if-nez v1, :cond_1

    .line 595
    const-string/jumbo v2, "PowerUI.Notification"

    const-string/jumbo v3, "notifyFullBatteryNotification : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return-void

    .line 599
    :cond_1
    const-string/jumbo v2, "PowerUI.Notification"

    const v3, 0x10000006

    .line 598
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 600
    .local v0, "fullBatteryScreenDimLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 585
    return-void
.end method

.method public showIncompatibleChargerNotice()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1452
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1453
    .local v0, "isShutdownOn":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1454
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "don\'t show Incompatible charging warning while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    return-void

    .end local v0    # "isShutdownOn":Z
    :cond_0
    move v0, v1

    .line 1452
    goto :goto_0

    .line 1458
    .restart local v0    # "isShutdownOn":Z
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFTAMode:Z

    if-eqz v1, :cond_2

    .line 1459
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "FTA Mode is ON so don\'t show Incompatible charging warning"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    return-void

    .line 1463
    :cond_2
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "showIncompatibleChargerWarning()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarning()V

    .line 1466
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showIncompatibleChargerPopUpAndNotification()V

    .line 1451
    return-void
.end method

.method public showInvalidChargerWarning()V
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 553
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 551
    return-void
.end method

.method public showLowBatteryWarning(Z)V
    .locals 5
    .param p1, "playSound"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 486
    const-string/jumbo v2, "PowerUI.Notification"

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "show low battery warning: level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 488
    const-string/jumbo v4, " ["

    .line 487
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 488
    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    .line 487
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 488
    const-string/jumbo v4, "] playSound="

    .line 487
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 486
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 492
    .local v0, "isShutdownOn":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 493
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-void

    .line 497
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFTAMode:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    const/4 v3, -0x2

    if-eq v3, v2, :cond_2

    .line 498
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "FTA Mode is ON and Not critical Low battery"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void

    .line 503
    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 504
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    .line 505
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 485
    return-void
.end method

.method public showOverheatShutdownHappenedNotice()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 855
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 857
    .local v0, "isShutdownOn":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 858
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "don\'t show Overheat shutdown notice while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return-void

    .end local v0    # "isShutdownOn":Z
    :cond_0
    move v0, v1

    .line 855
    goto :goto_0

    .line 862
    .restart local v0    # "isShutdownOn":Z
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    .line 863
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "don\'t show Overheat shutdown notice while Over heat shutdown warning"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    return-void

    .line 867
    :cond_2
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "showOverheatShutdownHappenedNotice()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showOverheatShutdownHappenedPopUp()V

    .line 854
    return-void
.end method

.method public showOverheatWarning(I)V
    .locals 2
    .param p1, "overheatLevel"    # I

    .prologue
    .line 646
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "showOverheatWarning()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->showOverheatNotification(I)V

    .line 645
    return-void
.end method

.method public showPowerSavingRecommendNotice(I)V
    .locals 2
    .param p1, "recommendBatteryLevel"    # I

    .prologue
    .line 1398
    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    if-nez v0, :cond_0

    .line 1399
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "showPowerSavingRecommendNotice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->showPowerSavingRecommendNotification(I)V

    .line 1401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySaverRecommend:Z

    .line 1397
    :cond_0
    return-void
.end method

.method public showPowerSupplyingInLowBatteryNotice(I)V
    .locals 2
    .param p1, "batteryOnline"    # I

    .prologue
    .line 1573
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "showPowerSupplyingInLowBatteryNotice()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->showPowerSupplyingInLowBatteryPopUp(I)V

    .line 1572
    return-void
.end method

.method public showSafeModeNotice()V
    .locals 2

    .prologue
    .line 927
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "showSafeModeNotice()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showSafeModeNotification()V

    .line 926
    return-void
.end method

.method public showWaterProtectionAlertDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1924
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1925
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1926
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f05f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1927
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f05f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1928
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f04dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1929
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$18;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$18;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1936
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    .line 1937
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1938
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 1940
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1923
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public showWillOverheatShutdownWarning()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 756
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 758
    .local v0, "isShutdownOn":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 759
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "don\'t show Overheat shutdown warning while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    return-void

    .end local v0    # "isShutdownOn":Z
    :cond_0
    move v0, v1

    .line 756
    goto :goto_0

    .line 763
    .restart local v0    # "isShutdownOn":Z
    :cond_1
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "showWillOverheatShutdownWarning()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissOverheatShutdownHappenedPopUp()V

    .line 766
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showWillOverheatShutdownPopUp()V

    .line 755
    return-void
.end method

.method public showWirelessChargerDisconnectNotice()V
    .locals 2

    .prologue
    .line 1338
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFTAMode:Z

    if-eqz v0, :cond_0

    .line 1339
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "FTA Mode is ON so don\'t show Wireless charging disconnect warning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    return-void

    .line 1343
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showWirelessChargerDisconnectToast()V

    .line 1337
    return-void
.end method

.method public update(IIJII)V
    .locals 3
    .param p1, "batteryLevel"    # I
    .param p2, "bucket"    # I
    .param p3, "screenOffTime"    # J
    .param p5, "batteryStatus"    # I
    .param p6, "batteryHealth"    # I

    .prologue
    .line 282
    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    .line 283
    if-ltz p2, :cond_1

    .line 284
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    .line 288
    :cond_0
    :goto_0
    iput p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    .line 289
    iput-wide p3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScreenOffTime:J

    .line 292
    iput p5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStatus:I

    .line 293
    iput p6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    .line 281
    return-void

    .line 285
    :cond_1
    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    if-ge p2, v0, :cond_0

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    goto :goto_0
.end method

.method public updateLowBatteryWarning()V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 457
    return-void
.end method

.method public userSwitched()V
    .locals 0

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 557
    return-void
.end method

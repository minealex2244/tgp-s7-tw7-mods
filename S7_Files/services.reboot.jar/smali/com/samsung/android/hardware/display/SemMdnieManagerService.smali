.class public Lcom/samsung/android/hardware/display/SemMdnieManagerService;
.super Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;
.source "SemMdnieManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;,
        Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemMdnieManagerService"


# instance fields
.field private final DEBUG:Z

.field private final LCD_SRGB_MODE:I

.field private final MDNIE_SUPPORT_FUNCTION:I

.field private final NIGHT_MODE_MAX_INDEX:I

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private final SEC_DISPLAY_TEMPERATURE_B:Ljava/lang/String;

.field private final SEC_DISPLAY_TEMPERATURE_G:Ljava/lang/String;

.field private final SEC_DISPLAY_TEMPERATURE_R:Ljava/lang/String;

.field private final SYSFS_MDNIE_CONTENT_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_FACTORY_MDNIE:Ljava/lang/String;

.field private final SYSFS_MDNIE_NEGATIVE:Ljava/lang/String;

.field private final SYSFS_MDNIE_NIGHT_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_OUTDOOR:Ljava/lang/String;

.field private final SYSFS_MDNIE_PLAYSPEED:Ljava/lang/String;

.field private final SYSFS_MDNIE_SCREEN_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_VISION_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_VISION_MODE_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_WHITE_RGB:Ljava/lang/String;

.field private adaptiveDisplay:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

.field private mAutoModeEnabled:Z

.field private mBrowserScenarioEnabled:Z

.field private mColorBlindEnabled:Z

.field private mContentMode:I

.field private final mContext:Landroid/content/Context;

.field private mCurtainModeIsRunning:Z

.field private mDisplayOn:Z

.field private mEbookScenarioEnabled:Z

.field private mEmergencyModeDiabled:Z

.field private mFactoryScrBIndex:I

.field private mFactoryScrGIndex:I

.field private mFactoryScrRIndex:I

.field private final mLock:Ljava/lang/Object;

.field private mMdnieCustomized:Z

.field private mMdnieFactorySupported:Z

.field private mMdnieWhiteRGBSupported:Z

.field private mMdnieWorkingCondition:Z

.field private mNegativeColorEnabled:Z

.field private mNightMode:Z

.field private mNightModeIndex:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrevScreenModeForReadingMode:I

.field private mReadingModeEnabled:Z

.field private mReadingScreenMode:I

.field private mScreenCurtainEnabled:Z

.field private mScreenMode:I

.field private mScreenModeForReadingMode:I

.field private mScreenWatchingReceiver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;

.field private mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

.field private mSupportBlueFilter:Z

.field private mSupportColorAdjustment:Z

.field private mSupportContentMode:Z

.field private mSupportContentModeGame:Z

.field private mSupportContentModeVideoEnhance:Z

.field private mSupportGrayscale:Z

.field private mSupportHDR:Z

.field private mSupportHMT:Z

.field private mSupportNegative:Z

.field private mSupportScreeenReadingMode:Z

.field private mSupportScreenCurtain:Z

.field private mSupportScreenMode:Z

.field private mUseAdaptiveDisplayColorServiceConfig:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEmergencyModeDiabled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setting_is_changed()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;-><init>()V

    .line 75
    const-string/jumbo v2, "eng"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->DEBUG:Z

    .line 80
    iput-object v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->adaptiveDisplay:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 82
    const-string/jumbo v2, "screen_mode_automatic_setting"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    .line 83
    const-string/jumbo v2, "screen_mode_setting"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    .line 84
    const-string/jumbo v2, "sec_display_temperature_red"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_TEMPERATURE_R:Ljava/lang/String;

    .line 85
    const-string/jumbo v2, "sec_display_temperature_green"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_TEMPERATURE_G:Ljava/lang/String;

    .line 86
    const-string/jumbo v2, "sec_display_temperature_blue"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_TEMPERATURE_B:Ljava/lang/String;

    .line 88
    const-string/jumbo v2, "/sys/class/mdnie/mdnie/accessibility"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_VISION_MODE:Ljava/lang/String;

    .line 89
    const-string/jumbo v2, "/sys/class/mdnie_1/mdnie_1/accessibility"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_VISION_MODE_SUB:Ljava/lang/String;

    .line 90
    const-string/jumbo v2, "/sys/class/mdnie/mdnie/mode"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_SCREEN_MODE:Ljava/lang/String;

    .line 91
    const-string/jumbo v2, "/sys/class/mdnie/mdnie/scenario"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_CONTENT_MODE:Ljava/lang/String;

    .line 93
    const-string/jumbo v2, "/sys/class/mdnie/mdnie/negative"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NEGATIVE:Ljava/lang/String;

    .line 94
    const-string/jumbo v2, "/sys/class/mdnie/mdnie/outdoor"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_OUTDOOR:Ljava/lang/String;

    .line 95
    const-string/jumbo v2, "/sys/class/mdnie/mdnie/playspeed"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_PLAYSPEED:Ljava/lang/String;

    .line 96
    const-string/jumbo v2, "/sys/class/mdnie/mdnie/night_mode"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NIGHT_MODE:Ljava/lang/String;

    .line 97
    const-string/jumbo v2, "/sys/class/mdnie/mdnie/whiteRGB"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_WHITE_RGB:Ljava/lang/String;

    .line 98
    const-string/jumbo v2, "/efs/FactoryApp/mdnie"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_FACTORY_MDNIE:Ljava/lang/String;

    .line 100
    const/4 v2, 0x3

    iput v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->LCD_SRGB_MODE:I

    .line 101
    const/16 v2, 0xb

    iput v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    .line 103
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    .line 106
    const-string/jumbo v2, "32535"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 105
    iput v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    .line 107
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    .line 108
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    .line 109
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    .line 110
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    .line 111
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    .line 112
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportNegative:Z

    .line 113
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportGrayscale:Z

    .line 114
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenCurtain:Z

    .line 115
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportColorAdjustment:Z

    .line 116
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    .line 117
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHMT:Z

    .line 118
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHDR:Z

    .line 120
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieCustomized:Z

    .line 124
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 125
    iput v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 127
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    .line 128
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    .line 130
    iput v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndex:I

    .line 131
    iput v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndex:I

    .line 132
    iput v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndex:I

    .line 138
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    .line 139
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    .line 140
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEmergencyModeDiabled:Z

    .line 141
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenCurtainEnabled:Z

    .line 142
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNegativeColorEnabled:Z

    .line 143
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorBlindEnabled:Z

    .line 144
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    .line 145
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mReadingModeEnabled:Z

    .line 146
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEbookScenarioEnabled:Z

    .line 147
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBrowserScenarioEnabled:Z

    .line 149
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 151
    iput-object v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 761
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    .line 155
    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 157
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 159
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-direct {v2, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    .line 161
    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    .line 162
    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    .line 163
    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    .line 164
    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    .line 165
    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_7

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    .line 166
    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_8

    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportNegative:Z

    .line 167
    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_9

    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportGrayscale:Z

    .line 168
    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_a

    move v2, v3

    :goto_7
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenCurtain:Z

    .line 169
    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_b

    move v2, v3

    :goto_8
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportColorAdjustment:Z

    .line 170
    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_c

    move v2, v3

    :goto_9
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    .line 171
    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_d

    move v2, v3

    :goto_a
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHMT:Z

    .line 172
    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_e

    move v2, v3

    :goto_b
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHDR:Z

    .line 175
    const/4 v2, 0x5

    iput v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mReadingScreenMode:I

    .line 182
    const-string/jumbo v2, "screen_mode_setting"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    .line 181
    invoke-virtual {v1, v2, v4, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 184
    const-string/jumbo v2, "sec_display_temperature_red"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    .line 183
    invoke-virtual {v1, v2, v4, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 186
    const-string/jumbo v2, "sec_display_temperature_green"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    .line 185
    invoke-virtual {v1, v2, v4, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 188
    const-string/jumbo v2, "sec_display_temperature_blue"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    .line 187
    invoke-virtual {v1, v2, v4, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;)V

    invoke-virtual {v2, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    new-instance v2, Ljava/io/File;

    const-string/jumbo v5, "/efs/FactoryApp/mdnie"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    .line 199
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v5, "/sys/class/mdnie/mdnie/whiteRGB"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    .line 201
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    if-eqz v2, :cond_f

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setFactoryWhiteRGB()V

    .line 204
    :goto_c
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "screen_mode_automatic_setting"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_10

    move v2, v3

    :goto_d
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    .line 205
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    if-eqz v2, :cond_11

    .line 207
    const/4 v2, 0x4

    iput v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 214
    :goto_e
    iput v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    .line 216
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    .line 217
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEmergencyModeDiabled:Z

    .line 218
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    .line 220
    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setScreenMode(I)Z

    .line 221
    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setContentMode(I)Z

    .line 223
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 224
    const v3, 0x11200d1

    .line 223
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 225
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    if-eqz v2, :cond_2

    .line 226
    new-instance v2, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-direct {v2, p1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->adaptiveDisplay:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 228
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setting_is_changed()V

    .line 153
    return-void

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_3
    move v2, v4

    .line 161
    goto/16 :goto_0

    :cond_4
    move v2, v4

    .line 162
    goto/16 :goto_1

    :cond_5
    move v2, v4

    .line 163
    goto/16 :goto_2

    :cond_6
    move v2, v4

    .line 164
    goto/16 :goto_3

    :cond_7
    move v2, v4

    .line 165
    goto/16 :goto_4

    :cond_8
    move v2, v4

    .line 166
    goto/16 :goto_5

    :cond_9
    move v2, v4

    .line 167
    goto/16 :goto_6

    :cond_a
    move v2, v4

    .line 168
    goto/16 :goto_7

    :cond_b
    move v2, v4

    .line 169
    goto/16 :goto_8

    :cond_c
    move v2, v4

    .line 170
    goto/16 :goto_9

    :cond_d
    move v2, v4

    .line 171
    goto/16 :goto_a

    :cond_e
    move v2, v4

    .line 172
    goto/16 :goto_b

    .line 202
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_f
    const-string/jumbo v2, "SemMdnieManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SYSFS_MDNIE_FACTORY_MDNIE is not exist mMdnieWhiteRGBSupported - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_10
    move v2, v4

    .line 204
    goto :goto_d

    .line 211
    :cond_11
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "screen_mode_setting"

    invoke-static {v2, v5, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    goto/16 :goto_e
.end method

.method private checkContentMode(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v1, :cond_0

    .line 505
    packed-switch p1, :pswitch_data_0

    .line 533
    :pswitch_0
    const/4 v0, 0x0

    .line 537
    :cond_0
    :goto_0
    return v0

    .line 512
    :pswitch_1
    const/4 v0, 0x1

    .line 513
    goto :goto_0

    .line 517
    :pswitch_2
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    if-eqz v1, :cond_0

    .line 518
    const/4 v0, 0x1

    goto :goto_0

    .line 523
    :pswitch_3
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    if-eqz v1, :cond_0

    .line 524
    const/4 v0, 0x1

    goto :goto_0

    .line 529
    :pswitch_4
    const/4 v0, 0x1

    .line 530
    goto :goto_0

    .line 505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private checkScreenMode(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-eqz v1, :cond_0

    .line 482
    packed-switch p1, :pswitch_data_0

    .line 495
    :pswitch_0
    const/4 v0, 0x0

    .line 499
    :cond_0
    :goto_0
    return v0

    .line 487
    :pswitch_1
    const/4 v0, 0x1

    .line 488
    goto :goto_0

    .line 490
    :pswitch_2
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v1, :cond_0

    .line 491
    const/4 v0, 0x1

    goto :goto_0

    .line 482
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setFactoryWhiteRGB()V
    .locals 15

    .prologue
    const/16 v14, -0x13

    .line 295
    const/4 v4, 0x0

    .line 296
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 297
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v10, 0x0

    .line 298
    .local v10, "white_scr":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "scrR":I
    const/4 v8, 0x0

    .local v8, "scrG":I
    const/4 v6, 0x0

    .line 300
    .local v6, "scrB":I
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string/jumbo v11, "/efs/FactoryApp/mdnie"

    invoke-direct {v5, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 302
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .end local v0    # "br":Ljava/io/BufferedReader;
    move-result-object v10

    .line 303
    .local v10, "white_scr":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 304
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 305
    .local v7, "scrDatas":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 306
    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 307
    const/4 v11, 0x2

    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 308
    const-string/jumbo v11, "SemMdnieManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setFactoryWhiteRGB : scrR - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", scrG - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", scrB - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 316
    .end local v7    # "scrDatas":[Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    .line 317
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 324
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    .line 325
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_1
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 332
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v10    # "white_scr":Ljava/lang/String;
    :cond_3
    :goto_2
    if-gtz v9, :cond_4

    if-lt v9, v14, :cond_4

    if-gtz v8, :cond_4

    if-lt v8, v14, :cond_4

    if-gtz v6, :cond_4

    if-lt v6, v14, :cond_4

    .line 333
    iput v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndex:I

    .line 334
    iput v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndex:I

    .line 335
    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndex:I

    .line 336
    const-string/jumbo v11, "/sys/class/mdnie/mdnie/whiteRGB"

    invoke-static {v11, v10}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 294
    :cond_4
    return-void

    .line 319
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v10    # "white_scr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 320
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v11, "SemMdnieManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "BufferedReader Close IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 327
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 328
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v11, "SemMdnieManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "FileReader Close IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 312
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v0, "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    .local v10, "white_scr":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 313
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v10    # "white_scr":Ljava/lang/String;
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 316
    if-eqz v0, :cond_5

    .line 317
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 324
    :cond_5
    :goto_4
    if-eqz v4, :cond_3

    .line 325
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 327
    :catch_3
    move-exception v3

    .line 328
    const-string/jumbo v11, "SemMdnieManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "FileReader Close IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 319
    :catch_4
    move-exception v3

    .line 320
    const-string/jumbo v11, "SemMdnieManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "BufferedReader Close IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 310
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    .restart local v10    # "white_scr":Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 311
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v10    # "white_scr":Ljava/lang/String;
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 316
    if-eqz v0, :cond_6

    .line 317
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 324
    :cond_6
    :goto_6
    if-eqz v4, :cond_3

    .line 325
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_2

    .line 327
    :catch_6
    move-exception v3

    .line 328
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v11, "SemMdnieManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "FileReader Close IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 319
    .end local v3    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v3

    .line 320
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v11, "SemMdnieManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "BufferedReader Close IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 314
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 316
    :goto_7
    if-eqz v0, :cond_7

    .line 317
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 324
    :cond_7
    :goto_8
    if-eqz v4, :cond_8

    .line 325
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 314
    :cond_8
    :goto_9
    throw v11

    .line 319
    :catch_8
    move-exception v3

    .line 320
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v12, "SemMdnieManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "BufferedReader Close IOException : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 327
    .end local v3    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v3

    .line 328
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v12, "SemMdnieManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "FileReader Close IOException : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 314
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v10    # "white_scr":Ljava/lang/String;
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .local v4, "fr":Ljava/io/FileReader;
    goto :goto_7

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v10    # "white_scr":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v11

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_7

    .line 310
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v0, "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v10    # "white_scr":Ljava/lang/String;
    :catch_a
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v10    # "white_scr":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_b
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_5

    .line 312
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v0, "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v10    # "white_scr":Ljava/lang/String;
    :catch_c
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v10    # "white_scr":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_d
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_3
.end method

.method private setting_is_changed()V
    .locals 9

    .prologue
    const/16 v8, -0x13

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 265
    iget v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeForReadingMode:I

    iput v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPrevScreenModeForReadingMode:I

    .line 266
    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_mode_setting"

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeForReadingMode:I

    .line 267
    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_red"

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 268
    .local v2, "scrR":I
    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_green"

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 269
    .local v1, "scrG":I
    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_blue"

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 270
    .local v0, "scrB":I
    iget v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPrevScreenModeForReadingMode:I

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeForReadingMode:I

    if-eq v4, v5, :cond_0

    .line 271
    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v4, :cond_0

    .line 272
    iget v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeForReadingMode:I

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mReadingScreenMode:I

    if-ne v4, v5, :cond_2

    .line 273
    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/PowerManager;->setAutoBrightnessForEbookOnly(Z)V

    .line 282
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    if-eqz v4, :cond_1

    .line 283
    const-string/jumbo v4, "SemMdnieManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setting_is_changed - R("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "), G("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "), B("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndex:I

    add-int/2addr v2, v4

    .line 285
    iget v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndex:I

    add-int/2addr v1, v4

    .line 286
    iget v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndex:I

    add-int/2addr v0, v4

    .line 287
    if-gtz v2, :cond_1

    if-lt v2, v8, :cond_1

    if-gtz v1, :cond_1

    if-lt v1, v8, :cond_1

    if-gtz v0, :cond_1

    if-lt v0, v8, :cond_1

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "str":Ljava/lang/String;
    const-string/jumbo v4, "/sys/class/mdnie/mdnie/whiteRGB"

    invoke-static {v4, v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 264
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    return-void

    .line 276
    :cond_2
    iget v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPrevScreenModeForReadingMode:I

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mReadingScreenMode:I

    if-ne v4, v5, :cond_0

    .line 277
    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4, v6}, Landroid/os/PowerManager;->setAutoBrightnessForEbookOnly(Z)V

    goto/16 :goto_0
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .locals 8
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    const/4 v7, 0x0

    .line 564
    const/4 v4, 0x0

    .line 565
    .local v4, "out":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 566
    .local v3, "myfile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 569
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 575
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 576
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 587
    const/4 v6, 0x1

    return v6

    .line 570
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 571
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 572
    return v7

    .line 577
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 578
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 580
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 584
    :goto_1
    return v7

    .line 581
    :catch_2
    move-exception v2

    .line 582
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 589
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_0
    return v7

    .line 577
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private static sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 593
    const/4 v3, 0x0

    .line 597
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 603
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 604
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 615
    const/4 v5, 0x1

    return v5

    .line 598
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 600
    return v6

    .line 605
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 606
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 608
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 612
    :goto_1
    return v6

    .line 609
    :catch_2
    move-exception v2

    .line 610
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 605
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private static sysfsWrite_CB(Ljava/lang/String;I[I)Z
    .locals 10
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "result"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 650
    const/4 v4, 0x0

    .line 651
    .local v4, "out":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 653
    .local v3, "mParameter":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 654
    aget v7, p2, v8

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 654
    const-string/jumbo v7, " "

    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 655
    aget v7, p2, v9

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 655
    const-string/jumbo v7, " "

    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 656
    const/4 v7, 0x2

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 656
    const-string/jumbo v7, " "

    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 657
    const/4 v7, 0x3

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 657
    const-string/jumbo v7, " "

    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 658
    const/4 v7, 0x4

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 658
    const-string/jumbo v7, " "

    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 659
    const/4 v7, 0x5

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 659
    const-string/jumbo v7, " "

    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 660
    const/4 v7, 0x6

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 660
    const-string/jumbo v7, " "

    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 661
    const/4 v7, 0x7

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 661
    const-string/jumbo v7, " "

    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 662
    const/16 v7, 0x8

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, "mParameter":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 672
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 673
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 700
    return v9

    .line 667
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 669
    return v8

    .line 674
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 675
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 677
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 681
    :goto_1
    return v8

    .line 678
    :catch_2
    move-exception v2

    .line 679
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 674
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private static sysfsWrite_CB_HBM(Ljava/lang/String;I[I)Z
    .locals 10
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "result"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 705
    const/4 v4, 0x0

    .line 706
    .local v4, "out":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 708
    .local v3, "mParameter":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 709
    aget v7, p2, v8

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 709
    const-string/jumbo v7, " "

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 710
    aget v7, p2, v9

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 710
    const-string/jumbo v7, " "

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 711
    const/4 v7, 0x2

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 711
    const-string/jumbo v7, " "

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 712
    const/4 v7, 0x3

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 712
    const-string/jumbo v7, " "

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 713
    const/4 v7, 0x4

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 713
    const-string/jumbo v7, " "

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 714
    const/4 v7, 0x5

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 714
    const-string/jumbo v7, " "

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 715
    const/4 v7, 0x6

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 715
    const-string/jumbo v7, " "

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 716
    const/4 v7, 0x7

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 716
    const-string/jumbo v7, " "

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 717
    const/16 v7, 0x8

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 717
    const-string/jumbo v7, " "

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 718
    const/16 v7, 0x9

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 718
    const-string/jumbo v7, " "

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 719
    const/16 v7, 0xa

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 719
    const-string/jumbo v7, " "

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 720
    const/16 v7, 0xb

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 724
    .local v3, "mParameter":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 730
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 731
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 758
    return v9

    .line 725
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 726
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 727
    return v8

    .line 732
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 733
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 735
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 739
    :goto_1
    return v8

    .line 736
    :catch_2
    move-exception v2

    .line 737
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 732
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private static sysfsWrite_color_blind(Ljava/lang/String;I[I)Z
    .locals 10
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "result"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 620
    const/4 v4, 0x0

    .line 621
    .local v4, "out":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 623
    .local v3, "mParameter":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, p2, v8

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, p2, v9

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 624
    const/4 v7, 0x3

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 623
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 624
    const-string/jumbo v7, " "

    .line 623
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 624
    const/4 v7, 0x4

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 623
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 624
    const-string/jumbo v7, " "

    .line 623
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 624
    const/4 v7, 0x5

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 623
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 624
    const-string/jumbo v7, " "

    .line 623
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 624
    const/4 v7, 0x6

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 623
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 624
    const-string/jumbo v7, " "

    .line 623
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 625
    const/4 v7, 0x7

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 623
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 625
    const-string/jumbo v7, " "

    .line 623
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 625
    const/16 v7, 0x8

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 623
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 629
    .local v3, "mParameter":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 635
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 636
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 646
    return v9

    .line 630
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 632
    return v8

    .line 637
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 638
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 640
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 644
    :goto_1
    return v8

    .line 641
    :catch_2
    move-exception v2

    .line 642
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 637
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public getContentMode()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    return v0
.end method

.method public getScreenMode()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    return v0
.end method

.method public getSupportedContentMode()[I
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 396
    const/4 v1, 0x0

    .line 398
    .local v1, "size":I
    const-string/jumbo v2, "SemMdnieManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MDNIE_SUPPORT_FUNCTION ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mSupportContentMode ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v2, :cond_0

    .line 401
    const/4 v1, 0x6

    .line 403
    :cond_0
    new-array v0, v1, [I

    .line 405
    .local v0, "contentMode":[I
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v2, :cond_1

    .line 406
    aput v5, v0, v5

    .line 407
    aput v6, v0, v6

    .line 408
    const/4 v2, 0x2

    aput v7, v0, v2

    .line 409
    const/4 v2, 0x6

    const/4 v3, 0x3

    aput v2, v0, v3

    .line 410
    const/16 v2, 0x8

    aput v2, v0, v7

    .line 411
    const/16 v2, 0x9

    const/4 v3, 0x5

    aput v2, v0, v3

    .line 414
    :cond_1
    return-object v0
.end method

.method public getSupportedScreenMode()[I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 361
    const/4 v1, 0x0

    .line 363
    .local v1, "size":I
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-eqz v2, :cond_0

    .line 364
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v2, :cond_2

    .line 365
    const/4 v1, 0x5

    .line 370
    :cond_0
    :goto_0
    new-array v0, v1, [I

    .line 372
    .local v0, "screenMode":[I
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-eqz v2, :cond_1

    .line 373
    aput v3, v0, v3

    .line 374
    aput v4, v0, v4

    .line 375
    aput v5, v0, v5

    .line 376
    const/4 v2, 0x3

    aput v6, v0, v2

    .line 377
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v2, :cond_1

    .line 378
    const/4 v2, 0x5

    aput v2, v0, v6

    .line 382
    :cond_1
    return-object v0

    .line 367
    .end local v0    # "screenMode":[I
    :cond_2
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public isContentModeSupported()Z
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v0, :cond_0

    .line 388
    const/4 v0, 0x1

    return v0

    .line 390
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isScreenModeSupported()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-eqz v0, :cond_0

    .line 353
    const/4 v0, 0x1

    return v0

    .line 355
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAmoledACL(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 465
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v0, :cond_1

    .line 466
    if-eqz p1, :cond_0

    .line 467
    const/4 p1, 0x1

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 470
    :try_start_0
    const-string/jumbo v0, "/sys/class/lcd/panel/power_reduce"

    invoke-static {v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 476
    :cond_1
    return v1
.end method

.method public setContentMode(I)Z
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 442
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 443
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 445
    .local v0, "pid":I
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v2, :cond_1

    .line 446
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v2, :cond_1

    .line 447
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkContentMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 449
    :try_start_0
    const-string/jumbo v2, "/sys/class/mdnie/mdnie/scenario"

    invoke-static {v2, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :cond_0
    monitor-exit v3

    .line 457
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 448
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setNightMode(ZI)Z
    .locals 7
    .param p1, "enable"    # Z
    .param p2, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 543
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 544
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 546
    .local v1, "pid":I
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 547
    .local v0, "mode_enable":I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 549
    .local v2, "str":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    if-eqz v4, :cond_2

    .line 550
    if-ltz p2, :cond_2

    const/16 v4, 0xb

    if-gt p2, v4, :cond_2

    .line 551
    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 552
    :try_start_0
    const-string/jumbo v4, "/sys/class/mdnie/mdnie/night_mode"

    invoke-static {v4, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 553
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 554
    iput p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    const/4 v4, 0x1

    monitor-exit v5

    return v4

    .line 546
    .end local v0    # "mode_enable":I
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "mode_enable":I
    goto :goto_0

    .restart local v2    # "str":Ljava/lang/String;
    :cond_1
    monitor-exit v5

    .line 560
    :cond_2
    return v6

    .line 551
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public setScreenMode(I)Z
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 421
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 422
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 424
    .local v0, "pid":I
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-eqz v2, :cond_1

    .line 425
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v2, :cond_1

    .line 426
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkScreenMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 427
    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 428
    :try_start_0
    const-string/jumbo v2, "/sys/class/mdnie/mdnie/mode"

    invoke-static {v2, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :cond_0
    monitor-exit v3

    .line 436
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 427
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setmDNIeAccessibilityMode(IZ)Z
    .locals 6
    .param p1, "mode"    # I
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 914
    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v5, "setmDNIeAccessibilityMode"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string/jumbo v3, "SemMdnieManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setmDNIeAccessibilityMode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    if-nez v3, :cond_4

    .line 920
    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v1

    .line 921
    .local v1, "mEmergencyManager":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    if-eqz v1, :cond_0

    .line 922
    invoke-virtual {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getEmergencyState()I

    move-result v0

    .line 924
    .local v0, "emergencyState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 931
    .end local v0    # "emergencyState":I
    :cond_0
    const/16 v3, 0xa

    if-eq p1, v3, :cond_2

    .line 935
    const-string/jumbo v3, "/sys/class/mdnie/mdnie/accessibility"

    .line 936
    if-eqz p2, :cond_1

    .line 935
    .end local p1    # "mode":I
    :goto_0
    invoke-static {v3, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    return v2

    .restart local p1    # "mode":I
    :cond_1
    move p1, v2

    .line 936
    goto :goto_0

    .line 938
    :cond_2
    const-string/jumbo v3, "/sys/class/backlight/panel/weakness_hbm_comp"

    .line 939
    if-eqz p2, :cond_3

    const/4 v2, 0x1

    .line 938
    :cond_3
    invoke-static {v3, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    return v2

    .line 958
    .end local v1    # "mEmergencyManager":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :cond_4
    return v2
.end method

.method public setmDNIeColorBlind(Z[I)Z
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "result"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 772
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v4, "setmDNIeColorBlind"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string/jumbo v2, "SemMdnieManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setmDNIeColorBlind ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    if-nez v2, :cond_2

    .line 778
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    .line 779
    .local v0, "mEmergencyManager":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    if-eqz v0, :cond_0

    .line 780
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 784
    const-string/jumbo v1, "/sys/class/mdnie/mdnie/accessibility"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 791
    :cond_0
    const-string/jumbo v2, "/sys/class/mdnie/mdnie/accessibility"

    .line 792
    if-eqz p1, :cond_1

    const/4 v1, 0x6

    .line 791
    :cond_1
    invoke-static {v2, v1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite_CB_HBM(Ljava/lang/String;I[I)Z

    move-result v1

    return v1

    .line 820
    .end local v0    # "mEmergencyManager":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :cond_2
    return v1
.end method

.method public setmDNIeEmergencyMode(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 895
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v3, "setmDNIeEmergencyMode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string/jumbo v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setmDNIeEmergencyMode ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string/jumbo v2, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-static {v2, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    .line 902
    .local v0, "result":Z
    return v0

    .line 898
    .end local v0    # "result":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setmDNIeNegative(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 833
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v4, "setmDNIeNegative"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string/jumbo v2, "SemMdnieManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setmDNIeNegative ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    if-nez v2, :cond_2

    .line 839
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    .line 840
    .local v0, "mEmergencyManager":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 845
    const-string/jumbo v1, "/sys/class/mdnie/mdnie/accessibility"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 851
    :cond_0
    const-string/jumbo v2, "/sys/class/mdnie/mdnie/accessibility"

    .line 852
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 851
    :cond_1
    invoke-static {v2, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 865
    .end local v0    # "mEmergencyManager":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :cond_2
    return v1
.end method

.method public setmDNIeScreenCurtain(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 877
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v3, "setmDNIeScreenCurtain"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string/jumbo v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setmDNIeScreenCurtain ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    .line 880
    const-string/jumbo v2, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    :goto_0
    invoke-static {v2, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    .line 884
    .local v0, "result":Z
    return v0

    .line 880
    .end local v0    # "result":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

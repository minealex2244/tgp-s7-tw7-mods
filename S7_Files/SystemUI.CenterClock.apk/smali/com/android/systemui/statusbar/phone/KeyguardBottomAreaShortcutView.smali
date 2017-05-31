.class public Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;
.super Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.source "KeyguardBottomAreaShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$1;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$2;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mCurrentOrientation:I

.field private mDisplay:Landroid/view/Display;

.field private mEasyMode:Z

.field private mIsDeskMode:Z

.field private mKidsModeEnabled:Z

.field private mPermDisableState:Z

.field private mSavingMode:Z

.field private mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

.field private mShortcutCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

.field private mShortcutVisibleForMDM:Z

.field private mTraySquicleMode:Z

.field private mTrusted:Z

.field private mUpdateMonitorCallbackForShortcuts:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEasyMode:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPermDisableState:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/keyguard/util/ShortcutManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutVisibleForMDM:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEasyMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsDeskMode:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPermDisableState:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutVisibleForMDM:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->shouldDisableShortcut()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->changeIconSquicleMode()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V
    .locals 0
    .param p1, "v"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p2, "th"    # I
    .param p3, "enable"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateIconColorOnWhiteWallpaper()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const-string/jumbo v0, "KeyguardBottomAreaShortcutView"

    const/4 v1, 0x0

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->DEBUG:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 126
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    .line 66
    iput v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mCurrentOrientation:I

    .line 72
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    .line 517
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUpdateMonitorCallbackForShortcuts:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 127
    new-instance v1, Lcom/android/keyguard/util/ShortcutManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v6, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    invoke-direct {v1, v4, v5, v6}, Lcom/android/keyguard/util/ShortcutManager;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/util/ShortcutManager$ShortcutCallback;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    .line 128
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v1

    .line 129
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z

    .line 131
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v1

    .line 131
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPermDisableState:Z

    .line 133
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->isShortcutsVisibleForMDM()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutVisibleForMDM:Z

    .line 134
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->istKidsHomeModeEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mKidsModeEnabled:Z

    .line 140
    const/4 v1, 0x7

    new-array v0, v1, [Landroid/net/Uri;

    .line 141
    const-string/jumbo v1, "tap_to_icon"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v3

    .line 142
    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v2

    .line 143
    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 144
    const-string/jumbo v1, "set_shortcuts_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 145
    const-string/jumbo v1, "current_sec_appicon_theme_package"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 146
    const-string/jumbo v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 147
    const-string/jumbo v1, "easy_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 149
    .local v0, "settingsHelperUri":[Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 150
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->isIconSquicleMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTraySquicleMode:Z

    .line 152
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 172
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mDisplay:Landroid/view/Display;

    .line 125
    return-void

    .end local v0    # "settingsHelperUri":[Landroid/net/Uri;
    :cond_0
    move v1, v2

    .line 129
    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 131
    goto/16 :goto_1
.end method

.method private changeIconSquicleMode()V
    .locals 4

    .prologue
    .line 636
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->isIconSquicleMode()Z

    move-result v0

    .line 637
    .local v0, "trayMode":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTraySquicleMode:Z

    if-eq v0, v1, :cond_1

    .line 638
    const-string/jumbo v1, "KeyguardBottomAreaShortcutView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changeIconSquicleMode() : new traySquicleMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTraySquicleMode:Z

    .line 643
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v1}, Lcom/android/keyguard/util/ShortcutManager;->hasShortcutForLeft()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/util/ShortcutManager;->updateShortcutsIcon(I)V

    .line 645
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v1}, Lcom/android/keyguard/util/ShortcutManager;->hasShortcutForRight()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 646
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/util/ShortcutManager;->updateShortcutsIcon(I)V

    .line 635
    :cond_1
    return-void
.end method

.method private isSecure()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 494
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsSecure:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shouldDisableShortcut()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPermDisableState:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutVisibleForMDM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsDeskMode:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showShortcutsIfPossible()V
    .locals 3

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->shouldDisableShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->isLeftShortcutForCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 574
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->isRightShortcutForCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    .line 563
    :goto_1
    return-void

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/keyguard/util/ShortcutManager;->hasShortcutForLeft()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    goto :goto_0

    .line 577
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/keyguard/util/ShortcutManager;->hasShortcutForRight()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    goto :goto_1
.end method

.method private updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V
    .locals 3
    .param p1, "v"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p2, "th"    # I
    .param p3, "enable"    # Z

    .prologue
    const/16 v1, 0x8

    .line 180
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->shouldDisableShortcut()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_1

    .line 181
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUserSetupComplete:Z

    .line 182
    .local v0, "visible":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setVisibility(I)V

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v1, p2}, Lcom/android/keyguard/util/ShortcutManager;->getShortcutDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v1, p2}, Lcom/android/keyguard/util/ShortcutManager;->getShortcutContentDescription(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 179
    .end local v0    # "visible":Z
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateIconColorOnWhiteWallpaper()V
    .locals 6

    .prologue
    const v3, 0x7f020144

    const/4 v5, 0x2

    .line 651
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v1

    .line 652
    .local v1, "util":Lcom/android/keyguard/util/ViewStyleUtils;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v1, v3, v3, v5}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 653
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    const v3, 0x7f0202e8

    const v4, 0x7f0202e9

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 654
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUsimCarrierText:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v5}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 655
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0442

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 656
    .local v0, "padding":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v3}, Lcom/android/keyguard/EmergencyButton;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v4}, Lcom/android/keyguard/EmergencyButton;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v0, v3, v0, v4}, Lcom/android/keyguard/EmergencyButton;->setPadding(IIII)V

    .line 650
    return-void
.end method


# virtual methods
.method public hasCameraShortcutForLeft()Z
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->isLeftShortcutForCamera()Z

    move-result v0

    return v0
.end method

.method public hasCameraShortcutForRight()Z
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->isRightShortcutForCamera()Z

    move-result v0

    return v0
.end method

.method public hasPhoneShortcutForLeft()Z
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->isLeftShortcutForPhone()Z

    move-result v0

    return v0
.end method

.method public hasPhoneShortcutForRight()Z
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->isRightShortcutForPhone()Z

    move-result v0

    return v0
.end method

.method public launchLeftAffordance()V
    .locals 7

    .prologue
    .line 345
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    .line 346
    .local v1, "isDeviceInteractive":Z
    if-nez v1, :cond_1

    .line 347
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftPreview:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 348
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftPreview:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 350
    :cond_0
    return-void

    .line 354
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 355
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    .line 356
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 359
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftIsVoiceAssist:Z

    if-eqz v3, :cond_3

    .line 360
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchLeftAffordance()V

    .line 344
    :goto_0
    return-void

    .line 361
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasCameraShortcutForLeft()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 362
    const-string/jumbo v3, "lockscreen_affordance"

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->launchCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasPhoneShortcutForLeft()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 364
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->launchPhone()V

    goto :goto_0

    .line 366
    :cond_5
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 367
    const-string/jumbo v3, "KeyguardBottomAreaShortcutView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "launchLeftAffordance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    invoke-virtual {v5, v6}, Lcom/android/keyguard/util/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/util/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 369
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    invoke-virtual {v3, v4}, Lcom/android/keyguard/util/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "packageName":Ljava/lang/String;
    goto :goto_0
.end method

.method public launchRightAffordance()V
    .locals 7

    .prologue
    .line 387
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    .line 388
    .local v1, "isDeviceInteractive":Z
    if-nez v1, :cond_1

    .line 389
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightPreview:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 390
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightPreview:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 392
    :cond_0
    return-void

    .line 396
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 397
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    .line 398
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 401
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasCameraShortcutForRight()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 402
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchRightAffordance()V

    .line 386
    :goto_0
    return-void

    .line 403
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasPhoneShortcutForRight()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 404
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->launchPhone()V

    goto :goto_0

    .line 406
    :cond_4
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 407
    const-string/jumbo v3, "KeyguardBottomAreaShortcutView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "launchRightAffordance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    invoke-virtual {v5, v6}, Lcom/android/keyguard/util/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/util/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 409
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    invoke-virtual {v3, v4}, Lcom/android/keyguard/util/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "packageName":Ljava/lang/String;
    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 602
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 604
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardRune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateLeftPreview()V

    .line 608
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateRightPreview()V

    .line 609
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mCurrentOrientation:I

    .line 601
    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged(Z)V
    .locals 4
    .param p1, "isSavingModeChanged"    # Z

    .prologue
    .line 666
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEasyMode:Z

    if-eqz v0, :cond_1

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateLeftAffordance()V

    .line 668
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCameraVisibility()V

    .line 669
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateRightPreview()V

    .line 665
    :goto_0
    return-void

    .line 672
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    .line 677
    const-wide/16 v2, 0x7d0

    .line 672
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUpdateMonitorCallbackForShortcuts:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->unregisterReceiver()V

    .line 339
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onDetachedFromWindow()V

    .line 336
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 326
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onFinishInflate()V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUpdateMonitorCallbackForShortcuts:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mCurrentOrientation:I

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->init()V

    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->init()V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    .line 332
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateIconColorOnWhiteWallpaper()V

    .line 325
    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .locals 5

    .prologue
    .line 617
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    .line 618
    .local v1, "oldTrust":Z
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsSecure:Z

    .line 619
    .local v0, "oldSecure":Z
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onUnlockMethodStateChanged()V

    .line 620
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    .line 622
    const-string/jumbo v2, "KeyguardBottomAreaShortcutView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUnlockMethodStateChanged old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", new="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    if-ne v1, v2, :cond_0

    .line 625
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsSecure:Z

    if-eq v0, v2, :cond_2

    .line 626
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/keyguard/util/ShortcutManager;->isLeftShortcutForCamera()Z

    move-result v2

    if-nez v2, :cond_1

    .line 627
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateLeftPreview()V

    .line 629
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/keyguard/util/ShortcutManager;->isRightShortcutForCamera()Z

    move-result v2

    if-nez v2, :cond_2

    .line 630
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateRightPreview()V

    .line 615
    :cond_2
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 594
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 595
    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    .line 596
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->showShortcutsIfPossible()V

    .line 593
    :cond_0
    return-void
.end method

.method protected updateCameraVisibility()V
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/keyguard/util/ShortcutManager;->hasShortcutForRight()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->isRightShortcutForCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->shouldDisableShortcut()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->isLeftShortcutForCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->shouldDisableShortcut()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    :cond_1
    :goto_1
    return-void

    .line 377
    :cond_2
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    goto :goto_0

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    goto :goto_1
.end method

.method protected updateLeftAffordanceIcon()V
    .locals 3

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->canLaunchVoiceAssist()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftIsVoiceAssist:Z

    .line 198
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftIsVoiceAssist:Z

    if-eqz v0, :cond_1

    .line 199
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordanceIcon()V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/keyguard/util/ShortcutManager;->hasShortcutForLeft()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->isLeftShortcutForCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->shouldDisableShortcut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    goto :goto_0
.end method

.method protected updateLeftPreview()V
    .locals 3

    .prologue
    .line 215
    const-string/jumbo v0, "KeyguardBottomAreaShortcutView"

    const-string/jumbo v1, "updateLeftPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasPhoneShortcutForLeft()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setShortcutForPhone(Z)V

    .line 218
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    .line 264
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 218
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 214
    return-void
.end method

.method public updateRightPreview()V
    .locals 3

    .prologue
    .line 415
    const-string/jumbo v0, "KeyguardBottomAreaShortcutView"

    const-string/jumbo v1, "updateRightPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasPhoneShortcutForRight()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setShortcutForPhone(Z)V

    .line 418
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    .line 463
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 418
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 414
    return-void
.end method

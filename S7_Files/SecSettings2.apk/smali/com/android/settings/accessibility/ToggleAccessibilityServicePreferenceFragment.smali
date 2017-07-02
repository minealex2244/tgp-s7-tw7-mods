.class public Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;,
        Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;,
        Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;
    }
.end annotation


# static fields
.field public static handleConfirmServiceEnableFlag:Z


# instance fields
.field private KCountry:Ljava/lang/String;

.field private KLanguage:Ljava/lang/String;

.field private TCountry:Ljava/lang/String;

.field private TLanguage:Ljava/lang/String;

.field private isTalkBack:Z

.field private isUniversalSwitch:Z

.field private mAccessibilityHandler:Landroid/os/Handler;

.field private mBixbyCurrentStateId:Ljava/lang/String;

.field private mComponentName:Landroid/content/ComponentName;

.field private mDialog:Landroid/app/Dialog;

.field private mDisableExclusiveOptionsDescription:Ljava/lang/String;

.field private mDisableExclusiveOptionsFlag:I

.field private mDisableExclusiveOptionsMessage:Ljava/lang/String;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSTalkBackDialog:Landroid/app/AlertDialog;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private mShownDialogId:I

.field private talkbackType:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->isTalkBack:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->isUniversalSwitch:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mBixbyCurrentStateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->isTalkBack:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->isUniversalSwitch:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;Z)V
    .locals 0
    .param p1, "confirmed"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->updateSwitchBarToggleSwitch()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnableFlag:Z

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    .line 87
    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->TCountry:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->TLanguage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->KCountry:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->KLanguage:Ljava/lang/String;

    .line 88
    iput-boolean v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->isTalkBack:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->isUniversalSwitch:Z

    .line 90
    iput v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    .line 98
    iput v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDisableExclusiveOptionsFlag:I

    .line 99
    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDialog:Landroid/app/Dialog;

    .line 100
    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSTalkBackDialog:Landroid/app/AlertDialog;

    .line 110
    new-instance v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V

    .line 109
    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    .line 946
    new-instance v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;-><init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mAccessibilityHandler:Landroid/os/Handler;

    .line 994
    new-instance v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;-><init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 69
    return-void
.end method

.method private checkTalkbackTypeByComponentName(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .locals 10
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 876
    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x7f0b02a7

    invoke-virtual {p0, v6, v5}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 877
    .local v1, "infoTitle":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 878
    .local v0, "infoComponentName":Ljava/lang/String;
    const-string/jumbo v2, "com.samsung.android.app.talkback.TalkBackService"

    .line 879
    .local v2, "samsungTalkbackComponentName":Ljava/lang/String;
    const-string/jumbo v3, "com.google.android.marvin.talkback.TalkBackService"

    .line 880
    .local v3, "talkbackComponentName":Ljava/lang/String;
    const-string/jumbo v4, "com.samsung.android.universalswitch.SwitchControlService"

    .line 882
    .local v4, "universalInputComponentName":Ljava/lang/String;
    const-string/jumbo v5, "com.samsung.android.app.talkback.TalkBackService"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 883
    iput v8, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    .line 891
    :goto_0
    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    return v5

    .line 884
    :cond_0
    const-string/jumbo v5, "com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 885
    iput v9, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    goto :goto_0

    .line 886
    :cond_1
    const-string/jumbo v5, "com.samsung.android.universalswitch.SwitchControlService"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 887
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    goto :goto_0

    .line 889
    :cond_2
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    goto :goto_0
.end method

.method public static checkUniversalSwitchStatus(Landroid/content/Context;Z)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isUniversalSwitchToggle"    # Z

    .prologue
    const/4 v5, 0x0

    .line 979
    const-string/jumbo v2, "ToggleAccessibilityServicePreferenceFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkUniversalSwitchStatus(isUniversalSwitchToggle, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const/4 v1, 0x0

    .line 982
    .local v1, "switchCount":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "universal_switch_bluetooth_key_mapped"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 983
    const-string/jumbo v2, "ToggleAccessibilityServicePreferenceFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkUniversalSwitchStatus(switchCount, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "universal_switch_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 985
    .local v0, "isUniversalSwitchEnabled":I
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 986
    const/4 v2, 0x1

    return v2

    .line 988
    :cond_0
    return v5
.end method

.method private createConfirmCredentialReasonMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 737
    const v0, 0x7f0b163f

    .line 738
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 747
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 748
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 747
    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 740
    :sswitch_0
    const v0, 0x7f0b163d

    goto :goto_0

    .line 744
    :sswitch_1
    const v0, 0x7f0b163e

    goto :goto_0

    .line 738
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method

.method private createEnableDialogContentView(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;
    .locals 21
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 489
    const-string/jumbo v18, "layout_inflater"

    .line 488
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 491
    .local v15, "inflater":Landroid/view/LayoutInflater;
    const v18, 0x7f0400e8

    .line 492
    const/16 v19, 0x0

    .line 491
    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 495
    .local v10, "content":Landroid/view/View;
    const v18, 0x7f11034b

    .line 494
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 496
    .local v12, "encryptionWarningView":Landroid/widget/TextView;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->isFullDiskEncrypted()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 497
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 498
    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    .line 497
    const v19, 0x7f0b163b

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 499
    .local v17, "text":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    .end local v17    # "text":Ljava/lang/String;
    :goto_0
    const v18, 0x7f11034c

    .line 505
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 509
    .local v5, "capabilitiesHeaderView":Landroid/widget/TextView;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 510
    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    .line 509
    const v19, 0x7f0b1639

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, "HeaderText":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 512
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\u200f"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 514
    :cond_0
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    const v18, 0x7f11034d

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 521
    .local v6, "capabilitiesView":Landroid/widget/LinearLayout;
    const v18, 0x1090038

    const/16 v19, 0x0

    .line 520
    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 524
    .local v9, "capabilityView":Landroid/view/View;
    const v18, 0x102039c

    .line 523
    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 525
    .local v14, "imageView":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    .line 526
    const v19, 0x10804d0

    .line 525
    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 529
    const v18, 0x10203a0

    .line 528
    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 531
    .local v16, "labelView":Landroid/widget/TextView;
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->setCapabilitiesText(Landroid/widget/TextView;Z)V

    .line 533
    const v18, 0x7f0b1640

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    const v18, 0x10203a1

    .line 535
    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 538
    .local v11, "descriptionView":Landroid/widget/TextView;
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v11, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->setCapabilitiesText(Landroid/widget/TextView;Z)V

    .line 540
    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    const v19, 0x7f0b0245

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 541
    const v18, 0x7f0b01d9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilityInfos()Ljava/util/List;

    move-result-object v4

    .line 550
    .local v4, "capabilities":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;>;"
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 553
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    .line 554
    .local v8, "capabilityCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v8, :cond_3

    .line 555
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    .line 558
    .local v7, "capability":Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    const v18, 0x1090038

    const/16 v19, 0x0

    .line 557
    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 561
    const v18, 0x102039c

    .line 560
    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14    # "imageView":Landroid/widget/ImageView;
    check-cast v14, Landroid/widget/ImageView;

    .line 562
    .restart local v14    # "imageView":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    .line 563
    const v19, 0x10804d0

    .line 562
    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 566
    const v18, 0x10203a0

    .line 565
    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16    # "labelView":Landroid/widget/TextView;
    check-cast v16, Landroid/widget/TextView;

    .line 567
    .restart local v16    # "labelView":Landroid/widget/TextView;
    iget v0, v7, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->titleResId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    const v18, 0x10203a1

    .line 569
    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11    # "descriptionView":Landroid/widget/TextView;
    check-cast v11, Landroid/widget/TextView;

    .line 572
    .restart local v11    # "descriptionView":Landroid/widget/TextView;
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->setCapabilitiesText(Landroid/widget/TextView;Z)V

    .line 573
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v11, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->setCapabilitiesText(Landroid/widget/TextView;Z)V

    .line 575
    iget v0, v7, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->descResId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 554
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 502
    .end local v3    # "HeaderText":Ljava/lang/String;
    .end local v4    # "capabilities":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;>;"
    .end local v5    # "capabilitiesHeaderView":Landroid/widget/TextView;
    .end local v6    # "capabilitiesView":Landroid/widget/LinearLayout;
    .end local v7    # "capability":Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    .end local v8    # "capabilityCount":I
    .end local v9    # "capabilityView":Landroid/view/View;
    .end local v11    # "descriptionView":Landroid/widget/TextView;
    .end local v13    # "i":I
    .end local v14    # "imageView":Landroid/widget/ImageView;
    .end local v16    # "labelView":Landroid/widget/TextView;
    :cond_1
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 544
    .restart local v3    # "HeaderText":Ljava/lang/String;
    .restart local v5    # "capabilitiesHeaderView":Landroid/widget/TextView;
    .restart local v6    # "capabilitiesView":Landroid/widget/LinearLayout;
    .restart local v9    # "capabilityView":Landroid/view/View;
    .restart local v11    # "descriptionView":Landroid/widget/TextView;
    .restart local v14    # "imageView":Landroid/widget/ImageView;
    .restart local v16    # "labelView":Landroid/widget/TextView;
    :cond_2
    const v18, 0x7f0b1641

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 580
    .restart local v4    # "capabilities":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;>;"
    .restart local v8    # "capabilityCount":I
    .restart local v13    # "i":I
    :cond_3
    return-object v10
.end method

.method private static forceStopServiceIfNeeded(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 970
    const-string/jumbo v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 971
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 969
    return-void
.end method

.method private getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 8

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 240
    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v5

    .line 242
    .local v5, "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 243
    .local v4, "serviceInfoCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 244
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 245
    .local v3, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 247
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 248
    iget-object v6, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 247
    if-eqz v6, :cond_0

    .line 249
    return-object v3

    .line 251
    :catch_0
    move-exception v0

    .line 243
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_1
    const/4 v6, 0x0

    return-object v6
.end method

.method private static getServiceTaskName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 959
    const-string/jumbo v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 961
    .local v0, "manager":Landroid/app/ActivityManager;
    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "service$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 962
    .local v1, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v3, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 963
    const/4 v3, 0x1

    return v3

    .line 966
    .end local v1    # "service":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private handleConfirmServiceEnabled(Z)V
    .locals 3
    .param p1, "confirmed"    # Z

    .prologue
    .line 724
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onCheckingstatus(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 726
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "checked"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 727
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 728
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnableFlag:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private isFullDiskEncrypted()Z
    .locals 1

    .prologue
    .line 484
    invoke-static {}, Landroid/os/storage/StorageManager;->isNonDefaultBlockEncrypted()Z

    move-result v0

    return v0
.end method

.method private setCapabilitiesText(Landroid/widget/TextView;Z)V
    .locals 4
    .param p1, "text"    # Landroid/widget/TextView;
    .param p2, "isTypefaceBold"    # Z

    .prologue
    const/4 v3, 0x0

    .line 855
    if-eqz p2, :cond_0

    const-string/jumbo v2, "sec-roboto-light"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 859
    .local v1, "tf":Landroid/graphics/Typeface;
    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 860
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0131

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 861
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a024e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    :goto_1
    return-void

    .line 856
    .end local v1    # "tf":Landroid/graphics/Typeface;
    :cond_0
    const-string/jumbo v2, "sec-roboto-light"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .restart local v1    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    .line 862
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_1
.end method

.method private updateSwitchBarToggleSwitch()V
    .locals 4

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 466
    const-string/jumbo v3, "enabled_accessibility_services"

    .line 465
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "settingValue":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 468
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 469
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 471
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 464
    :cond_0
    return-void

    .line 467
    :cond_1
    const/4 v0, 0x0

    .local v0, "checked":Z
    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x4

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 585
    if-ne p1, v1, :cond_0

    .line 586
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 587
    sput-boolean v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnableFlag:Z

    .line 592
    const-string/jumbo v0, "ToggleAccessibilityServicePreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult OK and isDeviceEncrypted checked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->isFullDiskEncrypted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->isFullDiskEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    .line 595
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 596
    const-string/jumbo v1, "require_password_to_decrypt"

    .line 595
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto :goto_0
.end method

.method public onCheckingstatus(Z)Z
    .locals 10
    .param p1, "enabled"    # Z

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 895
    if-eqz p1, :cond_4

    .line 896
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 899
    .local v1, "conf":Landroid/content/res/Configuration;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v5, :cond_0

    .line 900
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    .line 901
    return v7

    .line 903
    :cond_0
    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mTtsEngine:Landroid/speech/tts/TtsEngines;

    iget-object v6, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v6}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->TCountry:Ljava/lang/String;

    .line 904
    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mTtsEngine:Landroid/speech/tts/TtsEngines;

    iget-object v6, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v6}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->TLanguage:Ljava/lang/String;

    .line 905
    iget-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->KCountry:Ljava/lang/String;

    .line 906
    iget-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->KLanguage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    .line 919
    .local v3, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v3, :cond_1

    return v8

    .line 907
    .end local v3    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catch_0
    move-exception v2

    .line 908
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 921
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->checkTalkbackTypeByComponentName(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 922
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->isTalkBackExclusiveOptionEnabled(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v0

    .line 923
    .local v0, "bundle_data":Landroid/os/Bundle;
    const-string/jumbo v5, "is_enabled"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 924
    .local v4, "is_enabled":Z
    const-string/jumbo v5, "dialog_description"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDisableExclusiveOptionsDescription:Ljava/lang/String;

    .line 925
    const-string/jumbo v5, "dialog_content"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDisableExclusiveOptionsMessage:Ljava/lang/String;

    .line 926
    const-string/jumbo v5, "option_flag"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDisableExclusiveOptionsFlag:I

    .line 927
    if-eqz v4, :cond_2

    .line 928
    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    .line 929
    return v7

    .line 933
    .end local v0    # "bundle_data":Landroid/os/Bundle;
    .end local v4    # "is_enabled":Z
    :cond_2
    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v5

    if-gez v5, :cond_3

    .line 934
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    .line 935
    return v7

    .line 936
    :cond_3
    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->TCountry:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->KCountry:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->TLanguage:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->KLanguage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 942
    .end local v1    # "conf":Landroid/content/res/Configuration;
    .end local v3    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_4
    return v8

    .line 937
    .restart local v1    # "conf":Landroid/content/res/Configuration;
    .restart local v3    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_5
    invoke-virtual {p0, v9}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    .line 938
    return v7
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 14
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 607
    packed-switch p2, :pswitch_data_0

    .line 717
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    .line 610
    :pswitch_0
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 611
    :cond_0
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 612
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->isFullDiskEncrypted()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 613
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->createConfirmCredentialReasonMessage()Ljava/lang/String;

    move-result-object v8

    .line 614
    .local v8, "title":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->createIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    .line 616
    .local v6, "intent":Landroid/content/Intent;
    const/4 v10, 0x1

    .line 615
    invoke-virtual {p0, v6, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 605
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "title":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 618
    :cond_2
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto :goto_0

    .line 621
    :cond_3
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto :goto_0

    .line 623
    :cond_4
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    .line 624
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    const/4 v1, 0x1

    .line 626
    .local v1, "checked":Z
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 627
    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->context:Landroid/content/Context;

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 635
    :goto_2
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v10, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 636
    .local v4, "finger_air_view_changed":Landroid/content/Intent;
    const-string/jumbo v10, "isEnable"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 637
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v11}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 638
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "multi_window_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 641
    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v10, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 642
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "checked"

    invoke-virtual {v10, v11, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 643
    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v10, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 624
    .end local v1    # "checked":Z
    .end local v4    # "finger_air_view_changed":Landroid/content/Intent;
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "checked":Z
    goto :goto_1

    .line 629
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_hovering"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 630
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "finger_air_view"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 631
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "finger_air_view_highlight"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 644
    .end local v1    # "checked":Z
    :cond_7
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_c

    .line 645
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_8

    const/4 v1, 0x1

    .line 646
    .restart local v1    # "checked":Z
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 647
    .local v2, "conf":Landroid/content/res/Configuration;
    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v11, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v10

    if-gez v10, :cond_9

    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_9

    .line 648
    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    goto/16 :goto_0

    .line 645
    .end local v1    # "checked":Z
    .end local v2    # "conf":Landroid/content/res/Configuration;
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "checked":Z
    goto :goto_3

    .line 649
    .restart local v2    # "conf":Landroid/content/res/Configuration;
    :cond_9
    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->TCountry:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->KCountry:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->TLanguage:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->KLanguage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 652
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDisableExclusiveOptionsFlag:I

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 654
    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v10, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 655
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "checked"

    invoke-virtual {v10, v11, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 661
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 662
    .local v7, "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 663
    .local v3, "data":Landroid/os/Bundle;
    const-string/jumbo v10, "checked_val"

    invoke-virtual {v3, v10, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 664
    const/4 v10, 0x1

    iput v10, v7, Landroid/os/Message;->what:I

    .line 665
    invoke-virtual {v7, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 666
    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mAccessibilityHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x1f4

    invoke-virtual {v10, v7, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 649
    .end local v3    # "data":Landroid/os/Bundle;
    .end local v7    # "msg":Landroid/os/Message;
    :cond_b
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_a

    .line 650
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    goto/16 :goto_0

    .line 668
    .end local v1    # "checked":Z
    .end local v2    # "conf":Landroid/content/res/Configuration;
    :cond_c
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_e

    .line 669
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_d

    const/4 v1, 0x1

    .line 670
    .restart local v1    # "checked":Z
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDisableExclusiveOptionsFlag:I

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 672
    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v10, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 673
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "checked"

    invoke-virtual {v10, v11, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 674
    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v10, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 669
    .end local v1    # "checked":Z
    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "checked":Z
    goto :goto_4

    .line 675
    .end local v1    # "checked":Z
    :cond_e
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_10

    .line 676
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_f

    const/4 v1, 0x1

    .line 677
    .restart local v1    # "checked":Z
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDisableExclusiveOptionsFlag:I

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 678
    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mTtsEngine:Landroid/speech/tts/TtsEngines;

    iget-object v11, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v11}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11, v12}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/util/Locale;)V

    .line 680
    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v10, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 681
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "checked"

    invoke-virtual {v10, v11, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 682
    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v10, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 676
    .end local v1    # "checked":Z
    :cond_f
    const/4 v1, 0x0

    .restart local v1    # "checked":Z
    goto :goto_5

    .line 683
    .end local v1    # "checked":Z
    :cond_10
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_1

    .line 685
    const-string/jumbo v0, "com.samsung.android.universalswitch.preferencesettings.ADDSWITCH"

    .line 686
    .local v0, "action":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 687
    .local v9, "universalInputSettings":Landroid/content/Intent;
    invoke-virtual {p0, v9}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 688
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0

    .line 693
    .end local v0    # "action":Ljava/lang/String;
    .end local v9    # "universalInputSettings":Landroid/content/Intent;
    :pswitch_1
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_11

    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_1

    .line 694
    :cond_11
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto/16 :goto_0

    .line 698
    :pswitch_2
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_12

    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_13

    .line 700
    :cond_12
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_16

    .line 701
    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 702
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "checked"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 703
    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 699
    :cond_13
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x7

    if-eq v10, v11, :cond_12

    .line 707
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_14

    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_1

    .line 708
    :cond_14
    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_15

    iget v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_17

    :cond_15
    const/4 v1, 0x1

    .line 709
    .restart local v1    # "checked":Z
    :goto_6
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v10, "com.android.settings.TTS_SETTINGS"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 710
    .local v5, "i":Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 711
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0

    .line 705
    .end local v1    # "checked":Z
    .end local v5    # "i":Landroid/content/Intent;
    :cond_16
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto/16 :goto_0

    .line 708
    :cond_17
    const/4 v1, 0x0

    .restart local v1    # "checked":Z
    goto :goto_6

    .line 607
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 141
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 138
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 20
    .param p1, "dialogId"    # I

    .prologue
    .line 261
    const/4 v15, 0x0

    .line 262
    .local v15, "title":Ljava/lang/CharSequence;
    const/4 v13, 0x0

    .line 263
    .local v13, "message":Ljava/lang/CharSequence;
    const/4 v14, 0x0

    .line 265
    .local v14, "temp_title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDialog:Landroid/app/Dialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDialog:Landroid/app/Dialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->dismiss()V

    .line 269
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 417
    new-instance v16, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v16 .. v16}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v16

    .line 271
    :pswitch_0
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v11

    .line 274
    .local v11, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v11, :cond_1

    .line 275
    const/16 v16, 0x0

    return-object v16

    .line 278
    :cond_1
    new-instance v16, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 283
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->createEnableDialogContentView(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;

    move-result-object v17

    .line 278
    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 284
    const/16 v17, 0x1

    .line 278
    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 285
    const v17, 0x104000a

    .line 278
    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 286
    const/high16 v17, 0x1040000

    .line 278
    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 289
    .local v3, "ad":Landroid/app/AlertDialog;
    new-instance v9, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$4;-><init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V

    .line 304
    .local v9, "filterTouchListener":Landroid/view/View$OnTouchListener;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->create()V

    .line 305
    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 306
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDialog:Landroid/app/Dialog;

    .line 307
    return-object v3

    .line 310
    .end local v3    # "ad":Landroid/app/AlertDialog;
    .end local v9    # "filterTouchListener":Landroid/view/View$OnTouchListener;
    .end local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :pswitch_1
    const/16 v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 311
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v11

    .line 312
    .restart local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v11, :cond_2

    .line 313
    const/16 v16, 0x0

    return-object v16

    .line 315
    :cond_2
    new-instance v16, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 320
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 321
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    .line 320
    const v18, 0x7f0b1643

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 315
    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 322
    const/16 v17, 0x1

    .line 315
    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 323
    const v17, 0x104000a

    .line 315
    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 324
    const/high16 v17, 0x1040000

    .line 315
    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    return-object v16

    .line 329
    .end local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :pswitch_2
    const/16 v16, 0x3

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 330
    const v16, 0x7f0b0be4

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 331
    .local v15, "title":Ljava/lang/CharSequence;
    const v16, 0x7f0b0be5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 421
    .local v13, "message":Ljava/lang/CharSequence;
    :goto_0
    const/16 v16, 0x3

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_d

    .line 422
    new-instance v16, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 425
    const/16 v17, 0x1

    .line 422
    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 426
    const v17, 0x7f0b1822

    .line 422
    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 427
    const/high16 v17, 0x1040000

    .line 422
    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    return-object v16

    .line 334
    .local v13, "message":Ljava/lang/CharSequence;
    .local v15, "title":Ljava/lang/CharSequence;
    :pswitch_3
    const/16 v16, 0x4

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 335
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    move/from16 v16, v0

    if-nez v16, :cond_4

    .line 336
    const v16, 0x7f0b02a9

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 337
    .local v15, "title":Ljava/lang/CharSequence;
    const v16, 0x7f0b02aa

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 355
    .local v13, "message":Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    new-instance v16, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 358
    const/16 v17, 0x1

    .line 355
    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 359
    const/high16 v17, 0x1040000

    .line 355
    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 360
    const v17, 0x7f0b158c

    .line 355
    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 361
    const v17, 0x7f0b0425

    .line 355
    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    return-object v16

    .line 338
    .local v13, "message":Ljava/lang/CharSequence;
    .local v15, "title":Ljava/lang/CharSequence;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 339
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const v17, 0x7f0b0246

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    const v17, 0x7f0b05e5

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 340
    .local v15, "title":Ljava/lang/CharSequence;
    const v16, 0x7f0b02aa

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    .local v13, "message":Ljava/lang/CharSequence;
    goto :goto_1

    .line 342
    .local v13, "message":Ljava/lang/CharSequence;
    .local v15, "title":Ljava/lang/CharSequence;
    :cond_5
    const v16, 0x7f0b02a8

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 343
    .local v15, "title":Ljava/lang/CharSequence;
    const v16, 0x7f0b02aa

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 344
    .local v13, "message":Ljava/lang/CharSequence;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v11

    .line 345
    .restart local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v11, :cond_6

    .line 346
    const/16 v16, 0x0

    return-object v16

    .line 347
    :cond_6
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v17

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 347
    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    const v17, 0x7f0b02a7

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 350
    .local v12, "infoTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 351
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v12, v16, v17

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->TLanguage:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aput-object v17, v16, v18

    .line 351
    const v17, 0x7f0b02ae

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 364
    .end local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v12    # "infoTitle":Ljava/lang/String;
    .local v13, "message":Ljava/lang/CharSequence;
    .local v15, "title":Ljava/lang/CharSequence;
    :pswitch_4
    const/16 v16, 0x5

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 365
    const v16, 0x7f0b02ab

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 366
    .local v5, "defaultLanguage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    move/from16 v16, v0

    if-nez v16, :cond_8

    .line 367
    const v16, 0x7f0b02a9

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 368
    .local v15, "title":Ljava/lang/CharSequence;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    const v17, 0x7f0b02ad

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 386
    .local v13, "message":Ljava/lang/CharSequence;
    :cond_7
    :goto_2
    new-instance v16, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 389
    const/16 v17, 0x1

    .line 386
    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 390
    const/high16 v17, 0x1040000

    .line 386
    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 391
    const v17, 0x7f0b158c

    .line 386
    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 392
    const v17, 0x7f0b0425

    .line 386
    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    return-object v16

    .line 369
    .local v13, "message":Ljava/lang/CharSequence;
    .local v15, "title":Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 370
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const v17, 0x7f0b0246

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    const v17, 0x7f0b05e5

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 371
    .local v15, "title":Ljava/lang/CharSequence;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const v17, 0x7f0b0246

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    const/16 v17, 0x1

    aput-object v5, v16, v17

    const v17, 0x7f0b02ae

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .local v13, "message":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 373
    .local v13, "message":Ljava/lang/CharSequence;
    .local v15, "title":Ljava/lang/CharSequence;
    :cond_9
    const v16, 0x7f0b02a8

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 374
    .local v15, "title":Ljava/lang/CharSequence;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    const v17, 0x7f0b02ac

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 375
    .local v13, "message":Ljava/lang/CharSequence;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v11

    .line 376
    .restart local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v11, :cond_a

    .line 377
    const/16 v16, 0x0

    return-object v16

    .line 378
    :cond_a
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v17

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 378
    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    const v17, 0x7f0b02a7

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 381
    .restart local v12    # "infoTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 382
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v12, v16, v17

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->TLanguage:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aput-object v17, v16, v18

    .line 382
    const v17, 0x7f0b02ae

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 395
    .end local v5    # "defaultLanguage":Ljava/lang/String;
    .end local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v12    # "infoTitle":Ljava/lang/String;
    .local v13, "message":Ljava/lang/CharSequence;
    .local v15, "title":Ljava/lang/CharSequence;
    :pswitch_5
    const/16 v16, 0x6

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 396
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v11

    .line 397
    .restart local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v11, :cond_b

    .line 398
    const/16 v16, 0x0

    return-object v16

    .line 400
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->talkbackType:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 402
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v17

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 402
    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    const v17, 0x7f0b05e5

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 408
    .local v15, "title":Ljava/lang/CharSequence;
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDisableExclusiveOptionsMessage:Ljava/lang/String;

    .local v13, "message":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 405
    .local v13, "message":Ljava/lang/CharSequence;
    .local v15, "title":Ljava/lang/CharSequence;
    :cond_c
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 406
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    .line 405
    const v17, 0x7f0b02a7

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .local v15, "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 411
    .end local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .local v15, "title":Ljava/lang/CharSequence;
    :pswitch_6
    const/16 v16, 0x7

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 412
    const v16, 0x7f0b023e

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 413
    .local v15, "title":Ljava/lang/CharSequence;
    const v16, 0x7f0b023f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    .local v13, "message":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 429
    :cond_d
    const/16 v16, 0x6

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_e

    .line 430
    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x1030132

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v4, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 431
    .local v4, "ct":Landroid/view/ContextThemeWrapper;
    const-string/jumbo v16, "layout_inflater"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 432
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v16, 0x7f04001b

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 433
    .local v8, "dialogView":Landroid/view/ViewGroup;
    const v16, 0x7f11010d

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 434
    .local v7, "descText":Landroid/widget/TextView;
    const v16, 0x7f11010e

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 435
    .local v6, "descList":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDisableExclusiveOptionsDescription:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    new-instance v16, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 440
    const/16 v17, 0x1

    .line 437
    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 441
    const v17, 0x104000a

    .line 437
    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 442
    const/high16 v17, 0x1040000

    .line 437
    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSTalkBackDialog:Landroid/app/AlertDialog;

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSTalkBackDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    return-object v16

    .line 445
    .end local v4    # "ct":Landroid/view/ContextThemeWrapper;
    .end local v6    # "descList":Landroid/widget/TextView;
    .end local v7    # "descText":Landroid/widget/TextView;
    .end local v8    # "dialogView":Landroid/view/ViewGroup;
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    :cond_e
    const/16 v16, 0x7

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_f

    .line 446
    new-instance v16, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 449
    const/16 v17, 0x1

    .line 446
    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 450
    const v17, 0x7f0b023e

    .line 446
    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 451
    const v17, 0x7f0b153d

    .line 446
    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    return-object v16

    .line 454
    :cond_f
    new-instance v16, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 457
    const/16 v17, 0x1

    .line 454
    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 458
    const v17, 0x104000a

    .line 454
    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    return-object v16

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 869
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onDestroy()V

    .line 870
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 872
    :cond_0
    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 868
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 753
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 754
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$5;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$5;-><init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 752
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 185
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSTalkBackDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSTalkBackDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSTalkBackDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 189
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onPause()V

    .line 182
    return-void
.end method

.method public onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v9, 0x0

    .line 194
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 195
    .local v8, "toggledService":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v8, p2}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getMetricsCategory()I

    move-result v1

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1002a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 201
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 202
    if-eqz p2, :cond_3

    const/16 v4, 0x3e8

    :goto_0
    int-to-long v4, v4

    .line 198
    invoke-static/range {v0 .. v5}, Lcom/android/settings/Utils;->insertEventwithDetailValueLog(Landroid/content/Context;IILjava/lang/String;J)V

    .line 205
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.universalswitch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.settings.action.universalswitch_toggled"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v6, v1}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 211
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_0
    sget-boolean v0, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v0, :cond_1

    .line 212
    if-eqz p2, :cond_1

    const-string/jumbo v0, "com.samsung.android.app.talkback"

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "device_provisioned"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v7, 0x1

    .line 214
    .local v7, "isSetupWizard":Z
    :goto_1
    if-eqz v7, :cond_5

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.app.talkback"

    const-string/jumbo v2, "VAON"

    const-string/jumbo v3, "SWAS"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .end local v7    # "isSetupWizard":Z
    :cond_1
    :goto_2
    if-nez p2, :cond_2

    .line 223
    const-string/jumbo v0, "ToggleAccessibilityServicePreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "STOP package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string/jumbo v0, "ToggleAccessibilityServicePreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "STOP class   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getServiceTaskName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->forceStopServiceIfNeeded(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    const-string/jumbo v0, "ToggleAccessibilityServicePreferenceFragment"

    const-string/jumbo v1, "force stop service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v4, v9

    .line 202
    goto/16 :goto_0

    :cond_4
    move v7, v9

    .line 213
    goto :goto_1

    .line 217
    .restart local v7    # "isSetupWizard":Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.app.talkback"

    const-string/jumbo v2, "VAON"

    const-string/jumbo v3, "AS"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 229
    .end local v7    # "isSetupWizard":Z
    :cond_6
    const-string/jumbo v0, "ToggleAccessibilityServicePreferenceFragment"

    const-string/jumbo v1, "stop service normally"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 829
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    .line 831
    const-string/jumbo v3, "settings_title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 833
    .local v2, "settingsTitle":Ljava/lang/String;
    const-string/jumbo v3, "settings_component_name"

    .line 832
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 834
    .local v0, "settingsComponentName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 849
    :cond_0
    :goto_0
    const-string/jumbo v3, "component_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 828
    return-void

    .line 835
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 835
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 837
    .local v1, "settingsIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 838
    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    .line 839
    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 841
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "com.google.android.marvin.talkback"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 842
    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->setHasOptionsMenu(Z)V

    goto :goto_0

    .line 845
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 146
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 147
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->updateSwitchBarToggleSwitch()V

    .line 150
    const-string/jumbo v3, "com.samsung.android.universalswitch"

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "UniversalSwitchSettings"

    .line 149
    :goto_0
    iput-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mBixbyCurrentStateId:Ljava/lang/String;

    .line 151
    sget-boolean v3, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnableFlag:Z

    if-eqz v3, :cond_0

    .line 152
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    .line 154
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 156
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, ":android:show_fragment"

    const-class v4, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getMetricsCategory()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 165
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 166
    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    .line 165
    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    iget-object v6, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 178
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    .line 145
    return-void

    .line 150
    :cond_3
    const-string/jumbo v3, "VoiceAssistant"

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    .line 169
    .local v1, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v1, :cond_2

    .line 172
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 173
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    goto :goto_1
.end method

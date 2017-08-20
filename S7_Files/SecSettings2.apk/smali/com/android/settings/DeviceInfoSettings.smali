.class public Lcom/android/settings/DeviceInfoSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$ConfirmationDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DeviceInfoSettings$1;,
        Lcom/android/settings/DeviceInfoSettings$2;,
        Lcom/android/settings/DeviceInfoSettings$3;,
        Lcom/android/settings/DeviceInfoSettings$4;,
        Lcom/android/settings/DeviceInfoSettings$5;,
        Lcom/android/settings/DeviceInfoSettings$6;,
        Lcom/android/settings/DeviceInfoSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static sSalesCode:Ljava/lang/String;

.field private static securitySWVersion:Ljava/lang/String;

.field private static statusForChnRoot:Z


# instance fields
.field private isSysScopeStatus:I

.field private mBixbyMsgHandler:Landroid/os/Handler;

.field mContext:Landroid/content/Context;

.field private mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mDebuggingFeaturesDisallowedBySystem:Z

.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field private mDeviceName:Landroid/preference/Preference;

.field private mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

.field private final mDeviceNameObserver:Landroid/database/ContentObserver;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mFunDisallowedBySystem:Z

.field mHits:[J

.field private mOnlineHelpPref:Landroid/preference/Preference;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mSysScopeReceiver:Landroid/content/BroadcastReceiver;

.field private mUm:Landroid/os/UserManager;

.field private mUserManager:Landroid/os/UserManager;

.field variantName:[[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings/DeviceInfoSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mBixbyMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/DeviceInfoSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mOnlineHelpPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get3()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/DeviceInfoSettings;->statusForChnRoot:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/DeviceInfoSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/DeviceInfoSettings;->isSysScopeStatus:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/DeviceInfoSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->changeSysScopeStatus()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/DeviceInfoSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 278
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/DeviceInfoSettings;->statusForChnRoot:Z

    .line 793
    new-instance v0, Lcom/android/settings/DeviceInfoSettings$3;

    invoke-direct {v0}, Lcom/android/settings/DeviceInfoSettings$3;-><init>()V

    .line 792
    sput-object v0, Lcom/android/settings/DeviceInfoSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 805
    new-instance v0, Lcom/android/settings/DeviceInfoSettings$4;

    invoke-direct {v0}, Lcom/android/settings/DeviceInfoSettings$4;-><init>()V

    .line 804
    sput-object v0, Lcom/android/settings/DeviceInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 1647
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/settings/DeviceInfoSettings;->securitySWVersion:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 197
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 222
    new-array v0, v6, [J

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mOnlineHelpPref:Landroid/preference/Preference;

    .line 296
    const/16 v0, 0xf

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ATL"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Spain"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    .line 297
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VDI"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Ireland"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    .line 298
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VDE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Ireland(Prepaid)"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    .line 299
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "CNX"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Romania"

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    .line 300
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VD2"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Germany"

    aput-object v2, v1, v4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 301
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VDR"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Germany(Prepaid)"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 302
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VDC"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Czech Republic"

    aput-object v2, v1, v4

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 303
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VOD"

    aput-object v2, v1, v3

    const-string/jumbo v2, "UK"

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 304
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VOP"

    aput-object v2, v1, v3

    const-string/jumbo v2, "UK(Prepaid)"

    aput-object v2, v1, v4

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 305
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCL"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Portugal"

    aput-object v2, v1, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 306
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VDH"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Hungary"

    aput-object v2, v1, v4

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 307
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VDF"

    aput-object v2, v1, v3

    const-string/jumbo v2, "The Netherlands"

    aput-object v2, v1, v4

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 308
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VDP"

    aput-object v2, v1, v3

    const-string/jumbo v2, "The Netherlands(Prepaid)"

    aput-object v2, v1, v4

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 309
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VGR"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Greece"

    aput-object v2, v1, v4

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 310
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "OMN"

    aput-object v2, v1, v3

    const-string/jumbo v2, "ITALY"

    aput-object v2, v1, v4

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 296
    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->variantName:[[Ljava/lang/String;

    .line 321
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/DeviceInfoSettings;->isSysScopeStatus:I

    .line 323
    new-instance v0, Lcom/android/settings/DeviceInfoSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DeviceInfoSettings$1;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    .line 338
    new-instance v0, Lcom/android/settings/DeviceInfoSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DeviceInfoSettings$2;-><init>(Lcom/android/settings/DeviceInfoSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameObserver:Landroid/database/ContentObserver;

    .line 1975
    new-instance v0, Lcom/android/settings/DeviceInfoSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/DeviceInfoSettings$5;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 2030
    new-instance v0, Lcom/android/settings/DeviceInfoSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/DeviceInfoSettings$6;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mBixbyMsgHandler:Landroid/os/Handler;

    .line 197
    return-void
.end method

.method private changeSysScopeStatus()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 1615
    const-string/jumbo v3, "status_info_root"

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    .line 1616
    .local v2, "mAvoidRootPreference":Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;
    if-nez v2, :cond_0

    .line 1617
    return-void

    .line 1619
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    div-long v0, v6, v10

    .line 1620
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    div-long v4, v6, v10

    .line 1621
    .local v4, "ut":J
    iget v3, p0, Lcom/android/settings/DeviceInfoSettings;->isSysScopeStatus:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    const-wide/16 v6, 0x78

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 1622
    iput v9, p0, Lcom/android/settings/DeviceInfoSettings;->isSysScopeStatus:I

    .line 1623
    invoke-virtual {v2, v8}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setAvoidRootVisible(Z)V

    .line 1614
    :goto_0
    return-void

    .line 1625
    :cond_1
    iget v3, p0, Lcom/android/settings/DeviceInfoSettings;->isSysScopeStatus:I

    if-eq v3, v9, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->checkRootingCondition()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1626
    :cond_2
    invoke-virtual {v2, v8}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setAvoidRootVisible(Z)V

    goto :goto_0

    .line 1628
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setAvoidRootVisible(Z)V

    goto :goto_0
.end method

.method private getASKSVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1636
    const-string/jumbo v1, "/data/system/.aasa/AASApolicy/AASAPolicyVersion.txt"

    .line 1637
    .local v1, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1638
    .local v3, "verFile":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 1640
    .local v0, "br":Ljava/io/BufferedReader;
    const-string/jumbo v2, "000000"

    .line 1641
    .local v2, "retVal":Ljava/lang/String;
    const-string/jumbo v4, "security.ASKS.policy_version"

    const-string/jumbo v5, "000000"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1643
    return-object v2
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "preference"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 712
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 718
    const-string/jumbo v3, "\' preference"

    .line 717
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendFeedback()V
    .locals 3

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/DeviceInfoUtils;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 753
    .local v1, "reporterPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 754
    return-void

    .line 756
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 757
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 758
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/DeviceInfoSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 751
    return-void
.end method

.method private setDeviceSpecStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1961
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1962
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1963
    const-string/jumbo v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDeviceSpecStringSummary "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    :goto_0
    return-void

    .line 1965
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1966
    const-string/jumbo v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removePreference(empty) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1968
    :catch_0
    move-exception v0

    .line 1969
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1970
    const-string/jumbo v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removePreference "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 734
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :goto_0
    return-void

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 737
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b1030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 736
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 743
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 745
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b1030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 744
    invoke-static {p2, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 743
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :goto_0
    return-void

    .line 746
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method private showKnoxVersion()V
    .locals 30

    .prologue
    .line 1712
    const-string/jumbo v10, ""

    .line 1713
    .local v10, "knoxVersion":Ljava/lang/String;
    const-string/jumbo v9, ""

    .line 1716
    .local v9, "knoxMajorVersion":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_0

    .line 1717
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1719
    .local v24, "version":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 1720
    .local v11, "last":C
    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v13

    .line 1721
    .local v13, "last_str":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1723
    .local v12, "last_int":I
    if-lez v12, :cond_13

    .line 1724
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b079b

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1731
    :goto_0
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1740
    .end local v11    # "last":C
    .end local v12    # "last_int":I
    .end local v13    # "last_str":Ljava/lang/String;
    .end local v24    # "version":Ljava/lang/String;
    :cond_0
    :goto_1
    :try_start_1
    const-string/jumbo v27, "enterprise_policy_new"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 1741
    .local v5, "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSdkVer()Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_1

    .line 1742
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b079e

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSdkVer()Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1743
    .local v21, "standardVersion":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 1752
    .end local v5    # "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .end local v21    # "standardVersion":Ljava/lang/String;
    :cond_1
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_2

    .line 1753
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b079f

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1754
    .local v16, "premiumVersion":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v10

    .line 1763
    .end local v16    # "premiumVersion":Ljava/lang/String;
    :cond_2
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getSdkVersion()Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->getInternalSdkVersion()Ljava/lang/String;

    move-result-object v3

    .line 1764
    .local v3, "customizationVersion":Ljava/lang/String;
    const-string/jumbo v27, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    .line 1765
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b07a3

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1766
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v10

    .line 1775
    .end local v3    # "customizationVersion":Ljava/lang/String;
    :cond_3
    :goto_4
    :try_start_4
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_4

    .line 1776
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b079d

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1777
    .local v2, "containerVersion":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v10

    .line 1786
    .end local v2    # "containerVersion":Ljava/lang/String;
    :cond_4
    :goto_5
    :try_start_5
    const-string/jumbo v27, ""

    const-string/jumbo v28, "net.knoxisl.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_5

    .line 1787
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b07a7

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "net.knoxisl.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1788
    .local v7, "imVersion":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v10

    .line 1797
    .end local v7    # "imVersion":Ljava/lang/String;
    :cond_5
    :goto_6
    :try_start_6
    const-string/jumbo v27, ""

    const-string/jumbo v28, "net.knoxscep.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    .line 1798
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b07a6

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "net.knoxscep.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1799
    .local v17, "scepVersion":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v10

    .line 1808
    .end local v17    # "scepVersion":Ljava/lang/String;
    :cond_6
    :goto_7
    :try_start_7
    const-string/jumbo v27, ""

    const-string/jumbo v28, "sys.enterprise.billing.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_7

    .line 1809
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b07a1

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "sys.enterprise.billing.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1810
    .local v6, "enterpriseBillingVersion":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v10

    .line 1819
    .end local v6    # "enterpriseBillingVersion":Ljava/lang/String;
    :cond_7
    :goto_8
    :try_start_8
    const-string/jumbo v27, ""

    const-string/jumbo v28, "sys.enterprise.otp.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_8

    .line 1820
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b07a2

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "sys.enterprise.otp.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1821
    .local v15, "otpVersion":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v10

    .line 1830
    .end local v15    # "otpVersion":Ljava/lang/String;
    :cond_8
    :goto_9
    :try_start_9
    const-string/jumbo v27, ""

    invoke-static {}, Landroid/os/SELinux;->getSEAndroidVersion()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_9

    .line 1831
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b07a4

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {}, Landroid/os/SELinux;->getSEAndroidVersion()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1832
    .local v19, "seAndroidVersion":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v10

    .line 1841
    .end local v19    # "seAndroidVersion":Ljava/lang/String;
    :cond_9
    :goto_a
    :try_start_a
    const-string/jumbo v27, ""

    const-string/jumbo v28, "net.knoxsso.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_a

    .line 1842
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b07a5

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "net.knoxsso.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1843
    .local v20, "ssoVersion":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    move-result-object v10

    .line 1852
    .end local v20    # "ssoVersion":Ljava/lang/String;
    :cond_a
    :goto_b
    :try_start_b
    const-string/jumbo v27, ""

    const-string/jumbo v28, "net.knox.shareddevice.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_b

    .line 1853
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b07a8

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "net.knox.shareddevice.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1854
    .local v18, "sdVersion":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    move-result-object v10

    .line 1864
    .end local v18    # "sdVersion":Ljava/lang/String;
    :cond_b
    :goto_c
    :try_start_c
    const-string/jumbo v27, ""

    const-string/jumbo v28, "ro.config.timaversion"

    const-string/jumbo v29, "No Policy Version"

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_10

    .line 1867
    const-string/jumbo v27, "18"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1868
    .local v14, "mdm_config_version":I
    const-string/jumbo v27, "3.0"

    const-string/jumbo v28, "ro.config.timaversion"

    const-string/jumbo v29, "No Policy Version"

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_16

    const/16 v27, 0xe

    move/from16 v0, v27

    if-lt v14, v0, :cond_16

    .line 1869
    const/16 v25, 0x0

    .line 1871
    .local v25, "version_fragmenting":I
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v27

    if-ltz v27, :cond_14

    .line 1872
    const-string/jumbo v22, "3.3"

    .line 1875
    .local v22, "timaMajorVersion":Ljava/lang/String;
    :goto_d
    const-string/jumbo v27, "true"

    const-string/jumbo v28, "ro.config.dmverity"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 1869
    const/16 v27, 0x0

    .line 1876
    add-int/lit8 v25, v27, 0x1

    .line 1877
    :cond_c
    const-string/jumbo v27, "true"

    const-string/jumbo v28, "ro.config.rkp"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 1878
    add-int/lit8 v25, v25, 0x2

    .line 1879
    :cond_d
    const-string/jumbo v27, "true"

    const-string/jumbo v28, "ro.config.kap"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 1880
    add-int/lit8 v25, v25, 0x4

    .line 1881
    :cond_e
    const-string/jumbo v27, "true"

    const-string/jumbo v28, "ro.config.kap_default_on"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_f

    .line 1882
    add-int/lit8 v25, v25, 0x8

    .line 1883
    :cond_f
    const/16 v27, 0xa

    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_15

    .line 1884
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b079c

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ".00"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1890
    .end local v22    # "timaMajorVersion":Ljava/lang/String;
    .end local v25    # "version_fragmenting":I
    .local v23, "timaVersion":Ljava/lang/String;
    :goto_e
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    move-result-object v10

    .line 1899
    .end local v14    # "mdm_config_version":I
    .end local v23    # "timaVersion":Ljava/lang/String;
    :cond_10
    :goto_f
    :try_start_d
    const-string/jumbo v27, ""

    const-string/jumbo v28, "net.knoxvpn.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_11

    .line 1900
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b07a0

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "net.knoxvpn.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1901
    .local v26, "vpnVersion":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    move-result-object v10

    .line 1908
    .end local v26    # "vpnVersion":Ljava/lang/String;
    :cond_11
    :goto_10
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_12

    .line 1909
    const-string/jumbo v27, "knox_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v10}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    :cond_12
    return-void

    .line 1726
    .restart local v11    # "last":C
    .restart local v12    # "last_int":I
    .restart local v13    # "last_str":Ljava/lang/String;
    .restart local v24    # "version":Ljava/lang/String;
    :cond_13
    const/16 v27, 0x2e

    :try_start_e
    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 1727
    .local v8, "index":I
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 1728
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b079b

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    move-result-object v9

    goto/16 :goto_0

    .line 1733
    .end local v8    # "index":I
    .end local v11    # "last":C
    .end local v12    # "last_int":I
    .end local v13    # "last_str":Ljava/lang/String;
    .end local v24    # "version":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1734
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1745
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 1746
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1756
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 1757
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 1768
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 1769
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 1779
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .line 1780
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 1790
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v4

    .line 1791
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 1801
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v4

    .line 1802
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 1812
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v4

    .line 1813
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 1823
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v4

    .line 1824
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 1834
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v4

    .line 1835
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    .line 1845
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v4

    .line 1846
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b

    .line 1856
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v4

    .line 1857
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    .line 1874
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v14    # "mdm_config_version":I
    .restart local v25    # "version_fragmenting":I
    :cond_14
    :try_start_f
    const-string/jumbo v22, "3.2"

    .restart local v22    # "timaMajorVersion":Ljava/lang/String;
    goto/16 :goto_d

    .line 1886
    :cond_15
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b079c

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ".0"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "timaVersion":Ljava/lang/String;
    goto/16 :goto_e

    .line 1888
    .end local v22    # "timaMajorVersion":Ljava/lang/String;
    .end local v23    # "timaVersion":Ljava/lang/String;
    .end local v25    # "version_fragmenting":I
    :cond_16
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b079c

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ro.config.timaversion"

    const-string/jumbo v29, "No Policy Version"

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    move-result-object v23

    .restart local v23    # "timaVersion":Ljava/lang/String;
    goto/16 :goto_e

    .line 1892
    .end local v14    # "mdm_config_version":I
    .end local v23    # "timaVersion":Ljava/lang/String;
    :catch_c
    move-exception v4

    .line 1893
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    .line 1903
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_d
    move-exception v4

    .line 1904
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_10
.end method

.method private showSecuritySWVersion()V
    .locals 23

    .prologue
    .line 1650
    const-string/jumbo v4, ""

    .line 1651
    .local v4, "securityMDFPP":Ljava/lang/String;
    const-string/jumbo v16, ""

    .line 1652
    .local v16, "securityWLANEP":Ljava/lang/String;
    const-string/jumbo v10, ""

    .line 1653
    .local v10, "securityVPNPP":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 1656
    .local v3, "securityASKS":Ljava/lang/String;
    const-string/jumbo v8, "MDF "

    .line 1657
    .local v8, "securityMDPPType":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "v"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "ro.security.mdpp.ver"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1658
    .local v9, "securityMDPPVer":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, " Release "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "ro.security.mdpp.release"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1659
    .local v6, "securityMDPPRelease":Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 1660
    .local v7, "securityMDPPStatus":Ljava/lang/String;
    const-string/jumbo v20, "security.mdpp"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1662
    .local v5, "securityMDPPProperty":Ljava/lang/String;
    const-string/jumbo v20, "Enabled"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1663
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, " : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b04e4

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1672
    :cond_0
    :goto_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1675
    const-string/jumbo v20, ""

    const-string/jumbo v21, "ro.security.wlan.ver"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 1676
    const-string/jumbo v18, "WLAN "

    .line 1677
    .local v18, "securityWLANEPType":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "v"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "ro.security.wlan.ver"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1678
    .local v19, "securityWLANEPVer":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, " Release "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "ro.security.wlan.release"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1679
    .local v17, "securityWLANEPRelease":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1683
    .end local v17    # "securityWLANEPRelease":Ljava/lang/String;
    .end local v18    # "securityWLANEPType":Ljava/lang/String;
    .end local v19    # "securityWLANEPVer":Ljava/lang/String;
    :cond_1
    const-string/jumbo v20, ""

    const-string/jumbo v21, "ro.security.vpnpp.ver"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 1684
    const-string/jumbo v14, "VPN "

    .line 1685
    .local v14, "securityVPNPPType":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "v"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "ro.security.vpnpp.ver"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1686
    .local v15, "securityVPNPPVer":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, " Release "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "ro.security.vpnpp.release"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1687
    .local v12, "securityVPNPPRelease":Ljava/lang/String;
    const-string/jumbo v13, ""

    .line 1688
    .local v13, "securityVPNPPStatus":Ljava/lang/String;
    const-string/jumbo v20, "security.vpnpp"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1690
    .local v11, "securityVPNPPProperty":Ljava/lang/String;
    const-string/jumbo v20, "Enabled"

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1691
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, " : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b04e4

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1700
    :cond_2
    :goto_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1704
    .end local v11    # "securityVPNPPProperty":Ljava/lang/String;
    .end local v12    # "securityVPNPPRelease":Ljava/lang/String;
    .end local v13    # "securityVPNPPStatus":Ljava/lang/String;
    .end local v14    # "securityVPNPPType":Ljava/lang/String;
    .end local v15    # "securityVPNPPVer":Ljava/lang/String;
    :cond_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "\nASKS v1.3_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getASKSVersion()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1706
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/android/settings/DeviceInfoSettings;->securitySWVersion:Ljava/lang/String;

    .line 1707
    const-string/jumbo v20, "security_sw_version"

    sget-object v21, Lcom/android/settings/DeviceInfoSettings;->securitySWVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    return-void

    .line 1664
    :cond_4
    const-string/jumbo v20, "Enforcing"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1665
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, " : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b04e5

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 1666
    :cond_5
    const-string/jumbo v20, "Ready"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1667
    const-string/jumbo v7, ""

    goto/16 :goto_0

    .line 1668
    :cond_6
    const-string/jumbo v20, "Disabled"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1669
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, " : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b04e6

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 1692
    .restart local v11    # "securityVPNPPProperty":Ljava/lang/String;
    .restart local v12    # "securityVPNPPRelease":Ljava/lang/String;
    .restart local v13    # "securityVPNPPStatus":Ljava/lang/String;
    .restart local v14    # "securityVPNPPType":Ljava/lang/String;
    .restart local v15    # "securityVPNPPVer":Ljava/lang/String;
    :cond_7
    const-string/jumbo v20, "Enforcing"

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1693
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, " : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b04e5

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 1694
    :cond_8
    const-string/jumbo v20, "Ready"

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1695
    const-string/jumbo v13, ""

    goto/16 :goto_1

    .line 1696
    :cond_9
    const-string/jumbo v20, "Disabled"

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1697
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, " : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b04e6

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1
.end method


# virtual methods
.method InitSecAddtionalPreferences()V
    .locals 32

    .prologue
    .line 1138
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/settings/Utils;->isSupportRootBadge(Landroid/content/Context;)Z

    move-result v29

    sput-boolean v29, Lcom/android/settings/DeviceInfoSettings;->statusForChnRoot:Z

    .line 1143
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->removeKnoxCustomSettingsHiddenItems(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    .line 1146
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    .line 1149
    const-string/jumbo v29, "Enabled"

    const-string/jumbo v30, "ro.security.mdpp.ux"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_15

    .line 1150
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->showSecuritySWVersion()V

    .line 1151
    const-string/jumbo v29, "security_sw_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1163
    :goto_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v11

    .line 1164
    .local v11, "currentVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    sget-object v29, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v29

    if-ltz v29, :cond_16

    .line 1165
    const-string/jumbo v29, "knox_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1166
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->showKnoxVersion()V

    .line 1173
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string/jumbo v30, "com.sec.knox.kccagent"

    invoke-static/range {v29 .. v30}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string/jumbo v30, "com.sec.knox.kccagent"

    const-string/jumbo v31, "com.sec.knox.kccc.agent.activities.KCCCSettings"

    invoke-static/range {v29 .. v31}, Lcom/android/settings/Utils;->isActivityExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_17

    .line 1177
    :goto_2
    const-string/jumbo v29, "device_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceInfoSettings;->mDeviceName:Landroid/preference/Preference;

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mDeviceName:Landroid/preference/Preference;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1179
    const-string/jumbo v29, "VZW"

    sget-object v30, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v29

    if-eqz v29, :cond_18

    .line 1182
    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mDeviceName:Landroid/preference/Preference;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1186
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v29

    const-string/jumbo v30, "CscFeature_Setting_ChangeApprovedModemVersion"

    invoke-virtual/range {v29 .. v30}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 1187
    const-string/jumbo v29, "none"

    const-string/jumbo v30, "ril.approved_modemver"

    const-string/jumbo v31, "none"

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_19

    .line 1190
    :cond_1
    const-string/jumbo v6, "gsm.version.baseband"

    .line 1192
    .local v6, "basebandVerProp":Ljava/lang/String;
    :goto_4
    const-string/jumbo v29, "baseband_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v6}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 1196
    const-string/jumbo v29, "baseband_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1199
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v29

    if-eqz v29, :cond_1a

    .line 1200
    const-string/jumbo v29, "software_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v6}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    :goto_5
    const-string/jumbo v29, "VZW"

    sget-object v30, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string/jumbo v30, "com.samsung.helphub"

    invoke-static/range {v29 .. v30}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1b

    .line 1209
    :goto_6
    const-string/jumbo v29, "VZW"

    sget-object v30, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 1213
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    const-string/jumbo v30, "com.samsung.helphub"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    .line 1215
    .local v18, "info":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v29, v0

    rem-int/lit8 v29, v29, 0xa

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    .line 1216
    const-string/jumbo v29, "icon_glossary"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    .end local v18    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_7
    const-string/jumbo v29, "device_model"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v31, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getModelNumberExtra(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v29

    if-eqz v29, :cond_1c

    .line 1226
    const-string/jumbo v29, "build_number"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    sget-object v31, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getCMCCBuildNumberSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    :goto_8
    const-string/jumbo v29, "build_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1233
    const-string/jumbo v29, "VZW"

    sget-object v30, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1d

    .line 1234
    const-string/jumbo v29, "kernel_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getFormattedKernelVersionVZW()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1239
    :goto_9
    const/16 v26, 0x0

    .line 1241
    .local v26, "seStatus":Ljava/lang/String;
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v29

    if-eqz v29, :cond_1f

    .line 1242
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v29

    if-eqz v29, :cond_1e

    .line 1243
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0b1836

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 1244
    .local v26, "seStatus":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1247
    :try_start_1
    const-string/jumbo v29, ""

    invoke-static {}, Landroid/os/SELinux;->getSEPolicyVersion()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4

    .line 1248
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Landroid/os/SELinux;->getSEPolicyVersion()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1249
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v26

    .line 1257
    :cond_4
    :goto_a
    :try_start_2
    const-string/jumbo v29, ""

    invoke-static {}, Landroid/os/SELinux;->getSEPolicyBuildDate()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_5

    .line 1258
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Landroid/os/SELinux;->getSEPolicyBuildDate()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v26

    .line 1264
    :cond_5
    :goto_b
    const-string/jumbo v29, "DeviceInfoSettings"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "DeviceInfoSettings seStatus : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :goto_c
    const-string/jumbo v29, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    const-string/jumbo v30, "selinux_status"

    .line 1275
    const-string/jumbo v31, "ro.build.selinux"

    .line 1274
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    const-string/jumbo v29, "selinux.policy_version"

    const-string/jumbo v30, "No Policy Version"

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1279
    .local v22, "policyVersion":Ljava/lang/String;
    const-string/jumbo v29, "GOOGLE_POLICY"

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6

    const-string/jumbo v29, "No Policy Version"

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 1280
    :cond_6
    const-string/jumbo v29, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1285
    :cond_7
    const-string/jumbo v29, "XSG"

    sget-object v30, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8

    const-string/jumbo v29, "XSD"

    sget-object v30, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8

    const-string/jumbo v29, "XST"

    sget-object v30, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8

    const-string/jumbo v29, "XSZ"

    sget-object v30, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8

    .line 1286
    const-string/jumbo v29, "XSM"

    sget-object v30, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    .line 1285
    if-nez v29, :cond_8

    .line 1286
    const-string/jumbo v29, "XSS"

    sget-object v30, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    .line 1285
    if-nez v29, :cond_8

    .line 1286
    const-string/jumbo v29, "XSI"

    sget-object v30, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    .line 1285
    if-eqz v29, :cond_22

    .line 1288
    :cond_8
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string/jumbo v30, "country_cert_info_enable"

    invoke-static/range {v29 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_21

    .line 1289
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string/jumbo v30, "country_cert_info_traid"

    invoke-static/range {v29 .. v30}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1290
    .local v10, "certTRAID":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string/jumbo v30, "country_cert_info_ta"

    invoke-static/range {v29 .. v30}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1291
    .local v9, "certTA":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string/jumbo v30, "country_cert_info_name"

    invoke-static/range {v29 .. v30}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1293
    .local v7, "certCountryName":Ljava/lang/String;
    if-eqz v10, :cond_20

    if-eqz v9, :cond_20

    if-eqz v7, :cond_20

    .line 1294
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "TRA ID : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "\nTA : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1295
    .local v8, "certName":Ljava/lang/String;
    const-string/jumbo v29, "country_certification_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1296
    const-string/jumbo v29, "country_certification_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1311
    .end local v7    # "certCountryName":Ljava/lang/String;
    .end local v8    # "certName":Ljava/lang/String;
    .end local v9    # "certTA":Ljava/lang/String;
    .end local v10    # "certTRAID":Ljava/lang/String;
    :goto_d
    const-string/jumbo v29, "SMA"

    sget-object v30, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_9

    const-string/jumbo v29, "XTC"

    sget-object v30, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_9

    const-string/jumbo v29, "XTE"

    sget-object v30, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_9

    const-string/jumbo v29, "GLB"

    sget-object v30, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_23

    .line 1312
    :cond_9
    const-string/jumbo v29, "service_information"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1314
    const-string/jumbo v29, "ntc_approval"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    .line 1315
    .local v25, "regulatoryPref":Landroid/preference/PreferenceScreen;
    new-instance v29, Lcom/android/settings/DeviceInfoSettings$8;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceInfoSettings$8;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1330
    .end local v25    # "regulatoryPref":Landroid/preference/PreferenceScreen;
    :goto_e
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v29

    const-string/jumbo v30, "CscFeature_Setting_SupportRegulatoryInfo"

    invoke-virtual/range {v29 .. v30}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_24

    .line 1331
    const-string/jumbo v29, "TFG"

    sget-object v30, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->checkForTFGCostaRicaSIM()Z

    move-result v29

    if-eqz v29, :cond_24

    .line 1336
    :cond_a
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string/jumbo v30, "com.samsung.ccr"

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isPackageLoaded(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_b

    .line 1338
    const-string/jumbo v29, "DeviceInfoSettings"

    const-string/jumbo v30, "remove diagnostics_and_usage"

    invoke-static/range {v29 .. v30}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const-string/jumbo v29, "diagnostics_and_usage"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1342
    :cond_b
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v29

    const-string/jumbo v30, "CscFeature_Setting_EnableHwVersionDisplay"

    invoke-virtual/range {v29 .. v30}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_26

    .line 1344
    const-string/jumbo v29, "ril.hw_ver"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1346
    .local v4, "HW_version_SysProp":Ljava/lang/String;
    if-eqz v4, :cond_25

    .line 1347
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v29

    if-eqz v29, :cond_c

    .line 1348
    const/16 v29, 0x2e

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 1349
    .local v17, "index":I
    const/16 v29, -0x1

    move/from16 v0, v17

    move/from16 v1, v29

    if-eq v0, v1, :cond_c

    .line 1350
    add-int/lit8 v29, v17, 0x2

    const/16 v30, 0x0

    move/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1353
    .end local v17    # "index":I
    :cond_c
    const-string/jumbo v29, "hardware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1354
    const-string/jumbo v29, "DeviceInfoSettings"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "CSCFEATURE_SETTINGS_ENABLEHWVERSIONDISPLAY:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    .end local v4    # "HW_version_SysProp":Ljava/lang/String;
    :goto_10
    const-string/jumbo v29, "ro.product.name"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1363
    .local v23, "productName":Ljava/lang/String;
    const-string/jumbo v29, "hero"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_28

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v29

    if-eqz v29, :cond_28

    .line 1364
    const-string/jumbo v29, "software_version_cmcc"

    const-string/jumbo v30, "ril.official_cscver"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    const-string/jumbo v29, "ril.approved_cscver"

    const-string/jumbo v30, "none"

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1366
    .local v5, "approved_cscver":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_d

    const-string/jumbo v29, "none"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_27

    .line 1372
    .end local v5    # "approved_cscver":Ljava/lang/String;
    :cond_d
    :goto_11
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v29

    if-eqz v29, :cond_2a

    .line 1374
    const-string/jumbo v29, "ril.hw_ver"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1375
    .restart local v4    # "HW_version_SysProp":Ljava/lang/String;
    const-string/jumbo v29, "hardware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1377
    if-eqz v4, :cond_29

    .line 1378
    const-string/jumbo v29, "hardware_version_spr"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1379
    const-string/jumbo v29, "DeviceInfoSettings"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "CSCFEATURE_SETTINGS_ENABLEHWVERSIONDISPLAY:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    .end local v4    # "HW_version_SysProp":Ljava/lang/String;
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string/jumbo v30, "com.ctc.epush"

    invoke-static/range {v29 .. v30}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_e

    .line 1389
    const-string/jumbo v29, "ctc_epush"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1393
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string/jumbo v30, "device_name"

    invoke-static/range {v29 .. v30}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1394
    .local v12, "deviceName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string/jumbo v30, "user"

    invoke-virtual/range {v29 .. v30}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/UserManager;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceInfoSettings;->mUserManager:Landroid/os/UserManager;

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v29, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v29

    if-eqz v29, :cond_f

    if-nez v12, :cond_f

    .line 1396
    const-string/jumbo v29, ""

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v30

    const-string/jumbo v31, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual/range {v30 .. v31}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_f

    .line 1397
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v29

    const-string/jumbo v30, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual/range {v29 .. v30}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1398
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string/jumbo v30, "device_name"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1401
    :cond_f
    const-string/jumbo v29, "device_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v12}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    const-string/jumbo v29, "ro.csb_val"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1406
    .local v19, "keyIndex":Ljava/lang/String;
    const-string/jumbo v29, "DeviceInfoSettings"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "CSB debug keyindex= "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const-string/jumbo v29, "unknown"

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_10

    const-string/jumbo v29, "ABSENT"

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_10

    const-string/jumbo v29, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2b

    .line 1410
    :cond_10
    const-string/jumbo v29, "csb_value"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1428
    :goto_13
    const-string/jumbo v29, "fcc_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceFccId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setDeviceSpecStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const-string/jumbo v29, "rated_value"

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceRated(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    .line 1429
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setDeviceSpecStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    const-string/jumbo v29, "battery_capacity"

    .line 1432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceBatteryCapacity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    .line 1431
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setDeviceSpecStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v29

    if-eqz v29, :cond_11

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceRated(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_30

    .line 1438
    :cond_11
    const-string/jumbo v29, "customer_services"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1441
    :goto_14
    const-string/jumbo v29, "persist.sys.iss.flag_altermodel"

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    .line 1442
    const-string/jumbo v29, "device_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1443
    const-string/jumbo v29, "device_model"

    const-string/jumbo v30, "persist.sys.iss.altermodel"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    const-string/jumbo v29, "baseband_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1445
    const-string/jumbo v29, "kernel_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1446
    const-string/jumbo v29, "build_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1447
    const-string/jumbo v29, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1450
    :cond_12
    sget-boolean v29, Lcom/android/settings/DeviceInfoSettings;->statusForChnRoot:Z

    if-eqz v29, :cond_31

    .line 1451
    const-string/jumbo v29, "status_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1452
    const-string/jumbo v29, "status_info_vzw"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1464
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string/jumbo v30, "com.samsung.android.app.omcagent"

    invoke-static/range {v29 .. v30}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_34

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string/jumbo v30, "OMC.configuration.version"

    invoke-static/range {v29 .. v30}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1466
    .local v21, "omcVersion":Ljava/lang/String;
    const-string/jumbo v20, ""

    .line 1468
    .local v20, "omcSummary":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_33

    .line 1469
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "ro.serialno"

    const-string/jumbo v31, "No ID"

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1475
    :goto_16
    const-string/jumbo v29, "omc_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    .end local v20    # "omcSummary":Ljava/lang/String;
    .end local v21    # "omcVersion":Ljava/lang/String;
    :goto_17
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v29

    if-nez v29, :cond_13

    .line 1482
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v29

    .line 1481
    if-eqz v29, :cond_35

    .line 1483
    :cond_13
    const-string/jumbo v29, "my_phone_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1512
    :cond_14
    :goto_18
    const-string/jumbo v29, "samsung_experience_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1516
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->removePreferencesSimplifiedAboutDevice()V

    .line 1137
    return-void

    .line 1154
    .end local v6    # "basebandVerProp":Ljava/lang/String;
    .end local v11    # "currentVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    .end local v12    # "deviceName":Ljava/lang/String;
    .end local v19    # "keyIndex":Ljava/lang/String;
    .end local v22    # "policyVersion":Ljava/lang/String;
    .end local v23    # "productName":Ljava/lang/String;
    .end local v26    # "seStatus":Ljava/lang/String;
    :cond_15
    const-string/jumbo v29, "security_sw_version"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "ASKS v1.3_"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getASKSVersion()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    const-string/jumbo v29, "security_sw_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1168
    .restart local v11    # "currentVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_16
    const-string/jumbo v29, "knox_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1174
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    const-string/jumbo v30, "knox_custom_configurator"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 1180
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mDeviceName:Landroid/preference/Preference;

    move-object/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0b04e9

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1188
    :cond_19
    const-string/jumbo v6, "ril.approved_modemver"

    .restart local v6    # "basebandVerProp":Ljava/lang/String;
    goto/16 :goto_4

    .line 1202
    :cond_1a
    const-string/jumbo v29, "software_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1206
    :cond_1b
    const-string/jumbo v29, "icon_glossary"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1218
    :catch_0
    move-exception v13

    .line 1219
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v13}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_7

    .line 1228
    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1c
    const-string/jumbo v29, "build_number"

    sget-object v30, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1236
    :cond_1d
    const-string/jumbo v29, "kernel_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 1251
    .restart local v26    # "seStatus":Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 1252
    .local v15, "e":Ljava/lang/Exception;
    const-string/jumbo v29, "DeviceInfoSettings"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "KnoxVersion Exception : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    .line 1260
    .end local v15    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v15

    .line 1261
    .restart local v15    # "e":Ljava/lang/Exception;
    const-string/jumbo v29, "DeviceInfoSettings"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "KnoxVersion Exception : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b

    .line 1267
    .end local v15    # "e":Ljava/lang/Exception;
    .local v26, "seStatus":Ljava/lang/String;
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0b1835

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .local v26, "seStatus":Ljava/lang/String;
    goto/16 :goto_c

    .line 1269
    .local v26, "seStatus":Ljava/lang/String;
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0b1834

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .local v26, "seStatus":Ljava/lang/String;
    goto/16 :goto_c

    .line 1298
    .restart local v7    # "certCountryName":Ljava/lang/String;
    .restart local v9    # "certTA":Ljava/lang/String;
    .restart local v10    # "certTRAID":Ljava/lang/String;
    .restart local v22    # "policyVersion":Ljava/lang/String;
    :cond_20
    :try_start_4
    const-string/jumbo v29, "country_certification_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_d

    .line 1303
    .end local v7    # "certCountryName":Ljava/lang/String;
    .end local v9    # "certTA":Ljava/lang/String;
    .end local v10    # "certTRAID":Ljava/lang/String;
    :catch_3
    move-exception v14

    .line 1304
    .local v14, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v14}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_d

    .line 1301
    .end local v14    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_21
    :try_start_5
    const-string/jumbo v29, "country_certification_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_d

    .line 1307
    :cond_22
    const-string/jumbo v29, "country_certification_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1324
    :cond_23
    const-string/jumbo v29, "service_information"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1325
    const-string/jumbo v29, "ntc_approval"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1332
    :cond_24
    const-string/jumbo v29, "regulatory_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1356
    .restart local v4    # "HW_version_SysProp":Ljava/lang/String;
    :cond_25
    const-string/jumbo v29, "hardware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    const v30, 0x7f0b1030

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 1359
    .end local v4    # "HW_version_SysProp":Ljava/lang/String;
    :cond_26
    const-string/jumbo v29, "hardware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1367
    .restart local v5    # "approved_cscver":Ljava/lang/String;
    .restart local v23    # "productName":Ljava/lang/String;
    :cond_27
    const-string/jumbo v29, "hardware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 1369
    .end local v5    # "approved_cscver":Ljava/lang/String;
    :cond_28
    const-string/jumbo v29, "software_version_cmcc"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1381
    .restart local v4    # "HW_version_SysProp":Ljava/lang/String;
    :cond_29
    const-string/jumbo v29, "hardware_version_spr"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    const v30, 0x7f0b1030

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 1384
    .end local v4    # "HW_version_SysProp":Ljava/lang/String;
    :cond_2a
    const-string/jumbo v29, "hardware_version_spr"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1412
    .restart local v12    # "deviceName":Ljava/lang/String;
    .restart local v19    # "keyIndex":Ljava/lang/String;
    :cond_2b
    const-string/jumbo v29, "1"

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2c

    .line 1413
    const-string/jumbo v27, "Type: Samsung"

    .line 1424
    .local v27, "secbootStatus":Ljava/lang/String;
    :goto_19
    const-string/jumbo v29, "csb_value"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1414
    .end local v27    # "secbootStatus":Ljava/lang/String;
    :cond_2c
    const-string/jumbo v29, "2"

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2d

    .line 1415
    const-string/jumbo v27, "Type: Knox A"

    .restart local v27    # "secbootStatus":Ljava/lang/String;
    goto :goto_19

    .line 1416
    .end local v27    # "secbootStatus":Ljava/lang/String;
    :cond_2d
    const-string/jumbo v29, "3"

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2e

    .line 1417
    const-string/jumbo v27, "Type: Knox B"

    .restart local v27    # "secbootStatus":Ljava/lang/String;
    goto :goto_19

    .line 1418
    .end local v27    # "secbootStatus":Ljava/lang/String;
    :cond_2e
    const-string/jumbo v29, "4"

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2f

    .line 1419
    const-string/jumbo v27, "Type: Knox C"

    .restart local v27    # "secbootStatus":Ljava/lang/String;
    goto :goto_19

    .line 1421
    .end local v27    # "secbootStatus":Ljava/lang/String;
    :cond_2f
    const-string/jumbo v27, "Type: Invalid"

    .restart local v27    # "secbootStatus":Ljava/lang/String;
    goto :goto_19

    .line 1436
    .end local v27    # "secbootStatus":Ljava/lang/String;
    :cond_30
    const-string/jumbo v29, "customer_services"

    const-string/jumbo v30, "1588-3366 / www.3366.co.kr"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 1455
    :cond_31
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isStatusLOSmenutree()Z

    move-result v29

    if-eqz v29, :cond_32

    .line 1456
    const-string/jumbo v29, "status_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1457
    const-string/jumbo v29, "status_info_root"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 1459
    :cond_32
    const-string/jumbo v29, "status_info_vzw"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1460
    const-string/jumbo v29, "status_info_root"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 1472
    .restart local v20    # "omcSummary":Ljava/lang/String;
    .restart local v21    # "omcVersion":Ljava/lang/String;
    :cond_33
    const-string/jumbo v29, "ro.serialno"

    const-string/jumbo v30, "No ID"

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_16

    .line 1478
    .end local v20    # "omcSummary":Ljava/lang/String;
    .end local v21    # "omcVersion":Ljava/lang/String;
    :cond_34
    const-string/jumbo v29, "omc_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 1485
    :cond_35
    const-string/jumbo v29, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/telephony/TelephonyManager;

    .line 1486
    .local v28, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v24

    .line 1487
    .local v24, "rawNumber":Ljava/lang/String;
    const-string/jumbo v29, "DeviceInfoSettings"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "getLine1Number:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    const/16 v16, 0x0

    .line 1489
    .local v16, "formattedNumber":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_14

    .line 1490
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v29

    if-eqz v29, :cond_36

    .line 1491
    const-string/jumbo v29, "\\+82"

    const-string/jumbo v30, "0"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1493
    :cond_36
    invoke-static/range {v24 .. v24}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1494
    .local v16, "formattedNumber":Ljava/lang/String;
    const-string/jumbo v29, "my_phone_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18
.end method

.method InitSecTopAddtionalPreferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1106
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    .line 1108
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1109
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getOnlineHelpMenuState(Landroid/content/Context;Lcom/android/settings/Utils$OnlineHelpMenuState;)Lcom/android/settings/Utils$OnlineHelpMenuState;

    move-result-object v0

    .line 1110
    .local v0, "helpMenuData":Lcom/android/settings/Utils$OnlineHelpMenuState;
    iget-boolean v1, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    if-nez v1, :cond_2

    .line 1111
    const v1, 0x7f080058

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 1112
    const-string/jumbo v1, "device_info_online_help"

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mOnlineHelpPref:Landroid/preference/Preference;

    .line 1113
    iget-object v1, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 1114
    const-string/jumbo v1, "device_info_online_help"

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 1115
    :cond_0
    iget v1, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    if-eqz v1, :cond_1

    .line 1116
    const-string/jumbo v1, "device_info_online_help"

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget v2, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 1118
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mOnlineHelpPref:Landroid/preference/Preference;

    new-instance v2, Lcom/android/settings/DeviceInfoSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/DeviceInfoSettings$7;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1105
    .end local v0    # "helpMenuData":Lcom/android/settings/Utils$OnlineHelpMenuState;
    :cond_2
    return-void
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 384
    const v0, 0x7f0b189b

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 379
    const/16 v0, 0x28

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 349
    return-void

    .line 352
    :cond_1
    new-instance v3, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    .line 353
    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 354
    .local v1, "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 355
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.settings"

    .line 356
    const-string/jumbo v4, "com.android.settings.Settings$PrivacyResetSettingsActivity"

    .line 355
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string/jumbo v3, "menu"

    const-string/jumbo v4, "reset"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    iput-object v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 359
    const v3, 0x7f0b0427

    iput v3, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 360
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 362
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 363
    new-instance v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v2}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 364
    .local v2, "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getContactUsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 365
    iput-object v0, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 366
    const v3, 0x7f0b04bd

    iput v3, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 367
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 369
    .end local v2    # "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 389
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->InitSecTopAddtionalPreferences()V

    .line 396
    const v3, 0x7f080057

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 398
    const-string/jumbo v3, "firmware_version"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string/jumbo v3, "firmware_version"

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 401
    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getSecurityPatch()Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, "patch":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 403
    const-string/jumbo v3, "security_patch"

    invoke-direct {p0, v3, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :goto_0
    const-string/jumbo v3, "baseband_version"

    const-string/jumbo v4, "gsm.version.baseband"

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string/jumbo v3, "device_model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getMsvSuffix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string/jumbo v3, "fcc_equipment_id"

    const-string/jumbo v4, "ro.ril.fccid"

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string/jumbo v3, "device_model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string/jumbo v3, "build_number"

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string/jumbo v3, "build_number"

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 414
    const-string/jumbo v3, "kernel_version"

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v4, "fcc_equipment_id"

    .line 438
    const-string/jumbo v5, "ro.ril.fccid"

    .line 437
    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    const-string/jumbo v3, "baseband_version"

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingslib/DeviceInfoUtils;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v4, "device_feedback"

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 457
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 495
    .local v1, "parentPreference":Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->InitSecAddtionalPreferences()V

    .line 499
    new-instance v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 388
    return-void

    .line 405
    .end local v0    # "act":Landroid/app/Activity;
    .end local v1    # "parentPreference":Landroid/preference/PreferenceGroup;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v4, "security_patch"

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1571
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 1570
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1556
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    if-eqz v0, :cond_0

    .line 1557
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1562
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/settings/DeviceInfoSettings;->statusForChnRoot:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "status_info_root"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1563
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1566
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 1554
    return-void

    .line 1557
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    .line 1556
    if-eqz v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->dismiss()V

    .line 1559
    iput-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 1604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    .line 1602
    return-void
.end method

.method public onNegativeClick()V
    .locals 1

    .prologue
    .line 1610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    .line 1608
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 537
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 540
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 544
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "AboutDevice"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 536
    return-void
.end method

.method public onPositiveClick()V
    .locals 3

    .prologue
    .line 1596
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1597
    .local v0, "deviceName":Ljava/lang/String;
    const-string/jumbo v1, "device_name"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    .line 1595
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    .line 552
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 553
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "firmware_version"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 554
    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v7, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v8, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v6, v9, v7, v12, v8}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 555
    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v7, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 556
    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    aget-wide v6, v6, v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x1f4

    sub-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    .line 557
    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v7, "no_fun"

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 558
    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/settings/DeviceInfoSettings;->mFunDisallowedBySystem:Z

    if-eqz v6, :cond_1

    .line 562
    :cond_0
    :goto_0
    const-string/jumbo v6, "DeviceInfoSettings"

    const-string/jumbo v7, "Sorry, no fun for you!"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return v12

    .line 559
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 560
    iget-object v7, p0, Lcom/android/settings/DeviceInfoSettings;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 559
    invoke-static {v6, v7}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 566
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android"

    .line 568
    const-class v7, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 567
    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    return v6

    .line 571
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 572
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DeviceInfoSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to start activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 575
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "build_number"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 577
    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v6

    if-nez v6, :cond_5

    return v9

    .line 580
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 581
    return v9

    .line 584
    :cond_6
    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v7, "no_debugging_features"

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 585
    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v6, :cond_7

    .line 586
    iget-boolean v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDebuggingFeaturesDisallowedBySystem:Z

    if-eqz v6, :cond_8

    .line 590
    :cond_7
    :goto_2
    return v9

    .line 587
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 588
    iget-object v7, p0, Lcom/android/settings/DeviceInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 587
    invoke-static {v6, v7}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_2

    .line 593
    :cond_9
    iget v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v6, :cond_d

    .line 594
    iget v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 595
    iget v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-nez v6, :cond_b

    .line 596
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "development"

    invoke-virtual {v6, v7, v12}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 598
    const-string/jumbo v7, "show"

    .line 596
    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 599
    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v6, :cond_a

    .line 600
    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->cancel()V

    .line 602
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0b1031

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 604
    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 607
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 606
    invoke-static {v6}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v6

    .line 608
    const-class v7, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 606
    invoke-virtual {v6, v7, v9, v9}, Lcom/android/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 610
    :cond_b
    iget v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v6, :cond_3

    .line 611
    iget v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v7, 0x5

    if-ge v6, v7, :cond_3

    .line 612
    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v6, :cond_c

    .line 613
    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->cancel()V

    .line 615
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 616
    iget v8, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 615
    new-array v9, v9, [Ljava/lang/Object;

    .line 616
    iget v10, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    const v10, 0x7f130004

    .line 615
    invoke-virtual {v7, v10, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 618
    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 620
    :cond_d
    iget v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-gez v6, :cond_3

    .line 621
    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v6, :cond_e

    .line 622
    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->cancel()V

    .line 624
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0b1032

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 626
    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 628
    :cond_f
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "device_feedback"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 629
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->sendFeedback()V

    goto/16 :goto_1

    .line 640
    :cond_10
    const-string/jumbo v6, "device_name"

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-ne p2, v6, :cond_12

    .line 641
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->isResumed()Z

    move-result v6

    if-nez v6, :cond_11

    return v9

    .line 642
    :cond_11
    invoke-virtual {p0, v8}, Lcom/android/settings/DeviceInfoSettings;->showDialog(Ljava/lang/String;)V

    .line 643
    return v9

    .line 644
    :cond_12
    const-string/jumbo v6, "icon_glossary"

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-ne p2, v6, :cond_14

    .line 645
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 646
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.helphub.HELP"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 647
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "helphub:category"

    const-string/jumbo v7, "ICONGL"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 650
    :catch_1
    move-exception v1

    .line 651
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v6, "DeviceInfoSettings"

    const-string/jumbo v7, "Activity Not Found"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 655
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_13
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.helphub.HELP"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 656
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "helphub:categoryid"

    const-string/jumbo v7, "icon_glossary"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 659
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_14
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "security_sw_version"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 660
    const-string/jumbo v6, "DeviceInfoSettings"

    const-string/jumbo v7, "Security SW Version : On Click"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 661
    :cond_15
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "knox_version"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 662
    const-string/jumbo v6, "DeviceInfoSettings"

    const-string/jumbo v7, "KnoxVersion : Clicked"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 663
    :cond_16
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "regulatory_info"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 664
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Setting_SupportRegulatoryInfo"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 665
    const-string/jumbo v6, "TFG"

    sget-object v7, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->checkForTFGCostaRicaSIM()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 666
    :cond_17
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->showRegulatoryInfo(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 669
    :cond_18
    const-string/jumbo v6, "customer_services"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 670
    const-string/jumbo v6, "tel:1588-3366"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 671
    .local v5, "number":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.DIAL"

    invoke-direct {v0, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 673
    .local v0, "dialIntent":Landroid/content/Intent;
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 674
    :catch_2
    move-exception v1

    .line 675
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 504
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 505
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "development"

    .line 506
    const/4 v2, 0x0

    .line 505
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 506
    const-string/jumbo v1, "show"

    .line 507
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 505
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    const/4 v0, -0x1

    .line 505
    :goto_0
    iput v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 508
    iput-object v4, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 510
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_fun"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 509
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 512
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_fun"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 511
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/DeviceInfoSettings;->mFunDisallowedBySystem:Z

    .line 514
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_debugging_features"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 513
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 516
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_debugging_features"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 515
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDebuggingFeaturesDisallowedBySystem:Z

    .line 519
    sget-boolean v0, Lcom/android/settings/DeviceInfoSettings;->statusForChnRoot:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "status_info_root"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 521
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->changeSysScopeStatus()V

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 527
    const-string/jumbo v1, "device_name"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 528
    const/4 v4, -0x2

    .line 526
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 532
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "AboutDevice"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 503
    return-void

    .line 507
    :cond_1
    const/4 v0, 0x7

    goto/16 :goto_0
.end method

.method public removePreferencesSimplifiedAboutDevice()V
    .locals 3

    .prologue
    const v2, 0x7f0b050e

    .line 1521
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isSimplifiedAboutDevice2015()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1523
    const-string/jumbo v0, "firmware_version"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1524
    const-string/jumbo v0, "security_patch"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1525
    const-string/jumbo v0, "baseband_version"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1526
    const-string/jumbo v0, "kernel_version"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1527
    const-string/jumbo v0, "build_number"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1528
    const-string/jumbo v0, "selinux_status"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1529
    const-string/jumbo v0, "security_sw_version"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1530
    const-string/jumbo v0, "knox_version"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1531
    const-string/jumbo v0, "omc_version"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1532
    const-string/jumbo v0, "samsung_experience_version"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1534
    const-string/jumbo v0, "fcc_id"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1535
    const-string/jumbo v0, "rated_value"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1536
    const-string/jumbo v0, "battery_capacity"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1538
    const-string/jumbo v0, "knox_custom_configurator"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1539
    const-string/jumbo v0, "status_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1540
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1541
    const-string/jumbo v0, "status_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0b050f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1545
    :cond_0
    :goto_0
    const-string/jumbo v0, "status_info_root"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1546
    const-string/jumbo v0, "status_info_root"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 1520
    :cond_1
    :goto_1
    return-void

    .line 1543
    :cond_2
    const-string/jumbo v0, "status_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 1548
    :cond_3
    const-string/jumbo v0, "battery_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1549
    const-string/jumbo v0, "software_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1
.end method

.method showDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 1576
    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1579
    :cond_0
    const v0, 0x7f0b04df

    .line 1581
    .local v0, "idTitle":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    if-nez v1, :cond_2

    .line 1582
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1002e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 1584
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1588
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->newInstance(I)Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    .line 1589
    :goto_1
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->setConfirmationDialogFragmentListener(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$ConfirmationDialogFragmentListener;)V

    .line 1590
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1574
    :cond_2
    return-void

    .line 1577
    .end local v0    # "idTitle":I
    :cond_3
    const v0, 0x7f0b04e9

    .line 1576
    .restart local v0    # "idTitle":I
    goto :goto_0

    .line 1585
    :cond_4
    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->newInstance(ILjava/lang/String;)Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    goto :goto_1
.end method

.method public showOnlineHelpDialog()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1915
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    .line 1916
    iget-object v7, p0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 1917
    const v8, 0x7f04030a

    const/4 v9, 0x0

    .line 1916
    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1918
    .local v1, "dialogLayout":Landroid/view/View;
    const v7, 0x7f1106e0

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1919
    .local v0, "checkboxView":Landroid/widget/CheckBox;
    const v7, 0x7f110189

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1920
    .local v5, "messageView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b04bb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {}, Lcom/android/settings/Utils;->getResIdForUserManual()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1921
    iget-object v7, p0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1922
    .local v6, "sharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1923
    .local v4, "edit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "onlinehelp_show_dialog"

    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1924
    .local v2, "doNotShow":Z
    if-nez v2, :cond_0

    .line 1925
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 1927
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b04ba

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1925
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 1928
    new-instance v8, Lcom/android/settings/DeviceInfoSettings$9;

    invoke-direct {v8, p0, v0, v4}, Lcom/android/settings/DeviceInfoSettings$9;-><init>(Lcom/android/settings/DeviceInfoSettings;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;)V

    const v9, 0x7f0b042c

    .line 1925
    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 1942
    new-instance v8, Lcom/android/settings/DeviceInfoSettings$10;

    invoke-direct {v8, p0}, Lcom/android/settings/DeviceInfoSettings$10;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    const v9, 0x7f0b1102

    .line 1925
    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 1945
    new-instance v8, Lcom/android/settings/DeviceInfoSettings$11;

    invoke-direct {v8, p0}, Lcom/android/settings/DeviceInfoSettings$11;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    .line 1925
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1914
    :goto_0
    return-void

    .line 1951
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/DeviceInfoSettings;->mOnlineHelpPref:Landroid/preference/Preference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1952
    :catch_0
    move-exception v3

    .line 1953
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v7, "DeviceInfoSettings"

    const-string/jumbo v8, "Activity Not Found"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

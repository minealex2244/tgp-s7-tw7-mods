.class public final Lcom/android/settings/bluetooth/BluetoothSettings;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothSettings$1;,
        Lcom/android/settings/bluetooth/BluetoothSettings$2;,
        Lcom/android/settings/bluetooth/BluetoothSettings$3;,
        Lcom/android/settings/bluetooth/BluetoothSettings$4;,
        Lcom/android/settings/bluetooth/BluetoothSettings$5;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mInteractiveHelp:Z

.field private static mIsDeviceProfileShown:Z

.field public static mIsForegroundBtSettings:Z

.field private static mLocalAdapterName:Ljava/lang/String;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mBixbyDeviceName:Ljava/lang/String;

.field private mBixbyStateId:Ljava/lang/String;

.field private mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoveryHelpMsgPreference:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmptyView:Landroid/widget/TextView;

.field private mInitiateDiscoverable:Z

.field private mInitiateScan:Z

.field private mIsBtScanDialog:Z

.field private mIsEmergencyMode:Z

.field private mIsFind:Z

.field private mIsHelpDialogHidden:Z

.field private final mMoreOptionDeltaTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMyDevicePreference:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mPairedDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mPolicyEnabled:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeTime:J

.field private mScan:Landroid/view/MenuItem;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyStateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyStateId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings/bluetooth/BluetoothSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p1
.end method

.method static synthetic -set3(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    return p0
.end method

.method static synthetic -set4(Lcom/android/settings/bluetooth/BluetoothSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsHelpDialogHidden:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "paramValue"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "paramAttr"    # Ljava/lang/String;
    .param p3, "paramAttrValue"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->requestNlg()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendResponseAndInit(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;IZ)V
    .locals 0
    .param p1, "bluetoothState"    # I
    .param p2, "startScan"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 169
    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    .line 170
    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    .line 172
    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInteractiveHelp:Z

    .line 175
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 1308
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$4;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothSettings$4;-><init>()V

    .line 1307
    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 133
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 216
    const-string/jumbo v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 156
    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 165
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 166
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    .line 171
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsHelpDialogHidden:Z

    .line 174
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    .line 178
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsEmergencyMode:Z

    .line 182
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    .line 188
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "SPR"

    aput-object v2, v1, v4

    const-string/jumbo v2, "VMU"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "BST"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "XAS"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "VZW"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 187
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMoreOptionDeltaTargets:Ljava/util/List;

    .line 192
    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyStateId:Ljava/lang/String;

    .line 193
    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyDeviceName:Ljava/lang/String;

    .line 194
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsFind:Z

    .line 196
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 295
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 1076
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$3;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 1350
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$5;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 215
    return-void
.end method

.method private addDeviceCategory(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V
    .locals 1
    .param p1, "preferenceGroup"    # Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .param p2, "titleId"    # I
    .param p3, "filter"    # Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;
    .param p4, "addCachedDevices"    # Z

    .prologue
    .line 751
    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/BluetoothSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setTitle(Ljava/lang/String;)V

    .line 752
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addPreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    .line 753
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/BluetoothSettings;->setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 754
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V

    .line 755
    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->addCachedDevices()V

    .line 750
    :cond_0
    return-void
.end method

.method private addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 1576
    const-string/jumbo v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addNlgResultParam() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    :cond_0
    return-void
.end method

.method private addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "paramAttr"    # Ljava/lang/String;
    .param p3, "paramAttrValue"    # Ljava/lang/String;

    .prologue
    .line 1569
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "addNlgScreenParam()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    .line 1571
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    :cond_0
    return-void
.end method

.method public static isDeviceProfileShown()Z
    .locals 1

    .prologue
    .line 1207
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    return v0
.end method

.method private requestNlg()V
    .locals 2

    .prologue
    .line 1583
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "requestNlg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "BluetoothSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1582
    :cond_0
    return-void
.end method

.method private sendResponseAndInit(Z)V
    .locals 3
    .param p1, "isSuccess"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1590
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "sendResponseAndInit()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    .line 1592
    if-eqz p1, :cond_1

    .line 1593
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1597
    :goto_0
    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyStateId:Ljava/lang/String;

    .line 1598
    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyDeviceName:Ljava/lang/String;

    .line 1599
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsFind:Z

    .line 1589
    :cond_0
    return-void

    .line 1595
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0
.end method

.method private setDiscoveryHelpMsgPreference()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 3

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoveryHelpMsgPreference:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v0, :cond_0

    .line 716
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoveryHelpMsgPreference:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 718
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v0, :cond_1

    .line 719
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoveryHelpMsgPreference:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const v1, 0x7f0401d6

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setLayoutResource(I)V

    .line 725
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoveryHelpMsgPreference:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b1077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setTitle(Ljava/lang/String;)V

    .line 726
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "setDiscoveryHelpMsgPreference :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoveryHelpMsgPreference:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-object v0

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoveryHelpMsgPreference:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const v1, 0x7f0401d7

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setLayoutResource(I)V

    goto :goto_0
.end method

.method private setEmptyView(I)V
    .locals 2
    .param p1, "message"    # I

    .prologue
    const/16 v1, 0x8

    .line 1298
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setListViewVisible(I)V

    .line 1300
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->removeAll()V

    .line 1302
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1304
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1297
    return-void
.end method

.method private setMyDevicePreference()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 680
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_0

    .line 681
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u200e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u200e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 685
    :cond_0
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u200e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u200e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 689
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v1, :cond_2

    .line 690
    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 692
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v1, :cond_4

    .line 693
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const v2, 0x7f0401d4

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setLayoutResource(I)V

    .line 699
    :cond_2
    :goto_0
    const-string/jumbo v0, ""

    .line 700
    .local v0, "summaryMessage":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    if-eqz v1, :cond_5

    .line 701
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f0b106e    # 1.84848E38f

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 706
    :goto_1
    if-eqz v0, :cond_3

    .line 707
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setTitle(Ljava/lang/String;)V

    .line 710
    :cond_3
    const-string/jumbo v1, "BluetoothSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMyDevicePreference :: my device name set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-object v1

    .line 695
    .end local v0    # "summaryMessage":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const v2, 0x7f0401d5

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setLayoutResource(I)V

    goto :goto_0

    .line 703
    .restart local v0    # "summaryMessage":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f0b106d

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setNoDeviceLayout(Z)V
    .locals 2
    .param p1, "isShown"    # Z

    .prologue
    .line 740
    if-eqz p1, :cond_1

    .line 741
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoveryHelpMsgPreference:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoveryHelpMsgPreference:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->removePreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V

    .line 742
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setNoItemPreference()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addPreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    .line 739
    :goto_0
    return-void

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->removePreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V

    .line 745
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDiscoveryHelpMsgPreference()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addPreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    goto :goto_0
.end method

.method private setNoItemPreference()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v0, :cond_0

    .line 732
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 733
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const v1, 0x7f0401cf

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setLayoutResource(I)V

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setVisibleView(Z)V

    .line 736
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-object v0
.end method

.method private setOffMessage()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 884
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 885
    return-void

    .line 887
    :cond_0
    const v4, 0x7f0b11f7

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 889
    .local v1, "briefText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 891
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v4, "ble_scan_always_enabled"

    .line 890
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 891
    const/4 v5, 0x1

    .line 890
    if-ne v4, v5, :cond_2

    const/4 v0, 0x1

    .line 893
    .local v0, "bleScanningMode":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 894
    if-nez v0, :cond_3

    .line 896
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 897
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 925
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->removeAll()V

    .line 883
    return-void

    .line 890
    .end local v0    # "bleScanningMode":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "bleScanningMode":Z
    goto :goto_0

    .line 899
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 900
    .local v2, "contentBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 901
    const-string/jumbo v4, "\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    const v4, 0x7f0b11f8

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 903
    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    new-instance v5, Lcom/android/settings/bluetooth/BluetoothSettings$6;

    invoke-direct {v5, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$6;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    invoke-static {v4, v2, v5}, Lcom/android/settings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/LinkifyUtils$OnClickListener;)Z

    .line 914
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isGEDTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 915
    :cond_4
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    new-instance v5, Lcom/android/settings/bluetooth/BluetoothSettings$7;

    invoke-direct {v5, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$7;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private updateContent(IZ)V
    .locals 13
    .param p1, "bluetoothState"    # I
    .param p2, "startScan"    # Z

    .prologue
    const/16 v7, 0x8

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 759
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v9

    .line 760
    .local v9, "listAdapter":Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;
    const/4 v10, 0x0

    .line 761
    .local v10, "messageId":I
    const-string/jumbo v0, "BluetoothSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateContent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", startScan = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    packed-switch p1, :pswitch_data_0

    .line 871
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->removeAllGroupDevices()V

    .line 872
    if-eqz v10, :cond_1

    .line 873
    invoke-direct {p0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->setEmptyView(I)V

    .line 875
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-eqz v0, :cond_11

    .line 878
    :goto_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-eqz v0, :cond_12

    .line 758
    :cond_2
    :goto_2
    return-void

    .line 765
    :pswitch_0
    invoke-virtual {v9}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->removeAll()V

    .line 766
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 767
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 769
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setListViewVisible(I)V

    .line 770
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 772
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 773
    const v10, 0x7f0b106c

    .line 774
    goto :goto_0

    .line 778
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateDeviceName()V

    .line 780
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setMyDevicePreference()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addPreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    .line 783
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v0, :cond_a

    .line 784
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 786
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-eqz v0, :cond_5

    .line 787
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const v4, 0x7f0401f8

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setLayoutResource(I)V

    .line 788
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setProgress(Z)V

    .line 795
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v0, :cond_b

    .line 796
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 798
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-eqz v0, :cond_6

    .line 799
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const v4, 0x7f0401f8

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setLayoutResource(I)V

    .line 805
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 807
    sget-object v4, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 806
    const v5, 0x7f0b11ec

    .line 805
    invoke-direct {p0, v0, v5, v4, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 809
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 811
    sget-object v5, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    if-eqz p2, :cond_c

    move v0, v3

    .line 810
    :goto_5
    const v7, 0x7f0b11ed

    .line 809
    invoke-direct {p0, v4, v7, v5, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 813
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v12

    .line 814
    .local v12, "numberOfPairedDevices":I
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v11

    .line 816
    .local v11, "numberOfAvailableDevices":I
    if-nez v11, :cond_7

    if-eqz p2, :cond_d

    :cond_7
    move v8, v3

    .line 817
    .local v8, "isShown":Z
    :goto_6
    invoke-direct {p0, v8}, Lcom/android/settings/bluetooth/BluetoothSettings;->setNoDeviceLayout(Z)V

    .line 819
    if-eqz p2, :cond_8

    .line 820
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v2, "updateContent :: startScanning()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    .line 822
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    .line 825
    :cond_8
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    if-nez v0, :cond_f

    .line 826
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    if-eqz v0, :cond_9

    .line 827
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v2, "updateContent :: set Discoverable mode to SCAN_MODE_CONNECTABLE_DISCOVERABLE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 830
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 834
    const-string/jumbo v6, " User Interaction: User actionDiscoverable mode status has changed to discoverable succeeded"

    .line 835
    .local v6, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 836
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    move v2, v1

    .line 835
    invoke-static/range {v0 .. v7}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertMDMLog(Landroid/content/Context;IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 846
    .end local v6    # "message":Ljava/lang/String;
    :cond_9
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 847
    return-void

    .line 791
    .end local v8    # "isShown":Z
    .end local v11    # "numberOfAvailableDevices":I
    .end local v12    # "numberOfPairedDevices":I
    :cond_a
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->removeAll()V

    goto/16 :goto_3

    .line 802
    :cond_b
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->removeAll()V

    goto/16 :goto_4

    :cond_c
    move v0, v2

    .line 811
    goto :goto_5

    .line 816
    .restart local v11    # "numberOfAvailableDevices":I
    .restart local v12    # "numberOfPairedDevices":I
    :cond_d
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_e

    move v2, v3

    :cond_e
    move v8, v2

    goto :goto_6

    .line 841
    .restart local v8    # "isShown":Z
    :cond_f
    const-string/jumbo v6, " User Interaction: User actionDiscoverable mode status has changed to discoverable failed Reason: MDM policy"

    .line 842
    .restart local v6    # "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 843
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    move v2, v1

    .line 842
    invoke-static/range {v0 .. v7}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertMDMLog(Landroid/content/Context;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_7

    .line 850
    .end local v6    # "message":Ljava/lang/String;
    .end local v8    # "isShown":Z
    .end local v11    # "numberOfAvailableDevices":I
    .end local v12    # "numberOfPairedDevices":I
    :pswitch_1
    const v10, 0x7f0b1087

    .line 851
    goto/16 :goto_0

    .line 854
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setListViewVisible(I)V

    .line 855
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setOffMessage()V

    .line 857
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 858
    const v10, 0x7f0b106c

    .line 861
    :cond_10
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 865
    :pswitch_3
    const v10, 0x7f0b1086

    .line 866
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    .line 867
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    goto/16 :goto_0

    .line 876
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 879
    :cond_12
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setProgressBarVisible(Z)V

    goto/16 :goto_2

    .line 763
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDeviceName()V
    .locals 4

    .prologue
    .line 1229
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1230
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1231
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1228
    :cond_0
    :goto_0
    return-void

    .line 1232
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 1233
    const-string/jumbo v1, "BluetoothSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDeviceName :: change device name to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public ShowChinaPermissionPopUp()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 1249
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1250
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1251
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040055

    invoke-virtual {v2, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1253
    .local v3, "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1254
    const-string/jumbo v8, "bluetooth_security_on_check"

    .line 1253
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1255
    .local v5, "settingValue":I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1256
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0b03dd

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1258
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c004f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 1262
    .local v4, "radioButtonItems":[Ljava/lang/CharSequence;
    if-ne v5, v6, :cond_0

    .line 1263
    :goto_0
    new-instance v7, Lcom/android/settings/bluetooth/BluetoothSettings$8;

    invoke-direct {v7, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$8;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1260
    invoke-virtual {v0, v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1286
    new-instance v6, Lcom/android/settings/bluetooth/BluetoothSettings$9;

    invoke-direct {v6, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$9;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1285
    const v7, 0x7f0b10f5

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1292
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1293
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v9, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1294
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 1248
    return-void

    .line 1262
    :cond_0
    const/4 v6, 0x2

    goto :goto_0
.end method

.method addPreferencesForActivity()V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method connectBixbyDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    const/4 v0, 0x1

    .line 1561
    if-nez p1, :cond_0

    .line 1562
    return-void

    .line 1564
    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsFind:Z

    .line 1565
    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    .line 1560
    return-void
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1225
    const v0, 0x7f0b1890

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 228
    const/16 v0, 0x18

    return v0
.end method

.method initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 1168
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 1169
    .local v0, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 1171
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 1167
    :cond_0
    return-void
.end method

.method public isChinaSpecOption()Z
    .locals 4

    .prologue
    .line 1238
    const/4 v1, 0x0

    .line 1239
    .local v1, "ret":Z
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1240
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1241
    .local v0, "ChinaNalSecurityType":Ljava/lang/String;
    const-string/jumbo v2, "ChinaNalSecurity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1242
    const/4 v1, 0x1

    .line 1245
    .end local v0    # "ChinaNalSecurityType":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public isPackageExists(Ljava/lang/String;)Z
    .locals 6
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1213
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1214
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 1215
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "packageInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1216
    .local v0, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1217
    const/4 v4, 0x1

    return v4

    .line 1220
    .end local v0    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v5
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 233
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 234
    iput-boolean v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 235
    if-nez p1, :cond_3

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    .line 236
    const-string/jumbo v7, "BluetoothSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onActivityCreated :: mInitiateScan : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v7

    const v10, 0x1020004

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 239
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v10, 0x30

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 240
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const/4 v10, 0x5

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 241
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0f026e

    invoke-virtual {v7, v10, v11}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 242
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d012a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 243
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    .line 244
    .local v2, "leftPadding":I
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    .line 245
    .local v3, "rightPadding":I
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    .line 246
    .local v1, "bottomPadding":I
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0a024f

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 247
    .local v6, "topPadding":I
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v6, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 250
    iget-boolean v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v7, :cond_6

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setListDivider(Landroid/graphics/drawable/InsetDrawable;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 254
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 256
    new-instance v7, Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v10, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v7, v0, v10}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    iput-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 257
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setupSwitchBar()V

    .line 258
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 259
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/widget/ToggleSwitch;->requestFocus()Z

    .line 262
    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/settings/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 264
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    if-nez v7, :cond_4

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "action_bar"

    const-string/jumbo v10, "id"

    const-string/jumbo v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 266
    .local v5, "toolbar":Landroid/view/ViewGroup;
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 282
    .end local v0    # "activity":Lcom/android/settings/SettingsActivity;
    .end local v5    # "toolbar":Landroid/view/ViewGroup;
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "ro.build.scafe.size"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "tall"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0236

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setListMinimumHeight(I)V

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "com.android.bluetooth"

    .line 287
    const-string/jumbo v10, "BLSM"

    iget-boolean v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-eqz v7, :cond_7

    const-string/jumbo v7, "BluetoothScanDialog"

    .line 286
    :goto_2
    invoke-static {v8, v9, v10, v7}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.android.bluetooth"

    .line 291
    const-string/jumbo v9, "BLHM"

    .line 290
    invoke-static {v7, v8, v9}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_2
    return-void

    .end local v1    # "bottomPadding":I
    .end local v2    # "leftPadding":I
    .end local v3    # "rightPadding":I
    .end local v6    # "topPadding":I
    :cond_3
    move v7, v9

    .line 235
    goto/16 :goto_0

    .line 268
    .restart local v0    # "activity":Lcom/android/settings/SettingsActivity;
    .restart local v1    # "bottomPadding":I
    .restart local v2    # "leftPadding":I
    .restart local v3    # "rightPadding":I
    .restart local v6    # "topPadding":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v10, "right_pane_toolbar"

    const-string/jumbo v11, "id"

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 270
    .restart local v5    # "toolbar":Landroid/view/ViewGroup;
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 271
    .local v4, "titleView":Landroid/view/View;
    instance-of v7, v4, Landroid/widget/TextView;

    if-eqz v7, :cond_5

    .line 272
    check-cast v4, Landroid/widget/TextView;

    .end local v4    # "titleView":Landroid/view/View;
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 276
    :cond_5
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    goto/16 :goto_1

    .line 279
    .end local v0    # "activity":Lcom/android/settings/SettingsActivity;
    .end local v5    # "toolbar":Landroid/view/ViewGroup;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->initListViewForDialog()V

    goto/16 :goto_1

    .line 287
    :cond_7
    const-string/jumbo v7, "BluetoothSettings"

    goto :goto_2
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 222
    instance-of v0, p1, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    .line 223
    const-string/jumbo v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAttach, mIsBtScanDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 6
    .param p1, "bluetoothState"    # I

    .prologue
    const/16 v2, 0xa

    const/16 v5, 0xc

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 930
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 932
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyStateId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 933
    const-string/jumbo v0, "BluetoothOn"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 934
    if-ne p1, v5, :cond_3

    .line 935
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    const-string/jumbo v0, "Bluetooth"

    const-string/jumbo v1, "AlreadyON"

    const-string/jumbo v2, "no"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Root"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 939
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendResponseAndInit(Z)V

    .line 960
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 961
    if-ne p1, v5, :cond_7

    .line 962
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 967
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 929
    return-void

    .line 940
    :cond_3
    if-ne p1, v2, :cond_1

    .line 941
    const-string/jumbo v0, "Bluetooth"

    const-string/jumbo v1, "AlreadyON"

    const-string/jumbo v2, "no"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Root"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 943
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendResponseAndInit(Z)V

    goto :goto_0

    .line 945
    :cond_4
    const-string/jumbo v0, "BluetoothOff"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 946
    if-ne p1, v2, :cond_6

    .line 947
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 948
    const-string/jumbo v0, "Bluetooth"

    const-string/jumbo v1, "AlreadyOFF"

    const-string/jumbo v2, "no"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Root"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 951
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendResponseAndInit(Z)V

    goto :goto_0

    .line 952
    :cond_6
    if-ne p1, v5, :cond_1

    .line 953
    const-string/jumbo v0, "Bluetooth"

    const-string/jumbo v1, "AlreadyOFF"

    const-string/jumbo v2, "no"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Root"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 955
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendResponseAndInit(Z)V

    goto :goto_0

    .line 964
    :cond_7
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 470
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 469
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 1146
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1177
    const-string/jumbo v2, "BluetoothSettings"

    const-string/jumbo v5, "onCreate"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1179
    sput-boolean v4, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    .line 1182
    :try_start_0
    const-string/jumbo v2, "com.samsung.helphub"

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1183
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v5, 0x2

    if-lt v2, v5, :cond_2

    move v2, v3

    .line 1182
    :goto_0
    sput-boolean v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mInteractiveHelp:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1189
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1190
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v1

    .line 1191
    .local v1, "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    invoke-virtual {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1192
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsEmergencyMode:Z

    .line 1193
    sput-boolean v4, Lcom/android/settings/bluetooth/BluetoothSettings;->mInteractiveHelp:Z

    .line 1198
    .end local v1    # "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1199
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/guide/GuideFragment;->dismissHelpDialog(Landroid/app/Activity;)V

    .line 1203
    :cond_1
    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 1176
    return-void

    :cond_2
    move v2, v4

    .line 1183
    goto :goto_0

    :cond_3
    move v2, v4

    .line 1182
    goto :goto_0

    .line 1184
    :catch_0
    move-exception v0

    .line 1185
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 475
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v3, :cond_0

    return-void

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 479
    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v3, :cond_2

    const/4 v1, 0x0

    .line 480
    :goto_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    .line 481
    .local v0, "isDiscovering":Z
    if-eqz v0, :cond_3

    const v3, 0x7f0b157d

    :goto_1
    const/4 v4, 0x1

    invoke-interface {p1, v5, v4, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    .line 483
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 485
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 486
    return-void

    .line 479
    .end local v0    # "isDiscovering":Z
    :cond_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v1

    .local v1, "isEnabled":Z
    goto :goto_0

    .line 481
    .end local v1    # "isEnabled":Z
    .restart local v0    # "isDiscovering":Z
    :cond_3
    const v3, 0x7f0b1067

    goto :goto_1

    .line 489
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, "salesCode":Ljava/lang/String;
    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMoreOptionDeltaTargets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 491
    const/4 v3, 0x3

    const v4, 0x7f0b107b

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 494
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsEmergencyMode:Z

    if-nez v3, :cond_6

    .line 495
    const-string/jumbo v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 499
    :cond_5
    const v3, 0x7f0b0389

    invoke-interface {p1, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 505
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 506
    const/4 v3, 0x6

    const v4, 0x7f0b03d5

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 516
    :cond_7
    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMoreOptionDeltaTargets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 517
    sget-boolean v3, Lcom/android/settings/bluetooth/BluetoothSettings;->mInteractiveHelp:Z

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 518
    const/4 v3, 0x4

    const v4, 0x7f0b03dc

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 523
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isChinaSpecOption()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 524
    const/4 v3, 0x5

    const v4, 0x7f0b03dd

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 528
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 474
    return-void

    .line 496
    :cond_a
    const v3, 0x7f0b0388

    invoke-interface {p1, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 309
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDestroyView()V

    .line 311
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->teardownSwitchBar()V

    .line 308
    :cond_0
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 1150
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 1152
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyStateId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 1154
    :cond_0
    const-string/jumbo v0, "BluetoothDeviceConnect"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1155
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1156
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->connectBixbyDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 1149
    :cond_1
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 11
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x0

    const/16 v8, 0xc

    .line 1040
    const-string/jumbo v5, "BluetoothSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onDeviceBondStateChanged :: bondState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 1042
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v6

    .line 1041
    invoke-direct {v4, v5, p1, v6}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;)V

    .line 1044
    .local v4, "preference":Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    if-eq p2, v8, :cond_0

    if-ne p2, v10, :cond_8

    .line 1045
    :cond_0
    if-ne p2, v8, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 1047
    :cond_1
    if-ne p2, v8, :cond_6

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 1048
    .local v1, "insertDeviceGroup":Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    :goto_0
    if-ne p2, v8, :cond_7

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 1050
    .local v0, "deleteDeviceGroup":Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->readyToInsertAnimation(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v3

    .line 1051
    .local v3, "isStartInsertAnimation":Z
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->readyToDeleteAnimation(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v2

    .line 1052
    .local v2, "isStartDeleteAnimation":Z
    if-nez v3, :cond_2

    if-eqz v2, :cond_4

    .line 1053
    :cond_2
    if-ne p2, v10, :cond_3

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v5

    if-nez v5, :cond_3

    .line 1054
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v5, v9}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setVisibleView(Z)V

    .line 1056
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object v5

    invoke-virtual {v5, v1, v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setInsertDeleteAnimation(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 1068
    .end local v0    # "deleteDeviceGroup":Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .end local v1    # "insertDeviceGroup":Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .end local v2    # "isStartDeleteAnimation":Z
    .end local v3    # "isStartInsertAnimation":Z
    :cond_4
    :goto_2
    const-string/jumbo v5, "BluetoothDeviceConnect"

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-ne p2, v10, :cond_5

    .line 1069
    const-string/jumbo v5, "Name"

    const-string/jumbo v6, "Match"

    const-string/jumbo v7, "no"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    const-string/jumbo v5, "Name"

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyDeviceName:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->requestNlg()V

    .line 1072
    invoke-direct {p0, v9}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendResponseAndInit(Z)V

    .line 1039
    :cond_5
    return-void

    .line 1047
    :cond_6
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .restart local v1    # "insertDeviceGroup":Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    goto :goto_0

    .line 1048
    :cond_7
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .restart local v0    # "deleteDeviceGroup":Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    goto :goto_1

    .line 1061
    .end local v0    # "deleteDeviceGroup":Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .end local v1    # "insertDeviceGroup":Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v5

    iget-boolean v5, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-nez v5, :cond_9

    .line 1062
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v5

    iget-boolean v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    invoke-direct {p0, v5, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    goto :goto_2

    .line 1064
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v5

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    goto :goto_2
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 5
    .param p1, "btPreference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 651
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 654
    if-eqz p1, :cond_1

    .line 655
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 661
    .local v0, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 663
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-eqz v1, :cond_2

    .line 664
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.android.bluetooth"

    .line 665
    const-string/jumbo v3, "BDCC"

    const-string/jumbo v4, "ScanDialog"

    .line 664
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 650
    return-void

    .line 657
    .end local v0    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :cond_1
    const-string/jumbo v1, "BluetoothSettings"

    const-string/jumbo v2, "onDevicePreferenceClick() - preference is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return-void

    .line 667
    .restart local v0    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.android.bluetooth"

    .line 668
    const-string/jumbo v3, "BDCC"

    const-string/jumbo v4, "BluetoothSettings"

    .line 667
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 670
    :cond_3
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSppOnlyDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.android.bluetooth"

    .line 672
    const-string/jumbo v3, "BDDC"

    const-string/jumbo v4, "Bluetooth Settings"

    .line 671
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v4, 0x7f0b03e1

    const v3, 0x7f0b03d5

    const/4 v6, 0x0

    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 533
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 638
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 535
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "onOptionsItemSelected :: Stop scanning"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 539
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 540
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 538
    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 542
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 553
    :cond_0
    :goto_0
    return v13

    .line 544
    :cond_1
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "onOptionsItemSelected :: Start scanning"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 547
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 548
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 546
    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 550
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    goto :goto_0

    .line 556
    :pswitch_1
    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 559
    :cond_2
    const v11, 0x7f0b04de

    .line 562
    .local v11, "mTitleResId":I
    :goto_1
    invoke-static {v11}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->newInstance(I)Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    move-result-object v12

    .line 563
    .local v12, "newFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "dialog"

    invoke-virtual {v12, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 566
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.bluetooth"

    .line 567
    const-string/jumbo v2, "BSMO"

    const-string/jumbo v3, "Rename Device"

    .line 566
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    return v13

    .line 557
    .end local v11    # "mTitleResId":I
    .end local v12    # "newFragment":Landroid/app/DialogFragment;
    :cond_3
    const v11, 0x7f0b04e8

    .line 556
    .restart local v11    # "mTitleResId":I
    goto :goto_1

    .line 570
    .end local v11    # "mTitleResId":I
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 571
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.bluetooth"

    .line 572
    const-string/jumbo v2, "BSMO"

    const-string/jumbo v3, "Received Files"

    .line 571
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 576
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 577
    return v13

    .line 580
    .end local v9    # "intent":Landroid/content/Intent;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.bluetooth"

    .line 581
    const-string/jumbo v2, "BSMO"

    const-string/jumbo v3, "Help"

    .line 580
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInteractiveHelp:Z

    if-eqz v0, :cond_4

    .line 586
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.helphub"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 587
    .local v8, "info":Landroid/content/pm/PackageInfo;
    iget v0, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 588
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.helphub.HELP"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 589
    .local v10, "intent_help":Landroid/content/Intent;
    const-string/jumbo v0, "helphub:section"

    const-string/jumbo v1, "bluetooth"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    invoke-virtual {p0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->startActivity(Landroid/content/Intent;)V

    .line 600
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v10    # "intent_help":Landroid/content/Intent;
    :cond_4
    :goto_2
    return v13

    .line 591
    .restart local v8    # "info":Landroid/content/pm/PackageInfo;
    :cond_5
    iget v0, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 592
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.helphub.HELP"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .restart local v10    # "intent_help":Landroid/content/Intent;
    const-string/jumbo v0, "helphub:appid"

    const-string/jumbo v1, "bluetooth"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    invoke-virtual {p0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 596
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v10    # "intent_help":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 597
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 603
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.bluetooth"

    .line 604
    const-string/jumbo v2, "BSMO"

    const-string/jumbo v3, "onoff popup settings"

    .line 603
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->ShowChinaPermissionPopUp()V

    .line 607
    return v13

    .line 610
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.bluetooth"

    .line 611
    const-string/jumbo v4, "BSMO"

    const-string/jumbo v5, "Bluetooth Control History"

    .line 610
    invoke-static {v0, v1, v4, v5}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_6

    .line 614
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 615
    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, v2

    .line 614
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 623
    :goto_3
    return v13

    .line 618
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 619
    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, v2

    .line 618
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_3

    .line 626
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_7

    .line 627
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 628
    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move v3, v4

    move-object v4, v2

    move-object v5, v2

    .line 627
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 636
    :goto_4
    return v13

    .line 631
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 632
    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move v3, v4

    move-object v4, v2

    move-object v5, v2

    .line 631
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_4

    .line 533
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

.method public onPause()V
    .locals 12

    .prologue
    const/4 v1, 0x5

    const/4 v3, 0x0

    .line 412
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 414
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v2, "onPause"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v0, :cond_0

    .line 416
    sput-boolean v3, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v10, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mResumeTime:J

    sub-long v8, v4, v10

    .line 419
    .local v8, "remainTime":J
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "com.android.bluetooth"

    .line 420
    const-string/jumbo v4, "BSRT"

    .line 419
    invoke-static {v0, v2, v4, v8, v9}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 423
    .end local v8    # "remainTime":J
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-eqz v0, :cond_4

    .line 428
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-eqz v0, :cond_5

    .line 433
    :cond_2
    :goto_1
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    .line 436
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_3

    .line 437
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 445
    const-string/jumbo v6, " User Interaction: User actionDiscoverable mode status has changed to not discoverable succeeded"

    .line 446
    .local v6, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 447
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    move v2, v1

    .line 446
    invoke-static/range {v0 .. v7}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertMDMLog(Landroid/content/Context;IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 451
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 452
    return-void

    .line 424
    .end local v6    # "message":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setProgressBarVisible(Z)V

    goto :goto_0

    .line 429
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    const v2, 0x7f0b1067

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 455
    .restart local v6    # "message":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    .line 456
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 460
    :cond_7
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyStateId:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsFind:Z

    if-eqz v0, :cond_9

    .line 466
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "BluetoothSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 411
    return-void

    .line 460
    :cond_9
    const-string/jumbo v0, "BluetoothDeviceConnect"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 461
    const-string/jumbo v0, "Name"

    const-string/jumbo v1, "Match"

    const-string/jumbo v2, "no"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string/jumbo v0, "Name"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyDeviceName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->requestNlg()V

    .line 464
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendResponseAndInit(Z)V

    goto :goto_2
.end method

.method public onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V
    .locals 6
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .param p3, "newState"    # I
    .param p4, "oldState"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1111
    const-string/jumbo v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProfileStateChanged :: cachedDevice - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", profile - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", newState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", oldState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyStateId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1113
    const-string/jumbo v0, "BluetoothDeviceConnect"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1114
    if-ne p3, v5, :cond_2

    if-ne p4, v4, :cond_2

    .line 1115
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1116
    const-string/jumbo v0, "Name"

    const-string/jumbo v1, "AlreadyConnected"

    const-string/jumbo v2, "no"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    const-string/jumbo v0, "Name"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyDeviceName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->requestNlg()V

    .line 1120
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendResponseAndInit(Z)V

    .line 1110
    :cond_1
    :goto_0
    return-void

    .line 1121
    :cond_2
    if-nez p3, :cond_1

    .line 1122
    const-string/jumbo v0, "Name"

    const-string/jumbo v1, "AlreadyConnected"

    const-string/jumbo v2, "no"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const-string/jumbo v0, "Name"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyDeviceName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->requestNlg()V

    .line 1125
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendResponseAndInit(Z)V

    goto :goto_0

    .line 1127
    :cond_3
    const-string/jumbo v0, "BluetoothDeviceDisconnect"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1128
    if-nez p3, :cond_5

    const/4 v0, 0x3

    if-ne p4, v0, :cond_5

    .line 1129
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1130
    const-string/jumbo v0, "Name"

    const-string/jumbo v1, "AlreadyConnected"

    const-string/jumbo v2, "yes"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    const-string/jumbo v0, "Name"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyDeviceName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->requestNlg()V

    .line 1134
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendResponseAndInit(Z)V

    goto :goto_0

    .line 1135
    :cond_5
    if-ne p3, v5, :cond_1

    .line 1136
    const-string/jumbo v0, "Name"

    const-string/jumbo v1, "AlreadyConnected"

    const-string/jumbo v2, "yes"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    const-string/jumbo v0, "Name"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyDeviceName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->requestNlg()V

    .line 1139
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendResponseAndInit(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mResumeTime:J

    .line 338
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    if-eqz v0, :cond_0

    .line 339
    iput-boolean v11, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    .line 340
    sput-boolean v11, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    .line 343
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v0, :cond_1

    .line 344
    sput-boolean v12, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    .line 352
    :cond_2
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 356
    const-string/jumbo v0, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 357
    .local v1, "uri":Landroid/net/Uri;
    const/4 v10, 0x1

    .line 358
    .local v10, "isDiscoverableEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 359
    const-string/jumbo v3, "isDiscoverableEnabled"

    move-object v4, v2

    move-object v5, v2

    .line 358
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 360
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 362
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 364
    const-string/jumbo v0, "isDiscoverableEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    const/4 v10, 0x1

    .line 370
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 374
    :cond_3
    :goto_1
    if-nez v10, :cond_4

    .line 375
    iput-boolean v12, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    .line 377
    :cond_4
    const-string/jumbo v0, "BluetoothSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDiscoverableEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mPolicyEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 382
    .local v9, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 385
    iput-boolean v12, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->removeAllGroupDevices()V

    .line 389
    const v0, 0x7f0b106c

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setEmptyView(I)V

    .line 390
    return-void

    .line 364
    .end local v9    # "intentFilter":Landroid/content/IntentFilter;
    :cond_5
    const/4 v10, 0x0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v7

    .line 368
    .local v7, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_1
    const-string/jumbo v0, "BluetoothSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CursorIndexOutOfBoundsException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 365
    .end local v7    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catch_1
    move-exception v8

    .line 366
    .local v8, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_2
    const-string/jumbo v0, "BluetoothSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CursorWindowAllocationException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 369
    .end local v8    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_0
    move-exception v0

    .line 370
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 369
    throw v0

    .line 393
    .restart local v9    # "intentFilter":Landroid/content/IntentFilter;
    :cond_6
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_7

    .line 394
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    invoke-direct {p0, v0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 396
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsHelpDialogHidden:Z

    if-eqz v0, :cond_8

    .line 397
    const-string/jumbo v0, "BluetoothSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "before showing help dialog in tablet + mIsHelpDialogHidden = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsHelpDialogHidden:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/guide/GuideFragment;->showHelpDialog(Landroid/app/Activity;)V

    .line 399
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v2, "after showing help dialog in tablet"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iput-boolean v11, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsHelpDialogHidden:Z

    .line 406
    :goto_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "BluetoothSettings"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 335
    return-void

    .line 402
    :cond_8
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v2, "showing help dialog in tablet failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onScanningStateChanged(Z)V
    .locals 8
    .param p1, "started"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 972
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 974
    const-string/jumbo v2, "BluetoothSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onScanningStateChanged :: is start scanning "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-eqz v2, :cond_6

    .line 980
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-eqz v2, :cond_7

    .line 984
    :cond_1
    :goto_1
    if-nez p1, :cond_e

    .line 985
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v2

    iget-boolean v2, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-nez v2, :cond_c

    .line 986
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v2, :cond_9

    const/4 v1, 0x0

    .line 987
    .local v1, "logCount":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v5, "com.android.bluetooth"

    .line 988
    const-string/jumbo v6, "BSDC"

    mul-int/lit16 v7, v1, 0x3e8

    .line 987
    invoke-static {v2, v5, v6, v7}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 990
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v5, 0xc

    if-ne v2, v5, :cond_b

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v2, :cond_b

    .line 991
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_3
    move v0, v2

    .line 992
    .local v0, "isShown":Z
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setNoDeviceLayout(Z)V

    .line 997
    .end local v0    # "isShown":Z
    .end local v1    # "logCount":I
    :goto_5
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyStateId:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 998
    const-string/jumbo v2, "BluetoothDeviceConnect"

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsFind:Z

    if-eqz v2, :cond_d

    .line 1003
    :cond_2
    const-string/jumbo v2, "BluetoothStopScanning"

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1004
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1005
    const-string/jumbo v2, "BluetoothScanning"

    const-string/jumbo v4, "On"

    const-string/jumbo v5, "yes"

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->requestNlg()V

    .line 1008
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendResponseAndInit(Z)V

    .line 1033
    :cond_4
    :goto_6
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1034
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 971
    :cond_5
    return-void

    .line 977
    :cond_6
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/SwitchBar;->setProgressBarVisible(Z)V

    goto/16 :goto_0

    .line 981
    :cond_7
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-eqz p1, :cond_8

    const v2, 0x7f0b157d

    :goto_7
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_8
    const v2, 0x7f0b1067

    goto :goto_7

    .line 986
    :cond_9
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v1

    .restart local v1    # "logCount":I
    goto/16 :goto_2

    :cond_a
    move v2, v4

    .line 991
    goto :goto_3

    :cond_b
    move v0, v4

    .line 990
    goto :goto_4

    .line 994
    .end local v1    # "logCount":I
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object v2

    iput-boolean v3, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mNeedUpdateUi:Z

    goto :goto_5

    .line 999
    :cond_d
    const-string/jumbo v2, "Name"

    const-string/jumbo v3, "Match"

    const-string/jumbo v5, "no"

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const-string/jumbo v2, "Name"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyDeviceName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->requestNlg()V

    .line 1002
    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendResponseAndInit(Z)V

    goto :goto_6

    .line 1012
    :cond_e
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyStateId:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1013
    const-string/jumbo v2, "BluetoothStartScanning"

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1014
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->requestNlg()V

    .line 1015
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendResponseAndInit(Z)V

    .line 1018
    :cond_f
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v2, :cond_10

    .line 1019
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addPreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    .line 1021
    :cond_10
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->removePreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V

    .line 1023
    :cond_11
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V

    .line 1024
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->removeSelectedGroupDevices()V

    .line 1027
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoveryHelpMsgPreference:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoveryHelpMsgPreference:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->containsGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1028
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDiscoveryHelpMsgPreference()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addPreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    goto/16 :goto_6
.end method

.method onStopScanningState()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 325
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 326
    .local v1, "logCount":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "com.android.bluetooth"

    .line 327
    const-string/jumbo v5, "BSDC"

    mul-int/lit16 v6, v1, 0x3e8

    .line 326
    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 329
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v3, :cond_2

    .line 330
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v0, v2

    .line 331
    .local v0, "isShown":Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setNoDeviceLayout(Z)V

    .line 324
    return-void

    .line 325
    .end local v0    # "isShown":Z
    .end local v1    # "logCount":I
    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v1

    .restart local v1    # "logCount":I
    goto :goto_0

    :cond_2
    move v0, v2

    .line 329
    goto :goto_1
.end method

.method public startScanning()V
    .locals 2

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-eqz v0, :cond_1

    .line 643
    :cond_0
    return-void

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 641
    return-void
.end method
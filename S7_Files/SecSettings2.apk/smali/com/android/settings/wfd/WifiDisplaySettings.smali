.class public Lcom/android/settings/wfd/WifiDisplaySettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wfd/WifiDisplaySettings$10;,
        Lcom/android/settings/wfd/WifiDisplaySettings$11;,
        Lcom/android/settings/wfd/WifiDisplaySettings$12;,
        Lcom/android/settings/wfd/WifiDisplaySettings$1;,
        Lcom/android/settings/wfd/WifiDisplaySettings$2;,
        Lcom/android/settings/wfd/WifiDisplaySettings$3;,
        Lcom/android/settings/wfd/WifiDisplaySettings$4;,
        Lcom/android/settings/wfd/WifiDisplaySettings$5;,
        Lcom/android/settings/wfd/WifiDisplaySettings$6;,
        Lcom/android/settings/wfd/WifiDisplaySettings$7;,
        Lcom/android/settings/wfd/WifiDisplaySettings$8;,
        Lcom/android/settings/wfd/WifiDisplaySettings$9;,
        Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;,
        Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;,
        Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;,
        Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;,
        Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;,
        Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;,
        Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    }
.end annotation


# static fields
.field private static final SS_WFD_SERVICE_WITH_GCAST:Z

.field public static mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public PlayerType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private changeString:Ljava/lang/String;

.field private edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private endConnect:Landroid/view/MenuItem;

.field private extraCauseOfStart:I

.field private isChanged:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mAvFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

.field private mChange_device_info:Landroid/widget/LinearLayout;

.field private mConnectTypeForLogging:Ljava/lang/String;

.field private mConnectingAddressForSmartSchool:Ljava/lang/String;

.field private mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

.field private mContext:Landroid/content/Context;

.field private mDeviceNameErrorText:Landroid/widget/TextView;

.field protected mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

.field private mDlnaHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mDlnaList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mDlnaServiceConnectListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

.field private mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

.field private mEmptyView:Landroid/widget/TextView;

.field private mGalleryUri:Landroid/content/Intent;

.field private mGlobalEditDeviceName:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private final mImageFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

.field private mInPickerDialog:Z

.field private mIsKnoxMode:Z

.field private mMenu:Landroid/view/ContextMenu;

.field private mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mNo_device_found_layout:Landroid/widget/LinearLayout;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mPendingChanges:I

.field private mPinConnectionRequested:Z

.field private mPlayerType:I

.field private mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

.field private mReadyToConnect:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRenameDialog:Landroid/app/AlertDialog;

.field private final mRestartScan:Ljava/lang/Runnable;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mRouter:Landroid/media/MediaRouter;

.field private final mRouterCallback:Landroid/media/MediaRouter$Callback;

.field private final mScanTimeout:Ljava/lang/Runnable;

.field private final mScreenSharingFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

.field private final mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mStartWithConnectedState:Z

.field private mStarted:Z

.field private mTempDeviceName:Ljava/lang/String;

.field protected mTurningWifiDisplayOn:Z

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

.field protected mWifiDisplayOnSetting:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private preChecked:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mImageFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScreenSharingFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTempDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceNameErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/media/MediaServiceProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/wfd/WifiDisplaySettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->isChanged:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/media/MediaDeviceFinder;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/media/MediaServiceProvider;)Lcom/samsung/android/allshare/media/MediaServiceProvider;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/settings/wfd/WifiDisplaySettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTempDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isAnyDeviceConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->prepareConnection()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/settings/wfd/WifiDisplaySettings;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cause"    # I
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceType"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/settings/wfd/WifiDisplaySettings;I)V
    .locals 0
    .param p1, "changes"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->setPreferenceScreenEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->showDisconnectDialog()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/SemWifiDisplay;)V
    .locals 0
    .param p1, "display"    # Landroid/hardware/display/SemWifiDisplay;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->showOptionsDialog(Landroid/hardware/display/SemWifiDisplay;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isGCastConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)Ljava/lang/String;
    .locals 1
    .param p1, "device"    # Lcom/samsung/android/allshare/Device;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getScreenSharingP2pMacAddr(Lcom/samsung/android/allshare/Device;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semGetDlnaDeviceUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectDevice()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings/wfd/WifiDisplaySettings;I)V
    .locals 0
    .param p1, "enable"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->handlePreferenceScreenEnabled(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 176
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x138e4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    .line 145
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    .line 234
    const-string/jumbo v0, "QIC_SET"

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "TYPE_VIDEO"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "TYPE_IMAGE"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "TYPE_MUSIC"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "TYPE_MUSIC_CHN"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->PlayerType:Ljava/util/ArrayList;

    .line 240
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 275
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$1;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;

    .line 600
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$2;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1019
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$3;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    .line 1030
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$4;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    .line 1378
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$5;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaServiceConnectListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    .line 1405
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$6;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 1417
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$7;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mImageFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 1429
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$8;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScreenSharingFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 1441
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$9;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 1625
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$10;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$10;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1686
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$11;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 1935
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$12;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    .line 309
    return-void
.end method

.method private applyState(Z)V
    .locals 37
    .param p1, "invalidateOptions"    # Z

    .prologue
    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v31

    .line 720
    .local v31, "wifiDisplayStatus":Landroid/hardware/display/SemWifiDisplayStatus;
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->getFeatureState()I

    move-result v16

    .line 721
    .local v16, "featureState":I
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v5

    .line 723
    .local v5, "activeDisplayState":I
    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "applyState = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/16 v32, 0x1

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v32, v0

    if-eqz v32, :cond_4

    .line 727
    :cond_0
    const/16 v32, 0x3

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 728
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    .line 734
    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v32

    if-nez v32, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 738
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_b

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    move/from16 v32, v0

    if-nez v32, :cond_a

    .line 740
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    move/from16 v32, v0

    if-nez v32, :cond_7

    .line 741
    const/16 v32, 0x2

    move/from16 v0, v32

    if-eq v5, v0, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isGCastConnected()Z

    move-result v32

    .line 740
    if-eqz v32, :cond_7

    .line 742
    :cond_3
    const-string/jumbo v33, "WifiDisplaySettings"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isGCastConnected()Z

    move-result v32

    if-eqz v32, :cond_6

    const-string/jumbo v32, "GCast"

    :goto_1
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v34, " is connected.. Settings finish()"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    .line 744
    return-void

    .line 726
    :cond_4
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    goto/16 :goto_0

    .line 729
    :cond_5
    const/16 v32, 0x2

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v32, v0

    if-nez v32, :cond_1

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 731
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    goto/16 :goto_0

    .line 742
    :cond_6
    const-string/jumbo v32, "SemWifiDisplay"

    goto :goto_1

    .line 745
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v32, v0

    if-nez v32, :cond_a

    const/16 v32, 0x2

    move/from16 v0, v16

    move/from16 v1, v32

    if-eq v0, v1, :cond_8

    const/16 v32, 0x1

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 746
    :cond_8
    const-string/jumbo v32, "WifiDisplaySettings"

    const-string/jumbo v33, "SemWifiDisplay is disconnected.. Settings finish()"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/android/settings/wfd/WfdPickerDialog;

    move/from16 v32, v0

    if-eqz v32, :cond_9

    .line 748
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    .line 750
    :cond_9
    return-void

    .line 754
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    move/from16 v32, v0

    if-nez v32, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v32

    if-eqz v32, :cond_b

    .line 755
    const-string/jumbo v32, "WifiDisplaySettings"

    const-string/jumbo v33, "Dlna is connected.. Settings finish()"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    .line 757
    return-void

    .line 761
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    .line 762
    .local v24, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v32

    if-nez v32, :cond_c

    .line 764
    invoke-virtual/range {v24 .. v24}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 767
    :cond_c
    const/16 v32, 0x3

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_40

    .line 768
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v4

    .line 770
    .local v4, "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->getDisplays()[Landroid/hardware/display/SemWifiDisplay;

    move-result-object v12

    .line 771
    .local v12, "displays":[Landroid/hardware/display/SemWifiDisplay;
    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "applyState displays.length = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    array-length v0, v12

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    new-instance v11, Ljava/util/ArrayList;

    array-length v0, v12

    move/from16 v32, v0

    move/from16 v0, v32

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 773
    .local v11, "displayList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplay;>;"
    const/16 v32, 0x0

    array-length v0, v12

    move/from16 v33, v0

    :goto_2
    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_e

    aget-object v10, v12, v32

    .line 774
    .local v10, "d":Landroid/hardware/display/SemWifiDisplay;
    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->isAvailable()Z

    move-result v34

    if-eqz v34, :cond_d

    .line 775
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    :cond_d
    add-int/lit8 v32, v32, 0x1

    goto :goto_2

    .line 778
    .end local v10    # "d":Landroid/hardware/display/SemWifiDisplay;
    :cond_e
    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Landroid/hardware/display/SemWifiDisplay;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/display/SemWifiDisplay;

    .line 779
    .local v6, "availableDisplays":[Landroid/hardware/display/SemWifiDisplay;
    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "applyState availableDisplays.length = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    array-length v0, v6

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v32

    if-eqz v32, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    move/from16 v32, v0

    if-eqz v32, :cond_12

    .line 782
    const/16 v32, 0x0

    array-length v0, v6

    move/from16 v33, v0

    :goto_3
    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_f

    aget-object v10, v6, v32

    .line 783
    .restart local v10    # "d":Landroid/hardware/display/SemWifiDisplay;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v34

    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_11

    .line 784
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    .line 785
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForPrevDisconnect:Z

    .line 1013
    .end local v4    # "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    .end local v6    # "availableDisplays":[Landroid/hardware/display/SemWifiDisplay;
    .end local v10    # "d":Landroid/hardware/display/SemWifiDisplay;
    .end local v11    # "displayList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplay;>;"
    .end local v12    # "displays":[Landroid/hardware/display/SemWifiDisplay;
    :cond_f
    :goto_4
    if-eqz p1, :cond_10

    .line 1014
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 718
    :cond_10
    return-void

    .line 782
    .restart local v4    # "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    .restart local v6    # "availableDisplays":[Landroid/hardware/display/SemWifiDisplay;
    .restart local v10    # "d":Landroid/hardware/display/SemWifiDisplay;
    .restart local v11    # "displayList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplay;>;"
    .restart local v12    # "displays":[Landroid/hardware/display/SemWifiDisplay;
    :cond_11
    add-int/lit8 v32, v32, 0x1

    goto :goto_3

    .line 790
    .end local v10    # "d":Landroid/hardware/display/SemWifiDisplay;
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v32

    if-nez v32, :cond_f

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/Collection;->size()I

    move-result v15

    .line 795
    .local v15, "dlnaCount":I
    const/16 v29, 0x0

    .line 796
    .local v29, "routeCount":I
    const/16 v25, 0x0

    .line 797
    .local v25, "remoteDisplayRouteCount":I
    sget-boolean v32, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v32, :cond_14

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v29

    .line 799
    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "routeCount : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_5
    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_14

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v28

    .line 804
    .local v28, "route":Landroid/media/MediaRouter$RouteInfo;
    const/16 v32, 0x4

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v32

    if-eqz v32, :cond_13

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v32

    if-nez v32, :cond_13

    .line 805
    add-int/lit8 v25, v25, 0x1

    .line 801
    :cond_13
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 811
    .end local v18    # "i":I
    .end local v28    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/hardware/display/DisplayManager;->semGetLastConnectedDisplay(Z)Landroid/hardware/display/SemWifiDisplay;

    move-result-object v20

    .line 812
    .local v20, "lastConnectedDisplay":Landroid/hardware/display/SemWifiDisplay;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/DisplayManager;->semGetLastConnectedDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v21

    .line 813
    .local v21, "lastConnectedDlnaDevice":Landroid/hardware/display/SemDlnaDevice;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getLastConnectedGCastDevice()Ljava/lang/String;

    move-result-object v22

    .line 815
    .local v22, "lastConnectedGCastDevice":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wfd/Wfd_Certification;->getCertificationModeOn()Z

    move-result v32

    if-eqz v32, :cond_15

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/Wfd_Certification;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V

    .line 819
    :cond_15
    if-eqz v4, :cond_29

    const/16 v32, 0x2

    move/from16 v0, v32

    if-ne v5, v0, :cond_29

    .line 820
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->extraCauseOfStart:I

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_16

    .line 821
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    .line 822
    return-void

    .line 825
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    move-object/from16 v32, v0

    if-nez v32, :cond_19

    .line 826
    new-instance v32, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 831
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v9

    .line 832
    .local v9, "connectedState":I
    const/16 v32, 0xa

    move/from16 v0, v32

    if-eq v9, v0, :cond_17

    const/16 v32, 0xd

    move/from16 v0, v32

    if-ne v9, v0, :cond_1a

    .line 833
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v26

    .line 834
    .local v26, "remoteP2pMacAddr":Ljava/lang/String;
    if-eqz v26, :cond_1b

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "dlna$iterator":Ljava/util/Iterator;
    :cond_18
    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 836
    .local v13, "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_18

    .line 837
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDlnaPreference(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_7

    .line 828
    .end local v9    # "connectedState":I
    .end local v13    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .end local v14    # "dlna$iterator":Ljava/util/Iterator;
    .end local v26    # "remoteP2pMacAddr":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_6

    .line 842
    .restart local v9    # "connectedState":I
    :cond_1a
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v4, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/SemWifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 845
    :cond_1b
    array-length v0, v6

    move/from16 v32, v0

    if-nez v32, :cond_1c

    if-nez v25, :cond_1c

    if-nez v15, :cond_1c

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v32

    if-eqz v32, :cond_27

    .line 848
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 850
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1d

    .line 851
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v32

    if-eqz v32, :cond_28

    .line 852
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/wfd/WfdPickerDialog;->showProgressBar(Z)V

    .line 877
    .end local v9    # "connectedState":I
    :cond_1d
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    move/from16 v32, v0

    if-nez v32, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v32, v0

    if-eqz v32, :cond_f

    .line 878
    :cond_1e
    array-length v0, v6

    move/from16 v32, v0

    if-nez v32, :cond_1f

    if-nez v25, :cond_1f

    if-nez v15, :cond_1f

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v32

    if-eqz v32, :cond_2c

    .line 881
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 882
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wfd/WfdPickerDialog;->IsChangeDevice()Z

    move-result v32

    if-eqz v32, :cond_2e

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mChange_device_info:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 887
    :goto_a
    if-eqz v20, :cond_20

    .line 888
    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "applyState lastConnectedDisplay.getDeviceName() = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", lastConnectedDisplay.getDeviceAddress() = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_20
    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "applyState mDlnaList = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getBssid()Ljava/lang/String;

    move-result-object v8

    .line 892
    .local v8, "bssid":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getFrequency()I

    move-result v17

    .line 893
    .local v17, "frequency":I
    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "bssid : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", frequency : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "dlna$iterator":Ljava/util/Iterator;
    :cond_21
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_23

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 896
    .restart local v13    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isSupportMirroring()Z

    move-result v19

    .line 897
    .local v19, "isSupportScreenSharing":Z
    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    :goto_b
    if-nez v32, :cond_22

    .line 898
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v32

    if-eqz v32, :cond_30

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semGetDlnaDeviceUid()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_30

    .line 903
    :cond_22
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v32

    if-nez v32, :cond_21

    if-eqz v19, :cond_33

    if-eqz v20, :cond_33

    .line 904
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    .line 903
    if-eqz v32, :cond_33

    .line 905
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v8, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->canConnectTDLS(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Ljava/lang/String;I)Z

    move-result v32

    .line 903
    if-eqz v32, :cond_33

    .line 906
    if-nez v5, :cond_33

    .line 908
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_21

    .line 909
    const-string/jumbo v33, "WifiDisplaySettings"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "last connect to "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    if-eqz v19, :cond_34

    const-string/jumbo v32, "sharing"

    :goto_e
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v34, " device"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    new-instance v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    if-eqz v19, :cond_35

    sget-object v32, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->AP:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    :goto_f
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v13, v2}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    .line 913
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    .line 918
    .end local v13    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .end local v19    # "isSupportScreenSharing":Z
    :cond_23
    const/16 v32, 0x0

    array-length v0, v6

    move/from16 v33, v0

    :goto_10
    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_3b

    aget-object v10, v6, v32

    .line 919
    .restart local v10    # "d":Landroid/hardware/display/SemWifiDisplay;
    const/4 v7, 0x0

    .line 920
    .local v7, "both":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_24
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_25

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 921
    .restart local v13    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    const-string/jumbo v34, "WifiDisplaySettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "SemWifiDisplay Mac Address = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " Dlna Mac Address = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v34

    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_24

    .line 923
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v8, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->canConnectTDLS(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Ljava/lang/String;I)Z

    move-result v34

    .line 922
    if-eqz v34, :cond_24

    .line 924
    const/4 v7, 0x1

    .line 928
    .end local v13    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    :cond_25
    if-eqz v7, :cond_36

    .line 918
    :cond_26
    :goto_11
    add-int/lit8 v32, v32, 0x1

    goto :goto_10

    .line 846
    .end local v7    # "both":Z
    .end local v8    # "bssid":Ljava/lang/String;
    .end local v10    # "d":Landroid/hardware/display/SemWifiDisplay;
    .end local v14    # "dlna$iterator":Ljava/util/Iterator;
    .end local v17    # "frequency":I
    .restart local v9    # "connectedState":I
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_8

    .line 854
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/wfd/WfdPickerDialog;->showProgressBar(Z)V

    goto/16 :goto_9

    .line 857
    .end local v9    # "connectedState":I
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v32

    if-eqz v32, :cond_2b

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "dlna$iterator":Ljava/util/Iterator;
    :cond_2a
    :goto_12
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 859
    .restart local v13    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semGetDlnaDeviceUid()Ljava/lang/String;

    move-result-object v27

    .line 860
    .local v27, "retDeviceUid":Ljava/lang/String;
    if-eqz v27, :cond_2a

    .line 861
    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2a

    .line 862
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDlnaPreference(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_12

    .line 866
    .end local v13    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .end local v14    # "dlna$iterator":Ljava/util/Iterator;
    .end local v27    # "retDeviceUid":Ljava/lang/String;
    :cond_2b
    sget-boolean v32, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v32, :cond_1d

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isGCastConnected()Z

    move-result v32

    if-eqz v32, :cond_1d

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    move-object/from16 v32, v0

    const/16 v33, 0x4

    invoke-virtual/range {v32 .. v33}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v28

    .line 870
    .restart local v28    # "route":Landroid/media/MediaRouter$RouteInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;

    move-result-object v30

    .line 871
    .local v30, "routePreference":Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    if-eqz v30, :cond_1d

    .line 872
    const-string/jumbo v32, "WifiDisplaySettings"

    const-string/jumbo v33, "addPreference connected GCast"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    .line 879
    .end local v28    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v30    # "routePreference":Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 988
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_f

    .line 989
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v32

    if-eqz v32, :cond_3f

    .line 990
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/wfd/WfdPickerDialog;->showProgressBar(Z)V

    goto/16 :goto_4

    .line 885
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mChange_device_info:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 897
    .restart local v8    # "bssid":Ljava/lang/String;
    .restart local v13    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .restart local v14    # "dlna$iterator":Ljava/util/Iterator;
    .restart local v17    # "frequency":I
    .restart local v19    # "isSupportScreenSharing":Z
    :cond_2f
    const/16 v32, 0x0

    goto/16 :goto_b

    .line 899
    :cond_30
    if-eqz v19, :cond_31

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v8, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->canConnectTDLS(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Ljava/lang/String;I)Z

    move-result v32

    if-nez v32, :cond_32

    :cond_31
    if-nez v19, :cond_22

    .line 900
    :cond_32
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDlnaPreference(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    .line 907
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    move/from16 v32, v0

    if-nez v32, :cond_21

    if-eqz v21, :cond_21

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/display/SemDlnaDevice;->getUid()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    .line 903
    if-eqz v32, :cond_21

    goto/16 :goto_d

    .line 909
    :cond_34
    const-string/jumbo v32, "dlna"

    goto/16 :goto_e

    .line 911
    :cond_35
    sget-object v32, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->DLNA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    goto/16 :goto_f

    .line 931
    .end local v13    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .end local v19    # "isSupportScreenSharing":Z
    .restart local v7    # "both":Z
    .restart local v10    # "d":Landroid/hardware/display/SemWifiDisplay;
    :cond_36
    const-string/jumbo v34, "WifiDisplaySettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "applyState add wfd device = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-virtual {v10, v4}, Landroid/hardware/display/SemWifiDisplay;->equals(Landroid/hardware/display/SemWifiDisplay;)Z

    move-result v34

    if-nez v34, :cond_37

    .line 934
    const/16 v34, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v10, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/SemWifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 937
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingAddressForSmartSchool:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v34, v0

    sget-object v35, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_38

    .line 938
    if-nez v5, :cond_38

    .line 939
    const-string/jumbo v34, "WifiDisplaySettings"

    const-string/jumbo v35, "connect for smart-school"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    new-instance v34, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    sget-object v35, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingAddressForSmartSchool:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectWifiDisplay(Ljava/lang/String;)V

    .line 943
    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingAddressForSmartSchool:Ljava/lang/String;

    goto/16 :goto_11

    .line 944
    :cond_38
    if-eqz v20, :cond_39

    .line 945
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v34

    .line 944
    if-eqz v34, :cond_39

    .line 946
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v34

    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    .line 944
    if-eqz v34, :cond_39

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v34, v0

    sget-object v35, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_39

    if-nez v5, :cond_39

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v34

    if-eqz v34, :cond_3a

    .line 952
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/settings/wfd/Wfd_Certification;->getCertificationModeOn()Z

    move-result v34

    if-nez v34, :cond_26

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v34

    if-nez v34, :cond_26

    if-nez v5, :cond_26

    .line 953
    array-length v0, v6

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v34, v0

    sget-object v35, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_26

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v34

    if-nez v34, :cond_26

    .line 954
    const-string/jumbo v34, "WifiDisplaySettings"

    const-string/jumbo v35, "Only one device found"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    new-instance v34, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    sget-object v35, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v10, v2}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/SemWifiDisplay;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    .line 957
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    goto/16 :goto_11

    .line 948
    :cond_3a
    const-string/jumbo v34, "WifiDisplaySettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "connectLastConnection deviceInfo="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->getDeviceInfo()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    new-instance v34, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    sget-object v35, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v10, v2}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/SemWifiDisplay;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    .line 951
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    goto/16 :goto_11

    .line 964
    .end local v7    # "both":Z
    .end local v10    # "d":Landroid/hardware/display/SemWifiDisplay;
    :cond_3b
    sget-boolean v32, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v32, :cond_2d

    .line 965
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_13
    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_2d

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v28

    .line 968
    .restart local v28    # "route":Landroid/media/MediaRouter$RouteInfo;
    const/16 v32, 0x4

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v32

    if-eqz v32, :cond_3c

    .line 969
    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v32

    if-nez v32, :cond_3c

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    move-object/from16 v33, v0

    const/16 v34, 0x4

    invoke-virtual/range {v33 .. v34}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3d

    .line 965
    :cond_3c
    :goto_14
    add-int/lit8 v18, v18, 0x1

    goto :goto_13

    .line 971
    :cond_3d
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;

    move-result-object v30

    .line 972
    .restart local v30    # "routePreference":Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    if-eqz v30, :cond_3e

    .line 973
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 975
    :cond_3e
    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "route.getName() = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_3c

    .line 978
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_3c

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    .line 977
    if-eqz v32, :cond_3c

    .line 979
    const-string/jumbo v32, "WifiDisplaySettings"

    const-string/jumbo v33, "last connect to GCast device."

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    new-instance v32, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    sget-object v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->GCAST:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    .line 981
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    goto/16 :goto_14

    .line 992
    .end local v8    # "bssid":Ljava/lang/String;
    .end local v14    # "dlna$iterator":Ljava/util/Iterator;
    .end local v17    # "frequency":I
    .end local v18    # "i":I
    .end local v28    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v30    # "routePreference":Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/wfd/WfdPickerDialog;->showProgressBar(Z)V

    goto/16 :goto_4

    .line 997
    .end local v4    # "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    .end local v6    # "availableDisplays":[Landroid/hardware/display/SemWifiDisplay;
    .end local v11    # "displayList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplay;>;"
    .end local v12    # "displays":[Landroid/hardware/display/SemWifiDisplay;
    .end local v15    # "dlnaCount":I
    .end local v20    # "lastConnectedDisplay":Landroid/hardware/display/SemWifiDisplay;
    .end local v21    # "lastConnectedDlnaDevice":Landroid/hardware/display/SemDlnaDevice;
    .end local v22    # "lastConnectedGCastDevice":Ljava/lang/String;
    .end local v25    # "remoteDisplayRouteCount":I
    .end local v29    # "routeCount":I
    :cond_40
    const/16 v32, 0x2

    move/from16 v0, v16

    move/from16 v1, v32

    if-eq v0, v1, :cond_41

    .line 998
    const/16 v32, 0x1

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    .line 999
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    .line 1000
    const-string/jumbo v33, "device_policy"

    .line 999
    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/admin/DevicePolicyManager;

    .line 1001
    .local v23, "mDPM":Landroid/app/admin/DevicePolicyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_42

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v32, v0

    if-eqz v32, :cond_44

    .line 1002
    :cond_42
    if-eqz v23, :cond_43

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->semGetAllowWifi(Landroid/content/ComponentName;)Z

    move-result v32

    if-eqz v32, :cond_44

    :cond_43
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    move/from16 v32, v0

    if-nez v32, :cond_f

    .line 1003
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    move-object/from16 v32, v0

    if-eqz v32, :cond_45

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog;->cancel()V

    .line 1007
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->closeContextMenu()V

    .line 1008
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->setGuidedActionBarClickable(Z)V

    goto/16 :goto_4
.end method

.method private canConnectTDLS(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "dlna"    # Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "frequency"    # I

    .prologue
    const/4 v0, 0x0

    .line 1189
    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isSupportTDLS()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getWlanFrequency()I

    move-result v1

    if-ne p3, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private connectAllShareFW()V
    .locals 6

    .prologue
    .line 1354
    const-string/jumbo v3, "WifiDisplaySettings"

    const-string/jumbo v4, "connectAllShareFW"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    :try_start_0
    const-string/jumbo v3, "WifiDisplaySettings"

    const-string/jumbo v4, "ServiceConnector.createServiceProvider"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaServiceConnectListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    const-string/jumbo v5, "com.samsung.android.allshare.media"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/allshare/ServiceConnector;->createServiceProvider(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1353
    :goto_0
    return-void

    .line 1362
    :catch_0
    move-exception v0

    .line 1363
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectAllShareFW - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1360
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1361
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectAllShareFW - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1358
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 1359
    .local v2, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectAllShareFW - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private connectDlna(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "resumeFlag"    # Z

    .prologue
    .line 1205
    const-string/jumbo v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connectDlna device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.screensharing.DLNA_CONNECTION_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1208
    .local v0, "connectDlnaIntent":Landroid/content/Intent;
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1209
    const-string/jumbo v1, "resume_request"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1210
    const-string/jumbo v2, "player_type"

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1211
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1212
    const-string/jumbo v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send Intent DLNA_CONNECTION_REQUEST : uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", resume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    return-void

    .line 1210
    :cond_0
    iget v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    goto :goto_0
.end method

.method private connectGCast(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 2444
    sget-boolean v0, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v0, :cond_0

    .line 2445
    const-string/jumbo v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connectGCast route = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->select()V

    .line 2443
    :cond_0
    return-void
.end method

.method private connectScreenSharing()V
    .locals 20

    .prologue
    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v2, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v2, v4, :cond_0

    .line 1067
    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v4, "connectScreenSharing ConnectingDevice.mType == ConnectionType.NA"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    return-void

    .line 1071
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v2, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->GCAST:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v2, v4, :cond_1

    .line 1075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->-get0(Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "gcast"

    const v5, 0x2208a

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v4, v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->-get0(Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectGCast(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1139
    :goto_0
    const-string/jumbo v2, "CONN"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    return-void

    .line 1082
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wfd/WfdSettingsUtils;->isVideoRunningOnTop(Landroid/content/Context;)Z

    move-result v16

    .line 1084
    .local v16, "isVideoRunning":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v2, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v2, v4, :cond_a

    .line 1085
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v13, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    .line 1086
    .local v13, "display":Landroid/hardware/display/SemWifiDisplay;
    invoke-virtual {v13}, Landroid/hardware/display/SemWifiDisplay;->getDeviceInfo()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    invoke-virtual {v13}, Landroid/hardware/display/SemWifiDisplay;->getDeviceInfo()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    :cond_2
    const/4 v15, 0x1

    .line 1087
    .local v15, "isSupportScreenSharing":Z
    :goto_1
    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectScreenSharing : SemWifiDisplay Info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , devInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Landroid/hardware/display/SemWifiDisplay;->getDeviceInfo()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-virtual {v13}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v11

    .line 1090
    .local v11, "connectingAddress":Ljava/lang/String;
    if-eqz v15, :cond_6

    .line 1091
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    if-nez v2, :cond_3

    .line 1092
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    if-eqz v16, :cond_5

    move v2, v15

    :goto_2
    iput-boolean v2, v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    .line 1094
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v4}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-boolean v5, v5, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    const/16 v6, 0xb

    invoke-virtual {v2, v6, v4, v5}, Landroid/hardware/display/DisplayManager;->semConnectWifiDisplay(ILjava/lang/String;Z)V

    .line 1098
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100303

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v4, v2

    :goto_4
    if-eqz v15, :cond_8

    const-string/jumbo v2, "3"

    :goto_5
    const/16 v6, 0x1f3f

    invoke-static {v5, v6, v4, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 1099
    const-string/jumbo v4, "CNTP"

    if-eqz v15, :cond_9

    const-string/jumbo v2, "SCR_SHA"

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1086
    .end local v11    # "connectingAddress":Ljava/lang/String;
    .end local v15    # "isSupportScreenSharing":Z
    :cond_4
    const/4 v15, 0x0

    .restart local v15    # "isSupportScreenSharing":Z
    goto/16 :goto_1

    .line 1092
    .restart local v11    # "connectingAddress":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 1096
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v4}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    goto :goto_3

    .line 1098
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100300

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v4, v2

    goto :goto_4

    :cond_8
    const-string/jumbo v2, "1"

    goto :goto_5

    .line 1099
    :cond_9
    const-string/jumbo v2, "SCR_MIR"

    goto :goto_6

    .line 1101
    .end local v11    # "connectingAddress":Ljava/lang/String;
    .end local v13    # "display":Landroid/hardware/display/SemWifiDisplay;
    .end local v15    # "isSupportScreenSharing":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v12, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 1102
    .local v12, "device":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getWlanMacAddress()Ljava/lang/String;

    move-result-object v18

    .line 1103
    .local v18, "wlanMacAddress":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isSupportTDLS()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v18, :cond_b

    .line 1104
    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start TDLS with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v4}, Landroid/net/wifi/WifiManager;->startMediaShare(Ljava/lang/String;Z)V

    .line 1107
    :cond_b
    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isSupportMirroring()Z

    move-result v15

    .line 1108
    .local v15, "isSupportScreenSharing":Z
    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isOnlySupportsAudio()Z

    move-result v14

    .line 1109
    .local v14, "isOnlySupportsAudio":Z
    const-string/jumbo v4, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectScreenSharing : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v15, :cond_e

    const-string/jumbo v2, "ScreenSharingDevice Info "

    :goto_7
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getModelName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " isOnlySupportsAudio : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v14, :cond_f

    const-string/jumbo v2, "True"

    :goto_8
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    if-eqz v15, :cond_14

    .line 1112
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    if-nez v2, :cond_c

    if-eqz v14, :cond_10

    .line 1115
    :cond_c
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wfd/WfdSettingsUtils;->getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1116
    .local v3, "localAddress":Ljava/lang/String;
    if-eqz v14, :cond_12

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v19, v0

    const-string/jumbo v4, "7236"

    const-string/jumbo v6, ""

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-boolean v9, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getIcon()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v5, 0xd

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/settings/wfd/WifiDisplaySettings;->setParamData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->enableWifiDisplay(Ljava/lang/String;)V

    .line 1121
    :goto_a
    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getDLNA()Lcom/samsung/android/allshare/Device;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/allshare/ScreenSharingDevice;

    .line 1122
    .local v17, "ssDevice":Lcom/samsung/android/allshare/ScreenSharingDevice;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->sendScreenSharingTriggerMsg(Lcom/samsung/android/allshare/ScreenSharingDevice;)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-boolean v2, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    if-eqz v2, :cond_13

    .line 1125
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->updateDlnaList()V

    .line 1134
    .end local v3    # "localAddress":Ljava/lang/String;
    .end local v17    # "ssDevice":Lcom/samsung/android/allshare/ScreenSharingDevice;
    :cond_d
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100303

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v4, v2

    :goto_c
    if-eqz v15, :cond_16

    const-string/jumbo v2, "3"

    :goto_d
    const/16 v6, 0x1f3f

    invoke-static {v5, v6, v4, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 1135
    const-string/jumbo v4, "CNTP"

    if-eqz v15, :cond_17

    const-string/jumbo v2, "SCR_SHA"

    :goto_e
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1109
    :cond_e
    const-string/jumbo v2, "DlnaDevice Info "

    goto/16 :goto_7

    :cond_f
    const-string/jumbo v2, "False"

    goto/16 :goto_8

    .line 1113
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    if-eqz v16, :cond_11

    move v2, v15

    :goto_f
    iput-boolean v2, v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    goto/16 :goto_9

    :cond_11
    const/4 v2, 0x0

    goto :goto_f

    .line 1119
    .restart local v3    # "localAddress":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v19, v0

    const-string/jumbo v4, "7236"

    const-string/jumbo v6, ""

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-boolean v9, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getIcon()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v5, 0xa

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/settings/wfd/WifiDisplaySettings;->setParamData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->enableWifiDisplay(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1127
    .restart local v17    # "ssDevice":Lcom/samsung/android/allshare/ScreenSharingDevice;
    :cond_13
    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "mirroring"

    const v5, 0x2208a

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v4, v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1129
    .end local v3    # "localAddress":Ljava/lang/String;
    .end local v17    # "ssDevice":Lcom/samsung/android/allshare/ScreenSharingDevice;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    if-nez v2, :cond_d

    .line 1130
    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "dlna"

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v5

    const v6, 0x2208a

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2, v4, v5}, Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectDlna(Ljava/lang/String;Z)V

    goto/16 :goto_b

    .line 1134
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100300

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v4, v2

    goto/16 :goto_c

    :cond_16
    const-string/jumbo v2, "2"

    goto/16 :goto_d

    .line 1135
    :cond_17
    const-string/jumbo v2, "DLNA"

    goto/16 :goto_e
.end method

.method private connectWifiDisplay(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectingDevice"    # Ljava/lang/String;

    .prologue
    .line 1058
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "connectWifiDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1061
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1062
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    .line 1057
    return-void
.end method

.method private connectWifiDisplayWithPin(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1171
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "connectWifiDisplayWithPin"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1174
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1175
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopScanWifiDisplays()V

    .line 1176
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplayWithPin(Ljava/lang/String;)V

    .line 1170
    return-void
.end method

.method private createDlnaPreference(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;
    .locals 2
    .param p1, "device"    # Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .prologue
    .line 1226
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)V

    return-object v0
.end method

.method private createDongleRenameDialog()Landroid/app/AlertDialog;
    .locals 18

    .prologue
    .line 2167
    const/16 v2, 0x17

    .line 2168
    .local v2, "MAX_NAME_LENGTH":I
    const/16 v3, 0x17

    .line 2170
    .local v3, "MIN_NAME_LENGTH":I
    const/4 v15, 0x2

    new-array v7, v15, [Landroid/text/InputFilter;

    .line 2171
    .local v7, "filters":[Landroid/text/InputFilter;
    new-instance v15, Lcom/android/settings/wfd/WifiDisplaySettings$16;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$16;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    const/16 v16, 0x0

    aput-object v15, v7, v16

    .line 2191
    new-instance v15, Landroid/text/InputFilter$LengthFilter;

    const/16 v16, 0x18

    invoke-direct/range {v15 .. v16}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/16 v16, 0x1

    aput-object v15, v7, v16

    .line 2193
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string/jumbo v16, "layout_inflater"

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 2194
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v15, 0x7f040316

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 2195
    .local v10, "layout":Landroid/view/View;
    const v15, 0x7f11070b

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 2196
    .local v12, "mEditDeviceName":Landroid/widget/EditText;
    const v15, 0x7f11070c

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceNameErrorText:Landroid/widget/TextView;

    .line 2197
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 2199
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    .line 2200
    const v15, 0x7f11070d

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2201
    .local v5, "availableSpecialChars":Landroid/widget/TextView;
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2202
    const v15, 0x7f11070e

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 2203
    .local v14, "specialChars":Landroid/widget/TextView;
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2204
    const-string/jumbo v15, "~`!@$%^&*()-_=+[];\\:\'\",<.>/?"

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2206
    const/4 v15, 0x6

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2207
    const/16 v15, 0x4000

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setInputType(I)V

    .line 2208
    invoke-virtual {v12, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2210
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v15}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v15

    invoke-virtual {v15}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v4

    .line 2212
    .local v4, "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    if-eqz v4, :cond_0

    .line 2213
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->isChanged:Z

    if-nez v15, :cond_1

    .line 2214
    invoke-virtual {v4}, Landroid/hardware/display/SemWifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2220
    :cond_0
    :goto_0
    new-instance v11, Lcom/android/settings/wfd/WifiDisplaySettings$17;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$17;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;)V

    .line 2232
    .local v11, "mDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v15

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setSelection(I)V

    .line 2233
    invoke-virtual {v12}, Landroid/widget/EditText;->selectAll()V

    .line 2234
    const-string/jumbo v15, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/wfd/WifiDisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    .line 2236
    .local v8, "imm":Landroid/view/inputmethod/InputMethodManager;
    new-instance v15, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2237
    const v16, 0x7f0b0e34

    .line 2236
    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 2239
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f0b153b

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/android/settings/wfd/WifiDisplaySettings$18;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$18;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/SemWifiDisplay;)V

    .line 2236
    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 2252
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f0b153c

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/android/settings/wfd/WifiDisplaySettings$19;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$19;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/SemWifiDisplay;Landroid/widget/EditText;)V

    .line 2236
    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 2262
    .local v6, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2263
    new-instance v15, Lcom/android/settings/wfd/WifiDisplaySettings$20;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$20;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v6, v15}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2269
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 2270
    new-instance v15, Lcom/android/settings/wfd/WifiDisplaySettings$21;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8}, Lcom/android/settings/wfd/WifiDisplaySettings$21;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v6, v15}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2279
    const/4 v15, -0x1

    invoke-virtual {v6, v15}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v13

    .line 2280
    .local v13, "mOkButton":Landroid/widget/Button;
    new-instance v15, Lcom/android/settings/wfd/WifiDisplaySettings$22;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v13, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$22;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2305
    return-object v6

    .line 2216
    .end local v6    # "dialog":Landroid/app/AlertDialog;
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v11    # "mDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    .end local v13    # "mOkButton":Landroid/widget/Button;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    .locals 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    const/4 v2, 0x0

    .line 1181
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    .line 1182
    .local v0, "display":Landroid/hardware/display/SemWifiDisplay;
    if-nez v0, :cond_0

    .line 1183
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V

    return-object v1

    .line 1185
    :cond_0
    return-object v2
.end method

.method private createWifiDisplayPreference(Landroid/hardware/display/SemWifiDisplay;Z)Landroid/preference/Preference;
    .locals 7
    .param p1, "d"    # Landroid/hardware/display/SemWifiDisplay;
    .param p2, "paired"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1452
    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v4, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/SemWifiDisplay;)V

    .line 1453
    .local v2, "p":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v3

    .line 1454
    .local v3, "wifiDisplayStatus":Landroid/hardware/display/SemWifiDisplayStatus;
    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    .line 1455
    .local v0, "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    .line 1456
    .local v1, "activeDisplayState":I
    invoke-virtual {p1, v0}, Landroid/hardware/display/SemWifiDisplay;->equals(Landroid/hardware/display/SemWifiDisplay;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1457
    packed-switch v1, :pswitch_data_0

    .line 1477
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz p2, :cond_1

    .line 1478
    const v4, 0x7f040349

    invoke-virtual {v2, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setWidgetLayoutResource(I)V

    .line 1480
    :cond_1
    return-object v2

    .line 1459
    :pswitch_1
    const-string/jumbo v4, "WifiDisplaySettings"

    const-string/jumbo v5, "SemWifiDisplayStatus.DISPLAY_STATE_CONNECTED"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1463
    :pswitch_2
    const-string/jumbo v4, "WifiDisplaySettings"

    const-string/jumbo v5, "SemWifiDisplayStatus.DISPLAY_STATE_CONNECTING"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    invoke-virtual {v2, v6}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1469
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplay;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1470
    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplay;->canConnect()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1471
    const v4, 0x7f0b121d

    invoke-virtual {v2, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(I)V

    .line 1472
    invoke-virtual {v2, v6}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1457
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private disconnectAllShareFW()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1368
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "disconnectAllShareFW"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    if-eqz v0, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 1372
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 1373
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 1375
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    invoke-static {v0}, Lcom/samsung/android/allshare/ServiceConnector;->deleteServiceProvider(Lcom/samsung/android/allshare/ServiceProvider;)V

    .line 1367
    return-void
.end method

.method private disconnectDevice()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1594
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1595
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopScanWifiDisplays()V

    .line 1597
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iput-boolean v5, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForPrevDisconnect:Z

    .line 1598
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.android.screensharing.CHANGE_DEVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1600
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result v0

    .line 1601
    .local v0, "activeDLNAState":I
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1602
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v1

    .line 1603
    .local v1, "connectedState":I
    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 1604
    :cond_0
    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v3, "disconnect AP Mirroring device for changing device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    sget-object v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->AP:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 1610
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->semDisconnectWifiDisplay()V

    .line 1622
    .end local v1    # "connectedState":I
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    invoke-direct {p0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->removeLastConnectedDevice(Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    .line 1593
    return-void

    .line 1607
    .restart local v1    # "connectedState":I
    :cond_2
    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v3, "disconnect Wifidisplay for changing device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    sget-object v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    goto :goto_0

    .line 1611
    .end local v1    # "connectedState":I
    :cond_3
    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    .line 1612
    if-ne v0, v5, :cond_5

    .line 1613
    :cond_4
    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v3, "disconnect Dlna device for changing device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    sget-object v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->DLNA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 1615
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semGetDlnaDeviceUid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectDlna(Ljava/lang/String;)V

    goto :goto_1

    .line 1616
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isGCastConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1617
    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v3, "disconnect GCast device for changing device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    sget-object v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->GCAST:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 1619
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectGCast()V

    goto :goto_1
.end method

.method private disconnectDlna(Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1216
    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v3, "disconnectDlna device"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.screensharing.DLNA_DISCONNECTION_REQUEST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1218
    .local v0, "disconnectDlnaIntent":Landroid/content/Intent;
    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1219
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1220
    .local v1, "keepAliveApplication":Z
    :goto_0
    const-string/jumbo v2, "keep_alive"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1221
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1222
    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send Intent DLNA_DISCONNECTION_REQUEST : uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", keepAliveApplication = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    return-void

    .line 1219
    .end local v1    # "keepAliveApplication":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "keepAliveApplication":Z
    goto :goto_0
.end method

.method private disconnectGCast()V
    .locals 3

    .prologue
    .line 2451
    sget-boolean v0, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v0, :cond_0

    .line 2452
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "disconnectGCast device"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v1}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v2}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 2450
    :cond_0
    return-void
.end method

.method private findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/SemWifiDisplay;
    .locals 6
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1193
    if-eqz p1, :cond_1

    .line 1194
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayStatus;->getDisplays()[Landroid/hardware/display/SemWifiDisplay;

    move-result-object v1

    .line 1195
    .local v1, "displays":[Landroid/hardware/display/SemWifiDisplay;
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 1196
    .local v0, "display":Landroid/hardware/display/SemWifiDisplay;
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1197
    return-object v0

    .line 1195
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1201
    .end local v0    # "display":Landroid/hardware/display/SemWifiDisplay;
    .end local v1    # "displays":[Landroid/hardware/display/SemWifiDisplay;
    :cond_1
    return-object v5
.end method

.method private finishSettings()V
    .locals 1

    .prologue
    .line 1327
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->finish()V

    .line 1326
    return-void
.end method

.method private getBssid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1241
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1242
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_1

    .line 1243
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 1244
    .local v0, "bssid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "bssid":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "bssid":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 1246
    .end local v0    # "bssid":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, ""

    return-object v2
.end method

.method private getFrequency()I
    .locals 2

    .prologue
    .line 1250
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1251
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 1252
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    return v1

    .line 1254
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method private getLastConnectedGCastDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2459
    sget-boolean v0, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v0, :cond_0

    .line 2460
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetLastConnectedGCastDevice()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2462
    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private getScreenSharingP2pMacAddr(Lcom/samsung/android/allshare/Device;)Ljava/lang/String;
    .locals 5
    .param p1, "device"    # Lcom/samsung/android/allshare/Device;

    .prologue
    .line 1231
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.allshare.Device"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1232
    .local v1, "klass":Ljava/lang/Class;
    const-string/jumbo v3, "getScreenSharingP2pMacAddr"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1233
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1234
    .end local v1    # "klass":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1235
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1237
    const-string/jumbo v3, ""

    return-object v3
.end method

.method private handlePreferenceScreenEnabled(I)V
    .locals 2
    .param p1, "enable"    # I

    .prologue
    .line 1587
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1588
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1589
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1590
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1586
    return-void
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 2407
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.screensharing.LOGGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2408
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v1, "feature"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2409
    const-string/jumbo v1, "extra"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2411
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2405
    return-void
.end method

.method private isAnyDeviceConnected()Z
    .locals 1

    .prologue
    .line 2440
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isGCastConnected()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isGCastConnected()Z
    .locals 5

    .prologue
    const/4 v3, 0x4

    .line 2429
    sget-boolean v2, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v2, :cond_2

    .line 2430
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    .line 2431
    .local v1, "selectedRoute":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v1, v3}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2432
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 2433
    .local v0, "connected":Z
    :goto_0
    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isGCastConnected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    return v0

    .line 2432
    .end local v0    # "connected":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "connected":Z
    goto :goto_0

    .line 2431
    .end local v0    # "connected":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "connected":Z
    goto :goto_0

    .line 2436
    .end local v0    # "connected":Z
    .end local v1    # "selectedRoute":Landroid/media/MediaRouter$RouteInfo;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private isPendingForPrevDisconnect()Z
    .locals 2

    .prologue
    .line 2398
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForPrevDisconnect:Z

    if-eqz v0, :cond_0

    .line 2399
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "Now pending to disconnect for previous connection."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    const/4 v0, 0x1

    return v0

    .line 2402
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private prepareConnection()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1554
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 1555
    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    .line 1557
    const-string/jumbo v1, "WifiDisplaySettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "change device"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPinConnectionRequested:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, " with pin. "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1558
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v3, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->DLNA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 1557
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-eq v0, v1, :cond_3

    .line 1562
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    .line 1563
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iput-boolean v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForPrevDisconnect:Z

    .line 1553
    :goto_2
    return-void

    .line 1557
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 1559
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v3, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->GCAST:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->-get0(Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    goto :goto_1

    .line 1565
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    .line 1566
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startScanWifiDisplays()V

    goto :goto_2
.end method

.method private removeLastConnectedDevice(Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V
    .locals 2
    .param p1, "connectionType"    # Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .prologue
    .line 1571
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->AP:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne p1, v0, :cond_2

    .line 1572
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->semGetLastConnectedDisplay(Z)Landroid/hardware/display/SemWifiDisplay;

    .line 1570
    :cond_1
    :goto_0
    return-void

    .line 1573
    :cond_2
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->DLNA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne p1, v0, :cond_3

    .line 1574
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semRemoveLastConnectedDlnaDevice()V

    goto :goto_0

    .line 1575
    :cond_3
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->GCAST:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne p1, v0, :cond_1

    .line 1576
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semRemoveLastConnectedGCastDevice()V

    goto :goto_0
.end method

.method private requestPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "cause"    # I
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceType"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;

    .prologue
    .line 2373
    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestPopup cause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.SHOW_WIFI_DISPLAY_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2376
    .local v1, "intent":Landroid/content/Intent;
    const v2, 0x10808000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2377
    packed-switch p1, :pswitch_data_0

    .line 2389
    :goto_0
    const-string/jumbo v2, "cause"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2390
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2372
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 2380
    .restart local v1    # "intent":Landroid/content/Intent;
    :pswitch_0
    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v3, "requestPopup << SEM_POPUP_TYPE_CONNECTING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    const-string/jumbo v2, "DeviceName"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2382
    const-string/jumbo v2, "deviceType"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2383
    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2392
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2393
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "intent call exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2377
    nop

    :pswitch_data_0
    .packed-switch 0x2208a
        :pswitch_0
    .end packed-switch
.end method

.method private scheduleUpdate(I)V
    .locals 2
    .param p1, "changes"    # I

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    if-eqz v0, :cond_1

    .line 643
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 646
    :cond_0
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 641
    :cond_1
    return-void
.end method

.method private semGetDlnaDeviceUid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2421
    const-string/jumbo v0, ""

    .line 2422
    .local v0, "uid":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2423
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemDlnaDevice;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 2425
    :cond_0
    return-object v0
.end method

.method private semIsDlnaDeviceConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2416
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendScreenSharingTriggerMsg(Lcom/samsung/android/allshare/ScreenSharingDevice;)V
    .locals 6
    .param p1, "ssDevice"    # Lcom/samsung/android/allshare/ScreenSharingDevice;

    .prologue
    .line 1163
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wfd/WfdSettingsUtils;->getWlanMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1164
    .local v2, "wlanMacAddress":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wfd/WfdSettingsUtils;->getP2pMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1165
    .local v1, "p2pMacAddress":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wfd/WfdSettingsUtils;->getBluetoothMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1166
    .local v0, "btMacAddress":Ljava/lang/String;
    const-string/jumbo v3, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendScreenSharingTriggerMsg :  wlanMacAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " p2pMacAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " btMacAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const/16 v3, 0x1c44

    invoke-virtual {p1, v2, v1, v0, v3}, Lcom/samsung/android/allshare/ScreenSharingDevice;->connectScreenSharingM2TV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1162
    return-void
.end method

.method private setGuidedActionBarClickable(Z)V
    .locals 4
    .param p1, "clickable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2324
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2325
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2327
    .local v0, "ab":Landroid/app/ActionBar;
    :cond_0
    if-eqz v0, :cond_2

    .line 2328
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 2330
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 2331
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_1

    .line 2332
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2333
    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 2336
    :cond_1
    if-eqz p1, :cond_2

    .line 2337
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 2323
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private setMenuIcon()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 545
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 546
    .local v0, "isLandscape":Z
    :goto_0
    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMenuIcon():: isLandscape="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    if-nez v2, :cond_1

    .line 549
    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v3, "onConfigurationChanged:: menu item is not created yet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return-void

    .line 545
    .end local v0    # "isLandscape":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isLandscape":Z
    goto :goto_0

    .line 552
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 553
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v1

    .line 555
    .local v1, "retcon":Z
    if-eqz v1, :cond_2

    .line 556
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 557
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 544
    :cond_2
    return-void
.end method

.method private setParamData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "remoteP2pMacAddr"    # Ljava/lang/String;
    .param p7, "isPendingRequest"    # Z
    .param p8, "uri"    # Ljava/lang/String;

    .prologue
    .line 1145
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1147
    .local v1, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "ipAddr"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1148
    const-string/jumbo v2, "port"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1149
    const-string/jumbo v2, "deviceType"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1150
    const-string/jumbo v2, "options"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1151
    const-string/jumbo v2, "deviceName"

    invoke-virtual {v1, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1152
    const-string/jumbo v2, "remoteP2pMacAddr"

    invoke-virtual {v1, v2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1153
    const-string/jumbo v2, "isPendingRequest"

    invoke-virtual {v1, v2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1154
    const-string/jumbo v2, "uri"

    invoke-virtual {v1, v2, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1158
    :goto_0
    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setParamData : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "WifiDisplaySettings"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPreferenceScreenEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1581
    const-string/jumbo v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreferenceScreenEnabled enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1583
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1580
    return-void
.end method

.method private showDisconnectDialog()V
    .locals 3

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 637
    const-string/jumbo v1, "wifi_display_on"

    const/4 v2, 0x0

    .line 636
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 635
    return-void
.end method

.method private showInputMethod()V
    .locals 4

    .prologue
    .line 2344
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2345
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2346
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$23;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$23;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    .line 2355
    const-wide/16 v2, 0xc8

    .line 2346
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2343
    :goto_0
    return-void

    .line 2357
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$24;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$24;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    .line 2368
    const-wide/16 v2, 0x1

    .line 2357
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showOptionsDialog(Landroid/hardware/display/SemWifiDisplay;)V
    .locals 8
    .param p1, "display"    # Landroid/hardware/display/SemWifiDisplay;

    .prologue
    .line 1484
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040348

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1485
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f11027f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1486
    .local v3, "nameEditText":Landroid/widget/EditText;
    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1488
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$14;

    invoke-direct {v1, p0, v3, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$14;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/SemWifiDisplay;)V

    .line 1499
    .local v1, "done":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$15;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$15;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/SemWifiDisplay;)V

    .line 1506
    .local v2, "forget":Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1507
    const/4 v6, 0x1

    .line 1506
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1508
    const v6, 0x7f0b1220

    .line 1506
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1510
    const v6, 0x7f0b1222

    .line 1506
    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1511
    const v6, 0x7f0b1221

    .line 1506
    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1513
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1483
    return-void
.end method

.method private startListen()V
    .locals 4

    .prologue
    .line 1331
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1332
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1333
    const-string/jumbo v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1334
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1336
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->semRegisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V

    .line 1339
    sget-boolean v1, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v1, :cond_0

    .line 1340
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 1330
    :cond_0
    return-void
.end method

.method private stopListen()V
    .locals 2

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1347
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->semUnregisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;)V

    .line 1348
    sget-boolean v0, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 1345
    :cond_0
    return-void
.end method

.method private switchChanged(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1530
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->preChecked:Z

    if-ne p1, v0, :cond_0

    .line 1531
    return-void

    .line 1533
    :cond_0
    if-eqz p1, :cond_1

    .line 1535
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1536
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "onCheckedChanged() : already WfdConnected!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    return-void

    .line 1540
    :cond_1
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 1541
    const-string/jumbo v0, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isChecked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1544
    const-string/jumbo v3, "wifi_display_on"

    if-eqz p1, :cond_3

    move v0, v1

    .line 1543
    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1546
    if-eqz p1, :cond_2

    .line 1547
    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    .line 1550
    :cond_2
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->preChecked:Z

    .line 1529
    return-void

    .line 1544
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unscheduleUpdate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 651
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-eqz v0, :cond_0

    .line 652
    iput v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 653
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 650
    :cond_0
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 318
    const v0, 0x7f0b18ae

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 314
    const/16 v0, 0x66

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 1526
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1525
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x1f3f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 411
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 413
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "onActivityCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    .line 417
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->switchChanged(Z)V

    .line 419
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->registerForContextMenu(Landroid/view/View;)V

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 425
    const-string/jumbo v1, "wifi_display_on"

    .line 424
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 425
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 424
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 427
    const-string/jumbo v1, "wifi_display_certification_on"

    .line 426
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 427
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 426
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 429
    const-string/jumbo v1, "wifi_display_wps_config"

    .line 428
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 429
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 428
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 431
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_2

    .line 437
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    .line 438
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1002ff

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_1
    invoke-static {v1, v5, v0}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 410
    return-void

    .line 433
    :cond_2
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "Connected but mWifiDisplayOnSetting false, so change status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 435
    const-string/jumbo v1, "wifi_display_on"

    .line 434
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 438
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100302

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 453
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 563
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 564
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->setMenuIcon()V

    .line 562
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 611
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 323
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    .line 326
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const v8, 0x1030132

    invoke-direct {v4, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    .line 327
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "media_router"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRouter;

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    .line 328
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "display"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 329
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 331
    new-instance v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    sget-object v7, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    invoke-direct {v4, p0, v7}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    .line 333
    new-instance v4, Lcom/android/settings/wfd/Wfd_Certification;

    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-direct {v4, v7, v8, p0}, Lcom/android/settings/wfd/Wfd_Certification;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    .line 335
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdBrokerRunning(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 336
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.intent.action.DISMISS_WIFI_DISPLAY_POPUP"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 339
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v3

    .line 340
    .local v3, "wifiDisplayStatus":Landroid/hardware/display/SemWifiDisplayStatus;
    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v4

    if-ne v4, v9, :cond_7

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    .line 341
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 342
    iput-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    .line 343
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isGCastConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 344
    const-string/jumbo v4, "WifiDisplaySettings"

    const-string/jumbo v7, "onCreate() GCast is connected. mStartWithConnectedState = true"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iput-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    .line 347
    :cond_2
    const v4, 0x7f080154

    invoke-virtual {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->addPreferencesFromResource(I)V

    .line 348
    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings;->setHasOptionsMenu(Z)V

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/wfd/WfdPickerDialog;

    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    .line 351
    new-instance v4, Lcom/android/settings/wfd/WifiDisplaySettings$13;

    invoke-direct {v4, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$13;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 366
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.sec.android.allshare.intent.action.CAST_START"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 367
    const-string/jumbo v4, "deviceAddress"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingAddressForSmartSchool:Ljava/lang/String;

    .line 371
    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v4, :cond_3

    .line 372
    const-string/jumbo v4, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate() : mInPickerDialog="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_3
    const-string/jumbo v4, "more_actions_package_name"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, "packageFrom":Ljava/lang/String;
    const-string/jumbo v4, "more_actions_knox_state"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    .line 377
    const-string/jumbo v4, "more_actions_screen_sharing_mode"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_9

    const/4 v2, 0x1

    .line 378
    .local v2, "showDlnaList":Z
    :goto_2
    const-string/jumbo v4, "android.intent.extra.INTENT"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGalleryUri:Landroid/content/Intent;

    .line 379
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGalleryUri:Landroid/content/Intent;

    if-nez v4, :cond_4

    .line 380
    const-string/jumbo v4, "WifiDisplaySettings"

    const-string/jumbo v7, "Uri intent is null"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_4
    if-eqz v1, :cond_6

    .line 384
    const-string/jumbo v4, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate() : packageFrom "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    if-eqz v2, :cond_5

    .line 386
    const-string/jumbo v4, "com.samsung.android.video"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 387
    iput v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    .line 397
    :cond_5
    :goto_3
    const-string/jumbo v4, "com.samsung.android.video"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 398
    const-string/jumbo v4, "SHA_PAN"

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    .line 406
    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectAllShareFW()V

    .line 322
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "packageFrom":Ljava/lang/String;
    .end local v2    # "showDlnaList":Z
    :cond_7
    move v4, v6

    .line 340
    goto/16 :goto_0

    .line 369
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_8
    const-string/jumbo v4, "cause"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->extraCauseOfStart:I

    goto/16 :goto_1

    .line 377
    .restart local v1    # "packageFrom":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "showDlnaList":Z
    goto :goto_2

    .line 388
    :cond_a
    const-string/jumbo v4, "com.sec.android.gallery3d"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 389
    iput v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    goto :goto_3

    .line 390
    :cond_b
    const-string/jumbo v4, "com.sec.android.app.music"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 391
    iput v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    goto :goto_3

    .line 392
    :cond_c
    const-string/jumbo v4, "com.samsung.android.app.music.chn"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 393
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    goto :goto_3

    .line 399
    :cond_d
    const-string/jumbo v4, "com.sec.android.gallery3d"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 400
    const-string/jumbo v4, "SHA_PAN"

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    goto :goto_4

    .line 401
    :cond_e
    const-string/jumbo v4, "com.sec.android.app.music"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string/jumbo v4, "com.samsung.android.app.music.chn"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 402
    :cond_f
    const-string/jumbo v4, "MUSIC"

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    goto :goto_4
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 569
    instance-of v4, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v4, :cond_1

    .line 570
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 571
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v5, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 570
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    .line 572
    .local v3, "preference":Landroid/preference/Preference;
    const v4, 0x7f0b0e2e

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 573
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    .line 575
    instance-of v4, v3, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v4, :cond_1

    move-object v4, v3

    .line 576
    check-cast v4, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    invoke-virtual {v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v1

    .line 577
    .local v1, "display":Landroid/hardware/display/SemWifiDisplay;
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    .line 578
    .local v0, "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    invoke-virtual {v1, v0}, Landroid/hardware/display/SemWifiDisplay;->equals(Landroid/hardware/display/SemWifiDisplay;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnecting(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 589
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isDongleRenameAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 590
    check-cast v2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    .line 591
    .local v2, "pref":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->-get0(Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;)Landroid/hardware/display/SemWifiDisplay;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/hardware/display/SemWifiDisplay;->equals(Landroid/hardware/display/SemWifiDisplay;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 592
    const-string/jumbo v4, "WifiDisplaySettings"

    const-string/jumbo v5, "user press to rename!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDongleRenameDialog()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    .line 568
    .end local v0    # "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    .end local v1    # "display":Landroid/hardware/display/SemWifiDisplay;
    .end local v2    # "pref":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    .end local v3    # "preference":Landroid/preference/Preference;
    :cond_1
    :goto_0
    return-void

    .line 579
    .restart local v0    # "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    .restart local v1    # "display":Landroid/hardware/display/SemWifiDisplay;
    .restart local v3    # "preference":Landroid/preference/Preference;
    :cond_2
    new-instance v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    check-cast v3, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    .end local v3    # "preference":Landroid/preference/Preference;
    invoke-virtual {v3}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v5

    sget-object v6, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/SemWifiDisplay;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    .line 580
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v5, v5, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v5}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->isConnWithPinSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 581
    const-string/jumbo v4, "WifiDisplaySettings"

    const-string/jumbo v5, "user press to connect with pin!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v5, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 584
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v5, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 585
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPinConnectionRequested:Z

    .line 586
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectDevice()V

    goto :goto_0

    .line 583
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v4}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectWifiDisplayWithPin(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    .line 443
    const-string/jumbo v1, "WifiDisplaySettings"

    const-string/jumbo v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const v1, 0x7f040319

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 445
    .local v0, "sMainView":Landroid/view/View;
    const v1, 0x7f110713

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    .line 446
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 447
    const v1, 0x7f110712

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mChange_device_info:Landroid/widget/LinearLayout;

    .line 448
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mChange_device_info:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 449
    return-object v0
.end method

.method public onDetach()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 492
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDetach()V

    .line 494
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 498
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->unscheduleUpdate()V

    .line 501
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 502
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 506
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopScanWifiDisplays()V

    .line 508
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v1, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->TEARDOWN:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->semSetActivityState(Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;)V

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_2

    .line 513
    invoke-direct {p0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->switchChanged(Z)V

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdBrokerRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 517
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.DISMISS_WIFI_DISPLAY_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 520
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectAllShareFW()V

    .line 521
    const-string/jumbo v0, "SDEV"

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 526
    const-string/jumbo v1, "WifiDisplaySettings"

    const-string/jumbo v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 530
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopListen()V

    .line 532
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    invoke-interface {v1}, Landroid/view/ContextMenu;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 541
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v2, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->PAUSE:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->semSetActivityState(Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;)V

    .line 525
    :cond_1
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPause IllegalArgumentException e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 617
    instance-of v3, p2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v3, :cond_0

    move-object v2, p2

    .line 618
    check-cast v2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    .line 619
    .local v2, "p":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    invoke-virtual {v2}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v1

    .line 620
    .local v1, "display":Landroid/hardware/display/SemWifiDisplay;
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    .line 621
    .local v0, "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    invoke-virtual {v1, v0}, Landroid/hardware/display/SemWifiDisplay;->equals(Landroid/hardware/display/SemWifiDisplay;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 622
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings/wfd/WifiDisplaySettings;->handlePreferenceScreenEnabled(I)V

    .line 624
    new-instance v3, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    sget-object v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    invoke-direct {v3, p0, v1, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/SemWifiDisplay;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    iput-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    .line 625
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isAnyDeviceConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 626
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectDevice()V

    .line 632
    .end local v0    # "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    .end local v1    # "display":Landroid/hardware/display/SemWifiDisplay;
    .end local v2    # "p":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 628
    .restart local v0    # "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    .restart local v1    # "display":Landroid/hardware/display/SemWifiDisplay;
    .restart local v2    # "p":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 458
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 459
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 461
    const-string/jumbo v1, "WifiDisplaySettings"

    const-string/jumbo v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v2, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->RESUME:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->semSetActivityState(Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;)V

    .line 465
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startListen()V

    .line 466
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V

    .line 468
    const-string/jumbo v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mGlobalEditDeviceName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 470
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->showInputMethod()V

    .line 474
    :cond_0
    const/4 v0, 0x1

    .line 475
    .local v0, "enabledMDM":Z
    if-eqz v0, :cond_1

    .line 476
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 477
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 481
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 487
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iput-boolean v4, v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    .line 457
    return-void

    .line 482
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->switchChanged(Z)V

    .line 483
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    .line 484
    return-void
.end method

.method public startScanWifiDisplays()V
    .locals 4

    .prologue
    .line 1043
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "startScanWifiDisplays"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x251c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1046
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semStartScanWifiDisplays()V

    .line 1042
    :cond_0
    return-void
.end method

.method public stopScanWifiDisplays()V
    .locals 2

    .prologue
    .line 1051
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "stopScanWifiDisplays"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1054
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semStopScanWifiDisplays()V

    .line 1050
    return-void
.end method

.method protected update(I)V
    .locals 7
    .param p1, "changes"    # I

    .prologue
    const/4 v4, 0x0

    .line 659
    const-string/jumbo v5, "WifiDisplaySettings"

    const-string/jumbo v6, "update"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->semCheckExceptionalCase()I

    move-result v2

    .line 661
    .local v2, "retExceptionValue":I
    packed-switch v2, :pswitch_data_0

    .line 675
    :pswitch_0
    const/4 v1, 0x0

    .line 678
    .local v1, "invalidateOptions":Z
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_1

    .line 679
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 680
    const-string/jumbo v6, "wifi_display_on"

    .line 679
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 682
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-virtual {v4}, Lcom/android/settings/wfd/Wfd_Certification;->updateCertificationMode()V

    .line 684
    const/4 v1, 0x1

    .line 688
    :cond_1
    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v4, :cond_7

    .line 695
    :cond_2
    and-int/lit8 v4, p1, 0x4

    if-nez v4, :cond_3

    and-int/lit8 v4, p1, 0x10

    if-eqz v4, :cond_5

    .line 696
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v3

    .line 697
    .local v3, "wifiDisplayStatus":Landroid/hardware/display/SemWifiDisplayStatus;
    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    .line 701
    .local v0, "activeDisplayState":I
    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    if-nez v4, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    .line 702
    :cond_4
    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    .line 703
    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 710
    .end local v0    # "activeDisplayState":I
    .end local v3    # "wifiDisplayStatus":Landroid/hardware/display/SemWifiDisplayStatus;
    :cond_5
    :goto_0
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_6

    .line 711
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->updateDlnaList()V

    .line 714
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->applyState(Z)V

    .line 658
    return-void

    .line 663
    .end local v1    # "invalidateOptions":Z
    :pswitch_1
    const-string/jumbo v5, "WifiDisplaySettings"

    const-string/jumbo v6, "group play is running!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b0e36

    invoke-virtual {p0, v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 665
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    .line 666
    return-void

    .line 668
    :pswitch_2
    const-string/jumbo v5, "WifiDisplaySettings"

    const-string/jumbo v6, "live broadcast is running!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b0e37

    invoke-virtual {p0, v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 670
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    .line 671
    return-void

    .line 688
    .restart local v1    # "invalidateOptions":Z
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v4

    if-nez v4, :cond_2

    .line 689
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    .line 690
    return-void

    .line 704
    .restart local v0    # "activeDisplayState":I
    .restart local v3    # "wifiDisplayStatus":Landroid/hardware/display/SemWifiDisplayStatus;
    :cond_8
    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 701
    if-eqz v4, :cond_5

    .line 705
    const-string/jumbo v4, "WifiDisplaySettings"

    const-string/jumbo v5, "update scanWifiDisplays"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startScanWifiDisplays()V

    goto :goto_0

    .line 661
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public updateDlnaList()V
    .locals 22

    .prologue
    .line 1258
    const-string/jumbo v19, "WifiDisplaySettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "updateDlnaList PlayerType: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v18, v0

    const/16 v21, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    const-string/jumbo v18, "TYPE_NONE"

    :goto_0
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->clear()V

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v16

    .line 1264
    .local v16, "ssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1265
    .local v9, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    const-string/jumbo v18, "AVPLAYER_VIDEO"

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1266
    .local v17, "videoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    const-string/jumbo v18, "AVPLAYER_AUDIO"

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1267
    .local v6, "audioList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1269
    .local v14, "imageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "dlna$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/allshare/Device;

    .line 1270
    .local v10, "dlna":Lcom/samsung/android/allshare/Device;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v10}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)V

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1258
    .end local v6    # "audioList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v9    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v10    # "dlna":Lcom/samsung/android/allshare/Device;
    .end local v11    # "dlna$iterator":Ljava/util/Iterator;
    .end local v14    # "imageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v16    # "ssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v17    # "videoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->PlayerType:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    goto/16 :goto_0

    .line 1273
    .restart local v6    # "audioList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .restart local v9    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .restart local v11    # "dlna$iterator":Ljava/util/Iterator;
    .restart local v14    # "imageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .restart local v16    # "ssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .restart local v17    # "videoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    move/from16 v18, v0

    if-nez v18, :cond_10

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v5

    .line 1275
    .local v5, "activeDisplayState":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 1276
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v18

    if-eqz v18, :cond_2

    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    .line 1280
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/wfd/WfdSettingsUtils;->isVideoRunningOnTop(Landroid/content/Context;)Z

    move-result v15

    .line 1281
    .local v15, "isVideoRunning":Z
    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 1282
    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "dmr$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/allshare/Device;

    .line 1283
    .local v12, "dmr":Lcom/samsung/android/allshare/Device;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 1285
    .local v7, "device":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 1287
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getIpAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 1285
    if-eqz v18, :cond_4

    .line 1288
    :cond_6
    const-string/jumbo v19, "WifiDisplaySettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Pending... to request DLNA "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/SemWifiDisplay;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_3
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 1290
    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "dlna"

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v20

    const v21, 0x2208a

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    :cond_7
    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectDlna(Ljava/lang/String;Z)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    goto/16 :goto_2

    .line 1288
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    .line 1295
    .end local v7    # "device":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)V

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1299
    .end local v12    # "dmr":Lcom/samsung/android/allshare/Device;
    .end local v13    # "dmr$iterator":Ljava/util/Iterator;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 1300
    :cond_b
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "dmr$iterator":Ljava/util/Iterator;
    :cond_c
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/allshare/Device;

    .line 1301
    .restart local v12    # "dmr":Lcom/samsung/android/allshare/Device;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)V

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1306
    .end local v12    # "dmr":Lcom/samsung/android/allshare/Device;
    .end local v13    # "dmr$iterator":Ljava/util/Iterator;
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 1307
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "dmr$iterator":Ljava/util/Iterator;
    :cond_e
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/allshare/Device;

    .line 1308
    .restart local v12    # "dmr":Lcom/samsung/android/allshare/Device;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_e

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)V

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1314
    .end local v12    # "dmr":Lcom/samsung/android/allshare/Device;
    .end local v13    # "dmr$iterator":Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    .line 1315
    const-string/jumbo v18, "WifiDisplaySettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " device total count : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " ssList("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ") videoList ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ") audioList ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ") imageList ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "device$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 1318
    .restart local v7    # "device":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    const-string/jumbo v18, "WifiDisplaySettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "\t device Info : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1321
    .end local v5    # "activeDisplayState":I
    .end local v7    # "device":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .end local v8    # "device$iterator":Ljava/util/Iterator;
    .end local v15    # "isVideoRunning":Z
    :cond_10
    const-string/jumbo v18, "WifiDisplaySettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " device total count : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " ssList("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "), knox mode is running."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    .end local v6    # "audioList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v9    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v11    # "dlna$iterator":Ljava/util/Iterator;
    .end local v14    # "imageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v16    # "ssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v17    # "videoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    :cond_11
    return-void
.end method

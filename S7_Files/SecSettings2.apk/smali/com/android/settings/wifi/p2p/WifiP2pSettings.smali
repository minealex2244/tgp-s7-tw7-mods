.class public Lcom/android/settings/wifi/p2p/WifiP2pSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;,
        Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;
    }
.end annotation


# static fields
.field private static mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private static mBixbyDeviceName:Ljava/lang/String;

.field private static mBixbyStateId:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private static mIdleStartCnt:I

.field private static mInvited:Z

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private static mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private static mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;


# instance fields
.field private mAutoFinish:Z

.field private mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mBixbyNotFoundTimer:Landroid/os/CountDownTimer;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectedGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFullScanTimer:Landroid/os/CountDownTimer;

.field private mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mIdleTimer:Landroid/os/CountDownTimer;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsEmerMode:Z

.field private mIsRegisteredMotionListener:Z

.field private mIsSetTimer:Z

.field private mIsTablet:Z

.field private mLastGroupFormed:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNoDevicesPreference:Landroid/preference/Preference;

.field private mPassCreate:Z

.field private mPeersGroup:Landroid/preference/PreferenceGroup;

.field private mReceivedStickyEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanClicked:Z

.field private mScanTimer:Landroid/os/CountDownTimer;

.field private mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mTalkback:Z

.field mTempSsid:Ljava/lang/String;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private progressBarItem:Landroid/view/MenuItem;


# direct methods
.method static synthetic -get0(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic -get10()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/hardware/motion/MRListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic -get13()Landroid/hardware/motion/MotionRecognitionManager;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic -get15()Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic -get2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyNotFoundTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic -get4()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyStateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic -get6()Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get8()I
    .locals 1

    sget v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set1(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyStateId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set2(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0

    sput-object p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p0
.end method

.method static synthetic -set3(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    return p0
.end method

.method static synthetic -set4(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z

    return p1
.end method

.method static synthetic -set7(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    sput-object p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V
    .locals 0
    .param p1, "onoff"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addMyDeviceCenterText(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addNoDeviceLayout()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->hideProgressBar(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->selFinish()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "stateId"    # Ljava/lang/String;
    .param p2, "parmName"    # Ljava/lang/String;
    .param p3, "parmAttr"    # Ljava/lang/String;
    .param p4, "parmAttrValue"    # Ljava/lang/String;
    .param p5, "isSuccess"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sendNlgAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "doListen"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->triggerFullScan(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 168
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 171
    sput-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 178
    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 183
    sput v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    .line 203
    sput-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyDeviceName:Ljava/lang/String;

    .line 204
    sput-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyStateId:Ljava/lang/String;

    .line 210
    sput-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 215
    sput-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 217
    sput-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    .line 133
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 154
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    .line 169
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 176
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    .line 192
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    .line 193
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z

    .line 195
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPassCreate:Z

    .line 197
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsSetTimer:Z

    .line 207
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTempSsid:Ljava/lang/String;

    .line 211
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 212
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    .line 216
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsEmerMode:Z

    .line 228
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1198
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 133
    return-void
.end method

.method private addMyDeviceCenterText(Z)V
    .locals 3
    .param p1, "onoff"    # Z

    .prologue
    .line 990
    const v0, 0x7f0b0c6b

    const v1, 0x7f0b0c6e

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addMyDeviceDescriptionPreference(III)V

    .line 992
    if-eqz p1, :cond_0

    .line 993
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 989
    :goto_0
    return-void

    .line 995
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private addMyDeviceDescriptionPreference(III)V
    .locals 7
    .param p1, "stringId1"    # I
    .param p2, "stringId2"    # I
    .param p3, "order"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 960
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 961
    new-instance v1, Landroid/preference/Preference;

    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 962
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 963
    const v2, 0x7f040357

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 964
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getMyDeviceName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, p1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 965
    .local v0, "mSummaryMessage":Ljava/lang/String;
    const-string/jumbo v2, "<br/><br/>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 966
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 967
    invoke-virtual {v1, p3}, Landroid/preference/Preference;->setOrder(I)V

    .line 968
    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 969
    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 970
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 959
    .end local v0    # "mSummaryMessage":Ljava/lang/String;
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private addNoDeviceLayout()V
    .locals 3

    .prologue
    .line 976
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 977
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 979
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 980
    new-instance v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pNoItemPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pNoItemPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    const v1, 0x7f04035c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 983
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0ccb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 984
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 985
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 986
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 975
    return-void
.end method

.method private cancelConnect()V
    .locals 3

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 1137
    const-string/jumbo v0, "WifiP2pSettings"

    const-string/jumbo v1, "cancelConnect ====> cancelConnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1139
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1135
    :cond_0
    return-void
.end method

.method private chkMdm()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1181
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1182
    .local v1, "uri":Landroid/net/Uri;
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1183
    const-string/jumbo v3, "isWifiDirectAllowed"

    move-object v4, v2

    move-object v5, v2

    .line 1182
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1184
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1186
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1187
    const-string/jumbo v0, "isWifiDirectAllowed"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    const/4 v0, 0x1

    .line 1191
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1188
    return v0

    .line 1191
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1194
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1190
    :catchall_0
    move-exception v0

    .line 1191
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1190
    throw v0
.end method

.method private convertDevAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0xe

    const/16 v10, 0xc

    const/4 v9, 0x0

    .line 922
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3}, Ljava/util/Formatter;-><init>()V

    .line 923
    .local v3, "partialMacAddr":Ljava/util/Formatter;
    const-string/jumbo v2, ""

    .line 924
    .local v2, "macAddrStr":Ljava/lang/String;
    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 925
    .local v4, "subString":Ljava/lang/String;
    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 928
    .local v1, "enable":I
    xor-int/lit16 v1, v1, 0x80

    .line 929
    :try_start_0
    const-string/jumbo v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 930
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 934
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    .line 937
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 934
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    goto :goto_0

    .line 933
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v5

    .line 934
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    .line 933
    throw v5
.end method

.method private dp2px(Landroid/content/Context;I)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dp"    # I

    .prologue
    .line 784
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private endConnection()V
    .locals 4

    .prologue
    .line 1109
    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1110
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_0

    .line 1111
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    .line 1112
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeClient(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1108
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_0
    :goto_0
    return-void

    .line 1122
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_0

    .line 1123
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings$13;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$13;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private getMyDeviceName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 941
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "device_name"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 943
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "device_name"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 945
    :cond_0
    if-nez v0, :cond_1

    .line 946
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 947
    if-nez v0, :cond_1

    .line 950
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 951
    const-string/jumbo v4, "android_id"

    .line 950
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 952
    .local v1, "id":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Android_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 955
    .end local v1    # "id":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u200e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u200e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 956
    .local v2, "mDeviceName":Ljava/lang/String;
    return-object v2
.end method

.method private getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 3
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    const/4 v2, 0x0

    .line 1017
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 1018
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1020
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1021
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1029
    :goto_0
    return-object v0

    .line 1022
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1023
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x2

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 1024
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1025
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 1027
    :cond_2
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0
.end method

.method private getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x11

    .line 1096
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1099
    :cond_0
    return-object p1
.end method

.method private hideProgressBar(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1153
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1165
    if-eqz p1, :cond_1

    .line 1166
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1167
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1168
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1152
    :cond_1
    :goto_0
    return-void

    .line 1154
    :cond_2
    if-eqz p1, :cond_3

    .line 1155
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1156
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1157
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1160
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1161
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    const v1, 0x7f04035d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 1162
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private isP2pConnected()Z
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pConnected()Z

    move-result v0

    return v0
.end method

.method private isP2pEnabled()Z
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pEnabled()Z

    move-result v0

    return v0
.end method

.method private selFinish()V
    .locals 1

    .prologue
    .line 1174
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 1175
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 1173
    :goto_0
    return-void

    .line 1177
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->finish()V

    goto :goto_0
.end method

.method private sendNlgAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "stateId"    # Ljava/lang/String;
    .param p2, "parmName"    # Ljava/lang/String;
    .param p3, "parmAttr"    # Ljava/lang/String;
    .param p4, "parmAttrValue"    # Ljava/lang/String;
    .param p5, "isSuccess"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1218
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_3

    .line 1219
    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1220
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1222
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyDeviceName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1225
    :cond_2
    if-eqz p5, :cond_4

    .line 1226
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1229
    :goto_0
    sput-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyDeviceName:Ljava/lang/String;

    .line 1230
    sput-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyStateId:Ljava/lang/String;

    .line 1217
    :cond_3
    return-void

    .line 1228
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0
.end method

.method private sendP2pSettingsStartedBroadcast(Z)V
    .locals 3
    .param p1, "started"    # Z

    .prologue
    .line 1103
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings.wifi.p2p.SETTINGS_STRATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "started"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1105
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1102
    return-void
.end method

.method private setScanTimer(ZZ)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "doListen"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1034
    const-string/jumbo v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScanTimer - scan : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", listen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    if-eqz p1, :cond_1

    .line 1038
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1039
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    .line 1040
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$10;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    const/16 v3, 0x64b

    invoke-virtual {v0, v1, v3, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1065
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1066
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1067
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1070
    if-eqz p2, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestP2pListen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 1060
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    if-eqz v0, :cond_2

    .line 1061
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const v1, 0x7f0b0c64

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_1
.end method

.method private triggerFullScan(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1077
    if-eqz p1, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1079
    sget v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    .line 1080
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$11;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$11;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1076
    :goto_0
    return-void

    .line 1089
    :cond_0
    sput v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    .line 1090
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1091
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 797
    const/16 v0, 0x6d

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 382
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 383
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    .line 385
    new-instance v3, Landroid/view/ContextThemeWrapper;

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sput-object v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02052d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 393
    :goto_0
    if-eqz p1, :cond_0

    const-string/jumbo v3, "PEER_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    const-string/jumbo v3, "PEER_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 395
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 398
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setOrder(I)V

    .line 399
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 401
    const-string/jumbo v3, "AUTO_FINISH"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    .line 402
    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    if-eqz v3, :cond_1

    .line 403
    const-string/jumbo v3, "AUTO_FINISH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setForcedClick(Z)V

    .line 406
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setHasOptionsMenu(Z)V

    .line 407
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 380
    return-void

    .line 390
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02052c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x2710

    const/4 v13, 0x0

    const-wide/16 v4, 0x3e8

    .line 421
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    .line 425
    .local v12, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPassCreate:Z

    .line 429
    const v0, 0x7f0800f0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addPreferencesFromResource(I)V

    .line 431
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 437
    const-string/jumbo v0, "available"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 441
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;JJ)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    .line 456
    new-instance v6, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;

    move-object v7, p0

    move-wide v8, v4

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;JJ)V

    iput-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    .line 475
    new-instance v6, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;

    const-wide/16 v8, 0x1388

    move-object v7, p0

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;JJ)V

    iput-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleTimer:Landroid/os/CountDownTimer;

    .line 496
    const-string/jumbo v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 497
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v12, v1, v13}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 499
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_0

    .line 501
    const-string/jumbo v0, "WifiP2pSettings"

    const-string/jumbo v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iput-object v13, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 508
    :cond_0
    :goto_0
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 509
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;JJ)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyNotFoundTimer:Landroid/os/CountDownTimer;

    .line 522
    const-string/jumbo v0, "motion_recognition"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 523
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$7;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 420
    return-void

    .line 505
    :cond_1
    const-string/jumbo v0, "WifiP2pSettings"

    const-string/jumbo v1, "mWifiP2pManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f04035d

    const/4 v1, 0x0

    .line 683
    const v0, 0x7f140012

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 684
    const v0, 0x7f110144

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    .line 685
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 687
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 689
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 682
    :goto_0
    return-void

    .line 692
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 694
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 698
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 413
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 414
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 416
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 614
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 616
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 617
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 618
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 619
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyNotFoundTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 620
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 621
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->closeChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 613
    return-void
.end method

.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 801
    const-string/jumbo v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 800
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 710
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 719
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 713
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->selFinish()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    const/4 v1, 0x1

    return v1

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "WifiP2pSettings"

    const-string/jumbo v2, "IllegalStateException: Can not perform this action after onSaveInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 710
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 626
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 628
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 629
    .local v9, "pm":Landroid/os/PowerManager;
    invoke-virtual {v9}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    .line 631
    .local v8, "isScreenOn":Z
    const-string/jumbo v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPause - LCD on? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 634
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "SAMSUNG_P2P"

    invoke-virtual {v0, v1, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 636
    .local v7, "ed":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v0, "IS_INVITED"

    sget-boolean v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 637
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 639
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 641
    if-eqz v8, :cond_3

    .line 642
    invoke-direct {p0, v10, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    .line 644
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    .line 646
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 647
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 664
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 665
    sput-boolean v10, Lcom/samsung/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 667
    invoke-direct {p0, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sendP2pSettingsStartedBroadcast(Z)V

    .line 670
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    .line 669
    if-eqz v0, :cond_2

    .line 671
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 672
    iput-boolean v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    .line 676
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFiDirectSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 677
    sput-object v6, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyDeviceName:Ljava/lang/String;

    .line 678
    sput-object v6, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyStateId:Ljava/lang/String;

    .line 625
    return-void

    .line 650
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 653
    invoke-direct {p0, v10, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    .line 654
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 655
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/16 v3, 0x1f4

    const/16 v4, 0x1388

    const/4 v5, 0x6

    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/p2p/WifiP2pManager;->setListenOffloading(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IIIILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 657
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setListenOffloadingTimer(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Z)V

    .line 662
    iput-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsSetTimer:Z

    goto :goto_0
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 21
    .param p1, "peers"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 806
    const-string/jumbo v2, "WifiP2pSettings"

    const-string/jumbo v3, "onPeersAvailable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 809
    :cond_0
    const-string/jumbo v2, "WifiP2pSettings"

    const-string/jumbo v3, "Return, P2P is not enabled or peer list is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 811
    return-void

    .line 808
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 815
    .local v17, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 817
    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 821
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addMyDeviceCenterText(Z)V

    .line 823
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v2, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 866
    const-string/jumbo v2, "WifiP2pSettings"

    const-string/jumbo v3, "show connected devices"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 869
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->hideProgressBar(Z)V

    .line 871
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v2, :cond_b

    .line 872
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 873
    const-string/jumbo v2, "WifiP2pSettings"

    const-string/jumbo v3, "I am GO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "client$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 876
    .local v11, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    const/4 v2, 0x0

    iput v2, v11, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 877
    new-instance v19, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v11}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 878
    .local v19, "tempClient":Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 879
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyDeviceName:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 880
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyStateId:Ljava/lang/String;

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyStateId:Ljava/lang/String;

    const-string/jumbo v3, "WiFiDirectDisconnect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 881
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 882
    const-string/jumbo v3, "WiFiDirectSettings"

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "AlreadyConnected"

    const-string/jumbo v6, "yes"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sendNlgAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 885
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyNotFoundTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_0

    .line 826
    .end local v11    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v12    # "client$iterator":Ljava/util/Iterator;
    .end local v19    # "tempClient":Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    :cond_4
    const/4 v8, 0x0

    .local v8, "av_cnt":I
    const/4 v9, 0x0

    .line 827
    .local v9, "busy_cnt":I
    const/4 v14, 0x0

    .line 828
    .local v14, "hasInvited":Z
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "peer$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 829
    .local v15, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v2, :cond_6

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 830
    :cond_6
    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v2

    if-nez v2, :cond_8

    .line 831
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v3, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 832
    new-instance v10, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {v10, v2, v15}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 833
    .local v10, "busy_temp":Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    invoke-virtual {v10, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTalkback(Z)V

    .line 834
    add-int/lit8 v9, v9, 0x1

    .line 852
    .end local v10    # "busy_temp":Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    :cond_7
    :goto_3
    iget v2, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 853
    const/4 v14, 0x1

    goto :goto_2

    .line 837
    :cond_8
    new-instance v18, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v15}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 838
    .local v18, "temp":Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    add-int/lit8 v8, v8, 0x1

    .line 839
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTalkback(Z)V

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 842
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyDeviceName:Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 843
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyStateId:Ljava/lang/String;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyStateId:Ljava/lang/String;

    const-string/jumbo v3, "WiFiDirectConnect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 845
    const-string/jumbo v3, "WiFiDirectSettings"

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "AlreadyConnected"

    const-string/jumbo v6, "no"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sendNlgAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 848
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyNotFoundTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_3

    .line 847
    :cond_9
    const-string/jumbo v3, "WiFiDirectSettings"

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "AlreadyConnected"

    const-string/jumbo v6, "no"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sendNlgAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    .line 857
    .end local v15    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v18    # "temp":Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    :cond_a
    if-eqz v14, :cond_c

    .line 858
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 859
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    .line 860
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->hideProgressBar(Z)V

    .line 916
    .end local v8    # "av_cnt":I
    .end local v9    # "busy_cnt":I
    .end local v14    # "hasInvited":Z
    .end local v16    # "peer$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_5
    sput-object p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 805
    return-void

    .line 863
    .restart local v8    # "av_cnt":I
    .restart local v9    # "busy_cnt":I
    .restart local v14    # "hasInvited":Z
    .restart local v16    # "peer$iterator":Ljava/util/Iterator;
    :cond_c
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    goto :goto_5

    .line 884
    .end local v8    # "av_cnt":I
    .end local v9    # "busy_cnt":I
    .end local v14    # "hasInvited":Z
    .end local v16    # "peer$iterator":Ljava/util/Iterator;
    .restart local v11    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    .restart local v12    # "client$iterator":Ljava/util/Iterator;
    .restart local v19    # "tempClient":Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    :cond_d
    const-string/jumbo v3, "WiFiDirectSettings"

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "AlreadyConnected"

    const-string/jumbo v6, "yes"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sendNlgAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 889
    .end local v11    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v12    # "client$iterator":Ljava/util/Iterator;
    .end local v19    # "tempClient":Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    :cond_e
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->convertDevAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 891
    .local v13, "convertedAddr":Ljava/lang/String;
    if-nez v13, :cond_f

    const-string/jumbo v13, ""

    .line 892
    :cond_f
    const-string/jumbo v2, "WifiP2pSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "I am GC, my GO addr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 893
    const-string/jumbo v4, ", converted : "

    .line 892
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 893
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 892
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "peer$iterator":Ljava/util/Iterator;
    :cond_10
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 896
    .restart local v15    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v3, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 897
    iget-object v2, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 896
    if-eqz v2, :cond_10

    .line 898
    :cond_11
    const/4 v2, 0x0

    iput v2, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 899
    new-instance v20, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v15}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 900
    .local v20, "tempGO":Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 901
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyDeviceName:Ljava/lang/String;

    if-eqz v2, :cond_b

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 902
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyStateId:Ljava/lang/String;

    if-eqz v2, :cond_12

    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyStateId:Ljava/lang/String;

    const-string/jumbo v3, "WiFiDirectDisconnect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 903
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 904
    const-string/jumbo v3, "WiFiDirectSettings"

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "AlreadyConnected"

    const-string/jumbo v6, "yes"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sendNlgAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 907
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyNotFoundTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    goto/16 :goto_5

    .line 906
    :cond_12
    const-string/jumbo v3, "WiFiDirectSettings"

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "AlreadyConnected"

    const-string/jumbo v6, "yes"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sendNlgAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 724
    sget-object v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f100021

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 725
    instance-of v10, p2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v10, :cond_0

    move-object v10, p2

    .line 726
    check-cast v10, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iput-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 727
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v10, v10, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v10, :cond_1

    .line 728
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->endConnection()V

    .line 780
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v10

    return v10

    .line 729
    :cond_1
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v10, v10, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 730
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->cancelConnect()V

    goto :goto_0

    .line 731
    :cond_2
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v10, v10, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v10, v10, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 732
    :cond_3
    sget-object v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v11, v11, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v11, v11, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b0c6a

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 736
    :cond_4
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v10, v10, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v1

    .line 737
    .local v1, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v10, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b0c6d

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 740
    .local v6, "toast":Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v10

    const v11, 0x102000b

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 742
    .local v7, "tv":Landroid/widget/TextView;
    const/16 v10, 0x11

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 743
    iget-boolean v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v10, :cond_5

    .line 744
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 745
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    sget-object v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 746
    .local v9, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 747
    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 748
    .local v8, "width":I
    sget-object v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f100359

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->dp2px(Landroid/content/Context;I)I

    move-result v10

    sub-int v3, v8, v10

    .line 749
    .local v3, "maxWidth":I
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 751
    .end local v2    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "maxWidth":I
    .end local v8    # "width":I
    .end local v9    # "windowManager":Landroid/view/WindowManager;
    :cond_5
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 754
    sget-object v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "wifi"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 755
    .local v5, "tWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v5, :cond_6

    .line 756
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 757
    .local v4, "msg":Landroid/os/Message;
    const/16 v10, 0x4d

    iput v10, v4, Landroid/os/Message;->what:I

    .line 758
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 759
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v10, "feature"

    const-string/jumbo v11, "WDCR"

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string/jumbo v10, "extra"

    const-string/jumbo v11, "Settings"

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 762
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 763
    const-string/jumbo v10, "WifiP2pSettings"

    const-string/jumbo v11, "Logging - WiFi Direct Connection Request from Settings"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_6
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 768
    new-instance v12, Lcom/android/settings/wifi/p2p/WifiP2pSettings$9;

    invoke-direct {v12, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$9;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    .line 767
    invoke-virtual {v10, v11, v1, v12}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 705
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 704
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 537
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 539
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_5

    .line 540
    const-string/jumbo v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResume(), mAutoFinish : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 541
    const-string/jumbo v3, ", p2p enabled : "

    .line 540
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 541
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v3

    .line 540
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 542
    const-string/jumbo v3, ", p2p connected : "

    .line 540
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 542
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v3

    .line 540
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 544
    .local v8, "tWifiManager":Landroid/net/wifi/WifiManager;
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->chkMdm()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 552
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->chkMdm()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 554
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->selFinish()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isInactiveState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 562
    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 565
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsSetTimer:Z

    if-eqz v0, :cond_5

    .line 567
    const-string/jumbo v0, "WifiP2pSettings"

    const-string/jumbo v1, "Stop listen offloading timmer & Cancel listen offloading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setListenOffloadingTimer(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Z)V

    .line 569
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/p2p/WifiP2pManager;->setListenOffloading(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IIIILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 573
    iput-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsSetTimer:Z

    .line 577
    .end local v8    # "tWifiManager":Landroid/net/wifi/WifiManager;
    :cond_5
    invoke-direct {p0, v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sendP2pSettingsStartedBroadcast(Z)V

    .line 578
    sput-boolean v9, Lcom/samsung/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 580
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 582
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 585
    iput-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    .line 586
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 587
    iput-boolean v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    .line 589
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 609
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "WiFiDirectSettings"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 536
    return-void

    .line 545
    .restart local v8    # "tWifiManager":Landroid/net/wifi/WifiManager;
    :cond_7
    if-eqz v8, :cond_0

    .line 546
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eq v0, v9, :cond_0

    .line 548
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 549
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPassCreate:Z

    .line 544
    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 551
    iput-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPassCreate:Z

    goto/16 :goto_0

    .line 556
    :catch_0
    move-exception v7

    .line 557
    .local v7, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v0, "WifiP2pSettings"

    const-string/jumbo v1, "IllegalStateException: Recursive entry to executePendingTransactions during calling finish method to close the fragment."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 789
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 790
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    .line 791
    const-string/jumbo v0, "PEER_STATE"

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 788
    :cond_0
    return-void
.end method

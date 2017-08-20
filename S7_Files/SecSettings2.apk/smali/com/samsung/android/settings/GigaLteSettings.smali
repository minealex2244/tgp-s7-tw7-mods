.class public Lcom/samsung/android/settings/GigaLteSettings;
.super Landroid/app/Fragment;
.source "GigaLteSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/GigaLteSettings$1;,
        Lcom/samsung/android/settings/GigaLteSettings$2;,
        Lcom/samsung/android/settings/GigaLteSettings$3;,
        Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;
    }
.end annotation


# static fields
.field private static IsKTT:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private isMobileDataEnabling:Z

.field private isNetworkEnabling:Z

.field private isWiFiEnabling:Z

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mHoldingHandler:Landroid/os/Handler;

.field private mIsKTtestOnly:Z

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

.field private mRemoveProgress:Ljava/lang/Runnable;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/GigaLteSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->isMobileDataEnabling:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/GigaLteSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->isNetworkEnabling:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/GigaLteSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->isWiFiEnabling:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/GigaLteSettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/GigaLteSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/GigaLteSettings;->isMobileDataEnabling:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/GigaLteSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/GigaLteSettings;->isNetworkEnabling:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/GigaLteSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/GigaLteSettings;->isWiFiEnabling:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/GigaLteSettings;I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/GigaLteSettings;->getWiFiState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/GigaLteSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimValid()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/GigaLteSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isTether()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/GigaLteSettings;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const-string/jumbo v0, "KTT"

    const-string/jumbo v1, "EUR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/GigaLteSettings;->IsKTT:Z

    .line 686
    new-instance v0, Lcom/samsung/android/settings/GigaLteSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/GigaLteSettings$3;-><init>()V

    .line 685
    sput-object v0, Lcom/samsung/android/settings/GigaLteSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 103
    new-instance v0, Lcom/samsung/android/settings/GigaLteSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/GigaLteSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 111
    new-instance v0, Lcom/samsung/android/settings/GigaLteSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/GigaLteSettings$2;-><init>(Lcom/samsung/android/settings/GigaLteSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 61
    return-void
.end method

.method private getWiFiState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 805
    packed-switch p1, :pswitch_data_0

    .line 813
    const/4 v0, 0x0

    return v0

    .line 807
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 805
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private isSKTSimValid()Z
    .locals 3

    .prologue
    .line 751
    const/4 v1, 0x0

    .line 753
    .local v1, "isSimValid":Z
    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 754
    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 756
    const-string/jumbo v2, "45005"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 757
    const/4 v1, 0x1

    .line 762
    .end local v0    # "imsi":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private isSimPresent()Z
    .locals 5

    .prologue
    .line 720
    const/4 v0, 0x0

    .line 721
    .local v0, "isSimPresent":Z
    iget-object v3, p0, Lcom/samsung/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 723
    .local v1, "simSlotCount":I
    const/4 v2, 0x0

    .local v2, "slotId":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 724
    iget-object v3, p0, Lcom/samsung/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 725
    const/4 v0, 0x1

    .line 723
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 728
    :cond_1
    return v0
.end method

.method private isSimValid()Z
    .locals 3

    .prologue
    .line 732
    const/4 v1, 0x0

    .line 734
    .local v1, "isSimValid":Z
    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    .line 736
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 737
    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 739
    sget-boolean v2, Lcom/samsung/android/settings/GigaLteSettings;->IsKTT:Z

    if-eqz v2, :cond_3

    .line 740
    const-string/jumbo v2, "45008"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "45002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 741
    :cond_2
    const/4 v1, 0x1

    .line 747
    .end local v0    # "imsi":Ljava/lang/String;
    :cond_3
    return v1
.end method

.method private isTether()Z
    .locals 15

    .prologue
    const/4 v10, 0x0

    .line 772
    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "connectivity"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 774
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 776
    .local v3, "mUsbRegexs":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "available":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 778
    .local v6, "tethered":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 780
    .local v2, "errored":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 781
    .local v8, "usbTethered":Z
    array-length v12, v6

    move v11, v10

    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v5, v6, v11

    .line 782
    .local v5, "s":Ljava/lang/String;
    array-length v13, v3

    move v9, v10

    :goto_1
    if-ge v9, v13, :cond_1

    aget-object v4, v3, v9

    .line 783
    .local v4, "regex":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v8, 0x1

    .line 782
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 781
    .end local v4    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    goto :goto_0

    .line 786
    .end local v5    # "s":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    .line 787
    .local v7, "usbErrored":Z
    array-length v12, v2

    move v11, v10

    :goto_2
    if-ge v11, v12, :cond_5

    aget-object v5, v2, v11

    .line 788
    .restart local v5    # "s":Ljava/lang/String;
    array-length v13, v3

    move v9, v10

    :goto_3
    if-ge v9, v13, :cond_4

    aget-object v4, v3, v9

    .line 789
    .restart local v4    # "regex":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v7, 0x1

    .line 788
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 787
    .end local v4    # "regex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    goto :goto_2

    .line 793
    .end local v5    # "s":Ljava/lang/String;
    :cond_5
    const-string/jumbo v9, "bluetooth.pan.tether_on"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 794
    const/4 v8, 0x1

    .line 797
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_7

    .line 798
    const/4 v8, 0x1

    .line 801
    :cond_7
    return v8
.end method

.method private registerReceivers()V
    .locals 3

    .prologue
    .line 242
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    if-nez v1, :cond_0

    .line 243
    new-instance v1, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    iput-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    .line 244
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 245
    .local v0, "mptcpIntentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.samsung.android.mptcp.MPTCP_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    .end local v0    # "mptcpIntentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private sendMptcpStartBroadCast(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 601
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 602
    .local v0, "mptcpStateIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.mptcp.MPTCP_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    const-string/jumbo v3, "mptcp_start"

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 604
    const-string/jumbo v1, "GigaLteSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending MPTCP Start Stop broadcast to MPTCP Service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 606
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 607
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 608
    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    .line 607
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 600
    :cond_0
    return-void

    .line 603
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private unRegisterReceivers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 252
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 254
    iput-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    .line 251
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 167
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 168
    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 169
    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mptcp_value"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 170
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 162
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0b0b8d

    const v3, 0x104000a

    .line 128
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    .line 132
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 135
    const-string/jumbo v0, "persist.mptcp.limitation"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsKTtestOnly:Z

    .line 136
    const-string/jumbo v0, "GigaLteSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Is Test mode for KTT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsKTtestOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsKTtestOnly:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 140
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimPresent()Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 143
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0b0b93

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 127
    :cond_2
    :goto_0
    return-void

    .line 146
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimValid()Z

    move-result v0

    if-nez v0, :cond_4

    .line 147
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0b0b94

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0b0b95

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 175
    const v3, 0x7f04002b

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 176
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f110136

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 178
    .local v0, "airplaneModeDesc":Landroid/widget/TextView;
    const v1, 0x7f0b0b8c

    .line 180
    .local v1, "resEnableMsg":I
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    const v1, 0x7f0b0b9b

    .line 188
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 189
    return-object v2

    .line 182
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    const v1, 0x7f0b0bb1

    goto :goto_0

    .line 184
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    const v1, 0x7f0b0bb6

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 229
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 222
    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->unRegisterReceivers()V

    .line 224
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 220
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 194
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 195
    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->registerReceivers()V

    .line 197
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 200
    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 201
    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 199
    invoke-virtual {v1, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 202
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 203
    const-string/jumbo v3, "mobile_data"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 204
    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 202
    invoke-virtual {v1, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 206
    sget-boolean v1, Lcom/samsung/android/settings/GigaLteSettings;->IsKTT:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsKTtestOnly:Z

    :goto_0
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimValid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isTether()Z

    move-result v1

    .line 206
    if-eqz v1, :cond_2

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "mptcp_value"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    .line 211
    .local v0, "mCurrentState":Z
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 212
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-ne v0, v1, :cond_3

    .line 213
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 214
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 193
    :cond_3
    return-void

    .end local v0    # "mCurrentState":Z
    :cond_4
    move v1, v2

    .line 206
    goto :goto_0

    .line 210
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "mCurrentState":Z
    goto :goto_1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 11
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 260
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "mptcp_value"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v0, 0x1

    .line 261
    .local v0, "mCurrentState":Z
    :goto_0
    if-ne p2, v0, :cond_1

    return-void

    .line 260
    .end local v0    # "mCurrentState":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 262
    .restart local v0    # "mCurrentState":Z
    :cond_1
    if-eqz p2, :cond_2

    sget-boolean v8, Lcom/samsung/android/settings/GigaLteSettings;->IsKTT:Z

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsKTtestOnly:Z

    if-eqz v8, :cond_3

    .line 396
    :cond_2
    if-eqz p2, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 397
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 398
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b9a

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 399
    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimPresent()Z

    move-result v8

    if-nez v8, :cond_c

    .line 400
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b9c

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 401
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$12;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$12;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v10, 0x104000a

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 406
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 480
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 481
    return-void

    .line 263
    :cond_3
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "smart_bonding"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_8

    .line 264
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 265
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b8d

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 267
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 268
    const-string/jumbo v9, "wifi_watchdog_poor_network_test_enabled"

    const/4 v10, 0x0

    .line 267
    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_4

    .line 269
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b96

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 283
    :goto_2
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$4;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$4;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v10, 0x104000a

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 312
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$5;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$5;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 317
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 318
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 319
    return-void

    .line 271
    :cond_4
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b97

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 273
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 274
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 275
    const-string/jumbo v9, "wifi_watchdog_poor_network_test_enabled"

    const/4 v10, 0x0

    .line 274
    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_6

    .line 276
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b98

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 278
    :cond_6
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b99

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 281
    :cond_7
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b91

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 320
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 347
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 348
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 349
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b8d

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 350
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b8f

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 351
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 352
    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$8;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$8;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    .line 351
    const v10, 0x7f0b0bdb

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 364
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$9;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$9;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 369
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 370
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 371
    return-void

    .line 321
    :cond_a
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 322
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b8d

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 323
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b8e

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 324
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 325
    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$6;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$6;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    .line 324
    const v10, 0x7f0b0bdd

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 339
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$7;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$7;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 344
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 345
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 346
    return-void

    .line 372
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 373
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 374
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b8d

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 375
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b90

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 376
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 377
    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$10;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$10;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    .line 376
    const v10, 0x7f0b0bdc

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 385
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$11;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$11;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 390
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 391
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 392
    return-void

    .line 407
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSKTSimValid()Z

    move-result v8

    if-nez v8, :cond_d

    .line 408
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b9d

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 409
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$13;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$13;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v10, 0x104000a

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 414
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 415
    :cond_d
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 416
    :cond_e
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b9e

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 417
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$14;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$14;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v10, 0x104000a

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 422
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 423
    :cond_f
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "smart_bonding"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_10

    .line 424
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b9f

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 425
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$15;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$15;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v10, 0x104000a

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 437
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$16;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$16;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 442
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 443
    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 465
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0ba1

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 466
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$19;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$19;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v10, 0x104000a

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 473
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$20;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$20;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 478
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 444
    :cond_11
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0ba2

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 445
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$17;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$17;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v10, 0x104000a

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 458
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$18;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$18;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 463
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 484
    :cond_12
    if-eqz p2, :cond_1a

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_13

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 486
    :cond_13
    const/4 v6, 0x0

    .line 487
    .local v6, "wifiInfo":Landroid/net/wifi/WifiInfo;
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v8, :cond_14

    .line 488
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 489
    .local v6, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string/jumbo v8, "GigaLteSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Connected Wi-Fi SSID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .end local v6    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_14
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 493
    const v4, 0x7f0b0adb

    .line 494
    .local v4, "positiveBtnId":I
    const v2, 0x7f0b0adc

    .line 495
    .local v2, "negativeBtnId":I
    const v5, 0x7f0b0bb0

    .line 496
    .local v5, "titleTextId":I
    const v3, 0x7f0b0bb2

    .line 497
    .local v3, "popupTextId":I
    const v7, 0x7f0b0bb3

    .line 498
    .local v7, "wifiPopupTextId":I
    const v1, 0x7f0b0bb4

    .line 508
    .local v1, "mobilePopupTextId":I
    :goto_3
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 509
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 511
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_15

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 536
    :cond_15
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_18

    .line 537
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 538
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 539
    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$23;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$23;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    .line 538
    invoke-virtual {v8, v4, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 551
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$24;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$24;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v8, v2, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 556
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 557
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 558
    return-void

    .line 500
    .end local v1    # "mobilePopupTextId":I
    .end local v2    # "negativeBtnId":I
    .end local v3    # "popupTextId":I
    .end local v4    # "positiveBtnId":I
    .end local v5    # "titleTextId":I
    .end local v7    # "wifiPopupTextId":I
    :cond_16
    const v4, 0x7f0b19d7

    .line 501
    .restart local v4    # "positiveBtnId":I
    const v2, 0x7f0b19d8

    .line 502
    .restart local v2    # "negativeBtnId":I
    const v5, 0x7f0b0bb5

    .line 503
    .restart local v5    # "titleTextId":I
    const v3, 0x7f0b0bb7

    .line 504
    .restart local v3    # "popupTextId":I
    const v7, 0x7f0b0bb8

    .line 505
    .restart local v7    # "wifiPopupTextId":I
    const v1, 0x7f0b0bba

    .restart local v1    # "mobilePopupTextId":I
    goto :goto_3

    .line 512
    :cond_17
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 513
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 514
    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$21;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$21;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    .line 513
    invoke-virtual {v8, v4, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 528
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$22;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$22;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v8, v2, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 533
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 534
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 535
    return-void

    .line 559
    :cond_18
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_19

    .line 560
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 561
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 562
    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$25;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$25;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    .line 561
    invoke-virtual {v8, v4, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 570
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$26;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$26;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v8, v2, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 575
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 576
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 577
    return-void

    .line 578
    :cond_19
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 579
    if-eqz v6, :cond_1a

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\"Supernet-SIM\""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 594
    .end local v1    # "mobilePopupTextId":I
    .end local v2    # "negativeBtnId":I
    .end local v3    # "popupTextId":I
    .end local v4    # "positiveBtnId":I
    .end local v5    # "titleTextId":I
    .end local v7    # "wifiPopupTextId":I
    :cond_1a
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 596
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->showProgressDialog()V

    .line 597
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    .line 259
    return-void

    .line 581
    .restart local v1    # "mobilePopupTextId":I
    .restart local v2    # "negativeBtnId":I
    .restart local v3    # "popupTextId":I
    .restart local v4    # "positiveBtnId":I
    .restart local v5    # "titleTextId":I
    .restart local v7    # "wifiPopupTextId":I
    :cond_1b
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0bb9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 582
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 583
    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$27;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$27;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    .line 582
    const v10, 0x104000a

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 588
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 589
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 590
    return-void
.end method

.method public showProgressDialog()V
    .locals 4

    .prologue
    .line 613
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    .line 614
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    .line 615
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 616
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 617
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 618
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0b104b

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 619
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 620
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    .line 621
    new-instance v0, Lcom/samsung/android/settings/GigaLteSettings$28;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GigaLteSettings$28;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;

    .line 632
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 612
    return-void
.end method

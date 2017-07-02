.class public Lcom/android/systemui/statusbar/policy/MobileSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MobileSignalController$1;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$2;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$3;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController",
        "<",
        "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;",
        "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static sCodeToState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final LTE_ON_CDMA_FALSE:I

.field private final LTE_ON_CDMA_TRUE:I

.field private final LTE_ON_CDMA_UNKNOWN:I

.field private mActiveSimCount:I

.field private mActivityIconSet:[I

.field private mBootDataSvcAcquired:Z

.field private mBootVoiceSvcAcquired:Z

.field private mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

.field private mContext:Landroid/content/Context;

.field private mCurSvcSate:I

.field private mCurrentSignalStrength:I

.field private mDataNetType:I

.field private mDataState:I

.field private mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field private final mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

.field private mDisabledDataIcon:I

.field private mHandler:Landroid/os/Handler;

.field private mHasMobileData:Z

.field private mIndianOperator:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

.field private mInitialNetworkName:Ljava/lang/String;

.field private mIsATOCardUsingLTEIcon:Z

.field private mIsCmccCard:Z

.field private mIsCtcCard:Z

.field private mLastCB:Ljava/lang/String;

.field private mLastDataSpn:Ljava/lang/String;

.field private mLastEFSPN:I

.field private mLastPlmn:Ljava/lang/String;

.field private mLastShowPlmn:Z

.field private mLastShowSpn:Z

.field private mLastSpn:Ljava/lang/String;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMobileDataRoamingObserver:Landroid/database/ContentObserver;

.field private final mNWBoosterObserver:Landroid/database/ContentObserver;

.field public mNetworkManuallySelected:[Ljava/lang/String;

.field private mNetworkNameDefault:Ljava/lang/String;

.field private final mNetworkNameSeparator:Ljava/lang/String;

.field final mNetworkToIconLookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreSvcSate:I

.field private mRealDataStateInVowifi:Z

.field private mRssiTypeIconId:I

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSlotId:I

.field private mSubId:I

.field final mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mTargetSignalStrength:I

.field private mTransitionState:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mBootDataSvcAcquired:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mBootVoiceSvcAcquired:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/SignalStrength;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastDataSpn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastEFSPN:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastPlmn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowPlmn:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowSpn:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastSpn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/MobileSignalController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mBootDataSvcAcquired:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/MobileSignalController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mBootVoiceSvcAcquired:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/policy/MobileSignalController;Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;)Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndianOperator:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/policy/MobileSignalController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRealDataStateInVowifi:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDummySubId(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isGsmZVV()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isMobileDataSettingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isNetworkRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateSignalOneLevelPerSec()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3421
    invoke-static {}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->initializeCodeToState()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->sCodeToState:Ljava/util/HashMap;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    .param p3, "hasMobileData"    # Z
    .param p4, "phone"    # Landroid/telephony/TelephonyManager;
    .param p5, "callbackHandler"    # Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .param p6, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p7, "info"    # Landroid/telephony/SubscriptionInfo;
    .param p8, "defaults"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;
    .param p9, "receiverLooper"    # Landroid/os/Looper;

    .prologue
    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MobileSignalController("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p5

    move-object v6, p6

    .line 178
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 87
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastCB:Ljava/lang/String;

    .line 103
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    .line 106
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->LTE_ON_CDMA_UNKNOWN:I

    .line 107
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->LTE_ON_CDMA_FALSE:I

    .line 108
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->LTE_ON_CDMA_TRUE:I

    .line 115
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    .line 117
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPreSvcSate:I

    .line 118
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    .line 127
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_DEFAULT:[I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    .line 133
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    .line 153
    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->OTHERS:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndianOperator:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    .line 157
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mBootVoiceSvcAcquired:Z

    .line 158
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mBootDataSvcAcquired:Z

    .line 162
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRealDataStateInVowifi:Z

    .line 1493
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 1501
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController$2;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataRoamingObserver:Landroid/database/ContentObserver;

    .line 2613
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNWBoosterObserver:Landroid/database/ContentObserver;

    .line 185
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    .line 186
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 188
    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    .line 190
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHasMobileData:Z

    .line 191
    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    .line 193
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 194
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    .line 195
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    .line 196
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 199
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDummySubId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->dataNetType:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 201
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->serviceState:[Landroid/telephony/ServiceState;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 202
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->signalStrength:[Landroid/telephony/SignalStrength;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MobileSignalController voiceState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 206
    const-string/jumbo v3, " dataState="

    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 206
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 206
    const-string/jumbo v3, " dataNetType = "

    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 206
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1
    const-string/jumbo v1, "persist.sys.softsim.status"

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    const-string/jumbo v3, "default"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 212
    .local v8, "softSimState":Ljava/lang/String;
    const-string/jumbo v1, "activating"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "activated"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 213
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_3

    .line 214
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_3

    .line 215
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MobileSignalController softSimState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isSRoaming:Z

    .line 220
    :cond_3
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    move-object/from16 v0, p9

    invoke-direct {v1, p0, v2, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;ILandroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 222
    const v1, 0x7f0f0254

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    .line 224
    const v1, 0x1040299

    .line 223
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .line 226
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mapIconSets()V

    .line 228
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_CHANGE_ONE_SIGNAL_LEVEL_PER_SEC:Z

    if-eqz v1, :cond_4

    .line 229
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    .line 232
    :cond_4
    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 234
    .local v7, "networkName":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 235
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_5

    .line 236
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_6

    .line 237
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .line 240
    :cond_6
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInitialNetworkName:Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v1, :cond_7

    .line 242
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 243
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    aput-object v7, v1, v2

    .line 245
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MobileSignalController InitialNetworkName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInitialNetworkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    if-eqz v7, :cond_8

    .line 247
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v1, :cond_e

    .line 248
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v1, v7, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;I)V

    .line 255
    :cond_8
    :goto_1
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_INDICATOR_PLMN:Z

    if-eqz v1, :cond_9

    .line 256
    if-eqz v7, :cond_9

    .line 257
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStatusBarCarrierText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateStatusBarCarrierText(Ljava/lang/String;)V

    .line 261
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v7, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iput-object v7, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 262
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v7, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iput-object v7, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 263
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    iput-boolean p3, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    .line 264
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 267
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v1, :cond_a

    .line 268
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateVoiceSim()V

    .line 273
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "smart_bonding"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 276
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNWBoosterObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    .line 275
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 277
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNWBoosterObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 280
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SHOW_DISABLED_DATA_ICON:Z

    if-eqz v1, :cond_c

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 282
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    .line 281
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 283
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 285
    const-string/jumbo v1, "ZVV"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v1, "ZTM"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 286
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "data_roaming"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 287
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataRoamingObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    .line 286
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 288
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataRoamingObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 169
    :cond_c
    return-void

    .line 233
    .end local v7    # "networkName":Ljava/lang/String;
    :cond_d
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .restart local v7    # "networkName":Ljava/lang/String;
    goto/16 :goto_0

    .line 250
    :cond_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private getAreaInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 3496
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 3497
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3499
    .local v0, "areaInfo":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_0

    .line 3500
    :try_start_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3501
    .local v2, "mccMnc":I
    if-lez v2, :cond_0

    .line 3502
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setAreaCode(Landroid/telephony/TelephonyManager;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3509
    .end local v2    # "mccMnc":I
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 3505
    :catch_0
    move-exception v1

    .line 3507
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "CarrierLabel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAreaInfo e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final getCTCSignalIconId()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2765
    const/4 v1, 0x0

    .line 2766
    .local v1, "iconLevel":I
    const/4 v0, 0x0

    .line 2767
    .local v0, "evdoIconLevel":I
    const/4 v3, 0x0

    .line 2769
    .local v3, "lteIconLevel":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v5, :cond_0

    .line 2770
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v6, "getCTCSignalIconId - mSignalStrength = null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    const/4 v1, 0x0

    .line 2772
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrengthForCTC(Z)[I

    move-result-object v2

    .line 2773
    .local v2, "iconList":[I
    aget v5, v2, v1

    return v5

    .line 2776
    .end local v2    # "iconList":[I
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCTCSignalIconId( "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " ) "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isPsRegLTE()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "LTE: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v1, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    .line 2780
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrengthForCTC(Z)[I

    move-result-object v2

    .line 2781
    .restart local v2    # "iconList":[I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2782
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isPsRegEvdo()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2783
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v5

    sget v6, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    add-int/lit8 v6, v6, 0x1

    mul-int v0, v5, v6

    .line 2784
    if-nez v1, :cond_5

    .line 2785
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 2809
    :cond_1
    :goto_1
    array-length v5, v2

    add-int/lit8 v4, v5, -0x1

    .line 2810
    .local v4, "maxLevel":I
    if-le v1, v4, :cond_c

    .line 2811
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCdmaPhoneSignalIconId: maxLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2812
    const-string/jumbo v7, ", iconLevel = "

    .line 2811
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2812
    const-string/jumbo v7, " is too high"

    .line 2811
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    move v1, v4

    .line 2819
    :cond_2
    :goto_2
    aget v5, v2, v1

    return v5

    .line 2777
    .end local v2    # "iconList":[I
    .end local v4    # "maxLevel":I
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isPsRegEvdo()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Evdo: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 2778
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cdma "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 2787
    .restart local v2    # "iconList":[I
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCallingState()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2788
    :cond_6
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrengthForCTC(Z)[I

    move-result-object v2

    goto/16 :goto_1

    .line 2790
    :cond_7
    add-int/2addr v1, v0

    .line 2791
    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrengthForCTC(Z)[I

    move-result-object v2

    goto/16 :goto_1

    .line 2794
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isPsRegLTE()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2795
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v5

    sget v6, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    add-int/lit8 v6, v6, 0x1

    mul-int v3, v5, v6

    .line 2796
    if-nez v1, :cond_9

    .line 2797
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2799
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCallingState()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2800
    :cond_a
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrengthForCTC(Z)[I

    move-result-object v2

    goto/16 :goto_1

    .line 2802
    :cond_b
    add-int/2addr v1, v3

    .line 2803
    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrengthForCTC(Z)[I

    move-result-object v2

    goto/16 :goto_1

    .line 2814
    .restart local v4    # "maxLevel":I
    :cond_c
    if-gez v1, :cond_2

    .line 2815
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCdmaPhoneSignalIconId: iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is too small"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method private final getCdmaEriIcon()I
    .locals 10

    .prologue
    const v9, 0x7f020587

    const v8, 0x7f020586

    const/4 v7, 0x1

    const v6, 0x7f020584

    const/4 v5, 0x0

    .line 843
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_7

    .line 844
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 845
    .local v0, "iconIndex":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 846
    .local v1, "iconMode":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCdmaEriIcon: iconIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " iconMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_FEMTO_CELL:Z

    if-eqz v2, :cond_3

    .line 849
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isLTEFemtoCell:Z

    if-eqz v2, :cond_0

    .line 850
    return v9

    .line 852
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 866
    :cond_1
    return v6

    .line 854
    :pswitch_0
    return v5

    .line 856
    :pswitch_1
    return v6

    .line 858
    :pswitch_2
    return v8

    .line 860
    :pswitch_3
    if-nez v1, :cond_2

    .line 861
    return v9

    .line 862
    :cond_2
    if-ne v1, v7, :cond_1

    .line 863
    const v2, 0x7f020589

    return v2

    .line 868
    :cond_3
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 869
    :cond_4
    packed-switch v0, :pswitch_data_1

    .line 876
    :pswitch_4
    return v5

    .line 871
    :pswitch_5
    const v2, 0x7f02058c

    return v2

    .line 873
    :pswitch_6
    const v2, 0x7f02058e

    return v2

    .line 879
    :cond_5
    if-ne v0, v7, :cond_6

    .line 880
    return v5

    .line 883
    :cond_6
    packed-switch v1, :pswitch_data_2

    .line 889
    return v5

    .line 885
    :pswitch_7
    return v6

    .line 887
    :pswitch_8
    return v8

    .line 893
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_7
    return v5

    .line 852
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 869
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 883
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getCurrentRSSIState()I
    .locals 1

    .prologue
    .line 2987
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2988
    const/4 v0, 0x0

    return v0

    .line 2990
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private getDataServiceState()I
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    return v0

    .line 1512
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private getMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 1570
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_DEFAULT:[I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    .line 1574
    sget-object v0, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    .line 1576
    .local v0, "mStatusBarIconOpBranding":Ljava/lang/String;
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1577
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroupExt(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_0
    const-string/jumbo v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1582
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateATTMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_1
    const-string/jumbo v1, "AIO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1584
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateAIOMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_2
    const-string/jumbo v1, "TMB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1587
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTMOMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_4
    const-string/jumbo v1, "MTR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1589
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateVZWMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_5
    const-string/jumbo v1, "USC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1591
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateUSCCMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_6
    const-string/jumbo v1, "CHC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1594
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateCMCCMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_8
    const-string/jumbo v1, "CHM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "CTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1596
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateCTCMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_9
    const-string/jumbo v1, "CHU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1598
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateCUMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_a
    const-string/jumbo v1, "KTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1600
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateKTTMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_b
    const-string/jumbo v1, "ZVV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1603
    :cond_c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateZVVMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_d
    const-string/jumbo v1, "ZTM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string/jumbo v1, "LTE4G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1605
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateLTE4GMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_e
    const-string/jumbo v1, "PCT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1607
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updatePCTMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_f
    const-string/jumbo v1, "JDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1611
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->update4GLTEMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_11
    const-string/jumbo v1, "CDR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "4GLTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "LTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1613
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateLTEMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_12
    const-string/jumbo v1, "TFG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1615
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTFGMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_13
    const-string/jumbo v1, "IUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1617
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateIUSMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_14
    const-string/jumbo v1, "ORANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1619
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateORGMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_15
    const-string/jumbo v1, "OYA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1621
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateOYAMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_16
    const-string/jumbo v1, "OYB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1623
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateOYBMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_17
    const-string/jumbo v1, "OYC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1625
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateOYCMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_18
    const-string/jumbo v1, "VID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1627
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateVIDMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_19
    const-string/jumbo v1, "TUR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1629
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTURMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1580
    :cond_1a
    const-string/jumbo v1, "ATO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1631
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateATOMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1633
    :cond_1b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1
.end method

.method private getPureDataTypeIcon()I
    .locals 2

    .prologue
    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, "combinedDataTypeIcon":I
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    packed-switch v1, :pswitch_data_0

    .line 826
    :pswitch_0
    const v0, 0x7f020582

    .line 829
    :goto_0
    return v0

    .line 813
    :pswitch_1
    const v0, 0x7f020582

    .line 814
    goto :goto_0

    .line 816
    :pswitch_2
    const v0, 0x7f02058b

    .line 817
    goto :goto_0

    .line 820
    :pswitch_3
    const v0, 0x7f02058a

    .line 821
    goto :goto_0

    .line 823
    :pswitch_4
    const/4 v0, 0x0

    .line 824
    goto :goto_0

    .line 801
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getRoamingIcon()I
    .locals 3

    .prologue
    .line 715
    const/4 v0, 0x0

    .line 716
    .local v0, "roamingIcon":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isRoaming:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isSRoaming:Z

    if-eqz v1, :cond_2

    .line 717
    :cond_0
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->USE_ONLY_GSM_ROAMING_ICON:Z

    if-eqz v1, :cond_4

    .line 721
    :cond_1
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSM_ROAMING_ICON:Z

    if-nez v1, :cond_6

    .line 722
    const/4 v0, 0x0

    .line 755
    :cond_2
    :goto_0
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_PURE_SIGNAL_ICON:Z

    if-eqz v1, :cond_3

    .line 756
    if-nez v0, :cond_10

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v1, :cond_10

    .line 757
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getPureDataTypeIcon()I

    move-result v0

    .line 769
    :cond_3
    :goto_1
    return v0

    .line 718
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdmaLTE()Z

    move-result v1

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_FEMTO_CELL:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isLTEFemtoCell:Z

    .line 717
    if-eqz v1, :cond_1

    .line 719
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCdmaEriIcon()I

    move-result v0

    goto :goto_0

    .line 723
    :cond_6
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->USE_ONLY_CDMA_ROAMING_ICON:Z

    if-nez v1, :cond_7

    .line 724
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->USE_ONLY_GSM_ROAMING_ICON:Z

    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdmaVoiceNetwork()Z

    move-result v1

    .line 723
    if-eqz v1, :cond_8

    .line 725
    :cond_7
    const v0, 0x7f020584

    goto :goto_0

    .line 727
    :cond_8
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v1, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 728
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isSRoaming:Z

    if-eqz v1, :cond_a

    .line 729
    const v0, 0x7f020594

    goto :goto_0

    .line 731
    :cond_a
    const v0, 0x7f02058c

    goto :goto_0

    .line 733
    :cond_b
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActiveSimCount:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceSim:Z

    if-eqz v1, :cond_d

    .line 734
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isSRoaming:Z

    if-eqz v1, :cond_c

    .line 735
    const v0, 0x7f020595

    goto :goto_0

    .line 737
    :cond_c
    const v0, 0x7f02058f

    goto :goto_0

    .line 741
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isNationalRoaming()Z

    move-result v1

    .line 740
    if-eqz v1, :cond_e

    .line 742
    const/4 v0, 0x0

    goto :goto_0

    .line 744
    :cond_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isSRoaming:Z

    if-eqz v1, :cond_f

    .line 745
    const v0, 0x7f020593

    goto/16 :goto_0

    .line 747
    :cond_f
    const v0, 0x7f0205c1

    goto/16 :goto_0

    .line 759
    :cond_10
    const v1, 0x7f020584

    if-ne v0, v1, :cond_11

    .line 760
    const v0, 0x7f020590

    goto/16 :goto_1

    .line 761
    :cond_11
    const v1, 0x7f020586

    if-ne v0, v1, :cond_12

    .line 762
    const v0, 0x7f020592

    goto/16 :goto_1

    .line 763
    :cond_12
    const v1, 0x7f0205c1

    if-ne v0, v1, :cond_3

    .line 764
    const v0, 0x7f020590

    goto/16 :goto_1
.end method

.method private getStatusBarCarrierText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1315
    const-string/jumbo v0, ""

    .line 1316
    .local v0, "statusBarCarrierText":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1317
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1318
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1320
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x13

    if-le v1, v2, :cond_2

    .line 1321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x12

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1326
    :cond_1
    :goto_0
    return-object v0

    .line 1323
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_0
.end method

.method private hasDataService()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2679
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    .line 2680
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2684
    return v1

    .line 2682
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 2687
    :cond_0
    return v1

    .line 2680
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private hasService()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 650
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_3

    .line 658
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 667
    :pswitch_0
    return v0

    .line 660
    :pswitch_1
    return v1

    .line 662
    :pswitch_2
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_PS_STATE_COMBINED_SIGNAL:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 663
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 665
    :cond_2
    return v1

    .line 681
    :cond_3
    return v1

    .line 658
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static initializeCodeToState()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3424
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3425
    .local v0, "codeToState":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3426
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3427
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3428
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3429
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3430
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3431
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3432
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3433
    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3434
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3435
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3436
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3437
    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3438
    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3439
    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3440
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3441
    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3442
    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3443
    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3444
    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3445
    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3446
    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3447
    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3448
    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3449
    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3450
    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3451
    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3452
    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3453
    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3454
    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3455
    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3456
    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3457
    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3458
    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3459
    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "DF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3460
    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "GO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3461
    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "TO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3462
    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "GO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3463
    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3464
    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3465
    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3466
    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "AC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3467
    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3468
    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3469
    const/16 v1, 0x49

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3470
    const/16 v1, 0x4a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3471
    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3472
    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3473
    const/16 v1, 0x4f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3474
    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3475
    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "AL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3476
    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3477
    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3478
    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "CE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3479
    const/16 v1, 0x56

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3480
    const/16 v1, 0x57

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3481
    const/16 v1, 0x58

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "CE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3482
    const/16 v1, 0x59

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3483
    const/16 v1, 0x5b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3484
    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "AM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3485
    const/16 v1, 0x5d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3486
    const/16 v1, 0x5e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3487
    const/16 v1, 0x5f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3488
    const/16 v1, 0x60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "AP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3489
    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "AM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3490
    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3491
    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3492
    return-object v0
.end method

.method private isATOCardUsingLTEIcon(Ljava/lang/String;)Z
    .locals 2
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    .line 2838
    const-string/jumbo v0, "23203"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "23207"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2839
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "isATOCardUsingLTEIcon "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    const/4 v0, 0x1

    return v0

    .line 2842
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isCallingState()Z
    .locals 4

    .prologue
    .line 2715
    const/4 v0, 0x0

    .line 2716
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 2717
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2718
    :cond_0
    const/4 v0, 0x1

    .line 2720
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCallingState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    return v0
.end method

.method private isCarrierNetworkChangeActive()Z
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    return v0
.end method

.method private isCdma()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 686
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isCdmaLTE()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 835
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 837
    return v2

    .line 839
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isCdmaVoiceNetwork()Z
    .locals 1

    .prologue
    .line 1558
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1566
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1564
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1558
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isCmccCard(Ljava/lang/String;)Z
    .locals 2
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    .line 2846
    const-string/jumbo v0, "46000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "46002"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "46007"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "45412"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2847
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "isCmccCard "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    const/4 v0, 0x1

    return v0

    .line 2850
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isCsRegWCDMA()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2700
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_2

    .line 2701
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 2702
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 2700
    :cond_0
    :goto_0
    return v0

    .line 2703
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    .line 2704
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    .line 2705
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    const/16 v3, 0xf

    if-eq v2, v3, :cond_0

    .line 2706
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2700
    goto :goto_0
.end method

.method private isCtcCard()Z
    .locals 4

    .prologue
    .line 2855
    const-string/jumbo v1, "gsm.sim.cdmaoperator.numeric"

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2856
    .local v0, "cdmaNumeric":Ljava/lang/String;
    const-string/jumbo v1, "46003"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "46011"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "45502"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "45507"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "46012"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2857
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "isCtcCard "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    const/4 v1, 0x1

    return v1

    .line 2860
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isDataDisabled()Z
    .locals 2

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isDummySubId(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 3180
    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    .line 3181
    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    .line 3182
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 3184
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isFETCard()Z
    .locals 3

    .prologue
    .line 3607
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    .line 3608
    .local v0, "numeric":Ljava/lang/String;
    const-string/jumbo v1, "46601"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3609
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "isFETCard "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3610
    const/4 v1, 0x1

    return v1

    .line 3612
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isGsmZVV()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3579
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isGsmZVV(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3581
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    if-nez v0, :cond_1

    .line 3582
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v0

    .line 3581
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 3596
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 3582
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 3593
    :pswitch_1
    return v3

    .line 3581
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isMobileDataSettingEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1486
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNationalRoaming()Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 775
    sget-object v4, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    .line 776
    .local v4, "statusBarIconOpBranding":Ljava/lang/String;
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-static {v5}, Lcom/android/systemui/statusbar/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v3

    .line 777
    .local v3, "simNumeric":Ljava/lang/String;
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-static {v5}, Lcom/android/systemui/statusbar/DeviceState;->getNetworkOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    .line 779
    .local v1, "plmnNumeric":Ljava/lang/String;
    const-string/jumbo v5, "VAU"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 780
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 781
    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 782
    .local v2, "simMCC":Ljava/lang/String;
    invoke-virtual {v1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, "plmnMCC":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 785
    return v7

    .line 787
    .end local v0    # "plmnMCC":Ljava/lang/String;
    .end local v2    # "simMCC":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "XSA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 788
    const-string/jumbo v5, "50503"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 789
    return v7

    .line 791
    :cond_1
    const-string/jumbo v5, "21902"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "21901"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 792
    return v7

    .line 794
    :cond_2
    return v6
.end method

.method private isNetworkAndSimZVV(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 3560
    const-string/jumbo v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3561
    .local v1, "sNumericOperator":[Ljava/lang/String;
    const-string/jumbo v2, "gsm.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3563
    .local v0, "nNetworkNumericOperator":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3564
    array-length v2, v1

    if-le v2, p1, :cond_0

    .line 3565
    aget-object v2, v1, p1

    if-eqz v2, :cond_0

    .line 3566
    aget-object v2, v1, p1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isZVVMccMnc(Ljava/lang/String;)Z

    move-result v2

    .line 3563
    if-eqz v2, :cond_0

    .line 3567
    if-eqz v0, :cond_0

    .line 3568
    array-length v2, v0

    if-le v2, p1, :cond_0

    .line 3569
    aget-object v2, v0, p1

    if-eqz v2, :cond_0

    .line 3570
    aget-object v2, v0, p1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isZVVMccMnc(Ljava/lang/String;)Z

    move-result v2

    .line 3567
    if-eqz v2, :cond_0

    .line 3571
    const/4 v2, 0x1

    return v2

    .line 3575
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private isNetworkRoamingEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1490
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "data_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isNetworkRoamingForZVV(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3531
    const/4 v0, 0x0

    .line 3532
    .local v0, "bRoamingProp":Z
    const-string/jumbo v2, "gsm.operator.isroaming"

    const-string/jumbo v3, "false, false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3533
    .local v1, "sRoaming":[Ljava/lang/String;
    array-length v2, v1

    if-le v2, v5, :cond_1

    .line 3534
    aget-object v2, v1, p1

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3535
    const/4 v0, 0x1

    .line 3542
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 3543
    return v5

    .line 3538
    :cond_1
    aget-object v2, v1, v4

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3539
    const/4 v0, 0x1

    goto :goto_0

    .line 3545
    :cond_2
    return v4
.end method

.method private isPsRegEvdo()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2692
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_2

    .line 2693
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    .line 2694
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 2692
    :cond_0
    :goto_0
    return v0

    .line 2695
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 2696
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2692
    goto :goto_0
.end method

.method private isPsRegLTE()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2710
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 2711
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 2710
    :cond_0
    return v0
.end method

.method private isRJIOSimInserted(I)Z
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2882
    invoke-static {p1}, Lcom/android/systemui/statusbar/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v2

    .line 2883
    .local v2, "simNumeric":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2884
    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2885
    .local v0, "mcc":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2890
    .end local v0    # "mcc":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "405"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2891
    const-string/jumbo v3, "840"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "854"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "855"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2892
    const-string/jumbo v3, "856"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2891
    if-nez v3, :cond_0

    .line 2892
    const-string/jumbo v3, "857"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2891
    if-nez v3, :cond_0

    .line 2892
    const-string/jumbo v3, "858"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2891
    if-nez v3, :cond_0

    .line 2893
    const-string/jumbo v3, "859"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2891
    if-nez v3, :cond_0

    .line 2893
    const-string/jumbo v3, "860"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2891
    if-nez v3, :cond_0

    .line 2893
    const-string/jumbo v3, "861"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2891
    if-nez v3, :cond_0

    .line 2894
    const-string/jumbo v3, "862"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2891
    if-nez v3, :cond_0

    .line 2894
    const-string/jumbo v3, "863"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2891
    if-nez v3, :cond_0

    .line 2894
    const-string/jumbo v3, "864"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2891
    if-nez v3, :cond_0

    .line 2895
    const-string/jumbo v3, "865"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2891
    if-nez v3, :cond_0

    .line 2895
    const-string/jumbo v3, "866"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2891
    if-nez v3, :cond_0

    .line 2895
    const-string/jumbo v3, "867"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2891
    if-nez v3, :cond_0

    .line 2896
    const-string/jumbo v3, "868"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2891
    if-nez v3, :cond_0

    .line 2896
    const-string/jumbo v3, "869"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2891
    if-nez v3, :cond_0

    .line 2896
    const-string/jumbo v3, "870"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2891
    if-nez v3, :cond_0

    .line 2897
    const-string/jumbo v3, "871"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2891
    if-nez v3, :cond_0

    .line 2897
    const-string/jumbo v3, "872"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2891
    if-nez v3, :cond_0

    .line 2897
    const-string/jumbo v3, "873"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2891
    if-nez v3, :cond_0

    .line 2898
    const-string/jumbo v3, "874"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2891
    if-nez v3, :cond_0

    .line 2898
    const-string/jumbo v3, "87"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2891
    if-nez v3, :cond_0

    .line 2898
    const-string/jumbo v3, "780"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2891
    if-nez v3, :cond_0

    .line 2899
    const-string/jumbo v3, "78"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2891
    if-eqz v3, :cond_2

    .line 2900
    :cond_0
    return v5

    .line 2887
    :cond_1
    const/4 v0, 0x0

    .line 2888
    .local v0, "mcc":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "mnc":Ljava/lang/String;
    goto/16 :goto_0

    .line 2903
    .end local v0    # "mcc":Ljava/lang/String;
    .end local v1    # "mnc":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "406"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2904
    const-string/jumbo v3, "977"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "978"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "981"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2905
    const-string/jumbo v3, "994"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2904
    if-nez v3, :cond_3

    .line 2905
    const-string/jumbo v3, "999"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2904
    if-eqz v3, :cond_4

    .line 2906
    :cond_3
    return v5

    .line 2909
    :cond_4
    return v4
.end method

.method private isRoaming()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 694
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_FEMTO_CELL:Z

    if-eqz v1, :cond_0

    .line 695
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isLTEFemtoCell:Z

    if-eqz v1, :cond_0

    .line 696
    return v2

    .line 699
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 700
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_4

    .line 701
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v0

    .line 702
    .local v0, "iconMode":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 703
    if-eqz v0, :cond_1

    .line 704
    if-ne v0, v2, :cond_2

    move v1, v2

    .line 702
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 703
    goto :goto_0

    :cond_2
    move v1, v3

    .line 704
    goto :goto_0

    :cond_3
    move v1, v3

    .line 702
    goto :goto_0

    .line 706
    .end local v0    # "iconMode":I
    :cond_4
    return v3

    .line 709
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    :cond_6
    return v3
.end method

.method private isZVVMccMnc(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 3550
    const-string/jumbo v0, "72406"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3551
    const-string/jumbo v0, "72410"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 3550
    if-nez v0, :cond_0

    .line 3552
    const-string/jumbo v0, "72411"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 3550
    if-nez v0, :cond_0

    .line 3553
    const-string/jumbo v0, "72423"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 3550
    if-eqz v0, :cond_1

    .line 3554
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 3556
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private mapIconSets()V
    .locals 9

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0xd

    .line 405
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 407
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 408
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 409
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 410
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 411
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 412
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0x11

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 414
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    if-nez v1, :cond_2

    .line 415
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 416
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 415
    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 417
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 418
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 419
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 421
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 434
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 435
    .local v0, "hGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspaDataDistinguishable:Z

    if-eqz v1, :cond_0

    .line 436
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 439
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 440
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 441
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->DISPLAY_LTE_INSTEAD_OF_4G_ICON:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_INDIA_OP_CONCEPT:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndianOperator:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    sget-object v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->RELIANCE:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    if-ne v1, v2, :cond_3

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 457
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0x12

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 404
    return-void

    .line 423
    .end local v0    # "hGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 424
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 423
    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 425
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 426
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 425
    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 428
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 427
    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 429
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 430
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 429
    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 431
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_0

    .line 446
    .restart local v0    # "hGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gForLte:Z

    if-eqz v1, :cond_4

    .line 447
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 452
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private setAreaCode(Landroid/telephony/TelephonyManager;Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "areaInfo"    # Ljava/lang/StringBuilder;

    .prologue
    .line 3513
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 3514
    .local v2, "location":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v2, :cond_0

    .line 3515
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .line 3516
    .local v1, "lac":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    const/16 v4, 0xff

    if-eq v1, v4, :cond_0

    if-eqz v1, :cond_0

    const v4, 0xfffe

    if-eq v1, v4, :cond_0

    const v4, 0xffff

    if-eq v1, v4, :cond_0

    .line 3517
    rem-int/lit8 v0, v1, 0x64

    .line 3518
    .local v0, "areaCode":I
    sget-object v4, Lcom/android/systemui/statusbar/policy/MobileSignalController;->sCodeToState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3519
    .local v3, "state":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 3520
    const-string/jumbo v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3521
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3522
    const-string/jumbo v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3523
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3527
    .end local v0    # "areaCode":I
    .end local v1    # "lac":I
    .end local v3    # "state":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "CarrierLabel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setAreaCode areaInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3512
    return-void
.end method

.method private setLastNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 0
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "dataSpn"    # Ljava/lang/String;
    .param p4, "showPlmn"    # Z
    .param p5, "plmn"    # Ljava/lang/String;
    .param p6, "efspn"    # I

    .prologue
    .line 909
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowSpn:Z

    .line 910
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastSpn:Ljava/lang/String;

    .line 911
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastDataSpn:Ljava/lang/String;

    .line 912
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowPlmn:Z

    .line 913
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastPlmn:Ljava/lang/String;

    .line 914
    iput p6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastEFSPN:I

    .line 908
    return-void
.end method

.method private shouldDisplayCTCOpSignalIcon()Z
    .locals 1

    .prologue
    .line 2914
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_AT_CTC_CARD:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsCtcCard:Z

    if-eqz v0, :cond_0

    .line 2915
    const/4 v0, 0x1

    return v0

    .line 2917
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private shouldHideDataIconForVoWifi()Z
    .locals 1

    .prologue
    .line 3600
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoWifiConnected:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isFETCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3601
    const/4 v0, 0x1

    return v0

    .line 3603
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private shouldShowDisabledDataIcon()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 1516
    sget-object v0, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    const-string/jumbo v1, "CHM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1522
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    if-eq v0, v2, :cond_3

    .line 1523
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 1524
    return v3

    .line 1516
    :cond_1
    const-string/jumbo v1, "CHU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "CHC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ZVV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ZTM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "TGY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1529
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    if-eq v0, v2, :cond_3

    .line 1530
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 1531
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getWifiConnectedState()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1545
    :cond_3
    return v4

    .line 1516
    :cond_4
    const-string/jumbo v1, "BRI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1536
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataServiceState()I

    move-result v0

    if-nez v0, :cond_3

    .line 1537
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    if-eq v0, v2, :cond_3

    .line 1538
    return v3

    .line 1532
    :cond_6
    return v3
.end method

.method private update4GLTEMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 5

    .prologue
    .line 2412
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update4GLTEMobileIconGroup(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 2415
    .local v1, "sNetworkOperator":Ljava/lang/String;
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    .line 2416
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v2

    .line 2415
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 2421
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2424
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2416
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2418
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE_LTN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2415
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private updateAIOMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 1934
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAIOMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    packed-switch v1, :pswitch_data_0

    .line 1958
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1961
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_0
    return-object v0

    .line 1938
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_0

    .line 1941
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_0

    .line 1949
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_0

    .line 1952
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_0

    .line 1955
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_0

    .line 1936
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateATOMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 2594
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateATOMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 2596
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2595
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2605
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2608
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2596
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2598
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsATOCardUsingLTEIcon:Z

    if-eqz v1, :cond_1

    .line 2599
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2601
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2595
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private updateATTMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 1896
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateATTMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    packed-switch v1, :pswitch_data_0

    .line 1925
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1928
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_0
    return-object v0

    .line 1900
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_0

    .line 1903
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_0

    .line 1911
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1912
    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_ATT:[I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    goto :goto_0

    .line 1915
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1916
    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_ATT:[I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    goto :goto_0

    .line 1919
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_0

    .line 1922
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_0

    .line 1898
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateCMCCMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 2119
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCMCCMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 2122
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2121
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2147
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2151
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCallingState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2152
    const-string/jumbo v1, "3G"

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "4G"

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2151
    if-eqz v1, :cond_1

    .line 2153
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2156
    :cond_1
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    .line 2158
    return-object v0

    .line 2122
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2126
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsCmccCard:Z

    if-eqz v1, :cond_3

    .line 2127
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2129
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2133
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsCmccCard:Z

    if-eqz v1, :cond_4

    .line 2134
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2136
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2140
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2141
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2143
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2121
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateCTCMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 2164
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCTCMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 2167
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2166
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2181
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2184
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2167
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2172
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2178
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateCTCRssiTypeIcon()V
    .locals 6

    .prologue
    const v5, 0x7f0206c1

    const v4, 0x7f0206bf

    const v3, 0x7f0206be

    const/4 v2, 0x0

    .line 2725
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2728
    :cond_0
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    .line 2760
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRssiTypeIconCTC : mRssiTypeIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    return-void

    .line 2726
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasDataService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2727
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isSimCardInserted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2730
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasDataService()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2731
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isPsRegEvdo()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCsRegWCDMA()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2732
    :cond_5
    iput v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    goto :goto_0

    .line 2733
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isPsRegLTE()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2734
    iput v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    goto :goto_0

    .line 2736
    :cond_7
    iput v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    goto :goto_0

    .line 2739
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isPsRegEvdo()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCallingState()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2745
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isPsRegLTE()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2746
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    if-lez v0, :cond_d

    .line 2747
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCallingState()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2748
    iput v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    goto/16 :goto_0

    .line 2740
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    if-lez v0, :cond_b

    .line 2741
    const v0, 0x7f0206c0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    goto/16 :goto_0

    .line 2743
    :cond_b
    iput v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    goto/16 :goto_0

    .line 2750
    :cond_c
    const v0, 0x7f0206c2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    goto/16 :goto_0

    .line 2753
    :cond_d
    iput v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    goto/16 :goto_0

    .line 2756
    :cond_e
    iput v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    goto/16 :goto_0
.end method

.method private updateCUMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 2190
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCUMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 2193
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2192
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2198
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2202
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    .line 2204
    return-object v0

    .line 2193
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2195
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_CU:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2192
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private updateDataSim()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1090
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultDataSubId()I

    move-result v0

    .line 1091
    .local v0, "defaultDataSub":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1092
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v0, v3, :cond_0

    :goto_0
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    .line 1089
    :goto_1
    return-void

    .line 1092
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1101
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    goto :goto_1
.end method

.method private updateIUSMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 5

    .prologue
    .line 2492
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateIUSMobileIconGroup(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 2495
    .local v1, "sNetworkOperator":Ljava/lang/String;
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    .line 2496
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v2

    .line 2495
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 2510
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2513
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2496
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2498
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE_LTN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2501
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2507
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2495
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateKTTMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 2210
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateKTTMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 2213
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2212
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2238
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2242
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2213
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2215
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2227
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2230
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCAIndicator:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "ril.lte_wideband"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2231
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2232
    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_LTE_PLUS_KT:[I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    goto :goto_1

    .line 2234
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateLTE4GMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 5

    .prologue
    .line 2519
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateLTE4GMobileIconGroup(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 2522
    .local v1, "sNetworkOperator":Ljava/lang/String;
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    .line 2523
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v2

    .line 2522
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 2537
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2540
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2523
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2525
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2528
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCAIndicator:Z

    if-nez v2, :cond_1

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "ril.lte_wideband"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2529
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "LTE_WIDE_BAND!@!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2531
    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_LTE_PLUS:[I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    goto :goto_1

    .line 2533
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2522
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateLTEMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 5

    .prologue
    .line 2430
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateLTEMobileIconGroup(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 2433
    .local v1, "sNetworkOperator":Ljava/lang/String;
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    .line 2434
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v2

    .line 2433
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 2445
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2448
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2434
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2436
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCAIndicator:Z

    if-nez v2, :cond_1

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "ril.lte_wideband"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2437
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "LTE_WIDE_BAND!@!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2439
    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_LTE_PLUS:[I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    goto :goto_1

    .line 2441
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2433
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 3

    .prologue
    .line 1640
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    .line 1641
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 1640
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1695
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1699
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SHOW_DISABLED_DATA_ICON:Z

    if-eqz v1, :cond_0

    .line 1700
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    .line 1702
    :cond_0
    return-object v0

    .line 1641
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 1643
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1646
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1650
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1655
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_4
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SHOW_HSDPA_DATA_ICON:Z

    if-eqz v1, :cond_2

    .line 1656
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1658
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1661
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_5
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SHOW_HSDPA_DATA_ICON:Z

    if-eqz v1, :cond_3

    .line 1662
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1664
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1668
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1674
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1677
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_8
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->DISPLAY_LTE_INSTEAD_OF_4G_ICON:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_INDIA_OP_CONCEPT:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndianOperator:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    sget-object v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->RELIANCE:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    if-ne v1, v2, :cond_5

    .line 1678
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1679
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_5
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->DISPLAY_4G_PLUS_INSTEAD_OF_4G_ICON:Z

    if-eqz v1, :cond_6

    .line 1680
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1682
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1685
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1688
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_a
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_INDIA_OP_CONCEPT:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndianOperator:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    sget-object v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->AIRTEL:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    if-ne v1, v2, :cond_7

    .line 1689
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1691
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1640
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method private updateMobileIconGroupExt(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 9
    .param p1, "iconRules"    # Ljava/lang/String;

    .prologue
    .line 1709
    const-string/jumbo v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1710
    .local v5, "mobileIconsListSplit":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1712
    .local v2, "iconsList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_2a

    .line 1713
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1714
    .local v3, "mobileIcon":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    const/4 v0, 0x1

    .line 1715
    .local v0, "foundIt":Z
    add-int/lit8 v7, v1, 0x1

    aget-object v7, v5, v7

    const-string/jumbo v8, "4G"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1718
    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1819
    :goto_1
    if-eqz v0, :cond_1

    .line 1820
    aget-object v7, v5, v1

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1712
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1715
    :cond_2
    const-string/jumbo v8, "FOUR_G"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "4GLTE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1724
    :cond_3
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE_LTN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_1

    .line 1715
    :cond_4
    const-string/jumbo v8, "FOUR_G_LTE_LTN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "4G_LTE_LTN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "4G_LTE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "FOUR_G_ATT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1728
    :cond_5
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_1

    .line 1715
    :cond_6
    const-string/jumbo v8, "4G_ATT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v8, "FOUR_G_VZW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1732
    :cond_7
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_VZW:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_1

    .line 1715
    :cond_8
    const-string/jumbo v8, "4G_VZW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string/jumbo v8, "FOUR_G_USCC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1736
    :cond_9
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_USCC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_1

    .line 1715
    :cond_a
    const-string/jumbo v8, "4G_USCC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string/jumbo v8, "FOUR_G_CU"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1740
    :cond_b
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_CU:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1715
    :cond_c
    const-string/jumbo v8, "4G_CU"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string/jumbo v8, "4GPLUS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1746
    :cond_d
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1715
    :cond_e
    const-string/jumbo v8, "4G_PLUS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string/jumbo v8, "FOUR_G_PLUS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string/jumbo v8, "4G+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string/jumbo v8, "FOUR_G_TMO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1749
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1715
    :cond_f
    const-string/jumbo v8, "H_PLUS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1752
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1715
    :cond_10
    const-string/jumbo v8, "E"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1756
    :cond_11
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1715
    :cond_12
    const-string/jumbo v8, "EDGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    const-string/jumbo v8, "G"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1760
    :cond_13
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1715
    :cond_14
    const-string/jumbo v8, "GPRS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string/jumbo v8, "3G"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1765
    :cond_15
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1715
    :cond_16
    const-string/jumbo v8, "THREE_G"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    const-string/jumbo v8, "UMTS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    const-string/jumbo v8, "THREE_G_TMO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 1769
    :cond_17
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1715
    :cond_18
    const-string/jumbo v8, "3G_TMO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    const-string/jumbo v8, "THREE_G_PLUS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 1775
    :cond_19
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1715
    :cond_1a
    const-string/jumbo v8, "3G_PLUS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    const-string/jumbo v8, "3GPLUS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    const-string/jumbo v8, "3G+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    const-string/jumbo v8, "THREE_G_KT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 1779
    :cond_1b
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1715
    :cond_1c
    const-string/jumbo v8, "3G_KT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    const-string/jumbo v8, "TWO_G"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 1783
    :cond_1d
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1715
    :cond_1e
    const-string/jumbo v8, "2G"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1d

    const-string/jumbo v8, "1xRTT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 1787
    :cond_1f
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1715
    :cond_20
    const-string/jumbo v8, "ONE_X"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f

    const-string/jumbo v8, "DC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 1790
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1715
    :cond_21
    const-string/jumbo v8, "ROAMING"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 1793
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ROAMING:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1715
    :cond_22
    const-string/jumbo v8, "LTE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 1796
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1715
    :cond_23
    const-string/jumbo v8, "LTE_PLUS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 1801
    :cond_24
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1715
    :cond_25
    const-string/jumbo v8, "LTEPLUS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_24

    const-string/jumbo v8, "LTE+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_24

    const-string/jumbo v8, "LTE_ATT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 1804
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1715
    :cond_26
    const-string/jumbo v8, "LTE_TMO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 1807
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1715
    :cond_27
    const-string/jumbo v8, "WFC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 1810
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1715
    :cond_28
    const-string/jumbo v8, "UNKNOWN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 1813
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1816
    :cond_29
    const/4 v0, 0x0

    .line 1817
    goto/16 :goto_1

    .line 1824
    .end local v0    # "foundIt":Z
    .end local v3    # "mobileIcon":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2a
    const-string/jumbo v6, "none"

    .line 1825
    .local v6, "networkTypeKey":Ljava/lang/String;
    iget v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v8, 0x12

    if-ne v7, v8, :cond_2b

    .line 1826
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v7

    .line 1825
    :goto_2
    packed-switch v7, :pswitch_data_0

    .line 1882
    :pswitch_0
    const-string/jumbo v6, "default"

    .line 1885
    :goto_3
    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 1886
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1890
    .local v4, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_4
    return-object v4

    .line 1826
    .end local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2b
    iget v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_2

    .line 1828
    :pswitch_1
    const-string/jumbo v6, "UNKNOWN"

    goto :goto_3

    .line 1831
    :pswitch_2
    const-string/jumbo v6, "LTE"

    goto :goto_3

    .line 1834
    :pswitch_3
    const-string/jumbo v6, "HSPAP"

    goto :goto_3

    .line 1837
    :pswitch_4
    const-string/jumbo v6, "HSPA"

    goto :goto_3

    .line 1840
    :pswitch_5
    const-string/jumbo v6, "HSDPA"

    goto :goto_3

    .line 1843
    :pswitch_6
    const-string/jumbo v6, "HSUPA"

    goto :goto_3

    .line 1846
    :pswitch_7
    const-string/jumbo v6, "EDGE"

    goto :goto_3

    .line 1849
    :pswitch_8
    const-string/jumbo v6, "GPRS"

    goto :goto_3

    .line 1852
    :pswitch_9
    const-string/jumbo v6, "UMTS"

    goto :goto_3

    .line 1855
    :pswitch_a
    const-string/jumbo v6, "1xRTT"

    goto :goto_3

    .line 1858
    :pswitch_b
    const-string/jumbo v6, "CDMA"

    goto :goto_3

    .line 1861
    :pswitch_c
    const-string/jumbo v6, "EVDO_0"

    goto :goto_3

    .line 1864
    :pswitch_d
    const-string/jumbo v6, "EVDO_A"

    goto :goto_3

    .line 1867
    :pswitch_e
    const-string/jumbo v6, "EVDO_B"

    goto :goto_3

    .line 1870
    :pswitch_f
    const-string/jumbo v6, "EHRPD"

    goto :goto_3

    .line 1873
    :pswitch_10
    const-string/jumbo v6, "IDEN"

    goto :goto_3

    .line 1876
    :pswitch_11
    const-string/jumbo v6, "TD_SCDMA"

    goto :goto_3

    .line 1879
    :pswitch_12
    const-string/jumbo v6, "DC"

    goto :goto_3

    .line 1888
    :cond_2c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v4

    .restart local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_4

    .line 1825
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_a
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_10
        :pswitch_e
        :pswitch_2
        :pswitch_f
        :pswitch_3
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
    .end packed-switch
.end method

.method private updateNetworkNameLatinCB(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZLjava/lang/String;)V
    .locals 6
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "dataSpn"    # Ljava/lang/String;
    .param p4, "showPlmn"    # Z
    .param p5, "plmn"    # Ljava/lang/String;
    .param p6, "efspn"    # I
    .param p7, "showCB"    # Z
    .param p8, "CBmsg"    # Ljava/lang/String;

    .prologue
    .line 1221
    const-string/jumbo v3, "CarrierLabel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNetworkNameLatinCB showSpn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1222
    const-string/jumbo v5, " spn="

    .line 1221
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1222
    const-string/jumbo v5, " dataSpn="

    .line 1221
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1223
    const-string/jumbo v5, " showPlmn="

    .line 1221
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1223
    const-string/jumbo v5, " plmn="

    .line 1221
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1223
    const-string/jumbo v5, " efspn="

    .line 1221
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1223
    const-string/jumbo v5, " showCB="

    .line 1221
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1223
    const-string/jumbo v5, " CBmsg="

    .line 1221
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1225
    .local v1, "str":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1226
    .local v2, "strData":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1227
    .local v0, "somethingPlmn":Z
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 1228
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    const/4 v0, 0x1

    .line 1232
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1233
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1234
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    const/4 v0, 0x1

    .line 1240
    :cond_2
    if-eqz p7, :cond_4

    if-eqz p8, :cond_4

    .line 1241
    if-eqz v0, :cond_3

    .line 1242
    const-string/jumbo v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    :cond_3
    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    const/4 v0, 0x1

    .line 1247
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_8

    .line 1248
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1253
    :goto_0
    if-eqz p1, :cond_7

    if-eqz p3, :cond_7

    .line 1254
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_6

    .line 1255
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    :cond_6
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_9

    .line 1260
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 1220
    :goto_1
    return-void

    .line 1250
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_0

    .line 1262
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateNetworkNameLatinLAC(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "dataSpn"    # Ljava/lang/String;
    .param p4, "showPlmn"    # Z
    .param p5, "plmn"    # Ljava/lang/String;
    .param p6, "efspn"    # I

    .prologue
    .line 1187
    const-string/jumbo v2, "CarrierLabel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNetworkNameLatinLAC showSpn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1188
    const-string/jumbo v4, " spn="

    .line 1187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1188
    const-string/jumbo v4, " dataSpn="

    .line 1187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1189
    const-string/jumbo v4, " showPlmn="

    .line 1187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1189
    const-string/jumbo v4, " plmn="

    .line 1187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1189
    const-string/jumbo v4, ""

    .line 1187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1190
    const-string/jumbo v4, " getAreaInfo="

    .line 1187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getAreaInfo()Ljava/lang/String;

    move-result-object v4

    .line 1187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1190
    const-string/jumbo v4, " efspn="

    .line 1187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1190
    const-string/jumbo v4, " mNetworkManuallySelected="

    .line 1187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1190
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    .line 1187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    if-nez p5, :cond_1

    const-string/jumbo v1, ""

    .line 1194
    .local v1, "carrierText":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-eqz v2, :cond_2

    .line 1195
    const-string/jumbo v1, ""

    .line 1217
    :cond_0
    :goto_1
    return-object v1

    .line 1192
    .end local v1    # "carrierText":Ljava/lang/String;
    :cond_1
    move-object v1, p5

    .restart local v1    # "carrierText":Ljava/lang/String;
    goto :goto_0

    .line 1196
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    const v3, 0x10402b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1197
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1200
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isNetworkRoamingForZVV(I)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1206
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1207
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isNetworkAndSimZVV(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getAreaInfo()Ljava/lang/String;

    move-result-object v0

    .line 1208
    .local v0, "areaCode":Ljava/lang/String;
    :goto_2
    if-eqz p6, :cond_6

    const/16 v2, 0x10

    if-ne p6, v2, :cond_a

    .line 1209
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1201
    .end local v0    # "areaCode":Ljava/lang/String;
    :cond_7
    move-object v1, p5

    .line 1202
    if-eqz p6, :cond_8

    const/4 v2, 0x1

    if-ne p6, v2, :cond_0

    .line 1203
    :cond_8
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1207
    :cond_9
    const-string/jumbo v0, ""

    .restart local v0    # "areaCode":Ljava/lang/String;
    goto :goto_2

    .line 1210
    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    if-eqz p5, :cond_c

    invoke-virtual {p5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1213
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1211
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method private updateORGMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 2248
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateORGMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 2251
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2250
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2258
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2262
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2251
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2255
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2250
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateOYAMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 2268
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOYAMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 2271
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2270
    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 2287
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2291
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2271
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2273
    :sswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2280
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :sswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2281
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2283
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2270
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method private updateOYBMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 2298
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOYBMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 2301
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2300
    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 2313
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2317
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2301
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2303
    :sswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2310
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :sswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2300
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method private updateOYCMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 2324
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOYCMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    .line 2327
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2326
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2337
    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2341
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2327
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2332
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2333
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2326
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updatePCTMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 5

    .prologue
    .line 2391
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePCTMobileIconGroup(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 2394
    .local v1, "sNetworkOperator":Ljava/lang/String;
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    .line 2395
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v2

    .line 2394
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 2403
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2406
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2395
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2397
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2400
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE_LTN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2394
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateSignalOneLevelPerSec()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/16 v5, 0x46

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2937
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPreSvcSate:I

    .line 2938
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentRSSIState()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    .line 2939
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UPDATE_STRENGTH mPreSvcSate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPreSvcSate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mCurSvcSate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPreSvcSate:I

    if-nez v0, :cond_2

    .line 2942
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    .line 2943
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    .line 2945
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPreSvcSate:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    if-eq v0, v1, :cond_1

    .line 2946
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2947
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    .line 2936
    :cond_0
    :goto_0
    return-void

    .line 2949
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners()V

    goto :goto_0

    .line 2951
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPreSvcSate:I

    if-ne v0, v4, :cond_0

    .line 2952
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    if-nez v0, :cond_7

    .line 2953
    iput v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    .line 2954
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-eqz v0, :cond_4

    .line 2955
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UPDATE_STRENGTH(NO_SVC) no diff : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2957
    return-void

    .line 2959
    :cond_4
    iput v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    .line 2960
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    .line 2961
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UPDATE_STRENGTH(NO_SVC) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    :cond_5
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    if-ge v0, v1, :cond_9

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    sget v1, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    if-ge v0, v1, :cond_9

    .line 2977
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    .line 2981
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners()V

    .line 2982
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2964
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    .line 2965
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UPDATE_STRENGTH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    if-ne v0, v1, :cond_8

    .line 2968
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UPDATE_STRENGTH(IN_SVC) no diff :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    .line 2970
    return-void

    .line 2971
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    if-nez v0, :cond_5

    .line 2972
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    goto/16 :goto_1

    .line 2978
    :cond_9
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    if-le v0, v1, :cond_6

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    if-lez v0, :cond_6

    .line 2979
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    goto/16 :goto_2
.end method

.method private updateTFGMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 2452
    const/4 v0, 0x0

    .line 2454
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateTFGMobileIconGroup(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 2457
    .local v2, "sNetworkOperator":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_1

    .line 2458
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2459
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    return-object v0

    .line 2462
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_2

    .line 2463
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v3

    .line 2462
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 2483
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2486
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2463
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2465
    :pswitch_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2466
    .local v1, "networkSubstring":Ljava/lang/String;
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 2467
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NetworkSubstring:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    :cond_3
    const-string/jumbo v3, "334"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2470
    const-string/jumbo v3, "716"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2469
    if-nez v3, :cond_4

    .line 2471
    const-string/jumbo v3, "734"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2469
    if-nez v3, :cond_4

    .line 2472
    const-string/jumbo v3, "704"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2469
    if-nez v3, :cond_4

    .line 2473
    const-string/jumbo v3, "706"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2469
    if-nez v3, :cond_4

    .line 2474
    const-string/jumbo v3, "748"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2469
    if-nez v3, :cond_4

    .line 2475
    const-string/jumbo v3, "740"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2469
    if-nez v3, :cond_4

    .line 2476
    const-string/jumbo v3, "714"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2469
    if-eqz v3, :cond_5

    .line 2477
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2479
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2462
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private updateTMOMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 1967
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTMOMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 1970
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 1969
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2004
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2007
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 1970
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 1972
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1975
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1983
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1984
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    .line 1985
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1991
    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_TMO:[I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    goto :goto_1

    .line 1987
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_2

    .line 1989
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_2

    .line 1994
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1995
    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_TMO:[I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    goto :goto_1

    .line 1998
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2001
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1969
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateTURMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 2578
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTURMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 2580
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2579
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2585
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2588
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2580
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2582
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_HALF_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2579
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private final updateTelephony()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1336
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateTelephonySignalStrength: hasService="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1338
    const-string/jumbo v4, " ss="

    .line 1337
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1338
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1337
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_c

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    .line 1341
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    if-eqz v0, :cond_3

    .line 1342
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1343
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowCdmaRssi:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v0

    .line 1342
    if-eqz v0, :cond_d

    .line 1344
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    .line 1349
    :goto_1
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1350
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->evdoLevel:I

    .line 1351
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->lteLevel:I

    .line 1355
    :cond_3
    sget v1, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    if-ge v1, v0, :cond_e

    .line 1356
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget v1, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    .line 1363
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1364
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_f

    move v1, v2

    :goto_3
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    .line 1375
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierNetworkChangeActive()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1376
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1385
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-eq v1, v0, :cond_6

    .line 1386
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    .line 1387
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    .line 1391
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isRoaming:Z

    .line 1394
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isRoaming:Z

    .line 1393
    if-eqz v0, :cond_7

    .line 1394
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_7

    .line 1395
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cdmaEriIconIndex:I

    .line 1396
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cdmaEriIconMode:I

    .line 1399
    :cond_7
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_FEMTO_CELL:Z

    if-eqz v0, :cond_11

    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getFemtocellIndicator()I

    move-result v0

    if-ne v0, v2, :cond_11

    .line 1401
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isLTEFemtoCell:Z

    .line 1407
    :goto_5
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_LTE_WIDE_BAND:Z

    if-eqz v0, :cond_a

    .line 1408
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCAIndicator:Z

    if-nez v0, :cond_8

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "ril.lte_wideband"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1409
    :cond_8
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_a

    .line 1410
    const-string/jumbo v1, "4G"

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->DISPLAY_LTE_INSTEAD_OF_4G_ICON:Z

    if-eqz v0, :cond_12

    .line 1412
    :cond_9
    const-string/jumbo v1, "LTE"

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_INDIA_OP_CONCEPT:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndianOperator:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->RELIANCE:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    if-ne v0, v1, :cond_13

    .line 1427
    :cond_a
    :goto_6
    const-string/jumbo v0, ""

    sget-object v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1428
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->sendOperatorLogoUpdateIntent()V

    .line 1431
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 1335
    return-void

    :cond_c
    move v1, v3

    .line 1340
    goto/16 :goto_0

    .line 1346
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    goto/16 :goto_1

    .line 1357
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    if-gez v0, :cond_4

    .line 1358
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    goto/16 :goto_2

    :cond_f
    move v1, v3

    .line 1364
    goto/16 :goto_3

    .line 1377
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1380
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_4

    .line 1403
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isLTEFemtoCell:Z

    goto/16 :goto_5

    .line 1411
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_6

    .line 1413
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1414
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_LTE_PLUS:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    goto :goto_6
.end method

.method private updateUSCCMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 2101
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUSCCMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 2104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2103
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2109
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2113
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2104
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2106
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_USCC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2103
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private updateVIDMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 6

    .prologue
    .line 2546
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateVIDMobileIconGroup(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 2548
    .local v1, "sNetworkOperator":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2549
    .local v2, "use4Gicon":Z
    const-string/jumbo v3, "302500"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "302320"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "302510"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2550
    const-string/jumbo v3, "302270"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2549
    if-nez v3, :cond_0

    .line 2550
    const-string/jumbo v3, "302490"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2549
    if-eqz v3, :cond_1

    .line 2551
    :cond_0
    const/4 v2, 0x1

    .line 2553
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_2

    .line 2554
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v3

    .line 2553
    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 2567
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2571
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2554
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2560
    :sswitch_0
    if-eqz v2, :cond_3

    .line 2561
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2563
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2553
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method private updateVZWMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 11

    .prologue
    const v7, 0x7f02059c

    const v6, 0x7f020598

    const/4 v10, 0x0

    .line 2013
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateVZWMobileIconGroup(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    const-string/jumbo v5, "ril.cdma.ine911"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2016
    .local v3, "ine911":Z
    const-string/jumbo v5, "ril.cdma.inecmmode"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2017
    .local v2, "emergencyCallbackMode":Z
    const/4 v1, 0x0

    .line 2018
    .local v1, "dataType":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    .line 2020
    .local v0, "callStateByPhone":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 2021
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    const-string/jumbo v8, "volte"

    invoke-virtual {v5, v8}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2029
    :cond_0
    :goto_1
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v8, 0x12

    if-ne v5, v8, :cond_6

    .line 2031
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2036
    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 2085
    :pswitch_0
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2086
    .local v4, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    if-eqz v5, :cond_f

    .line 2087
    const v5, 0x7f0205a4

    .line 2086
    :goto_3
    iput v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    .line 2091
    :goto_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "callState:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", callStateByPhone:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " voLTECall:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2092
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    const-string/jumbo v8, "volte"

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v7

    .line 2091
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2092
    const-string/jumbo v7, " voiceNetTpe:"

    .line 2091
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2092
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v7

    .line 2091
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2092
    const-string/jumbo v7, " dataNetType:"

    .line 2091
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2092
    iget v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 2091
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2093
    const-string/jumbo v7, ", ine911:"

    .line 2091
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2093
    const-string/jumbo v7, ", emergencyCallbackMode:"

    .line 2091
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    return-object v4

    .line 2018
    .end local v0    # "callStateByPhone":Z
    .end local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "callStateByPhone":Z
    goto/16 :goto_0

    .line 2022
    :cond_3
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    if-nez v5, :cond_4

    .line 2023
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdmaVoiceNetwork()Z

    move-result v5

    .line 2020
    if-eqz v5, :cond_0

    .line 2024
    :cond_4
    const-string/jumbo v5, "ro.ril.svlte1x"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v8, 0xd

    if-eq v5, v8, :cond_0

    .line 2025
    :cond_5
    const-string/jumbo v5, "ro.ril.svdo"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/4 v8, 0x5

    if-eq v5, v8, :cond_0

    .line 2026
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/4 v8, 0x6

    if-eq v5, v8, :cond_0

    .line 2027
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v8, 0xc

    if-eq v5, v8, :cond_0

    .line 2028
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v8, 0xe

    if-ne v5, v8, :cond_1

    goto/16 :goto_1

    .line 2030
    :cond_6
    if-eqz v2, :cond_7

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    if-nez v5, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdmaVoiceNetwork()Z

    move-result v5

    .line 2020
    if-nez v5, :cond_1

    .line 2033
    :cond_7
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto/16 :goto_2

    .line 2038
    :pswitch_1
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2039
    .restart local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iput v10, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto/16 :goto_4

    .line 2042
    .end local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_2
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2043
    .restart local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    if-eqz v5, :cond_8

    .line 2044
    const v5, 0x7f0205a2

    .line 2043
    :goto_5
    iput v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto/16 :goto_4

    .line 2044
    :cond_8
    const v5, 0x7f02059e

    goto :goto_5

    .line 2048
    .end local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_3
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2049
    .restart local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    if-eqz v5, :cond_9

    move v5, v6

    :goto_6
    iput v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto/16 :goto_4

    :cond_9
    move v5, v7

    .line 2050
    goto :goto_6

    .line 2055
    .end local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_4
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2056
    .restart local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    if-eqz v5, :cond_a

    .line 2057
    const v5, 0x7f0205a5

    .line 2056
    :goto_7
    iput v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto/16 :goto_4

    .line 2057
    :cond_a
    const v5, 0x7f0205a0

    goto :goto_7

    .line 2060
    .end local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_5
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2061
    .restart local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    if-eqz v5, :cond_b

    .line 2062
    const v5, 0x7f0205a6

    .line 2061
    :goto_8
    iput v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto/16 :goto_4

    .line 2062
    :cond_b
    const v5, 0x7f0205a1

    goto :goto_8

    .line 2066
    .end local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_6
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2067
    .restart local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    if-eqz v5, :cond_c

    .line 2068
    const v5, 0x7f020597

    .line 2067
    :goto_9
    iput v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto/16 :goto_4

    .line 2068
    :cond_c
    const v5, 0x7f02059b

    goto :goto_9

    .line 2074
    .end local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_7
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2075
    .restart local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    if-eqz v5, :cond_d

    :goto_a
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto/16 :goto_4

    :cond_d
    move v6, v7

    .line 2076
    goto :goto_a

    .line 2079
    .end local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_8
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_VZW:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2080
    .restart local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    if-eqz v5, :cond_e

    .line 2081
    const v5, 0x7f02059a

    .line 2080
    :goto_b
    iput v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto/16 :goto_4

    .line 2081
    :cond_e
    const v5, 0x7f02059d

    goto :goto_b

    .line 2087
    :cond_f
    const v5, 0x7f02059f

    goto/16 :goto_3

    .line 2036
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateVoiceSim()V
    .locals 4

    .prologue
    .line 1083
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultVoicePhoneId()I

    move-result v0

    .line 1084
    .local v0, "defaultVoicePhoneId":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateVoiceSim: defaultVoicePhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceSim:Z

    .line 1082
    return-void

    .line 1085
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateZVVMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 5

    .prologue
    const v4, 0x7f020598

    .line 2348
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateZVVMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2352
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 2353
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2352
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2381
    :pswitch_0
    const v1, 0x7f0205a4

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    .line 2385
    :goto_1
    return-object v0

    .line 2353
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2355
    :pswitch_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto :goto_1

    .line 2358
    :pswitch_2
    const v1, 0x7f0205a2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto :goto_1

    .line 2361
    :pswitch_3
    iput v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto :goto_1

    .line 2366
    :pswitch_4
    const v1, 0x7f0205a5

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto :goto_1

    .line 2369
    :pswitch_5
    const v1, 0x7f0205a6

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto :goto_1

    .line 2375
    :pswitch_6
    iput v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto :goto_1

    .line 2378
    :pswitch_7
    const v1, 0x7f020599

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto :goto_1

    .line 2352
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected cleanState()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
    .locals 1

    .prologue
    .line 576
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2996
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 2997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mServiceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDataState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDataNetType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  signalIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  roamingIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getRoamingIcon()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mNetworkNameDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3007
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3008
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mRssiTypeIconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3011
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mInitialNetworkName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInitialNetworkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2995
    return-void
.end method

.method getActivityIcon()I
    .locals 3

    .prologue
    .line 1449
    const/4 v0, 0x0

    .line 1450
    .local v0, "activityIcon":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v1, :cond_0

    .line 1451
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityIn:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityOut:Z

    if-eqz v1, :cond_6

    .line 1452
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    const/4 v2, 0x3

    aget v0, v1, v2

    .line 1462
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SHOW_DISABLED_DATA_ICON:Z

    if-eqz v1, :cond_4

    .line 1463
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldShowDisabledDataIcon()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1464
    const-string/jumbo v1, "ZVV"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ZTM"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1465
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isNetworkRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1466
    :cond_3
    const/4 v0, 0x0

    .line 1476
    :cond_4
    :goto_1
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_PURE_SIGNAL_ICON:Z

    if-eqz v1, :cond_5

    .line 1477
    const/4 v0, 0x0

    .line 1480
    :cond_5
    return v0

    .line 1453
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityIn:Z

    if-eqz v1, :cond_7

    .line 1454
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    const/4 v2, 0x1

    aget v0, v1, v2

    goto :goto_0

    .line 1455
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityOut:Z

    if-eqz v1, :cond_8

    .line 1456
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    const/4 v2, 0x2

    aget v0, v1, v2

    goto :goto_0

    .line 1458
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    const/4 v2, 0x0

    aget v0, v1, v2

    goto :goto_0

    .line 1468
    :cond_9
    const v0, 0x7f0205a3

    goto :goto_1

    .line 1471
    :cond_a
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getCurrentIconId()I
    .locals 4

    .prologue
    const/16 v3, 0x12

    const/4 v2, 0x0

    .line 582
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CHANGE_ONE_SIGNAL_LEVEL_PER_SEC:Z

    if-eqz v0, :cond_1

    .line 583
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    if-nez v0, :cond_4

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    .line 590
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    if-eqz v0, :cond_c

    .line 591
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActiveSimCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceSim:Z

    if-eqz v0, :cond_2

    .line 592
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 599
    :cond_2
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 600
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateCTCRssiTypeIcon()V

    .line 601
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCTCSignalIconId()I

    move-result v0

    return v0

    .line 586
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateSignalOneLevelPerSec()V

    goto :goto_0

    .line 593
    :cond_5
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_HIDE_SIGNAL_LEVEL_AT_WFC_STATE:Z

    if-eqz v0, :cond_6

    .line 594
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoWifiConnected:Z

    .line 593
    if-eqz v0, :cond_6

    .line 594
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    .line 593
    if-eqz v0, :cond_6

    .line 595
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrengthFocused()[[I

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    aget-object v0, v1, v0

    aget v0, v0, v2

    return v0

    .line 597
    :cond_6
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrengthFocused()[[I

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    aget-object v1, v1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    aget v0, v1, v0

    return v0

    .line 604
    :cond_7
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CHANGE_ONE_SIGNAL_LEVEL_PER_SEC:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    if-eqz v0, :cond_9

    .line 605
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    if-gez v0, :cond_8

    .line 606
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbIcons:[[I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    aget-object v0, v1, v0

    aget v0, v0, v2

    return v0

    .line 608
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbIcons:[[I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    aget-object v0, v1, v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    aget v0, v0, v1

    return v0

    .line 612
    :cond_9
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_SIGNAL_LEVE_ZERO_IN_NO_SVC_AT_TMOWFC:Z

    if-eqz v0, :cond_a

    .line 613
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    if-ne v0, v3, :cond_a

    .line 614
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbIcons:[[I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    aget-object v0, v1, v0

    aget v0, v0, v2

    return v0

    .line 617
    :cond_a
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_HIDE_SIGNAL_LEVEL_AT_WFC_STATE:Z

    if-eqz v0, :cond_b

    .line 618
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoWifiConnected:Z

    .line 617
    if-eqz v0, :cond_b

    .line 618
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    .line 617
    if-eqz v0, :cond_b

    .line 619
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbIcons:[[I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    aget-object v0, v1, v0

    aget v0, v0, v2

    return v0

    .line 622
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbIcons:[[I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    aget-object v1, v1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    aget v0, v1, v0

    return v0

    .line 624
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    if-eqz v0, :cond_12

    .line 625
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 626
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateCTCRssiTypeIcon()V

    .line 629
    :cond_e
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_SIGNAL_LEVE_ZERO_IN_NO_SVC_AT_TMOWFC:Z

    if-eqz v0, :cond_f

    .line 630
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    if-ne v0, v3, :cond_f

    .line 631
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbIcons:[[I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    aget-object v0, v1, v0

    aget v0, v0, v2

    return v0

    .line 634
    :cond_f
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CHANGE_ONE_SIGNAL_LEVEL_PER_SEC:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    if-eqz v0, :cond_11

    .line 635
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    if-gez v0, :cond_10

    .line 636
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbIcons:[[I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    aget-object v0, v1, v0

    aget v0, v0, v2

    return v0

    .line 638
    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbIcons:[[I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    aget-object v0, v1, v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    aget v0, v0, v1

    return v0

    .line 642
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbDiscState:I

    return v0

    .line 644
    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbNullState:I

    return v0
.end method

.method public getIndianOperator(I)Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 2865
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRJIOSimInserted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2866
    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->RELIANCE:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    return-object v1

    .line 2868
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 2869
    .local v0, "operatorName":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2870
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2871
    const-string/jumbo v1, "airtel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2872
    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->AIRTEL:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    return-object v1

    .line 2873
    :cond_1
    const-string/jumbo v1, "jio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2874
    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->RELIANCE:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    return-object v1

    .line 2877
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->OTHERS:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    return-object v1
.end method

.method public getRealDataStateInVowifi()Z
    .locals 1

    .prologue
    .line 3174
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRealDataStateInVowifi:Z

    return v0
.end method

.method protected getResourceName(I)Ljava/lang/String;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 3409
    if-eqz p1, :cond_0

    .line 3410
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3412
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 3413
    :catch_0
    move-exception v0

    .line 3414
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v2, "(unknown)"

    return-object v2

    .line 3417
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const-string/jumbo v2, "(null)"

    return-object v2
.end method

.method public getVoiceNetworkType()I
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    .line 1552
    const/4 v0, 0x0

    return v0

    .line 1554
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    return v0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 23
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 918
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 919
    .local v11, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v2, :cond_8

    .line 922
    const-string/jumbo v2, "subscription"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 924
    .local v22, "subId":I
    const-string/jumbo v2, "CTC"

    sget-object v3, Lcom/android/systemui/SystemUIRune;->PLMN_INFO_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 925
    const-string/jumbo v2, "showSpn"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 926
    .local v17, "showSpn":Z
    const-string/jumbo v2, "spn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 927
    .local v20, "spn":Ljava/lang/String;
    const-string/jumbo v2, "showPlmn"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 928
    .local v16, "showPlmn":Z
    const-string/jumbo v2, "plmn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 929
    .local v14, "plmn":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 930
    .local v21, "str":Ljava/lang/StringBuilder;
    invoke-static/range {v22 .. v22}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v18

    .line 932
    .local v18, "slotId":I
    if-eqz v16, :cond_0

    if-eqz v14, :cond_0

    .line 933
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    :cond_0
    if-eqz v17, :cond_2

    if-eqz v20, :cond_2

    .line 936
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    :cond_1
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 942
    if-ltz v18, :cond_3

    const/4 v2, 0x2

    move/from16 v0, v18

    if-lt v0, v2, :cond_4

    .line 943
    :cond_3
    const/16 v18, 0x0

    .line 946
    :cond_4
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_6

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v18

    .line 952
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;I)V

    .line 954
    :cond_5
    return-void

    .line 949
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v3, v2, v18

    goto :goto_0

    .line 957
    .end local v14    # "plmn":Ljava/lang/String;
    .end local v16    # "showPlmn":Z
    .end local v17    # "showSpn":Z
    .end local v18    # "slotId":I
    .end local v20    # "spn":Ljava/lang/String;
    .end local v21    # "str":Ljava/lang/StringBuilder;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    move/from16 v0, v22

    if-eq v2, v0, :cond_8

    .line 958
    return-void

    .line 962
    .end local v22    # "subId":I
    :cond_8
    const-string/jumbo v2, "showSpn"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 963
    const-string/jumbo v2, "spn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 964
    const-string/jumbo v2, "spnData"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 965
    const-string/jumbo v2, "showPlmn"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 966
    const-string/jumbo v2, "plmn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    .line 962
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 968
    const-string/jumbo v2, "showSpn"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 969
    const-string/jumbo v2, "spn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 970
    const-string/jumbo v2, "spnData"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 971
    const-string/jumbo v2, "showPlmn"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 972
    const-string/jumbo v2, "plmn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 973
    const-string/jumbo v2, "efspn"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v2, p0

    .line 968
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setLastNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 975
    const-string/jumbo v2, "ZVV"

    sget-object v3, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 976
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowSpn:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastSpn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastDataSpn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowPlmn:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastPlmn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastEFSPN:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkNameLatin(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZLjava/lang/String;)V

    .line 978
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 917
    :cond_a
    :goto_1
    return-void

    .line 979
    :cond_b
    const-string/jumbo v2, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastPlmn:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 981
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowSpn:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastSpn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastDataSpn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowPlmn:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastPlmn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastEFSPN:I

    const-string/jumbo v2, "cbMsgBody"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v9, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkNameLatin(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZLjava/lang/String;)V

    goto :goto_1

    .line 983
    :cond_c
    const-string/jumbo v2, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 984
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowSpn:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastSpn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastDataSpn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowPlmn:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastPlmn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastEFSPN:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkNameLatin(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZLjava/lang/String;)V

    goto :goto_1

    .line 985
    :cond_d
    const-string/jumbo v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 986
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    .line 987
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    goto :goto_1

    .line 988
    :cond_e
    const-string/jumbo v2, "com.sec.android.app.UPDATE_NETWORK_EMERGENCY_ONLY"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 989
    const-string/jumbo v2, "network_manually_selected"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 990
    .local v12, "mNetworkManuallySelectedTemp":Ljava/lang/String;
    if-eqz v12, :cond_f

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f

    .line 991
    const-string/jumbo v2, "network_manually_selected_phone_id"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 992
    .local v13, "phoneId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    if-eqz v2, :cond_f

    if-ltz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    array-length v2, v2

    if-ge v13, v2, :cond_f

    .line 993
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    if-eqz v12, :cond_10

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_10

    .end local v12    # "mNetworkManuallySelectedTemp":Ljava/lang/String;
    :goto_2
    aput-object v12, v2, v13

    .line 996
    .end local v13    # "phoneId":I
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowSpn:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastSpn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastDataSpn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowPlmn:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastPlmn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastEFSPN:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkNameLatin(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZLjava/lang/String;)V

    goto/16 :goto_1

    .line 993
    .restart local v12    # "mNetworkManuallySelectedTemp":Ljava/lang/String;
    .restart local v13    # "phoneId":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    aget-object v12, v3, v13

    goto :goto_2

    .line 999
    .end local v12    # "mNetworkManuallySelectedTemp":Ljava/lang/String;
    .end local v13    # "phoneId":I
    :cond_11
    const-string/jumbo v2, "android.intent.action.START_NETWORK_BOOSTER"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->nwBoosterRilEnabled:Z

    .line 1001
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    goto/16 :goto_1

    .line 1002
    :cond_12
    const-string/jumbo v2, "android.intent.action.STOP_NETWORK_BOOSTER"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->nwBoosterRilEnabled:Z

    .line 1004
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    goto/16 :goto_1

    .line 1008
    :cond_13
    const-string/jumbo v2, "com.sec.android.LTE_WIDEBAND_INFO"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string/jumbo v3, "caindicator"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCAIndicator:Z

    .line 1010
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "LTE WIDEBAND : mCurrentState.isCAIndicator = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCAIndicator:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    goto/16 :goto_1

    .line 1015
    :cond_14
    const-string/jumbo v2, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1016
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateVoiceSim()V

    .line 1017
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    goto/16 :goto_1

    .line 1021
    :cond_15
    const-string/jumbo v2, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1022
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1021
    if-eqz v2, :cond_19

    .line 1024
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    if-eqz v2, :cond_17

    .line 1025
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v2, :cond_18

    .line 1026
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;I)V

    .line 1033
    :cond_17
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateCardOperatorInfo()V

    .line 1036
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateVoiceSim()V

    .line 1038
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners()V

    goto/16 :goto_1

    .line 1028
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;)V

    goto :goto_3

    .line 1042
    :cond_19
    const-string/jumbo v2, "com.samsung.android.softsim.ServiceStatus"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1043
    const-string/jumbo v2, "status"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1044
    .local v15, "serviceStatus":Ljava/lang/String;
    if-eqz v15, :cond_a

    .line 1045
    const-string/jumbo v2, "persist.sys.softsim.status"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    const-string/jumbo v4, "default"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1046
    .local v19, "softSimState":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " softSim ServiceStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", softSimState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const-string/jumbo v2, "on"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1049
    const-string/jumbo v2, "activating"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string/jumbo v2, "activated"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1050
    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_a

    .line 1051
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    const/4 v3, -0x3

    if-eq v2, v3, :cond_a

    .line 1052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isSRoaming:Z

    .line 1053
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    goto/16 :goto_1

    .line 1056
    :cond_1b
    const-string/jumbo v2, "activating"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string/jumbo v2, "activated"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_4
    if-nez v2, :cond_a

    .line 1057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isSRoaming:Z

    .line 1058
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    goto/16 :goto_1

    .line 1056
    :cond_1c
    const/4 v2, 0x1

    goto :goto_4

    .line 1064
    .end local v15    # "serviceStatus":Ljava/lang/String;
    .end local v19    # "softSimState":Ljava/lang/String;
    :cond_1d
    const-string/jumbo v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v2, :cond_1e

    .line 1067
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateCarrierText()V

    .line 1071
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateVoiceSim()V

    .line 1074
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_AT_CTC_CARD:Z

    if-eqz v2, :cond_1f

    .line 1075
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateCardOperatorInfo()V

    .line 1077
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    goto/16 :goto_1
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 20
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .prologue
    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 464
    .local v17, "icons":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getContentDescription()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v15

    .line 465
    .local v15, "contentDescription":Ljava/lang/String;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v11

    .line 466
    .local v11, "dataContentDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-ne v2, v9, :cond_d

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    move/from16 v16, v0

    .line 470
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActiveSimCount:I

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v2, :cond_0

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHasMobileData:Z

    if-eqz v9, :cond_10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v9

    if-nez v9, :cond_e

    .line 473
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->numberOfSim:I

    if-nez v9, :cond_f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    if-nez v9, :cond_f

    const/4 v9, 0x1

    .line 472
    :goto_1
    iput-boolean v9, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    .line 480
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    move/from16 v18, v0

    .line 486
    .local v18, "showDataIcon":Z
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-eqz v2, :cond_11

    :cond_1
    const/4 v2, 0x0

    .line 487
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId()I

    move-result v9

    .line 486
    invoke-direct {v3, v2, v9, v15}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 489
    .local v3, "statusIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    const/4 v6, 0x0

    .line 490
    .local v6, "qsTypeIcon":I
    const/4 v4, 0x0

    .line 491
    .local v4, "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    const/4 v12, 0x0

    .line 493
    .local v12, "description":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    if-eqz v2, :cond_2

    .line 494
    if-eqz v18, :cond_12

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsDataType:I

    .line 496
    :goto_3
    new-instance v4, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .end local v4    # "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    if-eqz v2, :cond_14

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    :goto_4
    const/4 v9, 0x0

    .line 496
    invoke-direct {v4, v2, v9, v15}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 501
    .local v4, "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-eqz v2, :cond_15

    const/4 v12, 0x0

    .line 503
    .end local v4    # "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .end local v12    # "description":Ljava/lang/String;
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v2, :cond_3

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    if-eqz v2, :cond_16

    .line 503
    :cond_3
    const/4 v7, 0x0

    .line 506
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v2, :cond_4

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    if-eqz v2, :cond_17

    .line 506
    :cond_4
    const/4 v8, 0x0

    .line 514
    :goto_7
    if-eqz v18, :cond_18

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    .line 516
    .local v5, "typeIcon":I
    :goto_8
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_PURE_SIGNAL_ICON:Z

    if-eqz v2, :cond_5

    .line 517
    const/4 v5, 0x0

    .line 520
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    if-eqz v2, :cond_6

    .line 521
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 525
    :cond_6
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SHOW_DISABLED_DATA_ICON:Z

    if-eqz v2, :cond_7

    .line 526
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldShowDisabledDataIcon()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 527
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    .line 531
    :cond_7
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_TW_WFC_CONCEPT:Z

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldHideDataIconForVoWifi()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 532
    const/4 v5, 0x0

    .line 537
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->bluetoothTethered:Z

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setBtTetherVisible(Z)V

    .line 540
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_MPTCP:Z

    if-eqz v2, :cond_9

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshMPTCPIndicator()V

    .line 545
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v2, :cond_b

    .line 546
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActiveSimCount:I

    const/4 v9, 0x2

    if-ne v2, v9, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceSim:Z

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    move/from16 v19, v0

    .line 547
    :goto_9
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v2, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 549
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 548
    const v9, 0x7f02068a

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1, v9, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setSlotFocusVisible(ZII)V

    .line 557
    :cond_b
    :goto_a
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v2, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 558
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v9}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setRssiTypeIcon(II)V

    .line 565
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getActivityIcon()I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getRoamingIcon()I

    move-result v10

    .line 566
    move-object/from16 v0, v17

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mIsWide:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v14

    move-object/from16 v2, p1

    .line 564
    invoke-interface/range {v2 .. v14}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIILjava/lang/String;Ljava/lang/String;ZI)V

    .line 461
    return-void

    .line 466
    .end local v3    # "statusIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .end local v5    # "typeIcon":I
    .end local v6    # "qsTypeIcon":I
    .end local v18    # "showDataIcon":Z
    :cond_d
    const/16 v16, 0x0

    .local v16, "dataDisabled":Z
    goto/16 :goto_0

    .line 472
    .end local v16    # "dataDisabled":Z
    :cond_e
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 473
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 472
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 486
    .restart local v18    # "showDataIcon":Z
    :cond_11
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 494
    .restart local v3    # "statusIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .local v4, "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .restart local v6    # "qsTypeIcon":I
    .restart local v12    # "description":Ljava/lang/String;
    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 497
    .end local v4    # "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    :cond_13
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 496
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 501
    .local v4, "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v12, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .local v12, "description":Ljava/lang/String;
    goto/16 :goto_5

    .line 505
    .end local v4    # "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .end local v12    # "description":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v7, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityIn:Z

    .local v7, "activityIn":Z
    goto/16 :goto_6

    .line 508
    .end local v7    # "activityIn":Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v8, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityOut:Z

    .local v8, "activityOut":Z
    goto/16 :goto_7

    .line 514
    .end local v8    # "activityOut":Z
    :cond_18
    const/4 v5, 0x0

    .restart local v5    # "typeIcon":I
    goto/16 :goto_8

    .line 546
    :cond_19
    const/16 v19, 0x0

    .local v19, "visible":Z
    goto/16 :goto_9

    .line 551
    .end local v19    # "visible":Z
    :cond_1a
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrengthFocusBg()I

    move-result v2

    .line 552
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    .line 551
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1, v2, v9}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setSlotFocusVisible(ZII)V

    goto/16 :goto_a

    .line 560
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v9, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setRssiTypeIcon(II)V

    goto :goto_b
.end method

.method public refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 7
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2626
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getConnectedWifiLevel()I

    move-result v6

    aget v4, v0, v6

    .line 2627
    .local v4, "nwBoosterWifiIconId":I
    const v5, 0x7f0205e7

    .line 2628
    .local v5, "nwBoosterActivityIcon":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mNwBoosterDataType:I

    .line 2630
    .local v3, "nwBoosterDataTypeIconId":I
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->DISPLAY_NETWORK_BOOSTER_ICON_AS_SIMPLE_TYPE:Z

    if-eqz v0, :cond_0

    .line 2631
    const v5, 0x7f0205e8

    .line 2634
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->nwBoosterSettingEnabled:Z

    if-eqz v0, :cond_2

    .line 2635
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->nwBoosterRilEnabled:Z

    if-eqz v0, :cond_1

    move-object v0, p1

    move v2, v1

    .line 2636
    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNWBoosterIndicators(ZZIII)V

    .line 2625
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 2639
    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNWBoosterIndicators(ZZIII)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    move v1, v2

    .line 2643
    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNWBoosterIndicators(ZZIII)V

    goto :goto_0
.end method

.method public registerListener()V
    .locals 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 371
    const v2, 0x101f1

    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 369
    return-void
.end method

.method public sendOperatorLogoUpdateIntent()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2651
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 2652
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setIsNetworkAvailable(Z)V

    .line 2653
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.systemui.statusbar.OPERATOR_LOGO_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2654
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldDisplayOperatorIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2655
    const-string/jumbo v1, "logo_show"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2659
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2650
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 2652
    goto :goto_0

    .line 2657
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v1, "logo_show"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method setActivity(I)V
    .locals 5
    .param p1, "activity"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1440
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eq p1, v4, :cond_1

    .line 1441
    if-ne p1, v2, :cond_2

    move v1, v2

    .line 1440
    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityIn:Z

    .line 1442
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eq p1, v4, :cond_0

    .line 1443
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 1442
    :cond_0
    :goto_1
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityOut:Z

    .line 1444
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 1439
    return-void

    :cond_1
    move v1, v2

    .line 1440
    goto :goto_0

    :cond_2
    move v1, v3

    .line 1441
    goto :goto_0

    :cond_3
    move v2, v3

    .line 1443
    goto :goto_1
.end method

.method public setAirplaneMode(Z)V
    .locals 3
    .param p1, "airplaneMode"    # Z

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v0, :cond_1

    .line 327
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;I)V

    .line 333
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 322
    return-void

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCarrierNetworkChangeMode(Z)V
    .locals 1
    .param p1, "carrierNetworkChangeMode"    # Z

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    .line 363
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    .line 361
    return-void
.end method

.method public setConfiguration(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V
    .locals 3
    .param p1, "config"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 295
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mapIconSets()V

    .line 296
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    .line 300
    const v1, 0x1040299

    .line 299
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v0, :cond_3

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CTC"

    sget-object v1, Lcom/android/systemui/SystemUIRune;->PLMN_INFO_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;I)V

    .line 293
    :cond_1
    :goto_1
    return-void

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    aput-object v0, v1, v2

    goto :goto_0

    .line 307
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;)V

    goto :goto_1

    .line 310
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 312
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public setUserSetupComplete(Z)V
    .locals 1
    .param p1, "userSetup"    # Z

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    .line 338
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 336
    return-void
.end method

.method public unregisterListener()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 386
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SHOW_DISABLED_DATA_ICON:Z

    if-eqz v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 389
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataRoamingObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 393
    const-string/jumbo v0, "ZVV"

    sget-object v1, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ZTM"

    sget-object v1, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 392
    if-eqz v0, :cond_2

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 395
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataRoamingObserver:Landroid/database/ContentObserver;

    .line 383
    :cond_2
    return-void
.end method

.method public updateCardOperatorInfo()V
    .locals 2

    .prologue
    .line 2825
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    .line 2826
    .local v0, "numeric":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCmccCard(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsCmccCard:Z

    .line 2828
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCtcCard()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsCtcCard:Z

    .line 2829
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isATOCardUsingLTEIcon(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsATOCardUsingLTEIcon:Z

    .line 2831
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_INDIA_OP_CONCEPT:Z

    if-eqz v1, :cond_0

    .line 2832
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIndianOperator(I)Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndianOperator:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    .line 2824
    :cond_0
    return-void
.end method

.method public updateCarrierText()V
    .locals 3

    .prologue
    .line 2666
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2667
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v0, :cond_1

    .line 2668
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;I)V

    .line 2672
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCarrierText : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    :cond_0
    return-void

    .line 2670
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 6
    .param p1, "connectedTransports"    # Ljava/util/BitSet;
    .param p2, "validatedTransports"    # Ljava/util/BitSet;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 343
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransportType:I

    invoke-virtual {p2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    .line 344
    .local v0, "isValidated":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransportType:I

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    .line 346
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    .line 349
    invoke-virtual {p1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    invoke-virtual {p2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    .line 349
    if-eqz v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->bluetoothTethered:Z

    .line 356
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateConnectivity: mCurrentState.bluetoothTethered + "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->bluetoothTethered:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 342
    return-void

    :cond_0
    move v2, v4

    .line 346
    goto :goto_0

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->bluetoothTethered:Z

    goto :goto_1
.end method

.method updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "dataSpn"    # Ljava/lang/String;
    .param p4, "showPlmn"    # Z
    .param p5, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1110
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->CHATTY:Z

    if-nez v2, :cond_0

    .line 1111
    :cond_0
    const-string/jumbo v2, "CarrierLabel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNetworkName showSpn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1112
    const-string/jumbo v4, " spn="

    .line 1111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1112
    const-string/jumbo v4, " dataSpn="

    .line 1111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1113
    const-string/jumbo v4, " showPlmn="

    .line 1111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1113
    const-string/jumbo v4, " plmn="

    .line 1111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1116
    .local v0, "str":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1117
    .local v1, "strData":Ljava/lang/StringBuilder;
    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    .line 1118
    const-string/jumbo v2, "KDI"

    sget-object v3, Lcom/android/systemui/SystemUIRune;->PLMN_INFO_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1119
    const-string/jumbo v2, "KDDI"

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1120
    const-string/jumbo p5, "au"

    .line 1124
    :cond_1
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    :cond_2
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 1128
    const-string/jumbo v2, "KDI"

    sget-object v3, Lcom/android/systemui/SystemUIRune;->PLMN_INFO_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1129
    const-string/jumbo v2, "KDDI"

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1130
    const-string/jumbo p5, "au"

    .line 1134
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1135
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    :cond_4
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_b

    .line 1140
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1148
    :goto_0
    if-eqz p1, :cond_7

    if-eqz p3, :cond_7

    .line 1149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_6

    .line 1150
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    :cond_6
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_e

    .line 1155
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 1161
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 1162
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->USE_SEARCHING_STRING_IN_NO_SERVICE:Z

    if-eqz v2, :cond_8

    .line 1163
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1164
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const v3, 0x7f0f0673

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1168
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v2, :cond_f

    .line 1169
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v3, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    aput-object v2, v3, v4

    .line 1170
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;I)V

    .line 1177
    :cond_9
    :goto_2
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_INDICATOR_PLMN:Z

    if-eqz v2, :cond_a

    .line 1178
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 1179
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStatusBarCarrierText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateStatusBarCarrierText(Ljava/lang/String;)V

    .line 1109
    :cond_a
    return-void

    .line 1143
    :cond_b
    if-nez p4, :cond_c

    .line 1142
    if-eqz p1, :cond_d

    .line 1144
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1146
    :cond_d
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1157
    :cond_e
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    goto :goto_1

    .line 1172
    :cond_f
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;)V

    goto :goto_2
.end method

.method updateNetworkNameLatin(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZLjava/lang/String;)V
    .locals 4
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "dataSpn"    # Ljava/lang/String;
    .param p4, "showPlmn"    # Z
    .param p5, "plmn"    # Ljava/lang/String;
    .param p6, "efspn"    # I
    .param p7, "showCB"    # Z
    .param p8, "CBmsg"    # Ljava/lang/String;

    .prologue
    .line 1269
    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastCB:Ljava/lang/String;

    .line 1270
    const-string/jumbo v0, "CarrierLabel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNetworkNameLatin showSpn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1271
    const-string/jumbo v2, " spn="

    .line 1270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1271
    const-string/jumbo v2, " dataSpn="

    .line 1270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1272
    const-string/jumbo v2, " showPlmn="

    .line 1270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1272
    const-string/jumbo v2, " plmn="

    .line 1270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1272
    const-string/jumbo v2, " efspn="

    .line 1270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1272
    const-string/jumbo v2, " showCB="

    .line 1270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1272
    const-string/jumbo v2, " CBmsg="

    .line 1270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1272
    const-string/jumbo v2, " mDataNetType="

    .line 1270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1272
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 1270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1272
    const-string/jumbo v2, " mNetworkManuallySelected="

    .line 1270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1272
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    .line 1270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-eqz v0, :cond_1

    .line 1275
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1294
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v0, :cond_8

    .line 1298
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;I)V

    .line 1306
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStatusBarCarrierText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateStatusBarCarrierText(Ljava/lang/String;)V

    .line 1268
    :cond_0
    return-void

    .line 1276
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    const v1, 0x10402b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1277
    :cond_2
    const-string/jumbo v0, "ZVV"

    sget-object v1, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1281
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object p5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_0

    .line 1278
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1285
    :cond_5
    const-string/jumbo v0, "ZVV"

    sget-object v1, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isGsmZVV()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1289
    :cond_6
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkNameLatinCB(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZLjava/lang/String;)V

    goto/16 :goto_0

    .line 1286
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkNameLatinLAC(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1300
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

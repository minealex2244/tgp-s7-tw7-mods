.class public Lcom/android/server/location/GnssLocationProvider_samsung;
.super Ljava/lang/Object;
.source "GnssLocationProvider_samsung.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues:[I = null

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final AGPS_TYPE_SUPL_2:I = 0x3

.field private static final AGPS_TYPE_SUPL_2_0_1_AGNSS:I = 0x5

.field private static final AGPS_TYPE_SUPL_2_AGNSS:I = 0x4

.field private static final CSC_PROPERTIES_DIR:Ljava/lang/String; = "/data/system/gps"

.field private static final CSC_PROPERTIES_FILE:Ljava/lang/String; = "/data/system/gps/cscgps.conf"

.field private static final DEBUG:Z = true

.field static final FLAG_AGPS_UDP_RECEIVED:I = 0x1

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final INTENT_AGPS_GET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_GET_PROFILE"

.field private static final INTENT_AGPS_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_PROFILE"

.field private static final INTENT_AGPS_SET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_SET_PROFILE"

.field private static final INTENT_AGPS_UDP_RECEIVED:Ljava/lang/String; = "android.intent.action.AGPS_UDP_RECEIVED"

.field private static final Num_Top_SV:I = 0x5

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final SEC_GPS_CONF_DIR:Ljava/lang/String; = "/data/system/gps"

.field private static final SEC_GPS_CONF_FILE:Ljava/lang/String; = "/data/system/gps/secgps.conf"

.field static final SUPL_INIT_EMERGENCY_SUPL_NI:I = 0x2

.field static final SUPL_INIT_NATIVE_INIT_SUPL_NI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GnssLocationProvider_ex"

.field private static final VERBOSE:Z


# instance fields
.field private final RJILALPHA:Ljava/lang/String;

.field private final SERVER_PORT:I

.field private final TurkeyVodafoneOperator:Ljava/lang/String;

.field private googleSuplAddr:Ljava/lang/String;

.field private googleSuplPort:I

.field private isNativeInitCalled:Z

.field private isUDPListen:Z

.field private ktPositionMode:I

.field mConnMgr:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field private mCurrentMobileType:I

.field private mIsKtGps:Z

.field private mIsSKAF:Z

.field private mIsSetAutoSuplServer:Z

.field private mKTSuplServerHost:Ljava/lang/String;

.field private mKTSuplServerPort:I

.field private mPositionModeFromCSC:Ljava/lang/String;

.field mProperties:Ljava/util/Properties;

.field mProperties_secgps:Ljava/util/Properties;

.field private mResolveAddrs:Ljava/net/InetAddress;

.field public mStarted:Z

.field private mSuplAddress:Ljava/lang/String;

.field private mSuplPort:I

.field private mSuplServerFromCSC:I

.field private mSuplSslMode:I

.field private mSuplSslType:I

.field private mSuplType:I

.field private mccTLS:I

.field private mncTLS1:I

.field private mncTLS2:I

.field private prevLppMask:I

.field private retAddr:Ljava/net/InetAddress;

.field private sktSuplAddr:Ljava/lang/String;

.field private sktSuplPort:I

.field private socket:Ljava/net/DatagramSocket;

.field private suplFqdn:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/location/GnssLocationProvider_samsung;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    return v0
.end method

.method private static synthetic -getcom-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung;->-com-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung;->-com-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->values()[Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_BMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_16

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_RWC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_15

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_TLS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_14

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_13

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_12

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHN:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_11

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_10

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_f

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CTC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_e

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_DCM:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_d

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_KDI:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_c

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_a

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_9

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_8

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_7

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_UNE:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_6

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->NO_OPERATOR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_5

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->PER_PNT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_4

    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->SUI_SWC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_3

    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->TUR_TUR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_2

    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_1

    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_0

    :goto_16
    sput-object v0, Lcom/android/server/location/GnssLocationProvider_samsung;->-com-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_16

    :catch_1
    move-exception v1

    goto :goto_15

    :catch_2
    move-exception v1

    goto :goto_14

    :catch_3
    move-exception v1

    goto :goto_13

    :catch_4
    move-exception v1

    goto :goto_12

    :catch_5
    move-exception v1

    goto :goto_11

    :catch_6
    move-exception v1

    goto :goto_10

    :catch_7
    move-exception v1

    goto :goto_f

    :catch_8
    move-exception v1

    goto :goto_e

    :catch_9
    move-exception v1

    goto :goto_d

    :catch_a
    move-exception v1

    goto :goto_c

    :catch_b
    move-exception v1

    goto/16 :goto_b

    :catch_c
    move-exception v1

    goto/16 :goto_a

    :catch_d
    move-exception v1

    goto/16 :goto_9

    :catch_e
    move-exception v1

    goto/16 :goto_8

    :catch_f
    move-exception v1

    goto/16 :goto_7

    :catch_10
    move-exception v1

    goto/16 :goto_6

    :catch_11
    move-exception v1

    goto/16 :goto_5

    :catch_12
    move-exception v1

    goto/16 :goto_4

    :catch_13
    move-exception v1

    goto/16 :goto_3

    :catch_14
    move-exception v1

    goto/16 :goto_2

    :catch_15
    move-exception v1

    goto/16 :goto_1

    :catch_16
    move-exception v1

    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider_samsung;->VERBOSE:Z

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x1c6b

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->SERVER_PORT:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->socket:Ljava/net/DatagramSocket;

    .line 90
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSKAF:Z

    .line 94
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    .line 97
    iput v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->ktPositionMode:I

    .line 98
    const-string/jumbo v0, "wpde.nate.com"

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->sktSuplAddr:Ljava/lang/String;

    .line 99
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->sktSuplPort:I

    .line 100
    const-string/jumbo v0, "supl.google.com"

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    .line 101
    const/16 v0, 0x1c6c

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->googleSuplPort:I

    .line 104
    const/16 v0, 0x12e

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mccTLS:I

    .line 105
    const/16 v0, 0xdc

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mncTLS1:I

    .line 106
    const/16 v0, 0xdd

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mncTLS2:I

    .line 109
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    .line 111
    const-string/jumbo v0, "MSBASED"

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 112
    const-string/jumbo v0, "supl.google.com"

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 113
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    .line 114
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    .line 115
    iput v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    .line 116
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    .line 117
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 119
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mCurrentMobileType:I

    .line 149
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    .line 156
    const-string/jumbo v0, "Jio 4G"

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->RJILALPHA:Ljava/lang/String;

    .line 157
    const-string/jumbo v0, "28602"

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->TurkeyVodafoneOperator:Ljava/lang/String;

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->prevLppMask:I

    .line 160
    return-void
.end method

.method private checkUDPSuplInit()V
    .locals 3

    .prologue
    .line 1752
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "start UDP socket"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider_samsung$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider_samsung$1;-><init>(Lcom/android/server/location/GnssLocationProvider_samsung;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1785
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1751
    return-void
.end method

.method private deleteSecGpsConf()V
    .locals 4

    .prologue
    .line 1533
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, "deleteSecGpsConf"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/data/system/gps/secgps.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1537
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1538
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1539
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, "secgps.conf deleted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1532
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 1541
    :catch_0
    move-exception v0

    .line 1542
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, " could not delete secgps.conf file : /data/system/gps/secgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private extChnSelectPositionMode()I
    .locals 5

    .prologue
    .line 480
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode() start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v1, 0x0

    .line 483
    .local v1, "chnPositionMode":I
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v3, v4, :cond_1

    .line 484
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 485
    .local v2, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_CMCCxtraDownloadRequest()Z

    move-result v0

    .line 487
    .local v0, "agpsSwitchOff":Z
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    if-eqz v0, :cond_4

    .line 488
    :cond_0
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode() postionMode == STANDALONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v1, 0x0

    .line 496
    .end local v0    # "agpsSwitchOff":Z
    .end local v2    # "phone":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHN:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v3, v4, :cond_2

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v3, v4, :cond_5

    .line 497
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 498
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode, set with STANDALONE for CU and OPEN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_3
    return v1

    .line 491
    .restart local v0    # "agpsSwitchOff":Z
    .restart local v2    # "phone":Landroid/telephony/TelephonyManager;
    :cond_4
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode() postionMode == MS_BASED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v1, 0x1

    goto :goto_0

    .line 496
    .end local v0    # "agpsSwitchOff":Z
    .end local v2    # "phone":Landroid/telephony/TelephonyManager;
    :cond_5
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v3, v4, :cond_3

    goto :goto_1
.end method

.method private extSelectUseGooglePositionMode(I)I
    .locals 13
    .param p1, "_mPositionMode"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 455
    move v12, p1

    .line 456
    .local v12, "mPositionMode":I
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "extSelectUseGooglePositionMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v12, 0x1

    .line 458
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, " SKT GPS mode : SUPL 2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSktSuplVer()V

    .line 470
    :goto_0
    return v12

    .line 462
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v0, :cond_1

    .line 463
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, " KT GPS mode : SUPL2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerPort:I

    const/4 v1, 0x3

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 466
    :cond_1
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "extSelectUseGooglePositionMode() : Google SUPL 2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-direct {p0, v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_agps_xtra_set(I)V

    .line 468
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    const/4 v6, 0x4

    const/16 v8, 0x1c6b

    move-object v5, p0

    move v10, v4

    move v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method private getCpAgpsProfile()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1443
    const-string/jumbo v1, "ril.product_code"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1444
    .local v0, "productCode":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1445
    const-string/jumbo v1, "ECO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "EBE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1446
    const-string/jumbo v1, "ALE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 1445
    if-nez v1, :cond_0

    .line 1446
    const-string/jumbo v1, "EON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 1445
    if-eqz v1, :cond_1

    .line 1454
    :cond_0
    return v3

    .line 1456
    :cond_1
    const-string/jumbo v1, "COB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "COM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1462
    :cond_2
    return v3

    .line 1466
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private getLppBitmask()I
    .locals 11

    .prologue
    .line 715
    const/4 v3, -0x1

    .line 717
    .local v3, "ret":I
    const/4 v1, 0x0

    .line 718
    .local v1, "isRJIO":Z
    const/4 v2, 0x0

    .line 720
    .local v2, "isTurkeyVodafone":Z
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 721
    .local v7, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    .line 722
    .local v6, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .line 724
    .local v5, "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v5, :cond_2

    .line 725
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 726
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 727
    .local v4, "subId":I
    const-string/jumbo v8, "GnssLocationProvider_ex"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SubscriptionId is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 728
    const-string/jumbo v10, ", SimOperatorName = "

    .line 727
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 728
    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v10

    .line 727
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 729
    const-string/jumbo v10, ", SimOperator = "

    .line 727
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 729
    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v10

    .line 727
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const-string/jumbo v8, "Jio 4G"

    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 732
    const/4 v1, 0x1

    .line 734
    :cond_0
    const-string/jumbo v8, "28602"

    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 735
    const/4 v2, 0x1

    .line 725
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 740
    .end local v0    # "i":I
    .end local v4    # "subId":I
    :cond_2
    if-eqz v1, :cond_4

    .line 741
    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, "JIO 4G operator"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const/4 v3, 0x7

    .line 753
    :cond_3
    :goto_1
    return v3

    .line 743
    :cond_4
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->TUR_TUR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v8, v9, :cond_5

    .line 744
    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, "getVendor: TUR"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    if-eqz v2, :cond_3

    .line 746
    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, "VODAFONE operator: LPP enable"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v3, 0x7

    goto :goto_1

    .line 749
    :cond_5
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->NO_OPERATOR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v8, v9, :cond_3

    .line 750
    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, "No Operator LPP Disable"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getSKAFEnable()Z
    .locals 3

    .prologue
    .line 411
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSKAFEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSKAF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSKAF:Z

    return v0
.end method

.method private getSuplServerFromCSC()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 1036
    const-string/jumbo v10, "GnssLocationProvider_ex"

    const-string/jumbo v11, "getSuplServerFromCSC"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iput v13, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 1040
    :try_start_0
    new-instance v7, Ljava/io/File;

    const-string/jumbo v10, "/data/system/gps/cscgps.conf"

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1041
    .local v7, "file":Ljava/io/File;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_4

    .line 1049
    .end local v7    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    .line 1051
    .local v8, "mProperties_cscgps":Ljava/util/Properties;
    :try_start_1
    new-instance v7, Ljava/io/File;

    const-string/jumbo v10, "/data/system/gps/cscgps.conf"

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1052
    .restart local v7    # "file":Ljava/io/File;
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1054
    .local v9, "stream":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v8, v9}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1060
    if-eqz v9, :cond_1

    .line 1061
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1070
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    const-string/jumbo v10, "CSC_SUPL_SUPLSERVERFROMCSC"

    invoke-virtual {v8, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1071
    .local v1, "SuplServerFromCSC_s":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    .line 1073
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1080
    :cond_2
    :goto_2
    iget v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 1081
    const-string/jumbo v10, "CSC_SUPL_OPMODE"

    invoke-virtual {v8, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 1082
    const-string/jumbo v10, "CSC_SUPL_HOST"

    invoke-virtual {v8, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 1084
    const-string/jumbo v10, "CSC_SUPL_VER"

    const-string/jumbo v11, "1"

    invoke-virtual {v8, v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1085
    .local v3, "SuplType_s":Ljava/lang/String;
    const-string/jumbo v10, "CSC_SUPL_PORT"

    const-string/jumbo v11, "7276"

    invoke-virtual {v8, v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1086
    .local v0, "SuplPort_s":Ljava/lang/String;
    const-string/jumbo v10, "CSC_SUPL_SSL"

    const-string/jumbo v11, "0"

    invoke-virtual {v8, v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1089
    .local v2, "SuplSslMode_s":Ljava/lang/String;
    :try_start_5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    .line 1090
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    .line 1091
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_7

    .line 1099
    .end local v0    # "SuplPort_s":Ljava/lang/String;
    .end local v2    # "SuplSslMode_s":Ljava/lang/String;
    .end local v3    # "SuplType_s":Ljava/lang/String;
    :cond_3
    :goto_3
    const-string/jumbo v10, "GnssLocationProvider_ex"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[getProperty] mSuplServerFromCSC : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    return-void

    .line 1042
    .end local v1    # "SuplServerFromCSC_s":Ljava/lang/String;
    .end local v8    # "mProperties_cscgps":Ljava/util/Properties;
    .restart local v7    # "file":Ljava/io/File;
    :cond_4
    :try_start_6
    const-string/jumbo v10, "GnssLocationProvider_ex"

    const-string/jumbo v11, " file doesn\'t exist : /data/system/gps/cscgps.conf"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1043
    return-void

    .line 1045
    .end local v7    # "file":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 1046
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "GnssLocationProvider_ex"

    const-string/jumbo v11, " could not access file : /data/system/gps/cscgps.conf"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1062
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "mProperties_cscgps":Ljava/util/Properties;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v5

    .line 1063
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v10, "GnssLocationProvider_ex"

    const-string/jumbo v11, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 1066
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    .line 1067
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v10, "GnssLocationProvider_ex"

    const-string/jumbo v11, "could not open file /data/system/gps/cscgps.conf"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1055
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    .line 1056
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_8
    const-string/jumbo v10, "GnssLocationProvider_ex"

    const-string/jumbo v11, " could not load file : /data/system/gps/cscgps.conf"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1060
    if-eqz v9, :cond_5

    .line 1061
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 1057
    :cond_5
    :goto_4
    return-void

    .line 1062
    :catch_4
    move-exception v5

    .line 1063
    :try_start_a
    const-string/jumbo v10, "GnssLocationProvider_ex"

    const-string/jumbo v11, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_4

    .line 1058
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 1060
    if-eqz v9, :cond_6

    .line 1061
    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 1058
    :cond_6
    :goto_5
    :try_start_c
    throw v10

    .line 1062
    :catch_5
    move-exception v5

    .line 1063
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string/jumbo v11, "GnssLocationProvider_ex"

    const-string/jumbo v12, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_5

    .line 1074
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "SuplServerFromCSC_s":Ljava/lang/String;
    :catch_6
    move-exception v6

    .line 1075
    .local v6, "e":Ljava/lang/NumberFormatException;
    iput v13, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 1076
    const-string/jumbo v10, "GnssLocationProvider_ex"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " [NumberFormatException] mSuplServerFromCSC :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1093
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "SuplPort_s":Ljava/lang/String;
    .restart local v2    # "SuplSslMode_s":Ljava/lang/String;
    .restart local v3    # "SuplType_s":Ljava/lang/String;
    :catch_7
    move-exception v6

    .line 1094
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    iput v13, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 1095
    const-string/jumbo v10, "GnssLocationProvider_ex"

    const-string/jumbo v11, "[NumberFormatException] failed to convert supl information"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public static getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;
    .locals 3

    .prologue
    .line 279
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 281
    :cond_0
    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_1
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->NO_OPERATOR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    .line 285
    .local v1, "vendor":Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;
    const-string/jumbo v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 286
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    .line 327
    :cond_2
    :goto_0
    return-object v1

    .line 287
    :cond_3
    const-string/jumbo v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 288
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 289
    :cond_4
    const-string/jumbo v2, "DCM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 290
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_DCM:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 291
    :cond_5
    const-string/jumbo v2, "KDI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 292
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_KDI:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 293
    :cond_6
    const-string/jumbo v2, "TLS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "KDO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "PMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "SPC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 294
    :cond_7
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_TLS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 295
    :cond_8
    const-string/jumbo v2, "BMC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "VMC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "PCM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "SOL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "BWA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 296
    :cond_9
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_BMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 297
    :cond_a
    const-string/jumbo v2, "RWC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "FMC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "MTA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "VTR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "ESK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "GLW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 298
    :cond_b
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_RWC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 299
    :cond_c
    const-string/jumbo v2, "XAC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 300
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 301
    :cond_d
    const-string/jumbo v2, "SKT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string/jumbo v2, "SKC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string/jumbo v2, "SKO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 302
    :cond_e
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 303
    :cond_f
    const-string/jumbo v2, "LGT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "LUC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "LUO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 304
    :cond_10
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 305
    :cond_11
    const-string/jumbo v2, "KTT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string/jumbo v2, "KTC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string/jumbo v2, "KTO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 306
    :cond_12
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 307
    :cond_13
    const-string/jumbo v2, "CHM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 308
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 309
    :cond_14
    const-string/jumbo v2, "CTC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 310
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CTC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 311
    :cond_15
    const-string/jumbo v2, "CHU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 312
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 313
    :cond_16
    const-string/jumbo v2, "CHC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 314
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 315
    :cond_17
    const-string/jumbo v2, "MNX"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 316
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 317
    :cond_18
    const-string/jumbo v2, "IUS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 318
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 319
    :cond_19
    const-string/jumbo v2, "UNE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 320
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_UNE:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 321
    :cond_1a
    const-string/jumbo v2, "PNT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 322
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->PER_PNT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 323
    :cond_1b
    const-string/jumbo v2, "SWC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 324
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->SUI_SWC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 325
    :cond_1c
    const-string/jumbo v2, "TUR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->TUR_TUR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0
.end method

.method public static isUSAMarket()Z
    .locals 5

    .prologue
    .line 331
    const/4 v1, 0x0

    .line 332
    .local v1, "rc":Z
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 334
    :cond_0
    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    :cond_1
    const-string/jumbo v2, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUSAMarket : code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string/jumbo v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 339
    const/4 v1, 0x1

    .line 354
    :goto_0
    const-string/jumbo v2, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUSAMarket rc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return v1

    .line 340
    :cond_2
    const-string/jumbo v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 341
    const/4 v1, 0x1

    goto :goto_0

    .line 342
    :cond_3
    const-string/jumbo v2, "TLS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 343
    const/4 v1, 0x1

    goto :goto_0

    .line 344
    :cond_4
    const-string/jumbo v2, "BMC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 345
    const/4 v1, 0x1

    goto :goto_0

    .line 346
    :cond_5
    const-string/jumbo v2, "RWC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 347
    const/4 v1, 0x1

    goto :goto_0

    .line 348
    :cond_6
    const-string/jumbo v2, "XAR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 349
    const/4 v1, 0x1

    goto :goto_0

    .line 350
    :cond_7
    const-string/jumbo v2, "XAC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 351
    const/4 v1, 0x1

    goto :goto_0

    .line 353
    :cond_8
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUSCDMAMarket()Z
    .locals 5

    .prologue
    .line 366
    const/4 v1, 0x0

    .line 367
    .local v1, "rc":Z
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_GPS_ConfigAgpsSetting"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "code":Ljava/lang/String;
    const-string/jumbo v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    const/4 v1, 0x1

    .line 389
    :goto_0
    const-string/jumbo v2, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUSCDMAMarket rc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return v1

    .line 371
    :cond_0
    const-string/jumbo v2, "SPR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    const/4 v1, 0x1

    goto :goto_0

    .line 373
    :cond_1
    const-string/jumbo v2, "USC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 374
    const/4 v1, 0x1

    goto :goto_0

    .line 375
    :cond_2
    const-string/jumbo v2, "BST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 376
    const/4 v1, 0x1

    goto :goto_0

    .line 377
    :cond_3
    const-string/jumbo v2, "VMU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 378
    const/4 v1, 0x1

    goto :goto_0

    .line 379
    :cond_4
    const-string/jumbo v2, "XAS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 380
    const/4 v1, 0x1

    goto :goto_0

    .line 381
    :cond_5
    const-string/jumbo v2, "LRA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 382
    const/4 v1, 0x1

    goto :goto_0

    .line 383
    :cond_6
    const-string/jumbo v2, "TFNVZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 384
    const/4 v1, 0x1

    goto :goto_0

    .line 385
    :cond_7
    const-string/jumbo v2, "ACG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 386
    const/4 v1, 0x1

    goto :goto_0

    .line 388
    :cond_8
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeAutoSuplUrl()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 215
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 216
    .local v3, "szUrl":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 217
    .local v4, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "SimOperator":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 220
    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 221
    .local v1, "mcc":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 222
    .local v2, "mnc":I
    const-string/jumbo v5, "h-slp.mnc"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "%03d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, ".mcc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "%03d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, ".pub.3gppnetwork.org"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "makeAutoSuplUrl :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 227
    .end local v1    # "mcc":I
    .end local v2    # "mnc":I
    :cond_0
    return-object v8
.end method

.method private native native_agps_ni_message_for_emergency_supl([BI)V
.end method

.method private native native_agps_set_supl_host_ip(Ljava/lang/String;)V
.end method

.method private native native_agps_xtra_set(I)V
.end method

.method private native native_cleanup_extention()V
.end method

.method private native native_gnss_control(I)V
.end method

.method private native native_init_extention()Z
.end method

.method private native native_inject_sensor_data(DD)V
.end method

.method private native native_set_agps_server_extension(ILjava/lang/String;IIII)V
.end method

.method private native native_set_lpp_support(I)V
.end method

.method private setCscParameters(Landroid/os/Bundle;Z)V
    .locals 16
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "mEnabled"    # Z

    .prologue
    .line 561
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "setCscParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    if-nez p1, :cond_0

    .line 564
    return-void

    .line 566
    :cond_0
    const/4 v13, 0x0

    .line 568
    .local v13, "isDeleted":Z
    :try_start_0
    new-instance v12, Ljava/io/File;

    const-string/jumbo v1, "/data/system/gps/cscgps.conf"

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 569
    .local v12, "file":Ljava/io/File;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 570
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    const/4 v13, 0x1

    .line 573
    :cond_1
    const-string/jumbo v1, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " isDeleted :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .end local v12    # "file":Ljava/io/File;
    :cond_2
    :goto_0
    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 580
    const-string/jumbo v1, "MSBASED"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 581
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    .line 582
    const-string/jumbo v1, "supl.google.com"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 583
    const/16 v1, 0x1c6b

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    .line 584
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    .line 585
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    .line 586
    const-string/jumbo v1, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[Default SUPL CSC] mEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  mSuplAddress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  mSuplType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  mSuplPort : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  mSuplSslMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    if-eqz p2, :cond_3

    .line 588
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 592
    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 593
    const-string/jumbo v8, "TRUE"

    .line 594
    .local v8, "CscParamIsEmpty":Ljava/lang/String;
    const-string/jumbo v1, "is_empty"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 595
    const-string/jumbo v1, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " CscParamIsEmpty : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string/jumbo v1, "TRUE"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 598
    return-void

    .line 575
    .end local v8    # "CscParamIsEmpty":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 576
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, " could not delete cscgps.conf file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 601
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v8    # "CscParamIsEmpty":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "operation_mode"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 602
    const-string/jumbo v1, "hslp_addr"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 603
    const-string/jumbo v1, "hslp_port"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    .line 604
    const-string/jumbo v1, "ssl"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    .line 605
    const-string/jumbo v1, "ssl_cert"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    .line 606
    const-string/jumbo v1, "supl_ver"

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 608
    .local v9, "SuplVer":I
    packed-switch v9, :pswitch_data_0

    .line 614
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    .line 617
    :goto_1
    new-instance v14, Ljava/util/Properties;

    invoke-direct {v14}, Ljava/util/Properties;-><init>()V

    .line 618
    .local v14, "mProperties_cscgps":Ljava/util/Properties;
    const-string/jumbo v1, "MSBASED"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 619
    const-string/jumbo v1, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[SUPL CSC] mSuplAddress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mSuplType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mSuplPort "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mSuplSslMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    if-eqz p2, :cond_5

    .line 622
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 624
    :cond_5
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 626
    const-string/jumbo v1, "CSC_SUPL_OPMODE"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 627
    const-string/jumbo v1, "CSC_SUPL_HOST"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 628
    const-string/jumbo v1, "CSC_SUPL_VER"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 629
    const-string/jumbo v1, "CSC_SUPL_PORT"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 630
    const-string/jumbo v1, "CSC_SUPL_SSL"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 633
    :cond_6
    const-string/jumbo v1, "CSC_SUPL_SUPLSERVERFROMCSC"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 636
    :try_start_1
    new-instance v10, Ljava/io/File;

    const-string/jumbo v1, "/data/system/gps"

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 637
    .local v10, "dir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7

    .line 638
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 640
    :cond_7
    new-instance v12, Ljava/io/File;

    const-string/jumbo v1, "/data/system/gps/cscgps.conf"

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 641
    .restart local v12    # "file":Ljava/io/File;
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 644
    :cond_8
    :goto_2
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 646
    .local v15, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    const-string/jumbo v1, "Saved CSC GPS Information"

    invoke-virtual {v14, v15, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 647
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "Saved: /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 652
    if-eqz v15, :cond_9

    .line 653
    :try_start_3
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 560
    .end local v10    # "dir":Ljava/io/File;
    .end local v12    # "file":Ljava/io/File;
    .end local v15    # "stream":Ljava/io/FileOutputStream;
    :cond_9
    :goto_3
    return-void

    .line 609
    .end local v14    # "mProperties_cscgps":Ljava/util/Properties;
    :pswitch_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    goto/16 :goto_1

    .line 611
    :pswitch_1
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    goto/16 :goto_1

    .line 642
    .restart local v10    # "dir":Ljava/io/File;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v14    # "mProperties_cscgps":Ljava/util/Properties;
    :cond_a
    :try_start_4
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 658
    .end local v10    # "dir":Ljava/io/File;
    .end local v12    # "file":Ljava/io/File;
    :catch_1
    move-exception v11

    .line 659
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, " could not create file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 654
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v10    # "dir":Ljava/io/File;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v15    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v11

    .line 655
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 648
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v11

    .line 649
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, " could not store file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 652
    if-eqz v15, :cond_9

    .line 653
    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 654
    :catch_4
    move-exception v11

    .line 655
    :try_start_8
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 650
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 652
    if-eqz v15, :cond_b

    .line 653
    :try_start_9
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 650
    :cond_b
    :goto_4
    :try_start_a
    throw v1

    .line 654
    :catch_5
    move-exception v11

    .line 655
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    .line 608
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDcmSuplIot(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 440
    if-eqz p1, :cond_0

    .line 441
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Docomo SUPL IOT test = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " server = dcm-supl.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string/jumbo v2, "dcm-supl.com"

    const/4 v1, 0x4

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 439
    :goto_0
    return-void

    .line 444
    :cond_0
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Docomo SUPL IOT test = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLppSupport(ZI)V
    .locals 4
    .param p1, "mEnabled"    # Z
    .param p2, "bitmask"    # I

    .prologue
    .line 763
    const-string/jumbo v1, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLppSupport("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    move v0, p1

    .line 771
    .local v0, "enabled":Z
    if-nez p1, :cond_0

    .line 772
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_init_extention()Z

    move-result v0

    .line 773
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "native_init_extention "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_lpp_support(I)V

    .line 777
    :cond_1
    if-nez p1, :cond_2

    .line 778
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_cleanup_extention()V

    .line 779
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "native_cleanup "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_2
    return-void
.end method

.method private setSKAFEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 400
    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSKAF:Z

    .line 401
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSKAFEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSKAF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void
.end method

.method private setSecGpsConf(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1479
    if-nez p1, :cond_0

    return-void

    .line 1481
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1482
    .local v5, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 1484
    .local v4, "keyArray":[Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1485
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v4

    if-ge v3, v7, :cond_2

    .line 1486
    aget-object v7, v4, v3

    if-eqz v7, :cond_1

    .line 1487
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    aget-object v8, v4, v3

    aget-object v9, v4, v3

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1485
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1492
    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v7, "/data/system/gps"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1493
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1494
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1496
    :cond_3
    new-instance v2, Ljava/io/File;

    const-string/jumbo v7, "/data/system/gps/secgps.conf"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1497
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1498
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1500
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1501
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1502
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1505
    :cond_5
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1507
    .local v6, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string/jumbo v8, "SECGPS Configuration"

    invoke-virtual {v7, v6, v8}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1508
    const-string/jumbo v7, "GnssLocationProvider_ex"

    const-string/jumbo v8, "Saved: /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1513
    if-eqz v6, :cond_6

    .line 1514
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1478
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    :cond_6
    :goto_1
    return-void

    .line 1515
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 1516
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v7, "GnssLocationProvider_ex"

    const-string/jumbo v8, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1519
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 1520
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "GnssLocationProvider_ex"

    const-string/jumbo v8, " could not create file : /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1509
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 1510
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v7, "GnssLocationProvider_ex"

    const-string/jumbo v8, " could not store file : /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1513
    if-eqz v6, :cond_6

    .line 1514
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 1515
    :catch_3
    move-exception v1

    .line 1516
    :try_start_6
    const-string/jumbo v7, "GnssLocationProvider_ex"

    const-string/jumbo v8, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 1511
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 1513
    if-eqz v6, :cond_7

    .line 1514
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1511
    :cond_7
    :goto_2
    :try_start_8
    throw v7

    .line 1515
    :catch_4
    move-exception v1

    .line 1516
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2
.end method

.method private setServer(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 181
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "setServer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string/jumbo v2, ""

    .line 184
    .local v2, "mServerAddr":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 186
    .local v3, "mServerPort":Ljava/lang/String;
    const-string/jumbo v5, "ServerAddr"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    const-string/jumbo v5, "ServerPort"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setServer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string/jumbo v6, "SUPL_HOST"

    invoke-virtual {v5, v6, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 190
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string/jumbo v6, "SUPL_PORT"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v5, "/etc/gps.conf"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string/jumbo v6, "Generated by GnssLocationProvider."

    invoke-virtual {v5, v4, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 180
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 196
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    .line 197
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 196
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 199
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "Could not open GPS configuration file in save : /etc/gps.conf"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSktSuplVer()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 422
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSktSuplVer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "AGPS_TYPE_SUPL_2_0_1_AGNSS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->sktSuplAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->sktSuplPort:I

    const/4 v1, 0x5

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 421
    return-void
.end method

.method private setSuplByNw()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 234
    const/4 v3, 0x0

    .line 235
    .local v3, "suplServerAutoConfig":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 236
    .local v4, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "simOperator":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 238
    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 239
    .local v0, "mcc":I
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 240
    .local v1, "mnc":I
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v5

    sget-object v6, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mccTLS:I

    if-ne v0, v5, :cond_1

    iget v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mncTLS1:I

    if-eq v1, v5, :cond_0

    iget v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mncTLS2:I

    if-ne v1, v5, :cond_1

    .line 242
    :cond_0
    const-string/jumbo v3, "supl.telusmobility.com"

    .line 243
    .local v3, "suplServerAutoConfig":Ljava/lang/String;
    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSuplByNw :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v0    # "mcc":I
    .end local v1    # "mnc":I
    .end local v3    # "suplServerAutoConfig":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v3

    .line 247
    .local v3, "suplServerAutoConfig":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "supl.google.com"

    .line 248
    .local v3, "suplServerAutoConfig":Ljava/lang/String;
    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSuplByNw :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public extension_CMCCxtraDownloadRequest()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 511
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v3, v4, :cond_0

    .line 512
    return v6

    .line 514
    :cond_0
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "agps_function_switch"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 516
    .local v1, "isAgpsSwitchMode":I
    const/4 v2, 0x0

    .line 517
    .local v2, "result":Z
    const-string/jumbo v3, "GnssLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest, isAgpsSwitchMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    packed-switch v1, :pswitch_data_0

    .line 540
    const/4 v2, 0x1

    .line 541
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extension_CMCCxtraDownloadRequest, AGPS setting : AGPS OFF"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :goto_0
    if-eqz v2, :cond_3

    .line 545
    invoke-direct {p0, v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_agps_xtra_set(I)V

    .line 550
    :goto_1
    return v2

    .line 521
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_2

    .line 522
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 523
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 524
    const/4 v2, 0x1

    .line 525
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, info.isRoaming() == true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 527
    :cond_1
    const/4 v2, 0x0

    .line 528
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, info.isRoaming() == false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 531
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_2
    const/4 v2, 0x1

    .line 532
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, PS error"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 536
    :pswitch_1
    const/4 v2, 0x0

    .line 537
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extension_CMCCxtraDownloadRequest, AGPS setting : All Network"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 547
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_agps_xtra_set(I)V

    goto :goto_1

    .line 519
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extension_agps_ni_message([BI)V
    .locals 0
    .param p1, "supl_init"    # [B
    .param p2, "length"    # I

    .prologue
    .line 1870
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_agps_ni_message_for_emergency_supl([BI)V

    .line 1868
    return-void
.end method

.method public extension_checkSmsSuplInit(Z)I
    .locals 3
    .param p1, "mEnabled"    # Z

    .prologue
    .line 872
    const/4 v0, 0x0

    .line 873
    .local v0, "result":I
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_1

    .line 875
    :cond_0
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "checkSmsSuplInit : Sms Message for SUPL Init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_2

    .line 878
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSktSuplVer()V

    .line 880
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "Change SLP address for SUPL_INIT in SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_2
    if-eqz p1, :cond_3

    .line 883
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_3

    .line 884
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_6

    .line 891
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    if-nez v1, :cond_4

    .line 893
    const/4 v0, 0x1

    .line 894
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    .line 898
    :cond_4
    if-nez p1, :cond_5

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_5

    .line 899
    or-int/lit8 v0, v0, 0x2

    .line 902
    :cond_5
    return v0

    .line 885
    :cond_6
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_3

    .line 886
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_3

    .line 887
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_3

    .line 888
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_3

    .line 889
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_UNE:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_3

    .line 890
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->PER_PNT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_4

    goto :goto_0
.end method

.method public extension_checkWapPushMsg(Z)Z
    .locals 3
    .param p1, "mEnabled"    # Z

    .prologue
    .line 790
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "extension_checkWapPushMsg(), mEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    if-nez p1, :cond_0

    .line 792
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    .line 793
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_1

    .line 800
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 794
    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    .line 795
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    .line 796
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    .line 797
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    .line 798
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_UNE:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    .line 799
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->PER_PNT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    .line 802
    const/4 v0, 0x0

    return v0
.end method

.method public extension_checkWapSuplInit(ZLandroid/net/ConnectivityManager;)I
    .locals 13
    .param p1, "mEnabled"    # Z
    .param p2, "mConnMgr"    # Landroid/net/ConnectivityManager;

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 912
    const/4 v10, 0x0

    .line 913
    .local v10, "result":I
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_3

    .line 915
    :cond_0
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "checkWapSuplInit : WapPush Message for SUPL Init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "agps_function_switch"

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 918
    .local v8, "isAgpsSwitchMode":I
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkWapSuplInit NI: isAgpsSwitchMode=AGPS_FUNCTION_SWITCH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "++checkWapSuplInit : New NI notification LCD on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 923
    .local v9, "pm":Landroid/os/PowerManager;
    const-string/jumbo v0, "New message notification LCD on"

    .line 922
    const v1, 0x1000001a

    invoke-virtual {v9, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    .line 924
    .local v11, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 925
    const-wide/16 v0, 0x1388

    invoke-virtual {v11, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 926
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "--checkWapSuplInit : New NI notification LCD on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    if-ne v8, v12, :cond_2

    .line 929
    if-eqz p2, :cond_1

    .line 930
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 931
    .local v7, "info":Landroid/net/NetworkInfo;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 932
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "checkWapSuplInit NI : agps on only for hom network info.isRoaming() == true "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    return v10

    .line 936
    .end local v7    # "info":Landroid/net/NetworkInfo;
    :cond_1
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "checkWapSuplInit NI :: agps on only for hom network. PS error."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    return v10

    .line 939
    :cond_2
    const/4 v0, 0x2

    if-ne v8, v0, :cond_9

    .line 940
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "checkWapSuplInit NI :: agps on for all network. launch NI session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    .end local v8    # "isAgpsSwitchMode":I
    .end local v9    # "pm":Landroid/os/PowerManager;
    .end local v11    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_3
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_4

    .line 949
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSktSuplVer()V

    .line 950
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "Change SLP address for SUPL_INIT in WAP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_4
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_5

    .line 954
    const-string/jumbo v2, "221.148.242.107"

    const/4 v1, 0x3

    const/16 v3, 0x1c6b

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 955
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "Change SLP address for SUPL_INIT in WAP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_5
    if-eqz p1, :cond_6

    .line 959
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_6

    .line 960
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_a

    .line 967
    :cond_6
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    if-nez v0, :cond_7

    .line 969
    const/4 v10, 0x1

    .line 970
    iput-boolean v12, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    .line 974
    :cond_7
    if-nez p1, :cond_8

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_8

    .line 975
    or-int/lit8 v10, v10, 0x2

    .line 978
    :cond_8
    return v10

    .line 942
    .restart local v8    # "isAgpsSwitchMode":I
    .restart local v9    # "pm":Landroid/os/PowerManager;
    .restart local v11    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_9
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkWapSuplInit NI : //agps off isAgpsSwitchMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    return v10

    .line 961
    .end local v8    # "isAgpsSwitchMode":I
    .end local v9    # "pm":Landroid/os/PowerManager;
    .end local v11    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_a
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_6

    .line 962
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_6

    .line 963
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_6

    .line 964
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_6

    .line 965
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_UNE:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_6

    .line 966
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->PER_PNT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_7

    goto :goto_0
.end method

.method public extension_getExtraConfigurationString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1279
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 1318
    .local v2, "extraConfigProperty":Ljava/util/Properties;
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->-getcom-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues()[I

    move-result-object v4

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1420
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getCpAgpsProfile()I

    move-result v4

    if-lez v4, :cond_0

    .line 1421
    const-string/jumbo v4, "CP_AGPS_ENABLE_PROFILE"

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1424
    :cond_0
    const-string/jumbo v3, ""

    .line 1426
    .local v3, "mStringExtraConfigProperty":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x1000

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1427
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const-string/jumbo v4, "Extra Configuration"

    invoke-virtual {v2, v0, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1428
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1432
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-object v3

    .line 1320
    .end local v3    # "mStringExtraConfigProperty":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v4, "CP_LPP_GUARD_TIME_SEC"

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1321
    const-string/jumbo v4, "REAIDING_INTERVAL_SEC"

    const-string/jumbo v5, "7200"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1322
    const-string/jumbo v4, "AUTO_SUPL_VERSION_FOR_NI"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1323
    const-string/jumbo v4, "SUPL_SSL_METHOD"

    const-string/jumbo v5, "SSLv23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1324
    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1325
    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1326
    const-string/jumbo v4, "SUPL_HMAC_HASH"

    const-string/jumbo v5, "SHA256"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1327
    const-string/jumbo v4, "SUPL_ECID_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1328
    const-string/jumbo v4, "SUPL_LPP_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1329
    const-string/jumbo v4, "SUPL_OTDOA_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1330
    const-string/jumbo v4, "VENDOR_LBS_SERVER_ENABLE"

    const-string/jumbo v5, "FLASE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1331
    const-string/jumbo v4, "RTI_ENABLE"

    const-string/jumbo v5, "FLASE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1332
    const-string/jumbo v4, "EE_SYNC_THRESHOLD_DAYS"

    const-string/jumbo v5, "3"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1333
    const-string/jumbo v4, "WARM_STANDBY2"

    const-string/jumbo v5, "23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1334
    const-string/jumbo v4, "ENABLE_BEIDOU"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1335
    const-string/jumbo v4, "ENABLE_GALILEO"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1338
    :pswitch_2
    const-string/jumbo v4, "CP_LPP_GUARD_TIME_SEC"

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1339
    const-string/jumbo v4, "REAIDING_INTERVAL_SEC"

    const-string/jumbo v5, "7200"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1340
    const-string/jumbo v4, "AUTO_SUPL_VERSION_FOR_NI"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1341
    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1342
    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1343
    const-string/jumbo v4, "SUPL_HMAC_HASH"

    const-string/jumbo v5, "SHA256"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1344
    const-string/jumbo v4, "SUPL_ECID_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1345
    const-string/jumbo v4, "VENDOR_LBS_SERVER_ENABLE"

    const-string/jumbo v5, "FLASE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1346
    const-string/jumbo v4, "WARM_STANDBY2"

    const-string/jumbo v5, "23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1347
    const-string/jumbo v4, "ENABLE_BEIDOU"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1348
    const-string/jumbo v4, "ENABLE_GALILEO"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1351
    :pswitch_3
    const-string/jumbo v4, "CP_LPP_GUARD_TIME_SEC"

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1352
    const-string/jumbo v4, "REAIDING_INTERVAL_SEC"

    const-string/jumbo v5, "7200"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1353
    const-string/jumbo v4, "AUTO_SUPL_VERSION_FOR_NI"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1354
    const-string/jumbo v4, "SUPL_SSL_METHOD"

    const-string/jumbo v5, "SSLv23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1355
    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1356
    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1357
    const-string/jumbo v4, "SUPL_HMAC_HASH"

    const-string/jumbo v5, "SHA256"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1358
    const-string/jumbo v4, "SUPL_ECID_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1359
    const-string/jumbo v4, "LPP_UP_ECID_CAPABLE"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1360
    const-string/jumbo v4, "VENDOR_LBS_SERVER_ENABLE"

    const-string/jumbo v5, "FLASE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1361
    const-string/jumbo v4, "RTI_ENABLE"

    const-string/jumbo v5, "FLASE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1362
    const-string/jumbo v4, "EE_SYNC_THRESHOLD_DAYS"

    const-string/jumbo v5, "3"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1363
    const-string/jumbo v4, "WARM_STANDBY2"

    const-string/jumbo v5, "23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1364
    const-string/jumbo v4, "ENABLE_BEIDOU"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1365
    const-string/jumbo v4, "ENABLE_GALILEO"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1368
    :pswitch_4
    const-string/jumbo v4, "SUPL_SSL_METHOD"

    const-string/jumbo v5, "SSLv23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1369
    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1370
    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1375
    :pswitch_5
    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1376
    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1379
    :pswitch_6
    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1380
    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1383
    :pswitch_7
    const-string/jumbo v4, "USE_NI_SLP_ADDRESS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1388
    :pswitch_8
    const-string/jumbo v4, "SUPL_ECID_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1391
    :pswitch_9
    const-string/jumbo v4, "REAIDING_INTERVAL_SEC"

    const-string/jumbo v5, "600"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1392
    const-string/jumbo v4, "SUPL_LOG_ENABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1393
    const-string/jumbo v4, "SUPL_LOG_PATH"

    const-string/jumbo v5, "/data/AGPSLog.txt"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1394
    const-string/jumbo v4, "SUPL_NI_GPS_ICON"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1395
    const-string/jumbo v4, "NO_DATA_STANDALONE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1396
    const-string/jumbo v4, "VENDOR_LBS_XTRA_SET_WITH_EE_IGNORE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1399
    :pswitch_a
    const-string/jumbo v4, "SUPL_UT1_SEC"

    const-string/jumbo v5, "10"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1400
    const-string/jumbo v4, "SUPL_UT2_SEC"

    const-string/jumbo v5, "10"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1401
    const-string/jumbo v4, "SUPL_UT3_SEC"

    const-string/jumbo v5, "10"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1402
    const-string/jumbo v4, "TCP_CONNETION_TIMEOUT"

    const-string/jumbo v5, "30"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1403
    const-string/jumbo v4, "SUPL_NTT_DOCOMO"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1406
    :pswitch_b
    const-string/jumbo v4, "USE_NI_SLP_ADDRESS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1407
    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1408
    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1409
    const-string/jumbo v4, "SUPL_SSL_METHOD"

    const-string/jumbo v5, "SSLv23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1410
    const-string/jumbo v4, "SUPL_LPP_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1411
    const-string/jumbo v4, "SUPL_OTDOA_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1429
    .restart local v3    # "mStringExtraConfigProperty":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1430
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 1318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public extension_listenForBroadcasts(Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    .locals 4
    .param p1, "mBroadcastReciever"    # Landroid/content/BroadcastReceiver;
    .param p2, "mHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    .line 813
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_1

    .line 814
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 815
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 816
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 817
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 818
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 819
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 823
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 824
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.AGPS_UDP_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 825
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 812
    return-void
.end method

.method public extension_mBroadcastReciever(Landroid/content/Intent;Z)Landroid/os/Bundle;
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "mEnabled"    # Z

    .prologue
    .line 671
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "action":Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 673
    .local v5, "result":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 675
    .local v6, "result_mask":I
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v8, v9, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v8, v9, :cond_1

    .line 676
    :cond_0
    const-string/jumbo v8, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 677
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider_samsung;->setServer(Landroid/content/Intent;)V

    .line 687
    :cond_1
    :goto_0
    const-string/jumbo v8, "android.intent.action.AGPS_UDP_RECEIVED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 688
    const/4 v6, 0x1

    .line 689
    const-string/jumbo v8, "packet_data"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "packet_data"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 690
    const-string/jumbo v8, "packet_length"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "packet_length"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 692
    :cond_2
    const-string/jumbo v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 693
    const-string/jumbo v8, "ss"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 694
    .local v7, "simState":Ljava/lang/String;
    const-string/jumbo v8, "GnssLocationProvider_ex"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SIM_STATE_CHANGED received : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const-string/jumbo v8, "LOADED"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 696
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getLppBitmask()I

    move-result v3

    .line 697
    .local v3, "mask":I
    iget v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->prevLppMask:I

    if-eq v3, v8, :cond_3

    .line 698
    iput v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->prevLppMask:I

    .line 699
    invoke-direct {p0, p2, v3}, Lcom/android/server/location/GnssLocationProvider_samsung;->setLppSupport(ZI)V

    .line 703
    .end local v3    # "mask":I
    .end local v7    # "simState":Ljava/lang/String;
    :cond_3
    const-string/jumbo v8, "result_mask"

    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 704
    return-object v5

    .line 678
    :cond_4
    const-string/jumbo v8, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 679
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string/jumbo v9, "SUPL_HOST"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 680
    .local v2, "mSuplServerHost":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string/jumbo v9, "SUPL_PORT"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 681
    .local v4, "portString":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.AGPS_PROFILE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    .local v1, "getAgpsProfile":Landroid/content/Intent;
    const-string/jumbo v8, "ServerAddr"

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    const-string/jumbo v8, "ServerPort"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public extension_printSvStatus([I[FI)V
    .locals 10
    .param p1, "prnWithFlags"    # [I
    .param p2, "cn0s"    # [F
    .param p3, "svCount"    # I

    .prologue
    const/4 v8, 0x5

    .line 835
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 836
    .local v3, "inViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 838
    .local v1, "inUsedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_6

    .line 839
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 840
    aget v7, p2, v0

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    aget v7, p1, v0

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_0

    aget v7, p2, v0

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 843
    :cond_1
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 844
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 846
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 847
    .local v6, "sbInView":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 849
    .local v5, "sbInUsed":Ljava/lang/StringBuffer;
    const/4 v4, 0x5

    .line 850
    .local v4, "inViewSize":I
    const/4 v2, 0x5

    .line 851
    .local v2, "inUsedSize":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v8, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 852
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v8, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 854
    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_4

    .line 855
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 854
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 856
    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_5

    .line 857
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 856
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 859
    :cond_5
    const-string/jumbo v7, "GnssLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SV Count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " / TOP5(v) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " / TOP5(u) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    .end local v0    # "i":I
    .end local v2    # "inUsedSize":I
    .end local v4    # "inViewSize":I
    .end local v5    # "sbInUsed":Ljava/lang/StringBuffer;
    .end local v6    # "sbInView":Ljava/lang/StringBuffer;
    :cond_6
    return-void
.end method

.method public extension_reloadMakeAutoSuplUrl(Z)V
    .locals 13
    .param p1, "mNetworkAvailable"    # Z

    .prologue
    const/4 v1, 0x4

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1007
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v6, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v6, :cond_1

    .line 1008
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1009
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v2

    .line 1010
    .local v2, "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v2, :cond_0

    move-object v0, p0

    move v6, v5

    .line 1011
    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1012
    iput-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    .line 1006
    .end local v2    # "suplServerAutoConfig":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1015
    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v6, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v6, :cond_2

    .line 1016
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1017
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSuplByNw()Ljava/lang/String;

    move-result-object v2

    .line 1018
    .restart local v2    # "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1019
    const/4 v1, 0x3

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1020
    iput-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    goto :goto_0

    .line 1023
    .end local v2    # "suplServerAutoConfig":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v6, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->PER_PNT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v6, :cond_0

    .line 1024
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1025
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v8

    .line 1026
    .local v8, "suplServerAutoConfig2":Ljava/lang/String;
    if-eqz v8, :cond_0

    move-object v6, p0

    move v7, v1

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v5

    .line 1027
    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1028
    iput-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    goto :goto_0
.end method

.method public extension_reportAGpsStatus()V
    .locals 1

    .prologue
    .line 1865
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    .line 1864
    return-void
.end method

.method public extension_reportGeofenceAddStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1657
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    .line 1659
    .local v1, "mLocService":Lcom/samsung/android/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1662
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceAddStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1655
    :cond_0
    :goto_0
    return-void

    .line 1663
    :catch_0
    move-exception v0

    .line 1664
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GnssLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofencePauseStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1695
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    .line 1697
    .local v1, "mLocService":Lcom/samsung/android/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1700
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofencePauseStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1693
    :cond_0
    :goto_0
    return-void

    .line 1701
    :catch_0
    move-exception v0

    .line 1702
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GnssLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceRemoveStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1676
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    .line 1678
    .local v1, "mLocService":Lcom/samsung/android/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1681
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceRemoveStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    :cond_0
    :goto_0
    return-void

    .line 1682
    :catch_0
    move-exception v0

    .line 1683
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GnssLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceResumeStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1714
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    .line 1716
    .local v1, "mLocService":Lcom/samsung/android/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1719
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceResumeStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1712
    :cond_0
    :goto_0
    return-void

    .line 1720
    :catch_0
    move-exception v0

    .line 1721
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GnssLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceStatus(IIDDDFFFJ)V
    .locals 15
    .param p1, "status"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J

    .prologue
    .line 1638
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    .line 1640
    .local v1, "mLocService":Lcom/samsung/android/location/ISLocationManager;
    if-eqz v1, :cond_0

    move/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    .line 1643
    :try_start_0
    invoke-interface/range {v1 .. v14}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceStatus(IIDDDFFFJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1636
    :cond_0
    :goto_0
    return-void

    .line 1644
    :catch_0
    move-exception v0

    .line 1645
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GnssLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceTransition(IIDDDFFFJIJ)V
    .locals 21
    .param p1, "geofenceId"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J
    .param p14, "transition"    # I
    .param p15, "transitionTimestamp"    # J

    .prologue
    .line 1616
    const-string/jumbo v4, "sec_location"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v3

    .line 1618
    .local v3, "mLocService":Lcom/samsung/android/location/ISLocationManager;
    if-eqz v3, :cond_0

    const/16 v4, 0x2710

    move/from16 v0, p1

    if-le v0, v4, :cond_0

    move/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move/from16 v17, p14

    move-wide/from16 v18, p15

    .line 1621
    :try_start_0
    invoke-interface/range {v3 .. v19}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceTransition(IIDDDFFFJIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1614
    :cond_0
    :goto_0
    return-void

    .line 1623
    :catch_0
    move-exception v2

    .line 1624
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "GnssLocationProvider_ex"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;Z)Z
    .locals 10
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "mEnabled"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1186
    const/4 v4, 0x0

    .line 1187
    .local v4, "result":Z
    const-string/jumbo v5, "set_csc_parameters"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1188
    invoke-direct {p0, p2, p3}, Lcom/android/server/location/GnssLocationProvider_samsung;->setCscParameters(Landroid/os/Bundle;Z)V

    .line 1189
    const/4 v4, 0x1

    .line 1269
    :cond_0
    :goto_0
    return v4

    .line 1190
    :cond_1
    const-string/jumbo v5, "com.skt.intent.action.AGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1191
    const-string/jumbo v5, "opType"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1192
    .local v3, "opType":Ljava/lang/String;
    const-string/jumbo v5, "cmdType"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1194
    .local v0, "cmdType":Ljava/lang/String;
    const-string/jumbo v5, "on"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1195
    const-string/jumbo v5, "msAssisted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "msBased"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1196
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 1204
    :cond_3
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 1199
    :cond_4
    const-string/jumbo v5, "off"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1200
    invoke-direct {p0, v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 1201
    const-string/jumbo v5, "sys.sktgps"

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1205
    .end local v0    # "cmdType":Ljava/lang/String;
    .end local v3    # "opType":Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "setOllehServer"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1206
    const-string/jumbo v5, "host"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1207
    .local v2, "hostURL":Ljava/lang/String;
    const-string/jumbo v5, "port"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1208
    .local v1, "hostPort":I
    iput-boolean v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    .line 1209
    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    .line 1210
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerPort:I

    .line 1211
    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "host :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " port ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerPort:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1213
    .end local v1    # "hostPort":I
    .end local v2    # "hostURL":Ljava/lang/String;
    :cond_6
    const-string/jumbo v5, "setNativeServer"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1214
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "setNativeServer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iput-boolean v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    .line 1216
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1217
    :cond_7
    const-string/jumbo v5, "activateGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1218
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "activateGPS is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1219
    :cond_8
    const-string/jumbo v5, "deactivateGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1220
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "deactivateGPS is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1221
    :cond_9
    const-string/jumbo v5, "activateNLP"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1222
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "activateNLP is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1223
    :cond_a
    const-string/jumbo v5, "deactivateNLP"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1224
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "deactivateNLP is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1225
    :cond_b
    const-string/jumbo v5, "activateAGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1226
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "activateAGPS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "assisted_gps_enabled"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1228
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1229
    :cond_c
    const-string/jumbo v5, "deactivateAGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1230
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "deactivateAGPS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "assisted_gps_enabled"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1232
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1233
    :cond_d
    const-string/jumbo v5, "setMode"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1234
    const-string/jumbo v5, "mode"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->ktPositionMode:I

    .line 1235
    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMode ktPositionMode :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1237
    :cond_e
    const-string/jumbo v5, "getMode"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1238
    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getMode ktPositionMode :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    const-string/jumbo v5, "mode"

    iget v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1240
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1241
    :cond_f
    const-string/jumbo v5, "set_use_udp"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1242
    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set_use_udp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "use_udp"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    const-string/jumbo v5, "use_udp"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_11

    .line 1244
    iget-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    if-nez v5, :cond_10

    .line 1245
    iput-boolean v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    .line 1246
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->checkUDPSuplInit()V

    .line 1251
    :cond_10
    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1249
    :cond_11
    iput-boolean v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    goto :goto_2

    .line 1252
    :cond_12
    const-string/jumbo v5, "set_dcm_iot"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1253
    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set_dcm_iot : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "dcm_iot"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const-string/jumbo v5, "dcm_iot"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/location/GnssLocationProvider_samsung;->setDcmSuplIot(Z)V

    .line 1255
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1256
    :cond_13
    const-string/jumbo v5, "request_running"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1257
    iget-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mStarted:Z

    return v5

    .line 1258
    :cond_14
    const-string/jumbo v5, "set_lpp_support"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1259
    const-string/jumbo v5, "set_lpp"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, p3, v5}, Lcom/android/server/location/GnssLocationProvider_samsung;->setLppSupport(ZI)V

    goto/16 :goto_0

    .line 1260
    :cond_15
    const-string/jumbo v5, "setSecGpsConf"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1261
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "setSecGpsConf"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSecGpsConf(Landroid/os/Bundle;)V

    .line 1263
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1264
    :cond_16
    const-string/jumbo v5, "deleteSecGpsConf"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1265
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "deleteSecGpsConf"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->deleteSecGpsConf()V

    .line 1267
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public extension_setStartNavigatingModes(ILandroid/net/ConnectivityManager;Z)I
    .locals 3
    .param p1, "mPositionMode"    # I
    .param p2, "mConnMgr"    # Landroid/net/ConnectivityManager;
    .param p3, "singleShot"    # Z

    .prologue
    .line 1554
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_9

    .line 1555
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider_samsung;->extSelectUseGooglePositionMode(I)I

    move-result p1

    .line 1559
    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_a

    .line 1560
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->extChnSelectPositionMode()I

    move-result p1

    .line 1561
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CHN startNavigating mPositionMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getWifiOnlyModel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1565
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "mPositionMode set to GPS_POSITION_MODE_STANDALONE because of WiFi only model."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    const/4 p1, 0x0

    .line 1569
    :cond_4
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->isUSAMarket()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1570
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_gnss_control(I)V

    .line 1574
    :cond_5
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1575
    const-string/jumbo v0, "sys.sktgps"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    :cond_6
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_DCM:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_7

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_KDI:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_8

    .line 1580
    :cond_7
    if-eqz p3, :cond_8

    .line 1581
    const/4 p1, 0x2

    .line 1582
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startNavigating extension_setStartNavigatingModes For JAPAN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    :cond_8
    return p1

    .line 1554
    :cond_9
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_1

    goto/16 :goto_0

    .line 1559
    :cond_a
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHN:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_3

    goto/16 :goto_1
.end method

.method public extension_set_supl_server()V
    .locals 17

    .prologue
    .line 1109
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getSuplServerFromCSC()V

    .line 1111
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1112
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1108
    :cond_0
    :goto_0
    return-void

    .line 1114
    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->-getcom-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues()[I

    move-result-object v1

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1173
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    const/4 v11, 0x4

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1116
    :pswitch_1
    const-string/jumbo v3, "lbs.geo.t-mobile.com"

    const/4 v2, 0x3

    const/16 v4, 0x1c6b

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1119
    :pswitch_2
    const/4 v3, 0x0

    .line 1120
    .local v3, "suplServerAutoConfig":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v3

    .line 1121
    .local v3, "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1122
    const/4 v2, 0x4

    const/16 v4, 0x1c6b

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1129
    .end local v3    # "suplServerAutoConfig":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    const/4 v5, 0x4

    const/16 v7, 0x1c6b

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1133
    :pswitch_4
    const-string/jumbo v6, "location2.kddi.ne.jp"

    const/4 v5, 0x3

    const/16 v7, 0x1c6b

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1136
    :pswitch_5
    const-string/jumbo v6, "supl.telusmobility.com"

    const/4 v5, 0x3

    const/16 v7, 0x1c6b

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1140
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    const/4 v5, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 1143
    :pswitch_7
    const/4 v6, 0x0

    .line 1144
    .local v6, "suplServerNwConfig":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSuplByNw()Ljava/lang/String;

    move-result-object v6

    .line 1145
    .local v6, "suplServerNwConfig":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 1146
    const/4 v5, 0x3

    const/16 v7, 0x1c6b

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 1149
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    const/4 v8, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 1153
    .end local v6    # "suplServerNwConfig":Ljava/lang/String;
    :pswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSktSuplVer()V

    goto/16 :goto_0

    .line 1157
    :pswitch_9
    const-string/jumbo v9, "221.176.0.55"

    const/4 v8, 0x1

    const/16 v10, 0x1c6b

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 1162
    :pswitch_a
    const-string/jumbo v9, "supl.iusacell.com"

    const/4 v8, 0x3

    const/16 v10, 0x1c6b

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 1165
    :pswitch_b
    const/4 v9, 0x0

    .line 1166
    .local v9, "suplServerAutoConfig2":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v9

    .line 1167
    .local v9, "suplServerAutoConfig2":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 1168
    const/4 v8, 0x4

    const/16 v10, 0x1c6b

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 1114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public extension_set_xtra_downloaded_time()V
    .locals 5

    .prologue
    .line 988
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v4, :cond_0

    .line 989
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v4, :cond_2

    .line 991
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 992
    .local v2, "timestamp":J
    const-string/jumbo v1, "persist.sys.xtra_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.angryGps.XtraSettings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 994
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 987
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "timestamp":J
    :cond_1
    return-void

    .line 990
    :cond_2
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v4, :cond_1

    goto :goto_0
.end method

.method public extension_stopNavigating()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1596
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1597
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 1598
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "stopNavigating : isSKAF changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    const-string/jumbo v0, "sys.sktgps"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v0, :cond_1

    .line 1602
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    .line 1603
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "mIsKtGps is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    :cond_1
    return-void
.end method

.method public getInitCalledByNI()Z
    .locals 1

    .prologue
    .line 1742
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    return v0
.end method

.method public getWifiOnlyModel()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1733
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public init_GnssLocationPrivider_samsung(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "mProperties"    # Ljava/util/Properties;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    .line 165
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    .line 166
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 162
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public provideSuplFqdn(Ljava/lang/String;)V
    .locals 13
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    .line 1795
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->suplFqdn:Ljava/lang/String;

    .line 1796
    const-string/jumbo v9, "GnssLocationProvider_ex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "provideSuplFqdn :  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->suplFqdn:Ljava/lang/String;

    if-eqz v9, :cond_0

    const-string/jumbo v9, ""

    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->suplFqdn:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1794
    :cond_0
    :goto_0
    return-void

    .line 1799
    :cond_1
    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    .line 1800
    .local v4, "networks":[Landroid/net/Network;
    const/4 v8, 0x0

    .line 1801
    .local v8, "suplNetwork":Landroid/net/Network;
    if-eqz v4, :cond_4

    .line 1802
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v9, v4

    if-ge v3, v9, :cond_4

    .line 1803
    aget-object v9, v4, v3

    if-nez v9, :cond_3

    .line 1802
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1804
    :cond_3
    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    aget-object v10, v4, v3

    invoke-virtual {v9, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1805
    .local v5, "ntwkInfo":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_2

    .line 1806
    const-string/jumbo v9, "GnssLocationProvider_ex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "network["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v4, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", Capability : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    aget-object v12, v4, v3

    invoke-virtual {v11, v12}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    aget-object v10, v4, v3

    invoke-virtual {v9, v10}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1808
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1809
    aget-object v8, v4, v3

    .line 1816
    .end local v3    # "i":I
    .end local v5    # "ntwkInfo":Landroid/net/NetworkInfo;
    .end local v8    # "suplNetwork":Landroid/net/Network;
    :cond_4
    if-nez v8, :cond_5

    .line 1817
    const-string/jumbo v9, "GnssLocationProvider_ex"

    const-string/jumbo v10, "No default network is currently active."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1820
    :cond_5
    :try_start_0
    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->suplFqdn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    .line 1822
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->retAddr:Ljava/net/InetAddress;

    .line 1823
    const/4 v1, 0x0

    .local v1, "flag_v4_set":Z
    const/4 v2, 0x0

    .line 1824
    .local v2, "flag_v6_set":Z
    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    instance-of v9, v9, Ljava/net/Inet6Address;

    if-eqz v9, :cond_8

    .line 1825
    if-nez v2, :cond_6

    .line 1826
    const/4 v2, 0x1

    .line 1827
    const-string/jumbo v9, "GnssLocationProvider_ex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Got IPv6 InetAddress : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    iput-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->retAddr:Ljava/net/InetAddress;

    .line 1836
    :cond_6
    :goto_2
    const/4 v6, 0x0

    .line 1837
    .local v6, "resInetAddress":Ljava/net/InetAddress;
    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->retAddr:Ljava/net/InetAddress;

    if-eqz v9, :cond_9

    .line 1838
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->retAddr:Ljava/net/InetAddress;

    .line 1842
    .end local v6    # "resInetAddress":Ljava/net/InetAddress;
    :goto_3
    const-string/jumbo v9, "GnssLocationProvider_ex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "DNS resolve result : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    if-nez v1, :cond_7

    if-eqz v2, :cond_0

    .line 1845
    :cond_7
    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 1846
    const/4 v10, 0x3

    .line 1845
    invoke-virtual {v9, v10, v6}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v7

    .line 1849
    .local v7, "result":Z
    if-nez v7, :cond_a

    .line 1850
    const-string/jumbo v9, "GnssLocationProvider_ex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error requesting route to host: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    :goto_4
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_agps_set_supl_host_ip(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1856
    .end local v1    # "flag_v4_set":Z
    .end local v2    # "flag_v6_set":Z
    .end local v7    # "result":Z
    :catch_0
    move-exception v0

    .line 1857
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v9, "GnssLocationProvider_ex"

    const-string/jumbo v10, "UnknownHostException occured"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto/16 :goto_0

    .line 1830
    .end local v0    # "e":Ljava/net/UnknownHostException;
    .restart local v1    # "flag_v4_set":Z
    .restart local v2    # "flag_v6_set":Z
    :cond_8
    if-nez v1, :cond_6

    .line 1831
    const/4 v1, 0x1

    .line 1832
    :try_start_1
    const-string/jumbo v9, "GnssLocationProvider_ex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Got IPv4 InetAddress : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    iput-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->retAddr:Ljava/net/InetAddress;

    goto/16 :goto_2

    .line 1840
    .restart local v6    # "resInetAddress":Ljava/net/InetAddress;
    :cond_9
    const-string/jumbo v9, "GnssLocationProvider_ex"

    const-string/jumbo v10, "DNS resolve failed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1852
    .end local v6    # "resInetAddress":Ljava/net/InetAddress;
    .restart local v7    # "result":Z
    :cond_a
    const-string/jumbo v9, "GnssLocationProvider_ex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Successfully requested route to host: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public reportVendorExtraAgpsStatus(IIIII)V
    .locals 3
    .param p1, "isSuplServerConnected"    # I
    .param p2, "lastSuplMessage"    # I
    .param p3, "isRefLocationReceived"    # I
    .param p4, "isRefTimeReceived"    # I
    .param p5, "isEEValid"    # I

    .prologue
    .line 1875
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportVendorExtraAgpsStatus, isSuplServerConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", lastSuplMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1876
    const-string/jumbo v2, ", isRefLocationReceived = "

    .line 1875
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1876
    const-string/jumbo v2, ", isRefTimeReceived = "

    .line 1875
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1876
    const-string/jumbo v2, ", isEEValid = "

    .line 1875
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    return-void
.end method

.method public reportVendorExtraAssertMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1880
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method_reportVendorExtraAssertMessage, message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    return-void
.end method

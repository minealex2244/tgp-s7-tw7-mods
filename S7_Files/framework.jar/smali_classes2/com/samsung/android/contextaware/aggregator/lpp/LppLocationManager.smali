.class Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
.super Ljava/lang/Object;
.source "LppLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$FindGps;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsNmeaListener;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;
    }
.end annotation


# static fields
.field private static final CHECK_GPS_WIFI_AVAILABILITY:I = 0x28

.field private static final FIRST_TIME_GPS_TIMEOUT:I = 0x28

.field private static final GPSBATCH_ENTRY_COUNT:I = 0x4

.field private static final GPS_BATCH_REQ_TIMEOUT:I = 0x5

.field private static final INDOOR_ENTRY_NO_GPS_COUNT:I = 0x3

.field private static final LOC_VALID_ACCURACY_GPS:I = 0x10

.field private static final LOC_VALID_ACCURACY_NW:I = 0x28

.field private static final LOC_VALID_TIME_GPS:I = 0x3

.field private static final NLP_TIMEOUT:I = 0x4

.field private static final OUTDOOR_ENTRY_GPS_COUNT:I = 0x3

.field private static final OUTDOOR_EXIT_ACCURACY:I = 0x32

.field private static final PASSIVE_INACTIVE_TIME:I = 0x14

.field public static final PASSIVE_LOC_ACC_VALIDITY:F = 32.0f

.field private static final PASSIVE_LOC_DIST_VALIDITY:D = 10.0

.field private static final PASSIVE_LOC_MIN_TIME:I = 0x5

.field private static final PASSIVE_LOC_VALIDITY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LppLocationManager"

.field static final vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;


# instance fields
.field count:I

.field private mContext:Landroid/content/Context;

.field private final mFindGps:Landroid/location/LocationListener;

.field private final mGpsStatusLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;

.field private mGpsTimeout:J

.field private mLastLoc:Landroid/location/Location;

.field private final mListLoc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mListPassiveLoc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

.field private mLocLnr:Landroid/location/LocationListener;

.field private mLocMgr:Landroid/location/LocationManager;

.field private mLocMostAccGps:Landroid/location/Location;

.field private mLocNw:Landroid/location/Location;

.field private mLooper:Landroid/os/Looper;

.field private mLppResolution:I

.field private mPassiveSM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

.field private mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

.field private mTimeRequest:J


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mFindGps:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLppResolution:I

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mGpsStatusLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mGpsTimeout:J

    return-wide v0
.end method

.method static synthetic -get4(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListPassiveLoc:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocLnr:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/LocationManager;)Landroid/location/LocationManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic -set4(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mTimeRequest:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    .locals 1
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->locValidCheckGps(Landroid/location/Location;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    .locals 1
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->locValidCheckNw(Landroid/location/Location;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)V
    .locals 0
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->setMostAccLocGps(Landroid/location/Location;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->values()[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    .line 31
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$FindGps;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$FindGps;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$FindGps;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mFindGps:Landroid/location/LocationListener;

    .line 56
    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    .line 57
    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    .line 58
    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;

    .line 59
    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;

    .line 60
    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLppResolution:I

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListPassiveLoc:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mGpsStatusLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;

    .line 69
    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    .line 70
    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    .line 1667
    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->count:I

    .line 31
    return-void
.end method

.method private locValidCheckGps(Landroid/location/Location;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    .locals 6
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 1828
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mTimeRequest:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1830
    const-string/jumbo v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "time is not enough - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mTimeRequest:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->INVALID_TIME:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    return-object v0

    .line 1834
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1836
    const-string/jumbo v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GPS: Accuracy is not good:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->INVALID_ACC:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    return-object v0

    .line 1840
    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->VALID:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    return-object v0
.end method

.method private locValidCheckNw(Landroid/location/Location;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    .locals 3
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 1845
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1847
    const-string/jumbo v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "N/W: Accuracy is not good:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->INVALID_ACC:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    return-object v0

    .line 1851
    :cond_0
    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->VALID:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    return-object v0
.end method

.method private setMostAccLocGps(Landroid/location/Location;)V
    .locals 2
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 1816
    const-string/jumbo v0, "LppLocationManager"

    const-string/jumbo v1, "setMostAccLoc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 1819
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    .line 1814
    :cond_0
    :goto_0
    return-void

    .line 1820
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public static validPassDist(DDDD)Z
    .locals 20
    .param p0, "lat1"    # D
    .param p2, "lon1"    # D
    .param p4, "lat2"    # D
    .param p6, "lon2"    # D

    .prologue
    .line 1601
    sub-double v14, p4, p0

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 1602
    .local v6, "dLat":D
    sub-double v14, p6, p2

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 1603
    .local v8, "dLon":D
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 1604
    .local v10, "latR1":D
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 1605
    .local v12, "latR2":D
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v14, v6, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v16, v6, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    .line 1606
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v16, v8, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v18, v8, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    .line 1605
    add-double v0, v14, v16

    .line 1607
    .local v0, "a":D
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v2, v16, v14

    .line 1600
    .local v2, "c":D
    const-wide v14, 0x40b8e30000000000L    # 6371.0

    .line 1608
    mul-double/2addr v14, v2

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v4, v14, v16

    .line 1610
    .local v4, "d":D
    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    cmpg-double v14, v4, v14

    if-gez v14, :cond_0

    .line 1611
    const-string/jumbo v14, "LppLocationManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "distance not valid:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    const/4 v14, 0x0

    return v14

    .line 1614
    :cond_0
    const-string/jumbo v14, "LppLocationManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "distance valid:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    const/4 v14, 0x1

    return v14
.end method


# virtual methods
.method public getLastHeight()D
    .locals 2

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 1873
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    return-wide v0

    .line 1875
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLastLoc()Landroid/location/Location;
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    return-object v0
.end method

.method public getLastLocLat()D
    .locals 2

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 1857
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    return-wide v0

    .line 1859
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLastLocLon()D
    .locals 2

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 1865
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    return-wide v0

    .line 1867
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public locRequest(I)V
    .locals 6
    .param p1, "movingStatus"    # I

    .prologue
    .line 1670
    const-string/jumbo v1, "LppLocationManager"

    const-string/jumbo v2, "LocRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->count:I

    .line 1676
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    if-eqz v1, :cond_2

    .line 1678
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->-wrap0(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/Location;

    move-result-object v0

    .line 1679
    .local v0, "loc":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 1680
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 1681
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->-wrap1(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    invoke-static {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->-get1(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 1682
    const-string/jumbo v1, "LppLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "passive loc found!: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1684
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;

    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1685
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;->locUpdate(Ljava/util/ArrayList;)V

    .line 1686
    return-void

    .line 1689
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 1691
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->STATIONARY:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1700
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1701
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1668
    .end local v0    # "loc":Landroid/location/Location;
    :cond_2
    return-void

    .line 1692
    .restart local v0    # "loc":Landroid/location/Location;
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 1694
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->WALK:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1695
    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1697
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->VEHICLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public sendStatus(Ljava/lang/String;)V
    .locals 3
    .param p1, "strDisp"    # Ljava/lang/String;

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LppLocMan: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;->status(Ljava/lang/String;)V

    .line 1883
    return-void
.end method

.method public setLppResolution(I)V
    .locals 0
    .param p1, "res"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLppResolution:I

    .line 173
    return-void
.end method

.method public start(Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;)V
    .locals 4
    .param p1, "config"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;
    .param p2, "mLMLnr"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

    .prologue
    const/4 v3, 0x0

    .line 117
    const-string/jumbo v1, "LppLocationManager"

    const-string/jumbo v2, "start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-nez p1, :cond_0

    .line 120
    const-string/jumbo v1, "LppLocationManager"

    const-string/jumbo v2, "config null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;

    .line 126
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 127
    const-string/jumbo v1, "LppLocationManager"

    const-string/jumbo v2, "context null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void

    .line 131
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "CAE_LPPLOCMGR"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 134
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLooper:Landroid/os/Looper;

    .line 135
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLooper:Landroid/os/Looper;

    if-nez v1, :cond_2

    .line 136
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    const-string/jumbo v1, "LppLocationManager"

    const-string/jumbo v2, "looper null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 142
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;

    .line 143
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;

    if-nez v1, :cond_3

    .line 144
    const-string/jumbo v1, "LppLocationManager"

    const-string/jumbo v2, "mLocMgr is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_3
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocLnr:Landroid/location/LocationListener;

    .line 148
    iput-object p2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

    .line 149
    iget v1, p1, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSKeepOn_Timer:I

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mGpsTimeout:J

    .line 151
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    const-string/jumbo v2, "LppLocationManager"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    .line 152
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine;->start()V

    .line 153
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->START:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 155
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    const-string/jumbo v2, "LppLocationManager"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    .line 156
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine;->start()V

    .line 115
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 162
    const-string/jumbo v0, "LppLocationManager"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->STOP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->-wrap1(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)V

    .line 160
    :cond_1
    return-void
.end method
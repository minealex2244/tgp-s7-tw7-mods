.class Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;
.super Ljava/lang/Object;
.source "WatermarkTextLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WatermarkDateTextLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;
    }
.end annotation


# static fields
.field private static final CENTURY_ARRAY:[[D

.field private static final CHINESE_MONTH_NUMBER:[Ljava/lang/String;

.field private static final DECREASE_OFFSETMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final INCREASE_OFFSETMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LUNAR_INFO:[J

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private final TERMS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDate:Ljava/lang/String;

.field private mCurrentYear:I

.field private mDateAndTime:Ljava/lang/String;

.field private mDay:I

.field private mHoliday:Ljava/lang/String;

.field private mIsLunarFestival:Z

.field private mIsWatermarkTextLoaded:Z

.field private mLeap:Z

.field private mLunarYear:Ljava/lang/String;

.field private mMonth:I

.field private mSolarTerm:Ljava/lang/String;

.field private mWeekday:Ljava/lang/String;

.field private mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x829

    const/16 v3, 0x18

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 502
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u6b63"

    aput-object v1, v0, v4

    const-string v1, "\u4e8c"

    aput-object v1, v0, v5

    const-string v1, "\u4e09"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "\u56db"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4e03"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u4e5d"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5341"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u5341\u4e00"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u5341\u4e8c"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->CHINESE_MONTH_NUMBER:[Ljava/lang/String;

    .line 503
    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->LUNAR_INFO:[J

    .line 526
    new-array v0, v6, [[D

    new-array v1, v3, [D

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v3, [D

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->CENTURY_ARRAY:[[D

    .line 529
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->INCREASE_OFFSETMAP:Ljava/util/Map;

    .line 530
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->DECREASE_OFFSETMAP:Ljava/util/Map;

    .line 537
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->DECREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->YUSHUI:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x7ea

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->CHUNFEN:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x824

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->XIAOMAN:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x7d8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->MANGZHONG:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x76e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->XIAZHI:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x788

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->XIAOSHU:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Integer;

    const/16 v3, 0x785

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0x7e0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->DASHU:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x782

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->LIQIU:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x7d2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->BAILU:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x787

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->QIUFEN:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x796

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->SHUANGJIANG:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->LIDONG:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->XIAOXUE:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x7ba

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->DAXUE:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x7a2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->DECREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->DONGZHI:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Integer;

    const/16 v3, 0x77e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0x7e5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->XIAOHAN:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x7be

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->DECREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->XIAOHAN:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x7e3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->DAHAN:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x822

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    return-void

    .line 503
    :array_0
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb5a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x55c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data

    .line 526
    :array_1
    .array-data 8
        0x4012849ba5e353f8L    # 4.6295
        0x403375bc01a36e2fL    # 19.4599
        0x401987c84b5dcc64L    # 6.3826
        0x40356a5e353f7ceeL    # 21.4155
        0x40165c28f5c28f5cL    # 5.59
        0x4034e353f7ced917L    # 20.888
        0x401945a1cac08312L    # 6.318
        0x4035dc28f5c28f5cL    # 21.86
        0x401a000000000000L    # 6.5
        0x4036333333333333L    # 22.2
        0x401fb645a1cac083L    # 7.928
        0x4037a66666666666L    # 23.65
        0x4020b33333333333L    # 8.35
        0x4037f33333333333L    # 23.95
        0x4020e147ae147ae1L    # 8.44
        0x4037d26e978d4fdfL    # 23.822
        0x4022322d0e560419L    # 9.098
        0x403837ced916872bL    # 24.218
        0x40206f9db22d0e56L    # 8.218
        0x4037147ae147ae14L    # 23.08
        0x401f99999999999aL    # 7.9
        0x403699999999999aL    # 22.6
        0x401870a3d70a3d71L    # 6.11
        0x4034d70a3d70a3d7L    # 20.84
    .end array-data

    :array_2
    .array-data 8
        0x400ef5c28f5c28f6L    # 3.87
        0x4032bae147ae147bL    # 18.73
        0x4016851eb851eb85L    # 5.63
        0x4034a5604189374cL    # 20.646
        0x40133d70a3d70a3dL    # 4.81
        0x403419999999999aL    # 20.1
        0x4016147ae147ae14L    # 5.52
        0x40350a3d70a3d70aL    # 21.04
        0x4016b645a1cac083L    # 5.678
        0x40355eb851eb851fL    # 21.37
        0x401c6e978d4fdf3bL    # 7.108
        0x4036d47ae147ae14L    # 22.83
        0x401e000000000000L    # 7.5
        0x40372147ae147ae1L    # 23.13
        0x401e95810624dd2fL    # 7.646
        0x40370ac083126e98L    # 23.042
        0x4020a2d0e5604189L    # 8.318
        0x40377020c49ba5e3L    # 23.438
        0x401dc083126e978dL    # 7.438
        0x40365c28f5c28f5cL    # 22.36
        0x401cb851eb851eb8L    # 7.18
        0x4035f0a3d70a3d71L    # 21.94
        0x40159f3b645a1cacL    # 5.4055
        0x40341eb851eb851fL    # 20.12
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    .line 558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mIsWatermarkTextLoaded:Z

    .line 559
    const-string v0, "4 - 20"

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mCurrentDate:Ljava/lang/String;

    .line 560
    const-string v0, "\u661f\u671f\u4e00"

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mWeekday:Ljava/lang/String;

    .line 561
    const-string v0, "\u5e73\u65e5"

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mSolarTerm:Ljava/lang/String;

    .line 562
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mHoliday:Ljava/lang/String;

    .line 563
    const-string v0, "2016.4.20 23:20"

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mDateAndTime:Ljava/lang/String;

    .line 564
    const-string v0, "\u4e19\u7533"

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mLunarYear:Ljava/lang/String;

    .line 565
    const/16 v0, 0x7e0

    iput v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mYear:I

    .line 566
    iput v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mMonth:I

    .line 567
    iput v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mDay:I

    .line 568
    const/16 v0, 0x7e1

    iput v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mCurrentYear:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$1;

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;-><init>()V

    return-void
.end method

.method private convertLunar(Ljava/util/Calendar;)V
    .locals 14
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 740
    new-instance v0, Ljava/util/Date;

    const-wide v8, -0x201bca5b800L

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 741
    .local v0, "baseDate":Ljava/util/Date;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x5265c00

    div-long/2addr v8, v10

    long-to-int v6, v8

    .line 742
    .local v6, "offset":I
    const/4 v2, 0x0

    .line 743
    .local v2, "daysOfYear":I
    const/16 v4, 0x76c

    .local v4, "iYear":I
    :goto_0
    const/16 v7, 0x802

    if-ge v4, v7, :cond_0

    if-lez v6, :cond_0

    .line 744
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->yearDays(I)I

    move-result v2

    .line 745
    sub-int/2addr v6, v2

    .line 743
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 747
    :cond_0
    if-gez v6, :cond_1

    .line 748
    add-int/2addr v6, v2

    .line 749
    add-int/lit8 v4, v4, -0x1

    .line 752
    :cond_1
    iput v4, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mYear:I

    .line 753
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->leapMonth(I)I

    move-result v5

    .line 754
    .local v5, "leapMonth":I
    iput-boolean v12, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mLeap:Z

    .line 755
    const/4 v1, 0x0

    .line 756
    .local v1, "daysOfMonth":I
    const/4 v3, 0x1

    .local v3, "iMonth":I
    :goto_1
    const/16 v7, 0xd

    if-ge v3, v7, :cond_4

    if-lez v6, :cond_4

    .line 757
    if-lez v5, :cond_3

    add-int/lit8 v7, v5, 0x1

    if-ne v3, v7, :cond_3

    iget-boolean v7, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mLeap:Z

    if-nez v7, :cond_3

    .line 758
    add-int/lit8 v3, v3, -0x1

    .line 759
    iput-boolean v13, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mLeap:Z

    .line 760
    iget v7, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mYear:I

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->leapDays(I)I

    move-result v1

    .line 763
    :goto_2
    sub-int/2addr v6, v1

    .line 764
    iget-boolean v7, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mLeap:Z

    if-eqz v7, :cond_2

    add-int/lit8 v7, v5, 0x1

    if-ne v3, v7, :cond_2

    .line 765
    iput-boolean v12, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mLeap:Z

    .line 756
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 762
    :cond_3
    iget v7, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mYear:I

    invoke-direct {p0, v7, v3}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->monthDays(II)I

    move-result v1

    goto :goto_2

    .line 767
    :cond_4
    if-nez v6, :cond_5

    if-lez v5, :cond_5

    add-int/lit8 v7, v5, 0x1

    if-ne v3, v7, :cond_5

    .line 768
    iget-boolean v7, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mLeap:Z

    if-eqz v7, :cond_7

    .line 769
    iput-boolean v12, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mLeap:Z

    .line 776
    :cond_5
    :goto_3
    if-gez v6, :cond_6

    .line 777
    add-int/2addr v6, v1

    .line 778
    add-int/lit8 v3, v3, -0x1

    .line 780
    :cond_6
    iput v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mMonth:I

    .line 781
    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mDay:I

    .line 782
    return-void

    .line 771
    :cond_7
    iput-boolean v13, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mLeap:Z

    .line 772
    add-int/lit8 v3, v3, -0x1

    goto :goto_3
.end method

.method private final cyclical()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 794
    iget v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mYear:I

    add-int/lit16 v3, v3, -0x76c

    add-int/lit8 v2, v3, 0x24

    .line 795
    .local v2, "num":I
    const/16 v3, 0xa

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "\u7532"

    aput-object v3, v0, v5

    const-string v3, "\u4e59"

    aput-object v3, v0, v6

    const-string v3, "\u4e19"

    aput-object v3, v0, v7

    const-string v3, "\u4e01"

    aput-object v3, v0, v8

    const-string v3, "\u620a"

    aput-object v3, v0, v9

    const/4 v3, 0x5

    const-string v4, "\u5df1"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "\u5e9a"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "\u8f9b"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "\u58ec"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "\u7678"

    aput-object v4, v0, v3

    .line 797
    .local v0, "Gan":[Ljava/lang/String;
    const/16 v3, 0xc

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "\u5b50"

    aput-object v3, v1, v5

    const-string v3, "\u4e11"

    aput-object v3, v1, v6

    const-string v3, "\u5bc5"

    aput-object v3, v1, v7

    const-string v3, "\u536f"

    aput-object v3, v1, v8

    const-string v3, "\u8fb0"

    aput-object v3, v1, v9

    const/4 v3, 0x5

    const-string v4, "\u5df3"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "\u5348"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "\u672a"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string v4, "\u7533"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    const-string v4, "\u9149"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    const-string v4, "\u620c"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    const-string v4, "\u4ea5"

    aput-object v4, v1, v3

    .line 799
    .local v1, "Zhi":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v4, v2, 0xa

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    rem-int/lit8 v4, v2, 0xc

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getChinaDayString(I)Ljava/lang/String;
    .locals 4
    .param p1, "day"    # I

    .prologue
    .line 809
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u521d"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u5341"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "\u5eff"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "\u5345"

    aput-object v3, v0, v2

    .line 810
    .local v0, "chineseTen":[Ljava/lang/String;
    rem-int/lit8 v2, p1, 0xa

    if-nez v2, :cond_0

    const/16 v1, 0x9

    .line 811
    .local v1, "n":I
    :goto_0
    const/16 v2, 0x1e

    if-le p1, v2, :cond_1

    .line 812
    const-string v2, ""

    .line 816
    :goto_1
    return-object v2

    .line 810
    .end local v1    # "n":I
    :cond_0
    rem-int/lit8 v2, p1, 0xa

    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 813
    .restart local v1    # "n":I
    :cond_1
    const/16 v2, 0xa

    if-ne p1, v2, :cond_2

    .line 814
    const-string v2, "\u521d\u5341"

    goto :goto_1

    .line 816
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v3, p1, 0xa

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->CHINESE_NUMBER:[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->access$600()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private getChineseEveDate(I)Ljava/lang/String;
    .locals 4
    .param p1, "year"    # I

    .prologue
    .line 826
    add-int/lit8 v2, p1, -0x1

    const/16 v3, 0xc

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->monthDays(II)I

    move-result v0

    .line 827
    .local v0, "days":I
    const/16 v2, 0x1e

    if-ne v0, v2, :cond_0

    const-string v1, "\u5341\u4e8c\u6708\u4e09\u5341"

    .line 828
    .local v1, "eve":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 827
    .end local v1    # "eve":Ljava/lang/String;
    :cond_0
    const-string v1, "\u5341\u4e8c\u6708\u5eff\u4e5d"

    goto :goto_0
.end method

.method private getFestival(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 838
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 864
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mSolarTerm:Ljava/lang/String;

    const-string v1, "\u6e05\u660e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 865
    const-string v0, "\u6e05\u660e\u8282"

    .line 866
    :goto_1
    return-object v0

    .line 838
    :sswitch_0
    const-string v1, "01.01"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "02.14"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "03.08"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "03.12"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "05.01"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "05.04"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "06.01"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "07.01"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "08.01"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v1, "09.10"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string v1, "10.01"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string v1, "12.25"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    .line 840
    :pswitch_0
    const-string v0, "\u5143\u65e6"

    goto :goto_1

    .line 842
    :pswitch_1
    const-string v0, "\u60c5\u4eba\u8282"

    goto/16 :goto_1

    .line 844
    :pswitch_2
    const-string v0, "\u5987\u5973\u8282"

    goto/16 :goto_1

    .line 846
    :pswitch_3
    const-string v0, "\u690d\u6811\u8282"

    goto/16 :goto_1

    .line 848
    :pswitch_4
    const-string v0, "\u52b3\u52a8\u8282"

    goto/16 :goto_1

    .line 850
    :pswitch_5
    const-string v0, "\u9752\u5e74\u8282"

    goto/16 :goto_1

    .line 852
    :pswitch_6
    const-string v0, "\u513f\u7ae5\u8282"

    goto/16 :goto_1

    .line 854
    :pswitch_7
    const-string v0, "\u5efa\u515a\u8282"

    goto/16 :goto_1

    .line 856
    :pswitch_8
    const-string v0, "\u5efa\u519b\u8282"

    goto/16 :goto_1

    .line 858
    :pswitch_9
    const-string v0, "\u6559\u5e08\u8282"

    goto/16 :goto_1

    .line 860
    :pswitch_a
    const-string v0, "\u56fd\u5e86\u8282"

    goto/16 :goto_1

    .line 862
    :pswitch_b
    const-string v0, "\u5723\u8bde\u8282"

    goto/16 :goto_1

    .line 866
    :cond_1
    const-string v0, "unknown"

    goto/16 :goto_1

    .line 838
    :sswitch_data_0
    .sparse-switch
        0x2bb610e -> :sswitch_0
        0x2bbd58f -> :sswitch_1
        0x2bc49d3 -> :sswitch_2
        0x2bc49ec -> :sswitch_3
        0x2bd328a -> :sswitch_4
        0x2bd328d -> :sswitch_5
        0x2bda6e9 -> :sswitch_6
        0x2be1b48 -> :sswitch_7
        0x2be8fa7 -> :sswitch_8
        0x2bf0424 -> :sswitch_9
        0x2c90430 -> :sswitch_a
        0x2c9ed30 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private getLunarDate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->CHINESE_MONTH_NUMBER:[Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mMonth:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6708\u00b7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mDay:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLunarFestival(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "lunarDate"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 887
    iput-boolean v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mIsLunarFestival:Z

    .line 888
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 908
    iget v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mCurrentYear:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getChineseEveDate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 909
    const-string v0, "\u9664\u5915"

    .line 912
    :goto_1
    return-object v0

    .line 888
    :sswitch_0
    const-string v2, "\u6b63\u6708\u00b7\u521d\u4e00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "\u6b63\u6708\u00b7\u521d\u4e8c"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v2, "\u6b63\u6708\u00b7\u521d\u4e09"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "\u6b63\u6708\u00b7\u5341\u4e94"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "\u4e94\u6708\u00b7\u521d\u4e94"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "\u516b\u6708\u00b7\u5341\u4e94"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "\u4e5d\u6708\u00b7\u521d\u4e5d"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "\u4e03\u6708\u00b7\u521d\u4e03"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v2, "\u4e03\u6708\u00b7\u5341\u56db"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v2, "\u5341\u4e8c\u6708\u00b7\u521d\u516b"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    .line 892
    :pswitch_0
    const-string v0, "\u6625\u8282"

    goto :goto_1

    .line 894
    :pswitch_1
    const-string v0, "\u5143\u5bb5\u8282"

    goto :goto_1

    .line 896
    :pswitch_2
    const-string v0, "\u7aef\u5348\u8282"

    goto :goto_1

    .line 898
    :pswitch_3
    const-string v0, "\u4e2d\u79cb\u8282"

    goto :goto_1

    .line 900
    :pswitch_4
    const-string v0, "\u91cd\u9633\u8282"

    goto :goto_1

    .line 902
    :pswitch_5
    const-string v0, "\u4e03\u5915\u8282"

    goto :goto_1

    .line 904
    :pswitch_6
    const-string v0, "\u4e2d\u5143\u8282"

    goto :goto_1

    .line 906
    :pswitch_7
    const-string v0, "\u814a\u516b\u8282"

    goto :goto_1

    .line 911
    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mIsLunarFestival:Z

    .line 912
    const-string v0, "unknown"

    goto/16 :goto_1

    .line 888
    :sswitch_data_0
    .sparse-switch
        -0x7dce5066 -> :sswitch_4
        -0x6d187c38 -> :sswitch_9
        -0x55c96db3 -> :sswitch_5
        0x1828cc55 -> :sswitch_0
        0x1828cc5e -> :sswitch_2
        0x1828cce1 -> :sswitch_1
        0x1828f045 -> :sswitch_3
        0x7a365ef8 -> :sswitch_7
        0x7a368b2c -> :sswitch_8
        0x7f2aa2ac -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getLunarString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->cyclical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mLeap:Z

    if-eqz v0, :cond_0

    const-string v0, "\u95f0"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->CHINESE_MONTH_NUMBER:[Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mMonth:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mDay:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getOffset(Ljava/util/Map;ILjava/lang/String;I)I
    .locals 6
    .param p2, "year"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 926
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 927
    .local v1, "off":I
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    .line 928
    .local v2, "years":[Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 929
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 930
    .local v0, "i":I
    if-ne v0, p2, :cond_1

    .line 931
    move v1, p4

    .line 936
    .end local v0    # "i":I
    :cond_0
    return v1

    .line 929
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "year"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 953
    const-wide/16 v2, 0x0

    .line 954
    .local v2, "centuryValue":D
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 955
    invoke-static {p2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->ordinal()I

    move-result v5

    .line 957
    .local v5, "ordinal":I
    const/4 v0, -0x1

    .line 958
    .local v0, "centuryIndex":I
    const/16 v7, 0x76d

    if-lt p1, v7, :cond_4

    const/16 v7, 0x7d0

    if-gt p1, v7, :cond_4

    .line 959
    const/4 v0, 0x0

    .line 965
    :goto_0
    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->CENTURY_ARRAY:[[D

    aget-object v7, v7, v0

    aget-wide v2, v7, v5

    .line 966
    const/4 v1, 0x0

    .line 967
    .local v1, "dateNum":I
    rem-int/lit8 v6, p1, 0x64

    .line 968
    .local v6, "y":I
    rem-int/lit8 v7, p1, 0x4

    if-nez v7, :cond_0

    rem-int/lit8 v7, p1, 0x64

    if-nez v7, :cond_1

    :cond_0
    rem-int/lit16 v7, p1, 0x190

    if-nez v7, :cond_3

    .line 969
    :cond_1
    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->XIAOHAN:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->ordinal()I

    move-result v7

    if-eq v5, v7, :cond_2

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->DAHAN:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->ordinal()I

    move-result v7

    if-eq v5, v7, :cond_2

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->LICHUN:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    .line 970
    invoke-virtual {v7}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->ordinal()I

    move-result v7

    if-eq v5, v7, :cond_2

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->YUSHUI:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->ordinal()I

    move-result v7

    if-ne v5, v7, :cond_3

    .line 971
    :cond_2
    add-int/lit8 v6, v6, -0x1

    .line 974
    :cond_3
    int-to-double v8, v6

    const-wide v10, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v8, v10

    add-double/2addr v8, v2

    double-to-int v7, v8

    div-int/lit8 v8, v6, 0x4

    sub-int v1, v7, v8

    .line 975
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSpecialYearOffset(ILjava/lang/String;)I

    move-result v7

    add-int/2addr v1, v7

    .line 977
    const/16 v7, 0xa

    if-ge v1, v7, :cond_6

    .line 978
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 982
    .local v4, "mDay":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 960
    .end local v1    # "dateNum":I
    .end local v4    # "mDay":Ljava/lang/String;
    .end local v6    # "y":I
    :cond_4
    const/16 v7, 0x7d1

    if-lt p1, v7, :cond_5

    const/16 v7, 0x834

    if-gt p1, v7, :cond_5

    .line 961
    const/4 v0, 0x1

    goto :goto_0

    .line 963
    :cond_5
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "not support this year \uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\uff0conly range from 1901 ~ 2100"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 980
    .restart local v1    # "dateNum":I
    .restart local v6    # "y":I
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "mDay":Ljava/lang/String;
    goto :goto_1
.end method

.method private getSpecialYearOffset(ILjava/lang/String;)I
    .locals 3
    .param p1, "year"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 995
    const/4 v0, 0x0

    .line 996
    .local v0, "offset":I
    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->DECREASE_OFFSETMAP:Ljava/util/Map;

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getOffset(Ljava/util/Map;ILjava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 997
    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->INCREASE_OFFSETMAP:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getOffset(Ljava/util/Map;ILjava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 998
    return v0
.end method

.method private getTerms(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 1008
    const-string v1, "WatermarkTextLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1010
    .local v0, "currentTerm":Ljava/lang/String;
    const-string v1, "WatermarkTextLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentTerm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const-string v1, "WatermarkTextLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TERMS_MAP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    if-nez v0, :cond_0

    .line 1013
    const-string v0, "\u5e73\u65e5"

    .line 1015
    .end local v0    # "currentTerm":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getTermsMap(I)V
    .locals 3
    .param p1, "year"    # I

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "01-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->XIAOHAN:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5c0f\u5bd2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "01-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->DAHAN:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5927\u5bd2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "02-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->LICHUN:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7acb\u6625"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "02-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->YUSHUI:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u96e8\u6c34"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "03-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->JINGZHE:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u60ca\u86f0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "03-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->CHUNFEN:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6625\u5206"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "04-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->QINGMING:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6e05\u660e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "04-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->GUYU:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u8c37\u96e8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "05-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->LIXIA:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7acb\u590f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "05-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->XIAOMAN:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5c0f\u6ee1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "06-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->MANGZHONG:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u8292\u79cd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "06-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->XIAZHI:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u590f\u81f3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "07-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->XIAOSHU:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5c0f\u6691"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "07-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->DASHU:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5927\u6691"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "08-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->LIQIU:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7acb\u79cb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "08-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->CHUSHU:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5904\u6691"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "09-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->BAILU:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u767d\u9732"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "09-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->QIUFEN:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u79cb\u5206"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "10-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->HANLU:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5bd2\u9732"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "10-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->SHUANGJIANG:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u971c\u964d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "11-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->LIDONG:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7acb\u51ac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "11-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->XIAOXUE:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5c0f\u96ea"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "12-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->DAXUE:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5927\u96ea"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "12-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->DONGZHI:Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u51ac\u81f3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    return-void
.end method

.method private getWeek(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "sdate"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x6

    .line 1059
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->strToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 1060
    .local v1, "date":Ljava/util/Date;
    new-array v3, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "\u661f\u671f\u65e5"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "\u661f\u671f\u4e00"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "\u661f\u671f\u4e8c"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "\u661f\u671f\u4e09"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "\u661f\u671f\u56db"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "\u661f\u671f\u4e94"

    aput-object v5, v3, v4

    const-string v4, "\u661f\u671f\u516d"

    aput-object v4, v3, v6

    .line 1061
    .local v3, "weeks":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1062
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1063
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 1064
    .local v2, "week_index":I
    if-ltz v2, :cond_0

    if-le v2, v6, :cond_1

    .line 1065
    :cond_0
    const/4 v2, 0x0

    .line 1067
    :cond_1
    aget-object v4, v3, v2

    return-object v4
.end method

.method private final leapDays(I)I
    .locals 4
    .param p1, "year"    # I

    .prologue
    .line 1077
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1078
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->LUNAR_INFO:[J

    add-int/lit16 v1, p1, -0x76c

    aget-wide v0, v0, v1

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1079
    const/16 v0, 0x1e

    .line 1083
    :goto_0
    return v0

    .line 1081
    :cond_0
    const/16 v0, 0x1d

    goto :goto_0

    .line 1083
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final leapMonth(I)I
    .locals 4
    .param p1, "year"    # I

    .prologue
    .line 1093
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->LUNAR_INFO:[J

    add-int/lit16 v1, p1, -0x76c

    aget-wide v0, v0, v1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private final monthDays(II)I
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 1104
    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->LUNAR_INFO:[J

    add-int/lit16 v1, p1, -0x76c

    aget-wide v0, v0, v1

    const/high16 v2, 0x10000

    shr-int/2addr v2, p2

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1105
    const/16 v0, 0x1d

    .line 1107
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method private strToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "strDate"    # Ljava/lang/String;

    .prologue
    .line 1117
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1118
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1119
    .local v1, "pos":Ljava/text/ParsePosition;
    invoke-virtual {v0, p1, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method private final yearDays(I)I
    .locals 6
    .param p1, "year"    # I

    .prologue
    .line 1129
    const/16 v1, 0x15c

    .line 1130
    .local v1, "sum":I
    const v0, 0x8000

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    .line 1131
    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->LUNAR_INFO:[J

    add-int/lit16 v3, p1, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1132
    add-int/lit8 v1, v1, 0x1

    .line 1130
    :cond_0
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1134
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->leapDays(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mIsWatermarkTextLoaded:Z

    .line 574
    return-void
.end method

.method public getChinaDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 582
    const-string v0, "%s\u6708%s\u65e5"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "MM"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->getChinaNumString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "dd"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->getChinaNumString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 591
    const-string v0, "%s\u6708%s\u65e5"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "MM"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "dd"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mCurrentDate:Ljava/lang/String;

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mCurrentDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentDayOfWeek()Ljava/lang/String;
    .locals 4

    .prologue
    .line 601
    new-instance v1, Ljava/text/DateFormatSymbols;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 602
    .local v1, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "dayList":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aget-object v2, v0, v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCurrentYear()Ljava/lang/String;
    .locals 2

    .prologue
    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mCurrentYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateFormat01()Ljava/lang/String;
    .locals 5

    .prologue
    .line 621
    const-string v0, "%s  \u661f \u671f %c"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getCurrentDate()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mWeekday:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mWeekday:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mDateAndTime:Ljava/lang/String;

    .line 622
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mDateAndTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDateFormat02(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "temperature"    # Ljava/lang/String;

    .prologue
    .line 632
    const-string v0, "%s - %s ,  %s\u2103"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "MM"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "dd"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mDateAndTime:Ljava/lang/String;

    .line 633
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mDateAndTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDateFormat03(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "temperature"    # Ljava/lang/String;

    .prologue
    .line 643
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getCurrentDate()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mDateAndTime:Ljava/lang/String;

    .line 644
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mDateAndTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 655
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 656
    .local v1, "now":Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 657
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDateforFestival()Ljava/lang/String;
    .locals 4

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mIsLunarFestival:Z

    if-eqz v0, :cond_0

    .line 667
    invoke-direct {p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getLunarDate()Ljava/lang/String;

    move-result-object v0

    .line 669
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%s\u6708%s\u65e5"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "MM"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "dd"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHoliday()Ljava/lang/String;
    .locals 2

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getLunarDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getLunarFestival(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mHoliday:Ljava/lang/String;

    .line 681
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mHoliday:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    const-string v0, "MM.dd"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getFestival(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mHoliday:Ljava/lang/String;

    .line 683
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mHoliday:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5e73\u5e38\u65e5"

    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mHoliday:Ljava/lang/String;

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mHoliday:Ljava/lang/String;

    return-object v0

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mHoliday:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLunarYear()Ljava/lang/String;
    .locals 2

    .prologue
    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mLunarYear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSolarTerm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mSolarTerm:Ljava/lang/String;

    return-object v0
.end method

.method public loadWatermarkDateText()V
    .locals 6

    .prologue
    .line 712
    iget-boolean v4, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mIsWatermarkTextLoaded:Z

    if-nez v4, :cond_0

    .line 713
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mIsWatermarkTextLoaded:Z

    .line 715
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 716
    .local v0, "chineseDateFormat":Ljava/text/SimpleDateFormat;
    const-string v4, "yyyy-MM-dd"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mCurrentDate:Ljava/lang/String;

    .line 717
    const-string v4, "yyyy"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mCurrentYear:I

    .line 718
    const-string v4, "MM-dd"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 719
    .local v1, "currentDay":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mCurrentDate:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mWeekday:Ljava/lang/String;

    .line 720
    iget v4, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mCurrentYear:I

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getTermsMap(I)V

    .line 721
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->getTerms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mSolarTerm:Ljava/lang/String;

    .line 722
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 724
    .local v3, "today":Ljava/util/Calendar;
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mCurrentDate:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :goto_0
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->convertLunar(Ljava/util/Calendar;)V

    .line 729
    invoke-direct {p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->cyclical()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkDateTextLoader;->mLunarYear:Ljava/lang/String;

    .line 731
    .end local v0    # "chineseDateFormat":Ljava/text/SimpleDateFormat;
    .end local v1    # "currentDay":Ljava/lang/String;
    .end local v3    # "today":Ljava/util/Calendar;
    :cond_0
    return-void

    .line 725
    .restart local v0    # "chineseDateFormat":Ljava/text/SimpleDateFormat;
    .restart local v1    # "currentDay":Ljava/lang/String;
    .restart local v3    # "today":Ljava/util/Calendar;
    :catch_0
    move-exception v2

    .line 726
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

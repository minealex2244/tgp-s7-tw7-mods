.class Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;
.super Ljava/lang/Object;
.source "WatermarkTextLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WatermarkWeatherTextLoader"
.end annotation


# static fields
.field private static final CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

.field private static final MY_WEATHER_INFO_URI:Landroid/net/Uri;

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.sec.android.daemonapp.ap.accuweather.provider"


# instance fields
.field private mIsWatermarkTextLoaded:Z

.field private mPM25:Ljava/lang/String;

.field private mTemperature:Ljava/lang/String;

.field private mWeatherString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1370
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->MY_WEATHER_INFO_URI:Landroid/net/Uri;

    .line 1371
    const-string v0, "COL_WEATHER_KEY=\"%s\""

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "cityId:current"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mIsWatermarkTextLoaded:Z

    .line 1374
    const-string v0, "16"

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mTemperature:Ljava/lang/String;

    .line 1375
    const-string v0, "\u6674"

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    .line 1376
    const-string v0, "230"

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mPM25:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$1;

    .prologue
    .line 1368
    invoke-direct {p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;

    .prologue
    .line 1368
    invoke-direct {p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->getTemperature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;

    .prologue
    .line 1368
    invoke-direct {p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->getWeatherAndTemperature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getChnTemperatureFormat2(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1452
    const-string v1, ""

    .line 1453
    .local v1, "res":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mIsWatermarkTextLoaded:Z

    if-nez v2, :cond_0

    .line 1454
    const-string p1, "-3"

    .line 1456
    :cond_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v0, v2

    .line 1457
    .local v0, "num":I
    if-gez v0, :cond_1

    .line 1458
    const-string v1, "\u96f6\u4e0b"

    .line 1459
    neg-int v0, v0

    .line 1461
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5ea6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1462
    return-object v1
.end method

.method private getChnWeather()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Sunny"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1472
    const-string v0, "\u6674"

    .line 1555
    :goto_0
    return-object v0

    .line 1473
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Cloudy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1474
    const-string v0, "\u591a\u4e91"

    goto :goto_0

    .line 1475
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Overcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1476
    const-string v0, "\u9634"

    goto :goto_0

    .line 1477
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Shower"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1478
    const-string v0, "\u9635\u96e8"

    goto :goto_0

    .line 1479
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Thundershower"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 1480
    const-string v0, "\u96f7\u9635\u96e8"

    goto :goto_0

    .line 1481
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Thundershower with hail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 1482
    const-string v0, "\u96f7\u9635\u96e8\u4f34\u6709\u51b0\u96f9"

    goto :goto_0

    .line 1483
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Sleet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 1484
    const-string v0, "\u96e8\u5939\u96ea"

    goto :goto_0

    .line 1485
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Light rain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 1486
    const-string v0, "\u5c0f\u96e8"

    goto :goto_0

    .line 1487
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Moderate rain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    .line 1488
    const-string v0, "\u4e2d\u96e8"

    goto :goto_0

    .line 1489
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Heavy rain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 1490
    const-string v0, "\u5927\u96e8"

    goto :goto_0

    .line 1491
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Storm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    .line 1492
    const-string v0, "\u66b4\u96e8"

    goto/16 :goto_0

    .line 1493
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Heavy storm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 1494
    const-string v0, "\u5927\u66b4\u96e8"

    goto/16 :goto_0

    .line 1495
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Severe storm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    .line 1496
    const-string v0, "\u7279\u5927\u66b4\u96e8"

    goto/16 :goto_0

    .line 1497
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Snow flurry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    .line 1498
    const-string v0, "\u9635\u96ea"

    goto/16 :goto_0

    .line 1499
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Light snow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    .line 1500
    const-string v0, "\u5c0f\u96ea"

    goto/16 :goto_0

    .line 1501
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Moderate snow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 1502
    const-string v0, "\u4e2d\u96ea"

    goto/16 :goto_0

    .line 1503
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Heavy snow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    .line 1504
    const-string v0, "\u5927\u96ea"

    goto/16 :goto_0

    .line 1505
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Snowstorm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    .line 1506
    const-string v0, "\u66b4\u96ea"

    goto/16 :goto_0

    .line 1507
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Foggy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    .line 1508
    const-string v0, "\u96fe"

    goto/16 :goto_0

    .line 1509
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Ice rain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    .line 1510
    const-string v0, "\u51bb\u96e8"

    goto/16 :goto_0

    .line 1511
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Duststorm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    .line 1512
    const-string v0, "\u6c99\u5c18\u66b4"

    goto/16 :goto_0

    .line 1513
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Light to moderate rain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 1514
    const-string v0, "\u5c0f\u5230\u4e2d\u96e8"

    goto/16 :goto_0

    .line 1515
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Moderate to heavy rain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    .line 1516
    const-string v0, "\u4e2d\u5230\u5927\u96e8"

    goto/16 :goto_0

    .line 1517
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Heavy rain to storm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17

    .line 1518
    const-string v0, "\u5927\u5230\u66b4\u96e8"

    goto/16 :goto_0

    .line 1519
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Storm to heavy storm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_18

    .line 1520
    const-string v0, "\u66b4\u96e8\u5230\u5927\u66b4\u96e8"

    goto/16 :goto_0

    .line 1521
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Heavy to severe storm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 1522
    const-string v0, "\u5927\u66b4\u96e8\u5230\u7279\u5927\u66b4\u96e8"

    goto/16 :goto_0

    .line 1523
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Light to moderate snow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a

    .line 1524
    const-string v0, "\u5c0f\u5230\u4e2d\u96ea"

    goto/16 :goto_0

    .line 1525
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Moderate to heavy snow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 1526
    const-string v0, "\u4e2d\u5230\u5927\u96ea"

    goto/16 :goto_0

    .line 1527
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Heavy snow to snowstorm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1c

    .line 1528
    const-string v0, "\u5927\u5230\u66b4\u96ea"

    goto/16 :goto_0

    .line 1529
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Dust"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1d

    .line 1530
    const-string v0, "\u6d6e\u6c89"

    goto/16 :goto_0

    .line 1531
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Sand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1e

    .line 1532
    const-string v0, "\u626c\u6c99"

    goto/16 :goto_0

    .line 1533
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Sandstorm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    .line 1534
    const-string v0, "\u5f3a\u6c99\u5c18\u66b4"

    goto/16 :goto_0

    .line 1535
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Dense Foggy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    .line 1536
    const-string v0, "\u6d53\u96fe"

    goto/16 :goto_0

    .line 1537
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Snow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    .line 1538
    const-string v0, "\u96ea"

    goto/16 :goto_0

    .line 1539
    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Strong dense foggy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_22

    .line 1540
    const-string v0, "\u5f3a\u6d53\u96fe"

    goto/16 :goto_0

    .line 1541
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Haze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_23

    .line 1542
    const-string v0, "\u973e"

    goto/16 :goto_0

    .line 1543
    :cond_23
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Moderate haze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_24

    .line 1544
    const-string v0, "\u4e2d\u5ea6\u973e"

    goto/16 :goto_0

    .line 1545
    :cond_24
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Heavy haze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_25

    .line 1546
    const-string v0, "\u91cd\u5ea6\u973e"

    goto/16 :goto_0

    .line 1547
    :cond_25
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Severe haze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_26

    .line 1548
    const-string v0, "\u4e25\u91cd\u973e"

    goto/16 :goto_0

    .line 1549
    :cond_26
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Heavy foggy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_27

    .line 1550
    const-string v0, "\u5927\u96fe"

    goto/16 :goto_0

    .line 1551
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    const-string v1, "Extra-strong dense foggy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_28

    .line 1552
    const-string v0, "\u7279\u5f3a\u6d53\u96fe"

    goto/16 :goto_0

    .line 1555
    :cond_28
    const-string v0, "\u5c0f\u96ea"

    goto/16 :goto_0
.end method

.method private getTemperature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mTemperature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6444\u6c0f\u5ea6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWeatherAndTemperature()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1466
    const-string v1, "%s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->getChnWeather()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mTemperature:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->getChnTemperatureFormat2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1467
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method private getWeatherString(I)I
    .locals 3
    .param p1, "iconNum"    # I

    .prologue
    .line 1564
    const-string v0, "WatermarkTextLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWeatherString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    packed-switch p1, :pswitch_data_0

    .line 1649
    :pswitch_0
    const v0, 0x7f090361

    :goto_0
    return v0

    .line 1567
    :pswitch_1
    const v0, 0x7f090338

    goto :goto_0

    .line 1569
    :pswitch_2
    const v0, 0x7f090339

    goto :goto_0

    .line 1571
    :pswitch_3
    const v0, 0x7f09033a

    goto :goto_0

    .line 1573
    :pswitch_4
    const v0, 0x7f09033b

    goto :goto_0

    .line 1575
    :pswitch_5
    const v0, 0x7f09033c

    goto :goto_0

    .line 1577
    :pswitch_6
    const v0, 0x7f09033d

    goto :goto_0

    .line 1579
    :pswitch_7
    const v0, 0x7f09033e

    goto :goto_0

    .line 1581
    :pswitch_8
    const v0, 0x7f09033f

    goto :goto_0

    .line 1583
    :pswitch_9
    const v0, 0x7f090340

    goto :goto_0

    .line 1585
    :pswitch_a
    const v0, 0x7f090341

    goto :goto_0

    .line 1587
    :pswitch_b
    const v0, 0x7f090342

    goto :goto_0

    .line 1589
    :pswitch_c
    const v0, 0x7f090343

    goto :goto_0

    .line 1591
    :pswitch_d
    const v0, 0x7f090344

    goto :goto_0

    .line 1593
    :pswitch_e
    const v0, 0x7f090345

    goto :goto_0

    .line 1595
    :pswitch_f
    const v0, 0x7f090346

    goto :goto_0

    .line 1597
    :pswitch_10
    const v0, 0x7f090347

    goto :goto_0

    .line 1599
    :pswitch_11
    const v0, 0x7f090348

    goto :goto_0

    .line 1601
    :pswitch_12
    const v0, 0x7f090349

    goto :goto_0

    .line 1603
    :pswitch_13
    const v0, 0x7f09034a

    goto :goto_0

    .line 1605
    :pswitch_14
    const v0, 0x7f09034b

    goto :goto_0

    .line 1607
    :pswitch_15
    const v0, 0x7f09034c

    goto :goto_0

    .line 1609
    :pswitch_16
    const v0, 0x7f09034d

    goto :goto_0

    .line 1611
    :pswitch_17
    const v0, 0x7f09034e

    goto :goto_0

    .line 1613
    :pswitch_18
    const v0, 0x7f09034f

    goto :goto_0

    .line 1615
    :pswitch_19
    const v0, 0x7f090350

    goto :goto_0

    .line 1617
    :pswitch_1a
    const v0, 0x7f090351

    goto :goto_0

    .line 1619
    :pswitch_1b
    const v0, 0x7f090352

    goto :goto_0

    .line 1621
    :pswitch_1c
    const v0, 0x7f090353

    goto :goto_0

    .line 1623
    :pswitch_1d
    const v0, 0x7f090354

    goto :goto_0

    .line 1625
    :pswitch_1e
    const v0, 0x7f090355

    goto :goto_0

    .line 1627
    :pswitch_1f
    const v0, 0x7f090356

    goto :goto_0

    .line 1629
    :pswitch_20
    const v0, 0x7f090357

    goto :goto_0

    .line 1631
    :pswitch_21
    const v0, 0x7f090358

    goto/16 :goto_0

    .line 1633
    :pswitch_22
    const v0, 0x7f090359

    goto/16 :goto_0

    .line 1635
    :pswitch_23
    const v0, 0x7f09035a

    goto/16 :goto_0

    .line 1637
    :pswitch_24
    const v0, 0x7f09035b

    goto/16 :goto_0

    .line 1639
    :pswitch_25
    const v0, 0x7f09035c

    goto/16 :goto_0

    .line 1641
    :pswitch_26
    const v0, 0x7f09035d

    goto/16 :goto_0

    .line 1643
    :pswitch_27
    const v0, 0x7f09035e

    goto/16 :goto_0

    .line 1645
    :pswitch_28
    const v0, 0x7f09035f

    goto/16 :goto_0

    .line 1647
    :pswitch_29
    const v0, 0x7f090360

    goto/16 :goto_0

    .line 1565
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mIsWatermarkTextLoaded:Z

    .line 1380
    return-void
.end method

.method public getChinaTemperature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mTemperature:Ljava/lang/String;

    # invokes: Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->getChinaNumString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6444\u6c0f\u5ea6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPM25()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PM2.5 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mPM25:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWeather()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    return-object v0
.end method

.method public loadWatermarkWeatherText(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 1415
    const-string v1, "WatermarkTextLoader"

    const-string v2, "updateWeatherInfo"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    iget-boolean v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mIsWatermarkTextLoaded:Z

    if-nez v1, :cond_1

    .line 1420
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1422
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 1423
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->MY_WEATHER_INFO_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 1424
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1425
    const-string v2, "COL_WEATHER_CONVERTED_ICON_NUM"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1426
    .local v8, "weatherIconNum":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->getWeatherString(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    .line 1427
    const-string v2, "COL_WEATHER_AQI_INDEX"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mPM25:Ljava/lang/String;

    .line 1428
    const-string v2, "COL_WEATHER_CURRENT_TEMP"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mTemperature:Ljava/lang/String;

    .line 1429
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mIsWatermarkTextLoaded:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1431
    .end local v8    # "weatherIconNum":I
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v9, :cond_2

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1440
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 1431
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v7

    .line 1432
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "WatermarkTextLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur IllegalArgumentException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1431
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1434
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v7

    .line 1435
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "WatermarkTextLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur SQLiteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 1423
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_3
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1431
    :catchall_0
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_1
    if-eqz v6, :cond_3

    if-eqz v2, :cond_4

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    :goto_2
    :try_start_7
    throw v1

    :catch_4
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v2, v9

    goto :goto_1
.end method

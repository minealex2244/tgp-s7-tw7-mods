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
    .line 1368
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->MY_WEATHER_INFO_URI:Landroid/net/Uri;

    .line 1369
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
    .line 1366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mIsWatermarkTextLoaded:Z

    .line 1372
    const-string v0, "16"

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mTemperature:Ljava/lang/String;

    .line 1373
    const-string v0, "\u6674"

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    .line 1374
    const-string v0, "230"

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mPM25:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$1;

    .prologue
    .line 1366
    invoke-direct {p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;

    .prologue
    .line 1366
    invoke-direct {p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->getTemperature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTemperature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1445
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

.method private getWeatherString(I)I
    .locals 3
    .param p1, "iconNum"    # I

    .prologue
    .line 1454
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

    .line 1455
    packed-switch p1, :pswitch_data_0

    .line 1503
    const v0, 0x7f09034e

    :goto_0
    return v0

    .line 1457
    :pswitch_0
    const v0, 0x7f090337

    goto :goto_0

    .line 1459
    :pswitch_1
    const v0, 0x7f090338

    goto :goto_0

    .line 1461
    :pswitch_2
    const v0, 0x7f090339

    goto :goto_0

    .line 1463
    :pswitch_3
    const v0, 0x7f09033a

    goto :goto_0

    .line 1465
    :pswitch_4
    const v0, 0x7f09033b

    goto :goto_0

    .line 1467
    :pswitch_5
    const v0, 0x7f09033c

    goto :goto_0

    .line 1469
    :pswitch_6
    const v0, 0x7f09033d

    goto :goto_0

    .line 1471
    :pswitch_7
    const v0, 0x7f09033e

    goto :goto_0

    .line 1473
    :pswitch_8
    const v0, 0x7f09033f

    goto :goto_0

    .line 1475
    :pswitch_9
    const v0, 0x7f090340

    goto :goto_0

    .line 1477
    :pswitch_a
    const v0, 0x7f090341

    goto :goto_0

    .line 1479
    :pswitch_b
    const v0, 0x7f090342

    goto :goto_0

    .line 1481
    :pswitch_c
    const v0, 0x7f090343

    goto :goto_0

    .line 1483
    :pswitch_d
    const v0, 0x7f090344

    goto :goto_0

    .line 1485
    :pswitch_e
    const v0, 0x7f090345

    goto :goto_0

    .line 1487
    :pswitch_f
    const v0, 0x7f090346

    goto :goto_0

    .line 1489
    :pswitch_10
    const v0, 0x7f090347

    goto :goto_0

    .line 1491
    :pswitch_11
    const v0, 0x7f090348

    goto :goto_0

    .line 1493
    :pswitch_12
    const v0, 0x7f090349

    goto :goto_0

    .line 1495
    :pswitch_13
    const v0, 0x7f09034a

    goto :goto_0

    .line 1497
    :pswitch_14
    const v0, 0x7f09034b

    goto :goto_0

    .line 1499
    :pswitch_15
    const v0, 0x7f09034c

    goto :goto_0

    .line 1501
    :pswitch_16
    const v0, 0x7f09034d

    goto :goto_0

    .line 1455
    nop

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
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mIsWatermarkTextLoaded:Z

    .line 1378
    return-void
.end method

.method public getChinaTemperature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mTemperature:Ljava/lang/String;

    # invokes: Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->getChinaNumString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->access$400(Ljava/lang/String;)Ljava/lang/String;

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
    .line 1395
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
    .line 1404
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    return-object v0
.end method

.method public loadWatermarkWeatherText(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 1413
    const-string v1, "WatermarkTextLoader"

    const-string v2, "updateWeatherInfo"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    iget-boolean v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mIsWatermarkTextLoaded:Z

    if-nez v1, :cond_1

    .line 1415
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mIsWatermarkTextLoaded:Z

    .line 1418
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1420
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 1421
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

    .line 1422
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1423
    const-string v2, "COL_WEATHER_CONVERTED_ICON_NUM"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1424
    .local v8, "weatherIconNum":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->getWeatherString(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mWeatherString:Ljava/lang/String;

    .line 1425
    const-string v2, "COL_WEATHER_AQI_INDEX"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mPM25:Ljava/lang/String;

    .line 1426
    const-string v2, "COL_WEATHER_CURRENT_TEMP"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkWeatherTextLoader;->mTemperature:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1428
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

    .line 1437
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 1428
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

    .line 1429
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

    .line 1430
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1428
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1431
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v7

    .line 1432
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

    .line 1433
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 1421
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_3
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1428
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

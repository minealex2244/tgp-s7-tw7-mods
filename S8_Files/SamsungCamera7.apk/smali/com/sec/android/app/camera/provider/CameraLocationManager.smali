.class public Lcom/sec/android/app/camera/provider/CameraLocationManager;
.super Ljava/lang/Object;
.source "CameraLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;
    }
.end annotation


# static fields
.field private static final LOCATION_DISTANCE:F = 100.0f

.field private static final LOCATION_INTERVAL:I = 0x3e8

.field private static final SEC_LOCATION_SERVICE:Ljava/lang/String; = "sec_location"

.field private static final TAG:Ljava/lang/String; = "CameraLocationManager"

.field private static mInstance:Lcom/sec/android/app/camera/provider/CameraLocationManager;


# instance fields
.field private mAddressValue:Ljava/lang/String;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mIsRequestLocation:Z

.field private final mLocationListeners:[Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mSLocation:Landroid/location/Location;

.field private mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

.field private mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 6
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    new-instance v1, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;-><init>(Lcom/sec/android/app/camera/provider/CameraLocationManager;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    const-string v3, "network"

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;-><init>(Lcom/sec/android/app/camera/provider/CameraLocationManager;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationListeners:[Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    .line 47
    iput-object v4, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    .line 48
    iput-object v4, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    .line 49
    iput-object v4, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

    .line 50
    iput-boolean v5, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mIsRequestLocation:Z

    .line 51
    iput-object v4, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSLocation:Landroid/location/Location;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/provider/CameraLocationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/provider/CameraLocationManager;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->startReceivingLocationUpdates()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/provider/CameraLocationManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/provider/CameraLocationManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/provider/CameraLocationManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/provider/CameraLocationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/provider/CameraLocationManager;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/provider/CameraLocationManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/provider/CameraLocationManager;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/provider/CameraLocationManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    .line 60
    return-void
.end method

.method public static getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;
    .locals 1
    .param p0, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;

    .prologue
    .line 63
    sget-object v0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/sec/android/app/camera/provider/CameraLocationManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    sput-object v0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    .line 66
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    return-object v0
.end method

.method private initializeLocationManager()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isSemLocationManagerSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sec_location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/location/SemLocationManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    .line 178
    :cond_1
    return-void
.end method

.method private startAddressRequest()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;-><init>(Lcom/sec/android/app/camera/provider/CameraLocationManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/location/SemLocationManager;->requestLocationUpdates(ZLcom/samsung/android/location/SemLocationListener;)I

    .line 213
    :cond_0
    return-void
.end method

.method private startReceivingLocationUpdates()V
    .locals 8

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->initializeLocationManager()V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isSemLocationManagerSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->startAddressRequest()V

    .line 236
    :goto_0
    return-void

    .line 222
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x42c80000    # 100.0f

    iget-object v5, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationListeners:[Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 229
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x42c80000    # 100.0f

    iget-object v5, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationListeners:[Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 230
    :catch_0
    move-exception v6

    .line 231
    .local v6, "ex":Ljava/lang/SecurityException;
    const-string v0, "CameraLocationManager"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 223
    .end local v6    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v6

    .line 224
    .restart local v6    # "ex":Ljava/lang/SecurityException;
    const-string v0, "CameraLocationManager"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 225
    .end local v6    # "ex":Ljava/lang/SecurityException;
    :catch_2
    move-exception v6

    .line 226
    .local v6, "ex":Ljava/lang/IllegalArgumentException;
    const-string v0, "CameraLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 232
    .end local v6    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v6

    .line 233
    .restart local v6    # "ex":Ljava/lang/IllegalArgumentException;
    const-string v0, "CameraLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAddressValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    .line 78
    iget-object v11, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v11

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGPS()I

    move-result v11

    if-nez v11, :cond_1

    move-object v7, v10

    .line 113
    :cond_0
    :goto_0
    return-object v7

    .line 82
    :cond_1
    const/4 v7, 0x0

    .line 85
    .local v7, "location":Landroid/location/Location;
    iget-object v11, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/app/camera/util/Util;->isSemLocationManagerSupported(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 86
    iget-object v11, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSLocation:Landroid/location/Location;

    if-eqz v11, :cond_2

    .line 87
    iget-object v7, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSLocation:Landroid/location/Location;

    .line 102
    :cond_2
    :goto_1
    if-eqz v7, :cond_7

    .line 103
    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 104
    .local v4, "lat":D
    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 105
    .local v8, "lon":D
    invoke-static {v4, v5, v12, v13}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {v8, v9, v12, v13}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v11

    if-nez v11, :cond_6

    :cond_3
    const/4 v0, 0x1

    .line 107
    .local v0, "hasLatLon":Z
    :goto_2
    if-nez v0, :cond_0

    move-object v7, v10

    .line 110
    goto :goto_0

    .line 90
    .end local v0    # "hasLatLon":Z
    .end local v4    # "lat":D
    .end local v8    # "lon":D
    :cond_4
    iget-object v11, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationListeners:[Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    array-length v3, v11

    .line 91
    .local v3, "length":I
    iget-object v6, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationListeners:[Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    .line 93
    .local v6, "localArray":[Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v3, :cond_2

    .line 94
    aget-object v11, v6, v1

    invoke-virtual {v11}, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->current()Landroid/location/Location;

    move-result-object v2

    .line 95
    .local v2, "l":Landroid/location/Location;
    if-eqz v2, :cond_5

    .line 96
    move-object v7, v2

    .line 97
    goto :goto_1

    .line 93
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 105
    .end local v1    # "i":I
    .end local v2    # "l":Landroid/location/Location;
    .end local v3    # "length":I
    .end local v6    # "localArray":[Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;
    .restart local v4    # "lat":D
    .restart local v8    # "lon":D
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .end local v4    # "lat":D
    .end local v8    # "lon":D
    :cond_7
    move-object v7, v10

    .line 113
    goto :goto_0
.end method

.method public isGPSProviderEnabled()Z
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->initializeLocationManager()V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNetworkLocationProviderEnabled()Z
    .locals 2

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->initializeLocationManager()V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setLocationRequest()V
    .locals 2

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mIsRequestLocation:Z

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "CameraLocationManager"

    const-string v1, "Location requested already."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/provider/CameraLocationManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager$1;-><init>(Lcom/sec/android/app/camera/provider/CameraLocationManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mIsRequestLocation:Z

    goto :goto_0
.end method

.method public stopReceivingLocationUpdates()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 143
    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isSemLocationManagerSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    iget-object v4, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

    invoke-virtual {v2, v4}, Lcom/samsung/android/location/SemLocationManager;->removeLocationUpdates(Lcom/samsung/android/location/SemLocationListener;)I

    .line 146
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    .line 147
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSLocation:Landroid/location/Location;

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_2

    .line 151
    iget-object v4, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationListeners:[Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v1, v4, v2

    .line 153
    .local v1, "locationListener":Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 154
    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 166
    .end local v1    # "locationListener":Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;
    :goto_1
    return-void

    .line 157
    .restart local v1    # "locationListener":Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v6, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 158
    invoke-virtual {v1}, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "ex":Ljava/lang/Exception;
    const-string v6, "CameraLocationManager"

    const-string v7, "fail to remove location listeners, ignore"

    invoke-static {v6, v7, v0}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 165
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "locationListener":Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;
    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mIsRequestLocation:Z

    goto :goto_1
.end method

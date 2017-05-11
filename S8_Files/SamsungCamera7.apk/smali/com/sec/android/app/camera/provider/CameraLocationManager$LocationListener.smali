.class Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;
.super Ljava/lang/Object;
.source "CameraLocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/provider/CameraLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mValidOfGPS:I

.field mValidOfNetwork:I

.field final synthetic this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/provider/CameraLocationManager;Ljava/lang/String;)V
    .locals 1
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 244
    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfGPS:I

    .line 242
    iput v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfNetwork:I

    .line 245
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 246
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 249
    iget v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfGPS:I

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfNetwork:I

    if-ne v3, v4, :cond_1

    :goto_1
    or-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .param p1, "newLocation"    # Landroid/location/Location;

    .prologue
    const/4 v4, 0x2

    const-wide/16 v2, 0x0

    .line 254
    const-string v0, "CameraLocationManager"

    const-string v1, "onLocationChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 262
    :cond_0
    const-string v0, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    iput v4, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfGPS:I

    .line 267
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_0

    .line 264
    :cond_2
    const-string v0, "network"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iput v4, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfNetwork:I

    goto :goto_1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 272
    const-string v0, "CameraLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderDisabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    iput v3, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfGPS:I

    .line 278
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->isNetworkLocationProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->reset()V

    .line 281
    :cond_1
    return-void

    .line 275
    :cond_2
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iput v3, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfNetwork:I

    goto :goto_0
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 285
    const-string v0, "CameraLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 290
    const-string v0, "CameraLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged - status["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] - provider["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    # getter for: Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->access$300(Lcom/sec/android/app/camera/provider/CameraLocationManager;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    iput p2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfGPS:I

    .line 297
    :cond_2
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iput p2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfNetwork:I

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 303
    iput v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfGPS:I

    .line 304
    iput v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfNetwork:I

    .line 305
    return-void
.end method

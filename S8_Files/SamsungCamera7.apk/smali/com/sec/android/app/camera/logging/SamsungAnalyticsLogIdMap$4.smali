.class final Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$4;
.super Landroid/util/SparseArray;
.source "SamsungAnalyticsLogIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 600
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 602
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->CONFIRM_RESET:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "6103"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$4;->put(ILjava/lang/Object;)V

    .line 603
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->LOCATION_TAG_GUIDE_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "6113"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$4;->put(ILjava/lang/Object;)V

    .line 604
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->LOCATION_TAG_GUIDE_CHINA_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "6113"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$4;->put(ILjava/lang/Object;)V

    .line 605
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->SECURE_LOCK_IN_CONTACT_US:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "6105"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$4;->put(ILjava/lang/Object;)V

    .line 606
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->SECURE_LOCK_IN_DOWNLOAD_EFFECT:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "5091"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$4;->put(ILjava/lang/Object;)V

    .line 607
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->SECURE_LOCK_IN_DOWNLOAD_SHOOTINGMODE:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "1291"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$4;->put(ILjava/lang/Object;)V

    .line 608
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->TALK_BACK_GUIDE:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "1903"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$4;->put(ILjava/lang/Object;)V

    .line 609
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->SECURE_LOCK_IN_SHOOTINGMODE_SEPARATED:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "1906"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$4;->put(ILjava/lang/Object;)V

    .line 610
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->SHOOTING_MODE_INVALID_DEVICE_VERSION:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "1231"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$4;->put(ILjava/lang/Object;)V

    .line 611
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->SHOOTING_MODE_INVALID_VERSION:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "1233"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$4;->put(ILjava/lang/Object;)V

    .line 612
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->WATERMARK_NETWORK_PERMISSION_DLG:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "9023"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$4;->put(ILjava/lang/Object;)V

    .line 613
    return-void
.end method

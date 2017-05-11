.class public Lcom/sec/android/app/camera/util/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# static fields
.field public static final CANNOT_STAT_ERROR:I = -0x2

.field public static final LOW_STORAGE_THRESHOLD:J = 0x6400000L

.field public static final LOW_STORAGE_THRESHOLD_FOR_RECORDING:J = 0x1400000L

.field public static final STORAGE_STATUS_LOW:I = 0x2

.field public static final STORAGE_STATUS_NONE:I = 0x3

.field public static final STORAGE_STATUS_NOT_INITIALIZED:I = 0x0

.field public static final STORAGE_STATUS_OK:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "StorageUtils"

.field private static mSDStorageStatus:I

.field private static mSDStorageVolume:Landroid/os/storage/StorageVolume;

.field private static mStorageManager:Landroid/os/storage/StorageManager;

.field private static mStorageStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    sput v0, Lcom/sec/android/app/camera/util/StorageUtils;->mStorageStatus:I

    .line 51
    sput v0, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageStatus:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static getAvailableStorage(I)J
    .locals 10
    .param p0, "storage"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 70
    const/4 v6, 0x1

    if-ne p0, v6, :cond_0

    .line 71
    :try_start_0
    sget-object v6, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->semGetPath()Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "storageDirectory":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v8

    mul-long/2addr v6, v8

    const-wide/32 v8, 0x6400000

    sub-long v2, v6, v8

    .line 77
    .local v2, "remainStorage":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_1

    .line 78
    const/4 v4, 0x2

    .line 82
    .local v4, "status":I
    :goto_1
    invoke-static {p0, v4}, Lcom/sec/android/app/camera/util/StorageUtils;->setStorageStatus(II)V

    .line 90
    .end local v1    # "stat":Landroid/os/StatFs;
    .end local v2    # "remainStorage":J
    .end local v4    # "status":I
    .end local v5    # "storageDirectory":Ljava/lang/String;
    :goto_2
    return-wide v2

    .line 73
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .restart local v5    # "storageDirectory":Ljava/lang/String;
    goto :goto_0

    .line 80
    .restart local v1    # "stat":Landroid/os/StatFs;
    .restart local v2    # "remainStorage":J
    :cond_1
    const/4 v4, 0x1

    .restart local v4    # "status":I
    goto :goto_1

    .line 84
    .end local v1    # "stat":Landroid/os/StatFs;
    .end local v2    # "remainStorage":J
    .end local v4    # "status":I
    .end local v5    # "storageDirectory":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v6, "StorageUtils"

    const-string v7, "cannot stat the filesystem then we don\'t know how many free bytes exist"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v6, 0x3

    invoke-static {p0, v6}, Lcom/sec/android/app/camera/util/StorageUtils;->setStorageStatus(II)V

    .line 90
    const-wide/16 v2, -0x2

    goto :goto_2
.end method

.method public static getCachedStorageStatus(I)I
    .locals 4
    .param p0, "storage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 107
    if-nez p0, :cond_0

    .line 108
    sget v0, Lcom/sec/android/app/camera/util/StorageUtils;->mStorageStatus:I

    .line 115
    .local v0, "storageStatus":I
    :goto_0
    if-nez v0, :cond_2

    .line 116
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid storage status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    .end local v0    # "storageStatus":I
    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 110
    sget v0, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageStatus:I

    .restart local v0    # "storageStatus":I
    goto :goto_0

    .line 112
    .end local v0    # "storageStatus":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid storage ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    .restart local v0    # "storageStatus":I
    :cond_2
    return v0
.end method

.method public static getExternalSDStoragePath()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 128
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->MICRO_SD_SLOT:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->semGetPath()Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxSizeOfImage(II)J
    .locals 10
    .param p0, "resolution"    # I
    .param p1, "quality"    # I

    .prologue
    const-wide/16 v8, 0x50

    const-wide/16 v6, 0x1194

    const-wide/16 v4, 0x400

    .line 152
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 153
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    div-long/2addr v0, v6

    mul-long/2addr v0, v4

    .line 159
    :goto_0
    return-wide v0

    .line 154
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 155
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    div-long/2addr v0, v6

    const-wide/16 v2, 0x78

    mul-long/2addr v0, v2

    div-long/2addr v0, v8

    mul-long/2addr v0, v4

    goto :goto_0

    .line 156
    :cond_1
    if-nez p1, :cond_2

    .line 157
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    div-long/2addr v0, v6

    const-wide/16 v2, 0x96

    mul-long/2addr v0, v2

    div-long/2addr v0, v8

    mul-long/2addr v0, v4

    goto :goto_0

    .line 158
    :cond_2
    const-string v0, "StorageUtils"

    const-string v1, "Resolution or Quality setting maybe wrong"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-wide/32 v0, 0x100000

    goto :goto_0
.end method

.method public static getRemainCount(III)I
    .locals 4
    .param p0, "storage"    # I
    .param p1, "resolution"    # I
    .param p2, "quality"    # I

    .prologue
    .line 171
    invoke-static {p0}, Lcom/sec/android/app/camera/util/StorageUtils;->getAvailableStorage(I)J

    move-result-wide v0

    .line 173
    .local v0, "lAvailableStorage":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 174
    const/4 v2, 0x0

    .line 176
    :goto_0
    return v2

    :cond_0
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/StorageUtils;->getMaxSizeOfImage(II)J

    move-result-wide v2

    div-long v2, v0, v2

    long-to-int v2, v2

    goto :goto_0
.end method

.method public static getRemainTime(II)I
    .locals 4
    .param p0, "storage"    # I
    .param p1, "bitrate"    # I

    .prologue
    .line 187
    invoke-static {p0}, Lcom/sec/android/app/camera/util/StorageUtils;->getAvailableStorage(I)J

    move-result-wide v0

    .line 189
    .local v0, "lAvailableStorage":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 190
    const/4 v2, 0x0

    .line 192
    :goto_0
    return v2

    :cond_0
    div-int/lit8 v2, p1, 0x8

    int-to-long v2, v2

    div-long v2, v0, v2

    long-to-int v2, v2

    goto :goto_0
.end method

.method public static getUpdatedStorageStatus(I)I
    .locals 1
    .param p0, "storage"    # I

    .prologue
    .line 204
    invoke-static {p0}, Lcom/sec/android/app/camera/util/StorageUtils;->getAvailableStorage(I)J

    .line 205
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget v0, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageStatus:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/sec/android/app/camera/util/StorageUtils;->mStorageStatus:I

    goto :goto_0
.end method

.method public static isExternalSDStorageMounted()Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 215
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->MICRO_SD_SLOT:Z

    if-nez v2, :cond_1

    .line 230
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_0
    return v1

    .line 218
    .end local v0    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    sget-object v2, Lcom/sec/android/app/camera/util/StorageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v2, :cond_2

    .line 219
    const-string v2, "StorageUtils"

    const-string v3, "isExternalSDStorageMounted : mStorageManager is null"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :cond_2
    sget-object v2, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->semGetPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 223
    :cond_3
    const-string v2, "StorageUtils"

    const-string v3, "isExternalSDStorageMounted : mSDStorageVolume.getPath() is null"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    :cond_4
    sget-object v2, Lcom/sec/android/app/camera/util/StorageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->semGetPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 227
    .restart local v0    # "volume":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static setExternalSDStorageVolume(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 243
    const-string v2, "storage"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    sput-object v2, Lcom/sec/android/app/camera/util/StorageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 244
    sget-object v2, Lcom/sec/android/app/camera/util/StorageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v2, :cond_1

    .line 245
    sget-object v2, Lcom/sec/android/app/camera/util/StorageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v1

    .line 246
    .local v1, "storageVolumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 247
    .local v0, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->semGetSubSystem()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    sput-object v0, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    goto :goto_0

    .line 252
    .end local v0    # "storageVolume":Landroid/os/storage/StorageVolume;
    .end local v1    # "storageVolumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    :cond_1
    const-string v2, "StorageUtils"

    const-string v3, "cannot create mStorageManager"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_2
    return-void
.end method

.method private static setStorageStatus(II)V
    .locals 1
    .param p0, "storage"    # I
    .param p1, "status"    # I

    .prologue
    .line 263
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 264
    sput p1, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageStatus:I

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    sput p1, Lcom/sec/android/app/camera/util/StorageUtils;->mStorageStatus:I

    goto :goto_0
.end method

.class public Lcom/sec/android/app/camera/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final ASPECT_RATIO_TOLERANCE:D = 0.001

.field public static final DEBUG:Z

.field private static DEFAULT_PADDING:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "Util"

.field private static mDefaultDeviceOrientation:I

.field private static mIsSystemSoundMute:Z

.field private static mRingerMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/camera/util/Util;->DEBUG:Z

    .line 122
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/camera/util/Util;->mDefaultDeviceOrientation:I

    .line 123
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/sec/android/app/camera/util/Util;->DEFAULT_PADDING:F

    .line 124
    sput-boolean v1, Lcom/sec/android/app/camera/util/Util;->mIsSystemSoundMute:Z

    .line 125
    sput v1, Lcom/sec/android/app/camera/util/Util;->mRingerMode:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    return-void
.end method

.method public static broadcastAppInApp(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.stop.app-in-app"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "stopAppInAppIntent":Landroid/content/Intent;
    const-string v1, "stopFrom"

    const-string v2, "Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    sget-object v1, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 138
    return-void
.end method

.method public static broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v0, "featureIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 144
    const-string v1, "com.samsung.android.providers.context"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method public static broadcastMultipleGeneralEventForLogging(Landroid/content/Context;[Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cvs"    # [Landroid/content/ContentValues;

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 150
    .local v0, "featureIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 152
    const-string v1, "com.samsung.android.providers.context"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    return-void
.end method

.method public static broadcastMultipleStatusForLogging(Landroid/content/Context;[Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cvs"    # [Landroid/content/ContentValues;

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v0, "featureIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.providers.context.log.action.REPORT_MULTI_APP_STATUS_SURVEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 160
    const-string v1, "com.samsung.android.providers.context"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method public static byteArrayToInt([BI)I
    .locals 5
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v3, 0x0

    .line 175
    .local v3, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v0, v4, :cond_1

    .line 176
    mul-int/lit8 v1, v0, 0x8

    .line 177
    .local v1, "shift":I
    add-int v4, v0, p1

    aget-byte v2, p0, v4

    .line 178
    .local v2, "tmp":I
    if-gez v2, :cond_0

    .line 179
    add-int/lit16 v2, v2, 0x100

    .line 180
    :cond_0
    and-int/lit16 v4, v2, 0xff

    shl-int/2addr v4, v1

    add-int/2addr v3, v4

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    .end local v1    # "shift":I
    .end local v2    # "tmp":I
    :cond_1
    return v3
.end method

.method public static calculateOrientation(IZ)I
    .locals 4
    .param p0, "orientation"    # I
    .param p1, "isFlip"    # Z

    .prologue
    .line 186
    move v0, p0

    .line 187
    .local v0, "rotation":I
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Front orientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/16 v1, 0x5a

    if-eq p0, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p0, v1, :cond_1

    .line 189
    :cond_0
    if-eqz p1, :cond_2

    .line 190
    rem-int/lit16 v0, p0, 0x168

    .line 191
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Front rotation2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_1
    :goto_0
    return v0

    .line 193
    :cond_2
    add-int/lit16 v1, p0, 0xb4

    rem-int/lit16 v0, v1, 0x168

    .line 194
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Front rotation3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static changeBooleanToInt(Ljava/lang/Boolean;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 201
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static changeGraphicConfig()V
    .locals 9

    .prologue
    .line 206
    const-string v3, "1"

    .line 207
    .local v3, "value":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v4, "/sys/class/graphics/fb0/csc_cfg"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v2, "mGraphicConfig":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .local v1, "fOut":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 209
    :try_start_1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v1, v4, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 210
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 211
    if-eqz v1, :cond_0

    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 218
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 211
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    :try_start_3
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 212
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v4, "Util"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeGraphicConfig : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 213
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 214
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Util"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeGraphicConfig : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 211
    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v5, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_2
    :goto_2
    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 215
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Util"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeGraphicConfig : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v6

    :try_start_8
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method public static changeIntToBoolean(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 221
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 231
    if-le p0, p2, :cond_0

    .line 235
    .end local p2    # "max":I
    :goto_0
    return p2

    .line 233
    .restart local p2    # "max":I
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 234
    goto :goto_0

    :cond_1
    move p2, p0

    .line 235
    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 239
    if-nez p0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 242
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static convertExifOrientationToMediaOrientation(I)I
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 249
    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    .line 250
    const/16 v0, 0x5a

    .line 256
    :goto_0
    return v0

    .line 251
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 252
    const/16 v0, 0xb4

    goto :goto_0

    .line 253
    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    .line 254
    const/16 v0, 0x10e

    goto :goto_0

    .line 256
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static convertOriginFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 260
    const/4 v9, 0x0

    .line 261
    .local v9, "result":Ljava/lang/String;
    if-eqz p0, :cond_8

    const-string v13, "storage/emulated"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 262
    const-string v13, "storage/emulated"

    const-string v14, "data/media"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 263
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v8, "directory":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_7

    .line 268
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    .local v1, "camera":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 271
    .local v4, "dcim":Ljava/io/File;
    if-nez v4, :cond_0

    .line 272
    const-string v13, "Util"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fail to get parent file of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v13, 0x0

    .line 322
    .end local v1    # "camera":Ljava/io/File;
    .end local v4    # "dcim":Ljava/io/File;
    .end local v8    # "directory":Ljava/io/File;
    :goto_0
    return-object v13

    .line 276
    .restart local v1    # "camera":Ljava/io/File;
    .restart local v4    # "dcim":Ljava/io/File;
    .restart local v8    # "directory":Ljava/io/File;
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    .line 277
    .local v10, "root":Ljava/io/File;
    if-nez v10, :cond_1

    .line 278
    const-string v13, "Util"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fail to get parent file of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v13, 0x0

    goto :goto_0

    .line 282
    :cond_1
    const/4 v2, 0x0

    .line 283
    .local v2, "cameraString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 285
    .local v6, "dcimString":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 286
    .local v12, "root_files":[Ljava/io/File;
    if-nez v12, :cond_2

    .line 287
    const-string v13, "Util"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fail to get file list of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v13, 0x0

    goto :goto_0

    .line 291
    :cond_2
    array-length v14, v12

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_3

    aget-object v11, v12, v13

    .line 292
    .local v11, "rootFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 293
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "DCIM"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_4

    .line 294
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 300
    .end local v11    # "rootFile":Ljava/io/File;
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 301
    .local v7, "dcim_files":[Ljava/io/File;
    if-nez v7, :cond_5

    .line 302
    const-string v13, "Util"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fail to get file list of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 291
    .end local v7    # "dcim_files":[Ljava/io/File;
    .restart local v11    # "rootFile":Ljava/io/File;
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 306
    .end local v11    # "rootFile":Ljava/io/File;
    .restart local v7    # "dcim_files":[Ljava/io/File;
    :cond_5
    array-length v14, v7

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v14, :cond_6

    aget-object v5, v7, v13

    .line 307
    .local v5, "dcimFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 308
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "Camera"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_9

    .line 309
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 315
    .end local v5    # "dcimFile":Ljava/io/File;
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v6, :cond_7

    .line 316
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, "convString":Ljava/lang/String;
    const-string v13, "storage/emulated"

    const-string v14, "data/media"

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 320
    .end local v1    # "camera":Ljava/io/File;
    .end local v2    # "cameraString":Ljava/lang/String;
    .end local v3    # "convString":Ljava/lang/String;
    .end local v4    # "dcim":Ljava/io/File;
    .end local v6    # "dcimString":Ljava/lang/String;
    .end local v7    # "dcim_files":[Ljava/io/File;
    .end local v10    # "root":Ljava/io/File;
    .end local v12    # "root_files":[Ljava/io/File;
    :cond_7
    const-string v13, "Util"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Convert filepath: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " -> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8    # "directory":Ljava/io/File;
    :cond_8
    move-object v13, v9

    .line 322
    goto/16 :goto_0

    .line 306
    .restart local v1    # "camera":Ljava/io/File;
    .restart local v2    # "cameraString":Ljava/lang/String;
    .restart local v4    # "dcim":Ljava/io/File;
    .restart local v5    # "dcimFile":Ljava/io/File;
    .restart local v6    # "dcimString":Ljava/lang/String;
    .restart local v7    # "dcim_files":[Ljava/io/File;
    .restart local v8    # "directory":Ljava/io/File;
    .restart local v10    # "root":Ljava/io/File;
    .restart local v12    # "root_files":[Ljava/io/File;
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_2
.end method

.method public static convertToExifInterfaceOrientation(I)I
    .locals 2
    .param p0, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 326
    const/16 v1, 0x5a

    if-ne p0, v1, :cond_1

    .line 327
    const/4 v0, 0x6

    .line 335
    :cond_0
    :goto_0
    return v0

    .line 328
    :cond_1
    const/16 v1, 0xb4

    if-ne p0, v1, :cond_2

    .line 329
    const/4 v0, 0x3

    goto :goto_0

    .line 330
    :cond_2
    const/16 v1, 0x10e

    if-ne p0, v1, :cond_3

    .line 331
    const/16 v0, 0x8

    goto :goto_0

    .line 332
    :cond_3
    const/16 v1, 0x168

    if-eq p0, v1, :cond_0

    if-nez p0, :cond_0

    goto :goto_0
.end method

.method public static convertVirtualFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v1, "data/media"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    const-string v1, "data/media"

    const-string v2, "storage/emulated"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 342
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Convert filepath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    return-object v0
.end method

.method public static decodeExtendedRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "data"    # [B
    .param p1, "outRotation"    # [Ljava/lang/Integer;

    .prologue
    .line 357
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    array-length v14, v0

    const/16 v15, 0x20

    if-ge v14, v15, :cond_2

    .line 358
    :cond_0
    const-string v14, "Util"

    const-string v15, "Util.decodeExtendedRgbaBitmap: Received null or invalid data"

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v2, 0x0

    .line 462
    :cond_1
    :goto_0
    return-object v2

    .line 363
    :cond_2
    const/4 v14, 0x0

    aget-byte v14, p0, v14

    const/16 v15, 0x52

    if-ne v14, v15, :cond_3

    const/4 v14, 0x1

    aget-byte v14, p0, v14

    const/16 v15, 0x47

    if-ne v14, v15, :cond_3

    const/4 v14, 0x2

    aget-byte v14, p0, v14

    const/16 v15, 0x42

    if-ne v14, v15, :cond_3

    const/4 v14, 0x3

    aget-byte v14, p0, v14

    const/16 v15, 0x41

    if-eq v14, v15, :cond_4

    .line 364
    :cond_3
    const-string v14, "Util"

    const-string v15, "Util.decodeExtendedRgbaBitmap: Data is invalid (RGBA tag not found)"

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v2, 0x0

    goto :goto_0

    .line 368
    :cond_4
    const/4 v13, 0x0

    .line 369
    .local v13, "width":I
    const/4 v6, 0x0

    .line 370
    .local v6, "height":I
    const/4 v10, 0x0

    .line 373
    .local v10, "rotation":I
    const/4 v14, 0x4

    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v13

    .line 374
    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v6

    .line 375
    const/16 v14, 0x14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 382
    move-object/from16 v0, p0

    array-length v14, v0

    mul-int v15, v13, v6

    mul-int/lit8 v15, v15, 0x4

    add-int/lit8 v15, v15, 0x20

    if-ge v14, v15, :cond_5

    .line 383
    const-string v14, "Util"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Util.decodeExtendedRgbaBitmap: The buffer is too small to contain a image of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v2, 0x0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v5

    .line 378
    .local v5, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v14, "Util"

    const-string v15, "Util.decodeExtendedRgbaBitmap: Could not parse panorama bitmap header"

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v2, 0x0

    goto :goto_0

    .line 389
    .end local v5    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_5
    :try_start_1
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v6, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 398
    .local v2, "bmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x20

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 399
    .local v1, "bbuf":Ljava/nio/ByteBuffer;
    const/16 v14, 0x20

    move-object/from16 v0, p0

    array-length v15, v0

    add-int/lit8 v15, v15, -0x20

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v14, v15}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 400
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 401
    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 402
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 404
    move v9, v13

    .line 405
    .local v9, "realWidth":I
    move v8, v6

    .line 407
    .local v8, "realHeight":I
    if-eqz v10, :cond_7

    .line 409
    const/4 v11, 0x0

    .line 410
    .local v11, "transX":I
    const/4 v12, 0x0

    .line 412
    .local v12, "transY":I
    :goto_1
    if-gez v10, :cond_6

    .line 413
    add-int/lit16 v10, v10, 0x168

    goto :goto_1

    .line 390
    .end local v1    # "bbuf":Ljava/nio/ByteBuffer;
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "realHeight":I
    .end local v9    # "realWidth":I
    .end local v11    # "transX":I
    .end local v12    # "transY":I
    :catch_1
    move-exception v7

    .line 391
    .local v7, "oom":Ljava/lang/OutOfMemoryError;
    const-string v14, "Util"

    const-string v15, "Util.decodeExtendedRgbaBitmap: Out of memory [1]"

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 415
    .end local v7    # "oom":Ljava/lang/OutOfMemoryError;
    .restart local v1    # "bbuf":Ljava/nio/ByteBuffer;
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    .restart local v8    # "realHeight":I
    .restart local v9    # "realWidth":I
    .restart local v11    # "transX":I
    .restart local v12    # "transY":I
    :cond_6
    rem-int/lit16 v14, v10, 0x168

    const/16 v15, 0x5a

    if-ne v14, v15, :cond_8

    .line 416
    move v9, v6

    .line 417
    move v8, v13

    .line 418
    const/16 v10, -0x5a

    .line 419
    const/4 v11, 0x0

    .line 420
    move v12, v13

    .line 439
    :goto_2
    :try_start_2
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 447
    .local v4, "cvBmp":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 448
    .local v3, "cv":Landroid/graphics/Canvas;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 449
    int-to-float v14, v11

    int-to-float v15, v12

    invoke-virtual {v3, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 450
    int-to-float v14, v10

    invoke-virtual {v3, v14}, Landroid/graphics/Canvas;->rotate(F)V

    .line 451
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v2, v14, v15, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 452
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 454
    const/4 v2, 0x0

    .line 455
    move-object v2, v4

    .line 458
    .end local v3    # "cv":Landroid/graphics/Canvas;
    .end local v4    # "cvBmp":Landroid/graphics/Bitmap;
    .end local v11    # "transX":I
    .end local v12    # "transY":I
    :cond_7
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_1

    .line 459
    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, p1, v14

    goto/16 :goto_0

    .line 421
    .restart local v11    # "transX":I
    .restart local v12    # "transY":I
    :cond_8
    rem-int/lit16 v14, v10, 0x168

    const/16 v15, 0xb4

    if-ne v14, v15, :cond_9

    .line 422
    const/16 v10, 0xb4

    .line 423
    move v11, v13

    .line 424
    move v12, v6

    goto :goto_2

    .line 425
    :cond_9
    rem-int/lit16 v14, v10, 0x168

    const/16 v15, 0x10e

    if-ne v14, v15, :cond_a

    .line 426
    move v9, v6

    .line 427
    move v8, v13

    .line 428
    const/16 v10, 0x5a

    .line 429
    move v11, v6

    .line 430
    const/4 v12, 0x0

    goto :goto_2

    .line 432
    :cond_a
    const-string v14, "Util"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Util.decodeExtendedRgbaBitmap: Rotation flag is invalid ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "). Discarded thumbnail."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v2, 0x0

    .line 434
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 440
    :catch_2
    move-exception v7

    .line 441
    .restart local v7    # "oom":Ljava/lang/OutOfMemoryError;
    const-string v14, "Util"

    const-string v15, "Util.decodeExtendedRgbaBitmap: Out of memory [2]"

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v2, 0x0

    .line 443
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static decodeRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "data"    # [B
    .param p1, "outRotation"    # [Ljava/lang/Integer;

    .prologue
    .line 475
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    array-length v14, v0

    const/16 v15, 0x10

    if-ge v14, v15, :cond_2

    .line 476
    :cond_0
    const-string v14, "Util"

    const-string v15, "Util.decodeRgbaBitmap: Received null or invalid data"

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v2, 0x0

    .line 576
    :cond_1
    :goto_0
    return-object v2

    .line 481
    :cond_2
    const/4 v14, 0x0

    aget-byte v14, p0, v14

    const/16 v15, 0x52

    if-ne v14, v15, :cond_3

    const/4 v14, 0x1

    aget-byte v14, p0, v14

    const/16 v15, 0x47

    if-ne v14, v15, :cond_3

    const/4 v14, 0x2

    aget-byte v14, p0, v14

    const/16 v15, 0x42

    if-ne v14, v15, :cond_3

    const/4 v14, 0x3

    aget-byte v14, p0, v14

    const/16 v15, 0x41

    if-eq v14, v15, :cond_4

    .line 482
    :cond_3
    const-string v14, "Util"

    const-string v15, "Util.decodeRgbaBitmap: Data is invalid (RGBA tag not found)"

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v2, 0x0

    goto :goto_0

    .line 488
    :cond_4
    const/4 v14, 0x4

    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v13

    .line 489
    .local v13, "width":I
    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v6

    .line 490
    .local v6, "height":I
    const/16 v14, 0xc

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 496
    .local v10, "rotation":I
    move-object/from16 v0, p0

    array-length v14, v0

    mul-int v15, v13, v6

    mul-int/lit8 v15, v15, 0x4

    add-int/lit8 v15, v15, 0x10

    if-ge v14, v15, :cond_5

    .line 497
    const-string v14, "Util"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Util.decodeRgbaBitmap: The buffer is too small to contain a image of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v2, 0x0

    goto :goto_0

    .line 491
    .end local v6    # "height":I
    .end local v10    # "rotation":I
    .end local v13    # "width":I
    :catch_0
    move-exception v5

    .line 492
    .local v5, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v14, "Util"

    const-string v15, "Util.decodeRgbaBitmap: Could not parse panorama bitmap header"

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v2, 0x0

    goto :goto_0

    .line 503
    .end local v5    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v6    # "height":I
    .restart local v10    # "rotation":I
    .restart local v13    # "width":I
    :cond_5
    :try_start_1
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v6, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 512
    .local v2, "bmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x10

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 513
    .local v1, "bbuf":Ljava/nio/ByteBuffer;
    const/16 v14, 0x10

    move-object/from16 v0, p0

    array-length v15, v0

    add-int/lit8 v15, v15, -0x10

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v14, v15}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 514
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 515
    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 516
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 518
    move v9, v13

    .line 519
    .local v9, "realWidth":I
    move v8, v6

    .line 521
    .local v8, "realHeight":I
    if-eqz v10, :cond_7

    .line 523
    const/4 v11, 0x0

    .line 524
    .local v11, "transX":I
    const/4 v12, 0x0

    .line 526
    .local v12, "transY":I
    :goto_1
    if-gez v10, :cond_6

    .line 527
    add-int/lit16 v10, v10, 0x168

    goto :goto_1

    .line 504
    .end local v1    # "bbuf":Ljava/nio/ByteBuffer;
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "realHeight":I
    .end local v9    # "realWidth":I
    .end local v11    # "transX":I
    .end local v12    # "transY":I
    :catch_1
    move-exception v7

    .line 505
    .local v7, "oom":Ljava/lang/OutOfMemoryError;
    const-string v14, "Util"

    const-string v15, "Util.decodeRgbaBitmap: Out of memory [1]"

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 529
    .end local v7    # "oom":Ljava/lang/OutOfMemoryError;
    .restart local v1    # "bbuf":Ljava/nio/ByteBuffer;
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    .restart local v8    # "realHeight":I
    .restart local v9    # "realWidth":I
    .restart local v11    # "transX":I
    .restart local v12    # "transY":I
    :cond_6
    rem-int/lit16 v14, v10, 0x168

    const/16 v15, 0x5a

    if-ne v14, v15, :cond_8

    .line 530
    move v9, v6

    .line 531
    move v8, v13

    .line 532
    const/16 v10, -0x5a

    .line 533
    const/4 v11, 0x0

    .line 534
    move v12, v13

    .line 553
    :goto_2
    :try_start_2
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 561
    .local v4, "cvBmp":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 562
    .local v3, "cv":Landroid/graphics/Canvas;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 563
    int-to-float v14, v11

    int-to-float v15, v12

    invoke-virtual {v3, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 564
    int-to-float v14, v10

    invoke-virtual {v3, v14}, Landroid/graphics/Canvas;->rotate(F)V

    .line 565
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v2, v14, v15, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 566
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 568
    const/4 v2, 0x0

    .line 569
    move-object v2, v4

    .line 572
    .end local v3    # "cv":Landroid/graphics/Canvas;
    .end local v4    # "cvBmp":Landroid/graphics/Bitmap;
    .end local v11    # "transX":I
    .end local v12    # "transY":I
    :cond_7
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_1

    .line 573
    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, p1, v14

    goto/16 :goto_0

    .line 535
    .restart local v11    # "transX":I
    .restart local v12    # "transY":I
    :cond_8
    rem-int/lit16 v14, v10, 0x168

    const/16 v15, 0xb4

    if-ne v14, v15, :cond_9

    .line 536
    const/16 v10, 0xb4

    .line 537
    move v11, v13

    .line 538
    move v12, v6

    goto :goto_2

    .line 539
    :cond_9
    rem-int/lit16 v14, v10, 0x168

    const/16 v15, 0x10e

    if-ne v14, v15, :cond_a

    .line 540
    move v9, v6

    .line 541
    move v8, v13

    .line 542
    const/16 v10, 0x5a

    .line 543
    move v11, v6

    .line 544
    const/4 v12, 0x0

    goto :goto_2

    .line 546
    :cond_a
    const-string v14, "Util"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Util.decodeRgbaBitmap: Rotation flag is invalid ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "). Discarded thumbnail."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/4 v2, 0x0

    .line 548
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 554
    :catch_2
    move-exception v7

    .line 555
    .restart local v7    # "oom":Ljava/lang/OutOfMemoryError;
    const-string v14, "Util"

    const-string v15, "Util.decodeRgbaBitmap: Out of memory [2]"

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v2, 0x0

    .line 557
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static deleteDirectory(Ljava/lang/String;)Z
    .locals 7
    .param p0, "dirPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 586
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 587
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 588
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, "children":[Ljava/lang/String;
    if-nez v0, :cond_1

    move v3, v4

    .line 598
    .end local v0    # "children":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 592
    .restart local v0    # "children":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    .line 593
    .local v3, "result":Z
    array-length v5, v0

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 594
    .local v2, "file":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    and-int/2addr v3, v6

    .line 593
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "children":[Ljava/lang/String;
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "result":Z
    :cond_2
    move v3, v4

    .line 598
    goto :goto_0
.end method

.method public static disableAlertSound(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 604
    const-string v1, "sem_statusbar"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    .line 605
    .local v0, "statusBar":Landroid/app/SemStatusBarManager;
    if-eqz v0, :cond_0

    .line 606
    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/app/SemStatusBarManager;->disable(I)V

    .line 608
    :cond_0
    return-void
.end method

.method public static disableSystemSound(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 612
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 613
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/camera/util/Util;->mIsSystemSoundMute:Z

    .line 614
    sget-boolean v1, Lcom/sec/android/app/camera/util/Util;->mIsSystemSoundMute:Z

    if-nez v1, :cond_0

    .line 615
    const/16 v1, -0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 617
    :cond_0
    return-void
.end method

.method public static disableVibrator(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 620
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.camera.DISABLE_VIBRATOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 621
    return-void
.end method

.method public static doubleEquals(DD)Z
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 624
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static enableAlertSound(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 630
    const-string v1, "sem_statusbar"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    .line 631
    .local v0, "statusBar":Landroid/app/SemStatusBarManager;
    if-eqz v0, :cond_0

    .line 632
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/SemStatusBarManager;->disable(I)V

    .line 634
    :cond_0
    return-void
.end method

.method public static enableSystemSound(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 638
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 639
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    sget-boolean v1, Lcom/sec/android/app/camera/util/Util;->mIsSystemSoundMute:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 640
    const/4 v1, 0x1

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 642
    :cond_0
    return-void
.end method

.method public static enableVibrator(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 645
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.camera.ENABLE_VIBRATOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 646
    return-void
.end method

.method public static findBestFpsRange(Lcom/samsung/android/camera/core/SemCamera$Parameters;II)[I
    .locals 13
    .param p0, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;
    .param p1, "requestedMinFps"    # I
    .param p2, "requestedMaxFps"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 649
    const-string v7, "Util"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Requested fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/4 v1, 0x0

    .line 652
    .local v1, "MIN_IDX":I
    const/4 v0, 0x1

    .line 653
    .local v0, "MAX_IDX":I
    new-array v3, v12, [I

    .line 654
    .local v3, "fpsRange":[I
    new-array v2, v12, [I

    .line 656
    .local v2, "bestFpsRange":[I
    invoke-virtual {p0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getSupportedPreviewFpsRanges()Ljava/util/List;

    move-result-object v4

    .line 658
    .local v4, "fpsRangeList":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-nez v4, :cond_0

    .line 659
    const-string v7, "Util"

    const-string v8, "supported preview fps range is null"

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/4 v3, 0x0

    .line 710
    .end local v3    # "fpsRange":[I
    :goto_0
    return-object v3

    .line 663
    .restart local v3    # "fpsRange":[I
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_8

    .line 664
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v7, v7, v10

    aput v7, v3, v10

    .line 665
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v7, v7, v11

    aput v7, v3, v11

    .line 667
    aget v7, v3, v11

    if-ne p2, v7, :cond_6

    .line 668
    aget v7, v3, v10

    if-ne p1, v7, :cond_1

    .line 670
    move-object v2, v3

    .line 671
    const-string v7, "Util"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 673
    :cond_1
    if-nez v5, :cond_2

    .line 675
    move-object v2, v3

    .line 676
    const-string v7, "Util"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 680
    :cond_2
    move v6, v5

    .local v6, "j":I
    :goto_2
    if-ltz v6, :cond_5

    .line 681
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v7, v7, v10

    aput v7, v3, v10

    .line 682
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v7, v7, v11

    aput v7, v3, v11

    .line 684
    aget v7, v3, v10

    if-ne p1, v7, :cond_3

    .line 686
    move-object v2, v3

    .line 687
    const-string v7, "Util"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 689
    :cond_3
    aget v7, v3, v10

    if-le p1, v7, :cond_4

    .line 690
    move-object v2, v3

    .line 691
    const-string v7, "Util"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 680
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 696
    :cond_5
    move-object v2, v3

    .line 697
    const-string v7, "Util"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 700
    .end local v6    # "j":I
    :cond_6
    aget v7, v3, v11

    if-le p2, v7, :cond_7

    .line 701
    move-object v2, v3

    .line 702
    const-string v7, "Util"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 663
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1

    .line 708
    :cond_8
    move-object v2, v3

    .line 709
    const-string v7, "Util"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static findThumbnailSize(Ljava/util/List;II)Lcom/samsung/android/camera/core/SemCamera$Size;
    .locals 16
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/core/SemCamera$Size;",
            ">;II)",
            "Lcom/samsung/android/camera/core/SemCamera$Size;"
        }
    .end annotation

    .prologue
    .line 820
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/core/SemCamera$Size;>;"
    if-nez p0, :cond_0

    .line 821
    const/4 v9, 0x0

    .line 845
    :goto_0
    return-object v9

    .line 823
    :cond_0
    const/4 v9, 0x0

    .line 824
    .local v9, "thumbnailSize":Lcom/samsung/android/camera/core/SemCamera$Size;
    const-wide v4, 0x3f9eb851eb851eb8L    # 0.03

    .line 825
    .local v4, "minRatioDiff":D
    const v3, 0x186a0

    .line 826
    .local v3, "minGap":I
    const/4 v2, 0x0

    .line 828
    .local v2, "index":I
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/camera/core/SemCamera$Size;

    .line 829
    .local v8, "size":Lcom/samsung/android/camera/core/SemCamera$Size;
    iget v12, v8, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    int-to-double v12, v12

    iget v14, v8, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    int-to-double v14, v14

    div-double v6, v12, v14

    .line 832
    .local v6, "ratio":D
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v12

    if-nez v12, :cond_1

    .line 834
    move/from16 v0, p1

    int-to-double v12, v0

    move/from16 v0, p2

    int-to-double v14, v0

    div-double/2addr v12, v14

    sub-double v12, v6, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpl-double v12, v12, v4

    if-gtz v12, :cond_1

    .line 837
    iget v12, v8, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    sub-int v12, v12, p1

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 838
    .local v10, "widthGap":I
    if-le v3, v10, :cond_1

    .line 839
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 840
    move v3, v10

    goto :goto_1

    .line 843
    .end local v6    # "ratio":D
    .end local v8    # "size":Lcom/samsung/android/camera/core/SemCamera$Size;
    .end local v10    # "widthGap":I
    :cond_2
    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "thumbnailSize":Lcom/samsung/android/camera/core/SemCamera$Size;
    check-cast v9, Lcom/samsung/android/camera/core/SemCamera$Size;

    .line 844
    .restart local v9    # "thumbnailSize":Lcom/samsung/android/camera/core/SemCamera$Size;
    const-string v11, "Util"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setJPEGThumbnailSize: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static floatDivide(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 714
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v2, p0

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 715
    .local v0, "val1":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v2, p1

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 716
    .local v1, "val2":Ljava/math/BigDecimal;
    const/4 v2, 0x5

    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    return v2
.end method

.method public static floatEquals(FF)Z
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 720
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static floatMultiply(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 724
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v2, p0

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 725
    .local v0, "val1":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v2, p1

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 726
    .local v1, "val2":Ljava/math/BigDecimal;
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    return v2
.end method

.method public static getAspectRatio(II)D
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 730
    int-to-double v0, p0

    int-to-double v2, p1

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getAspectRatioType(D)I
    .locals 4
    .param p0, "ratio"    # D

    .prologue
    .line 734
    const-wide v0, 0x3ffc51eb851eb852L    # 1.77

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    .line 735
    const/4 v0, 0x0

    .line 741
    :goto_0
    return v0

    .line 736
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    const/4 v0, 0x2

    goto :goto_0

    .line 738
    :cond_1
    const-wide v0, 0x3ff38e38e38e38e4L    # 1.2222222222222223

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 739
    const/4 v0, 0x3

    goto :goto_0

    .line 741
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getCameraOrientation(I)I
    .locals 2
    .param p0, "cameraId"    # I

    .prologue
    .line 746
    new-instance v0, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    invoke-direct {v0}, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;-><init>()V

    .line 747
    .local v0, "info":Lcom/samsung/android/camera/core/SemCamera$CameraInfo;
    invoke-static {p0, v0}, Lcom/samsung/android/camera/core/SemCamera;->getCameraInfo(ILcom/samsung/android/camera/core/SemCamera$CameraInfo;)V

    .line 748
    iget v1, v0, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;->orientation:I

    return v1
.end method

.method public static getConstantGrowthRateZoomRatio(IDI)F
    .locals 11
    .param p0, "len"    # I
    .param p1, "maxZoomRatio"    # D
    .param p3, "value"    # I

    .prologue
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    .line 752
    if-ne p0, p3, :cond_0

    .line 753
    div-double v2, p1, v2

    double-to-float v2, v2

    .line 757
    :goto_0
    return v2

    .line 756
    :cond_0
    div-double v2, p1, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    int-to-double v6, p0

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 757
    .local v0, "zoomRatioDelta":D
    int-to-double v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    div-double/2addr v2, v8

    double-to-float v2, v2

    goto :goto_0
.end method

.method public static getCurrentTimeInMillis()J
    .locals 4

    .prologue
    .line 767
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 768
    .local v0, "calendar":Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getDefaultDeviceOrientation()I
    .locals 1

    .prologue
    .line 772
    sget v0, Lcom/sec/android/app/camera/util/Util;->mDefaultDeviceOrientation:I

    return v0
.end method

.method public static getFormattedPictureSizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "pictureSize"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 783
    const-string v3, "M"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 785
    .local v1, "index":I
    if-ne v1, v7, :cond_1

    move-object v3, p0

    :goto_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 786
    .local v2, "megaPixels":F
    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2

    .line 787
    const-string v3, "%d"

    new-array v4, v4, [Ljava/lang/Object;

    float-to-int v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "formattedString":Ljava/lang/String;
    :goto_1
    if-eq v1, v7, :cond_0

    .line 793
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 795
    :cond_0
    return-object v0

    .line 785
    .end local v0    # "formattedString":Ljava/lang/String;
    .end local v2    # "megaPixels":F
    :cond_1
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 789
    .restart local v2    # "megaPixels":F
    :cond_2
    const-string v3, "%.1f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedString":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getHansRegular()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 800
    const-string v0, "/system/fonts/SECCJK-Regular.ttc"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getHelpVersion(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 804
    const/4 v1, 0x0

    .line 806
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.helphub"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 813
    :goto_0
    if-nez v1, :cond_0

    .line 814
    const/4 v2, 0x1

    .line 816
    :goto_1
    return v2

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHelpVersion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 816
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_1
.end method

.method public static getOptimalPreviewSize(Ljava/util/List;D)Lcom/samsung/android/camera/core/SemCamera$Size;
    .locals 17
    .param p1, "targetRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/core/SemCamera$Size;",
            ">;D)",
            "Lcom/samsung/android/camera/core/SemCamera$Size;"
        }
    .end annotation

    .prologue
    .line 850
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/core/SemCamera$Size;>;"
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    .line 851
    .local v0, "ASPECT_TOLERANCE":D
    if-nez p0, :cond_1

    .line 852
    const/4 v3, 0x0

    .line 896
    :cond_0
    return-object v3

    .line 854
    :cond_1
    const/4 v3, 0x0

    .line 855
    .local v3, "optimalSize":Lcom/samsung/android/camera/core/SemCamera$Size;
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 863
    .local v4, "minDiff":D
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 864
    .local v2, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v10

    iput v10, v2, Landroid/graphics/Point;->x:I

    .line 865
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v10

    iput v10, v2, Landroid/graphics/Point;->y:I

    .line 866
    iget v10, v2, Landroid/graphics/Point;->y:I

    iget v11, v2, Landroid/graphics/Point;->x:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 868
    .local v9, "targetHeight":I
    if-gtz v9, :cond_2

    .line 870
    iget v9, v2, Landroid/graphics/Point;->y:I

    .line 874
    :cond_2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/camera/core/SemCamera$Size;

    .line 875
    .local v8, "size":Lcom/samsung/android/camera/core/SemCamera$Size;
    iget v11, v8, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    int-to-double v12, v11

    iget v11, v8, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    int-to-double v14, v11

    div-double v6, v12, v14

    .line 876
    .local v6, "ratio":D
    sub-double v12, v6, p1

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v11, v12, v14

    if-gtz v11, :cond_3

    .line 878
    iget v11, v8, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    sub-int/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v12, v11

    cmpg-double v11, v12, v4

    if-gez v11, :cond_3

    .line 879
    move-object v3, v8

    .line 880
    iget v11, v8, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    sub-int/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v4, v11

    goto :goto_0

    .line 886
    .end local v6    # "ratio":D
    .end local v8    # "size":Lcom/samsung/android/camera/core/SemCamera$Size;
    :cond_4
    if-nez v3, :cond_0

    .line 887
    const-string v10, "Util"

    const-string v11, "No preview size match the aspect ratio"

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 889
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/camera/core/SemCamera$Size;

    .line 890
    .restart local v8    # "size":Lcom/samsung/android/camera/core/SemCamera$Size;
    iget v11, v8, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    sub-int/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v12, v11

    cmpg-double v11, v12, v4

    if-gez v11, :cond_5

    .line 891
    move-object v3, v8

    .line 892
    iget v11, v8, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    sub-int/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v4, v11

    goto :goto_1
.end method

.method public static getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "modeId"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 974
    const/4 v1, 0x0

    .line 975
    .local v1, "str":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getMegaPixelString(I)Ljava/lang/String;

    move-result-object v0

    .line 976
    .local v0, "megaPixelStr":Ljava/lang/String;
    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_MEDIUM:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_SMALL:Ljava/lang/String;

    .line 977
    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    .line 978
    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_MEDIUM:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_SMALL:Ljava/lang/String;

    .line 979
    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 980
    :cond_0
    const v2, 0x7f0a007f

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 992
    :cond_1
    :goto_0
    return-object v1

    .line 981
    :cond_2
    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_MEDIUM:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_SMALL:Ljava/lang/String;

    .line 982
    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    .line 983
    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_MEDIUM:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_SMALL:Ljava/lang/String;

    .line 984
    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_4

    .line 985
    :cond_3
    const v2, 0x7f0a007d

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 986
    :cond_4
    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_MEDIUM:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_SMALL:Ljava/lang/String;

    .line 987
    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    .line 988
    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_MEDIUM:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_SMALL:Ljava/lang/String;

    .line 989
    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 990
    :cond_5
    const v2, 0x7f0a007e

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getResizedBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    const/4 v1, 0x0

    .line 1008
    if-nez p0, :cond_0

    .line 1009
    const/4 v7, 0x0

    .line 1017
    :goto_0
    return-object v7

    .line 1011
    :cond_0
    const/4 v7, 0x0

    .line 1013
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1014
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1016
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1017
    goto :goto_0
.end method

.method public static getRobotoBlack()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 1021
    const-string v0, "/system/fonts/Roboto-Black.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 1025
    const-string v0, "sec-roboto-condensed"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getRobotoLightBOLDFont()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 1029
    const-string v0, "sec-roboto-light"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getRobotoLightFont()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 1033
    const-string v0, "sec-roboto-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getRobotoMedium()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 1037
    const-string v0, "/system/fonts/Roboto-Medium.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getRobotoRegular()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 1041
    const-string v0, "sans-serif"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getRotatedBitmap(Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "angle"    # I

    .prologue
    const/4 v1, 0x0

    .line 996
    const/4 v7, 0x0

    .line 997
    .local v7, "resizedBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 999
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1000
    int-to-float v0, p3

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1002
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1004
    return-object v7
.end method

.method public static getSecondOptimalPreviewSize(Ljava/util/List;D)Lcom/samsung/android/camera/core/SemCamera$Size;
    .locals 17
    .param p1, "targetRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/core/SemCamera$Size;",
            ">;D)",
            "Lcom/samsung/android/camera/core/SemCamera$Size;"
        }
    .end annotation

    .prologue
    .line 908
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/core/SemCamera$Size;>;"
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    .line 909
    .local v0, "ASPECT_TOLERANCE":D
    if-nez p0, :cond_1

    .line 910
    const/4 v3, 0x0

    .line 970
    :cond_0
    return-object v3

    .line 912
    :cond_1
    const/4 v6, 0x0

    .line 913
    .local v6, "optimalSize":Lcom/samsung/android/camera/core/SemCamera$Size;
    const/4 v3, 0x0

    .line 914
    .local v3, "loweroptimalSize":Lcom/samsung/android/camera/core/SemCamera$Size;
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 922
    .local v4, "minDiff":D
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 923
    .local v2, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v11

    iput v11, v2, Landroid/graphics/Point;->x:I

    .line 924
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v11

    iput v11, v2, Landroid/graphics/Point;->y:I

    .line 925
    iget v11, v2, Landroid/graphics/Point;->y:I

    iget v12, v2, Landroid/graphics/Point;->x:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 927
    .local v10, "targetHeight":I
    if-gtz v10, :cond_2

    .line 929
    iget v10, v2, Landroid/graphics/Point;->y:I

    .line 933
    :cond_2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/camera/core/SemCamera$Size;

    .line 934
    .local v7, "size":Lcom/samsung/android/camera/core/SemCamera$Size;
    iget v12, v7, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    int-to-double v12, v12

    iget v14, v7, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    int-to-double v14, v14

    div-double v8, v12, v14

    .line 935
    .local v8, "ratio":D
    sub-double v12, v8, p1

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v12, v12, v14

    if-gtz v12, :cond_3

    .line 937
    iget v12, v7, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    sub-int/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-double v12, v12

    cmpg-double v12, v12, v4

    if-gez v12, :cond_3

    .line 938
    move-object v6, v7

    .line 939
    iget v12, v7, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    sub-int/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-double v4, v12

    goto :goto_0

    .line 943
    .end local v7    # "size":Lcom/samsung/android/camera/core/SemCamera$Size;
    .end local v8    # "ratio":D
    :cond_4
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 946
    if-eqz v6, :cond_6

    .line 947
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/camera/core/SemCamera$Size;

    .line 948
    .restart local v7    # "size":Lcom/samsung/android/camera/core/SemCamera$Size;
    iget v12, v7, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    int-to-double v12, v12

    iget v14, v7, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    int-to-double v14, v14

    div-double v8, v12, v14

    .line 949
    .restart local v8    # "ratio":D
    sub-double v12, v8, p1

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v12, v12, v14

    if-gtz v12, :cond_5

    .line 951
    iget v12, v7, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    sub-int/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-double v12, v12

    cmpg-double v12, v12, v4

    if-gez v12, :cond_5

    iget v12, v7, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    iget v13, v6, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    if-ge v12, v13, :cond_5

    .line 952
    move-object v3, v7

    .line 953
    iget v12, v7, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    sub-int/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-double v4, v12

    goto :goto_1

    .line 960
    .end local v7    # "size":Lcom/samsung/android/camera/core/SemCamera$Size;
    .end local v8    # "ratio":D
    :cond_6
    if-nez v6, :cond_0

    if-nez v3, :cond_0

    .line 961
    const-string v11, "Util"

    const-string v12, "No preview size match the aspect ratio"

    invoke-static {v11, v12}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 963
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/camera/core/SemCamera$Size;

    .line 964
    .restart local v7    # "size":Lcom/samsung/android/camera/core/SemCamera$Size;
    iget v12, v7, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    sub-int/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-double v12, v12

    cmpg-double v12, v12, v4

    if-gez v12, :cond_7

    .line 965
    move-object v6, v7

    .line 966
    iget v12, v7, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    sub-int/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-double v4, v12

    goto :goto_2
.end method

.method public static getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "textSize"    # F
    .param p2, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 1045
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1046
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1047
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1048
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1050
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1051
    .local v1, "textRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1053
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1054
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/util/Util;->DEFAULT_PADDING:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 1056
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/util/Util;->DEFAULT_PADDING:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    goto :goto_0
.end method

.method public static getStringInDefaultLocale(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourcesId"    # I

    .prologue
    .line 1061
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1062
    .local v0, "config":Landroid/content/res/Configuration;
    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 1063
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStringWidth(Ljava/lang/String;F)F
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "textSize"    # F

    .prologue
    .line 1067
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1068
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1069
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1070
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    sget v1, Lcom/sec/android/app/camera/util/Util;->DEFAULT_PADDING:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v1, v4

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    return v1
.end method

.method public static getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "textSize"    # F
    .param p2, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 1074
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1075
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1076
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1077
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1078
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    sget v1, Lcom/sec/android/app/camera/util/Util;->DEFAULT_PADDING:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v1, v4

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    return v1
.end method

.method public static getVideoSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "modeId"    # I

    .prologue
    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0a004d

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1083
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v4

    .line 1082
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getZoomDivideFactor(I)I
    .locals 1
    .param p0, "supportMaxZoomValue"    # I

    .prologue
    .line 1087
    sparse-switch p0, :sswitch_data_0

    .line 1093
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1089
    :sswitch_0
    const/16 v0, 0xa

    goto :goto_0

    .line 1091
    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 1087
    :sswitch_data_0
    .sparse-switch
        0x18f -> :sswitch_1
        0x31f -> :sswitch_0
    .end sparse-switch
.end method

.method public static isAFWForBYOD(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 1098
    if-eqz p0, :cond_0

    .line 1099
    const-string v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 1100
    .local v1, "um":Landroid/os/UserManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserCount()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 1101
    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    .line 1102
    .local v2, "up":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1104
    .local v0, "mine":Landroid/os/UserHandle;
    if-eqz v0, :cond_0

    sget-object v4, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1105
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 1111
    .end local v0    # "mine":Landroid/os/UserHandle;
    .end local v1    # "um":Landroid/os/UserManager;
    .end local v2    # "up":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isAFWForCL(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1115
    const-string v3, "device_policy"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 1116
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_1

    .line 1117
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 1118
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_1

    .line 1119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1120
    .local v2, "name":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1121
    const/4 v3, 0x1

    .line 1126
    .end local v0    # "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v2    # "name":Landroid/content/ComponentName;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isAFWMode(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1130
    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isAFWForBYOD(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isAFWForCL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAddToHomeIntentSupported(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1140
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1141
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1142
    .local v0, "intent":Landroid/content/Intent;
    const/16 v3, 0x20

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1143
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isChinaFeature()Z
    .locals 2

    .prologue
    .line 1175
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1176
    .local v0, "countryCode":Ljava/lang/String;
    const-string v1, "CHINA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1177
    const/4 v1, 0x1

    .line 1179
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDeviceLandscape(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 1211
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1213
    .local v0, "rotation":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1218
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDeviceReverse(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1222
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1224
    .local v0, "rotation":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1225
    :cond_0
    const/4 v1, 0x1

    .line 1229
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDeviceScreenWideRatio()Z
    .locals 4

    .prologue
    .line 1233
    const v2, 0x7f0b0047

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    .line 1234
    .local v1, "screen_width":F
    const v2, 0x7f0b0046

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    .line 1236
    .local v0, "screen_height":F
    div-float v2, v1, v0

    const v3, 0x3fe38e39

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isDocomoUx(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1154
    .local v1, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1155
    .local v0, "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.nttdocomo.android.dhome"

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 1156
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isEasyMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 1166
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_mode_switch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isEuropeanArabicNumerals()Z
    .locals 7

    .prologue
    const/16 v6, 0x4d2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1820
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1821
    .local v0, "europeanArabicNumerals":Z
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    .line 1824
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isExternalEffectSupported(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1240
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isAFWMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1241
    :cond_0
    const/4 v0, 0x0

    .line 1243
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isInLockTaskMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1813
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1814
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1815
    const/4 v1, 0x1

    .line 1817
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKNOXMode()Z
    .locals 2

    .prologue
    .line 1248
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 1249
    const/4 v0, 0x1

    .line 1251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKNOXMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1255
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 1256
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "true"

    const-string v2, "isKnoxMode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1257
    const/4 v1, 0x1

    .line 1259
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKeyguardLocked(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1263
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1264
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLGTFeature()Z
    .locals 2

    .prologue
    .line 1273
    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 1275
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLocaleRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1284
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 1288
    const/4 v7, 0x0

    .line 1289
    .local v7, "result":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1290
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "volume"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1291
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1292
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v10, :cond_1

    .line 1293
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1294
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1295
    .local v8, "volumeName":Ljava/lang/String;
    const-string v1, "external"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "internal"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1296
    :cond_0
    const/4 v7, 0x1

    .line 1298
    .end local v8    # "volumeName":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1300
    :cond_2
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaScanning..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    return v7
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1311
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1312
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1313
    .local v2, "mobile":Landroid/net/NetworkInfo;
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1314
    .local v3, "wifi":Landroid/net/NetworkInfo;
    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1316
    .local v0, "lte_4g":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 1317
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1323
    :cond_0
    :goto_0
    return v4

    .line 1320
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    move v4, v5

    .line 1323
    goto :goto_0
.end method

.method public static isOwner()Z
    .locals 1

    .prologue
    .line 1327
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1332
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 1333
    .local v0, "enable":I
    const/4 v3, 0x2

    if-eq v3, v0, :cond_0

    const/4 v3, 0x3

    if-ne v3, v0, :cond_1

    .line 1334
    :cond_0
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is disabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    .end local v0    # "enable":I
    :goto_0
    return v2

    .line 1337
    .restart local v0    # "enable":I
    :cond_1
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is enabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1338
    const/4 v2, 0x1

    goto :goto_0

    .line 1340
    .end local v0    # "enable":I
    :catch_0
    move-exception v1

    .line 1341
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1354
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1355
    const/4 v1, 0x1

    .line 1358
    :goto_0
    return v1

    .line 1356
    :catch_0
    move-exception v0

    .line 1357
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isPowerSavingMode(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1595
    const/4 v0, 0x0

    .line 1596
    .local v0, "inPowerSaveMode":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "low_power"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v1, v3

    .line 1597
    .local v1, "lowPowerMode":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ultra_powersaving_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    .line 1598
    .local v2, "ultraPowerMode":Z
    :goto_1
    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    .line 1599
    :cond_0
    const/4 v0, 0x1

    .line 1601
    :cond_1
    return v0

    .end local v1    # "lowPowerMode":Z
    .end local v2    # "ultraPowerMode":Z
    :cond_2
    move v1, v4

    .line 1596
    goto :goto_0

    .restart local v1    # "lowPowerMode":Z
    :cond_3
    move v2, v4

    .line 1597
    goto :goto_1
.end method

.method public static isQRCodeDetectionSupported(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1369
    const-string v0, "com.samsung.android.app.qragent"

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/Util;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRegularResolution(II)Z
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const/4 v0, 0x1

    .line 1380
    mul-int/lit8 v1, p0, 0x9

    mul-int/lit8 v2, p1, 0x10

    if-ne v1, v2, :cond_1

    .line 1389
    :cond_0
    :goto_0
    return v0

    .line 1383
    :cond_1
    mul-int/lit8 v1, p0, 0x3

    mul-int/lit8 v2, p1, 0x4

    if-eq v1, v2, :cond_0

    .line 1386
    if-eq p0, p1, :cond_0

    .line 1389
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSEALanguage()Z
    .locals 2

    .prologue
    .line 1426
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1427
    .local v0, "fontLanguage":Ljava/lang/String;
    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1428
    :cond_0
    const/4 v1, 0x1

    .line 1430
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSWALanguage()Z
    .locals 2

    .prologue
    .line 1444
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1445
    .local v0, "fontLanguage":Ljava/lang/String;
    const-string v1, "ml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "si"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bn"

    .line 1446
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "or"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "te"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "kn"

    .line 1447
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ne"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1448
    :cond_0
    const/4 v1, 0x1

    .line 1450
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSafetyBattery()Z
    .locals 15

    .prologue
    .line 1393
    sget-boolean v8, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_BATT_SAFE_CHECK:Z

    if-eqz v8, :cond_1a

    .line 1394
    new-instance v2, Ljava/io/File;

    const-string v8, "/efs/FactoryApp"

    const-string v9, "BattType"

    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1397
    const-string v4, "1"

    .line 1398
    .local v4, "isSafeStr":Ljava/lang/String;
    const-string v5, "0"

    .line 1400
    .local v5, "isUnsafeStr":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 1401
    :try_start_1
    new-instance v7, Ljava/io/InputStreamReader;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1400
    .local v7, "reader":Ljava/io/Reader;
    const/4 v10, 0x0

    .line 1402
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1400
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 1405
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_10

    .line 1406
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1407
    const-string v8, "Util"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isSafetyBattery : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const-string v8, "1"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-result v8

    if-eqz v8, :cond_a

    .line 1409
    const/4 v8, 0x1

    .line 1413
    if-eqz v0, :cond_1

    if-eqz v9, :cond_7

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    if-eqz v10, :cond_8

    :try_start_5
    invoke-virtual {v7}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    if-eqz v11, :cond_9

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1421
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "isSafeStr":Ljava/lang/String;
    .end local v5    # "isUnsafeStr":Ljava/lang/String;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/Reader;
    :cond_3
    :goto_2
    return v8

    .line 1413
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "isSafeStr":Ljava/lang/String;
    .restart local v5    # "isUnsafeStr":Ljava/lang/String;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v12

    :try_start_7
    invoke-virtual {v9, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    .line 1400
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    :catch_1
    move-exception v8

    :try_start_8
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1413
    :catchall_0
    move-exception v9

    move-object v14, v9

    move-object v9, v8

    move-object v8, v14

    :goto_3
    if-eqz v7, :cond_4

    if-eqz v9, :cond_17

    :try_start_9
    invoke-virtual {v7}, Ljava/io/Reader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_4
    :goto_4
    :try_start_a
    throw v8
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1400
    .end local v7    # "reader":Ljava/io/Reader;
    :catch_2
    move-exception v8

    :try_start_b
    throw v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1413
    :catchall_1
    move-exception v9

    move-object v14, v9

    move-object v9, v8

    move-object v8, v14

    :goto_5
    if-eqz v3, :cond_5

    if-eqz v9, :cond_19

    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    :cond_5
    :goto_6
    :try_start_d
    throw v8
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 1414
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "Util"

    const-string v9, "error"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1418
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "isSafeStr":Ljava/lang/String;
    .end local v5    # "isUnsafeStr":Ljava/lang/String;
    :cond_6
    :goto_7
    const-string v8, "Util"

    const-string v9, "isSafetyBattery : BattType does not exists"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    const/4 v8, 0x0

    goto :goto_2

    .line 1413
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "isSafeStr":Ljava/lang/String;
    .restart local v5    # "isUnsafeStr":Ljava/lang/String;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/Reader;
    :cond_7
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    :catchall_2
    move-exception v8

    move-object v9, v10

    goto :goto_3

    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    :catch_4
    move-exception v9

    :try_start_f
    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/Reader;
    :catchall_3
    move-exception v8

    move-object v9, v11

    goto :goto_5

    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/Reader;
    :cond_8
    invoke-virtual {v7}, Ljava/io/Reader;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_1

    :catch_5
    move-exception v9

    :try_start_10
    invoke-virtual {v11, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    goto :goto_2

    .line 1410
    :cond_a
    :try_start_11
    const-string v8, "0"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    move-result v8

    if-eqz v8, :cond_0

    .line 1411
    const/4 v8, 0x0

    .line 1413
    if-eqz v0, :cond_b

    if-eqz v9, :cond_d

    :try_start_12
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :cond_b
    :goto_8
    if-eqz v7, :cond_c

    if-eqz v10, :cond_e

    :try_start_13
    invoke-virtual {v7}, Ljava/io/Reader;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :cond_c
    :goto_9
    if-eqz v3, :cond_3

    if-eqz v11, :cond_f

    :try_start_14
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    goto :goto_2

    :catch_6
    move-exception v9

    :try_start_15
    invoke-virtual {v11, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3

    goto :goto_2

    :catch_7
    move-exception v12

    :try_start_16
    invoke-virtual {v9, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto :goto_8

    :catch_8
    move-exception v9

    :try_start_17
    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_e
    invoke-virtual {v7}, Ljava/io/Reader;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    goto :goto_9

    :cond_f
    :try_start_18
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3

    goto/16 :goto_2

    :cond_10
    if-eqz v0, :cond_11

    if-eqz v9, :cond_13

    :try_start_19
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    :cond_11
    :goto_a
    if-eqz v7, :cond_12

    if-eqz v10, :cond_16

    :try_start_1a
    invoke-virtual {v7}, Ljava/io/Reader;->close()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_d
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    :cond_12
    :goto_b
    if-eqz v3, :cond_6

    if-eqz v11, :cond_18

    :try_start_1b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_3

    goto :goto_7

    :catch_9
    move-exception v8

    :try_start_1c
    invoke-virtual {v11, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_3

    goto :goto_7

    :catch_a
    move-exception v8

    :try_start_1d
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_13
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    goto :goto_a

    .line 1400
    .end local v6    # "line":Ljava/lang/String;
    :catch_b
    move-exception v8

    :try_start_1e
    throw v8
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    .line 1413
    :catchall_4
    move-exception v9

    move-object v14, v9

    move-object v9, v8

    move-object v8, v14

    :goto_c
    if-eqz v0, :cond_14

    if-eqz v9, :cond_15

    :try_start_1f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_c
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    :cond_14
    :goto_d
    :try_start_20
    throw v8

    :catch_c
    move-exception v12

    invoke-virtual {v9, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_15
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_1
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    goto :goto_d

    .restart local v6    # "line":Ljava/lang/String;
    :catch_d
    move-exception v8

    :try_start_21
    invoke-virtual {v10, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_16
    invoke-virtual {v7}, Ljava/io/Reader;->close()V

    goto :goto_b

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    :catch_e
    move-exception v10

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_17
    invoke-virtual {v7}, Ljava/io/Reader;->close()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_2
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    goto/16 :goto_4

    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_18
    :try_start_22
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_7

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/Reader;
    :catch_f
    move-exception v10

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_19
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_3

    goto/16 :goto_6

    .line 1421
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "isSafeStr":Ljava/lang/String;
    .end local v5    # "isUnsafeStr":Ljava/lang/String;
    :cond_1a
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1413
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "isSafeStr":Ljava/lang/String;
    .restart local v5    # "isUnsafeStr":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/Reader;
    :catchall_5
    move-exception v8

    goto :goto_c
.end method

.method public static isSamsungTalkBackEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1461
    const/4 v1, 0x0

    .line 1463
    .local v1, "talkbackEnabled":Z
    if-nez p0, :cond_0

    .line 1474
    :goto_0
    return v2

    .line 1467
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1468
    .local v0, "accessibilityService":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1471
    const-string v3, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    .line 1472
    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_1
    move v2, v1

    .line 1474
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1472
    goto :goto_1
.end method

.method public static isScreenReaderActive(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 1478
    const/16 v1, 0x3a

    .line 1479
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .line 1480
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    const-string v2, "com.samsung.android.app.talkback"

    .line 1481
    .local v2, "SAMSUNG_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v7, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v9, 0x3a

    invoke-direct {v7, v9}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1483
    .local v7, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    if-nez p0, :cond_1

    .line 1508
    :cond_0
    :goto_0
    return v8

    .line 1486
    :cond_1
    const/4 v6, 0x0

    .line 1487
    .local v6, "enabledServicesSetting":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_accessibility_services"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1488
    if-nez v6, :cond_2

    .line 1489
    const-string v6, ""

    .line 1492
    :cond_2
    move-object v3, v7

    .line 1494
    .local v3, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v3, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1496
    :cond_3
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1497
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 1498
    .local v4, "componentNameString":Ljava/lang/String;
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 1500
    .local v5, "enabledService":Landroid/content/ComponentName;
    if-eqz v5, :cond_3

    .line 1501
    const-string v9, "com.google.android.marvin.talkback"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    .line 1502
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    const-string v9, "com.samsung.android.app.talkback"

    .line 1503
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    .line 1504
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1505
    :cond_5
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static isSecureKeyguardLocked(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1512
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1513
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSemLocationManagerSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1440
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.slocation"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.slocation"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShowButtonBackgroundEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1517
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_button_background"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isSmartManagerExisted(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1521
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1522
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.sm.ACTION_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1524
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1525
    const/4 v1, 0x1

    .line 1527
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSocialSupported()Z
    .locals 3

    .prologue
    .line 1188
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1189
    .local v0, "social":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "social"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1190
    const/4 v1, 0x1

    .line 1192
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isStrongBeautySupportCountry()Z
    .locals 2

    .prologue
    .line 1536
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1537
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1538
    .local v0, "countryCode":Ljava/lang/String;
    const-string v1, "CHINA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HONG KONG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TAIWAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KOREA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "JAPAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "JP"

    .line 1539
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "THAILAND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "INDONESIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PHILIPPINES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MALAYSIA"

    .line 1540
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VIETNAM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SINGAPORE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MONGOLIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LAOS"

    .line 1541
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CAMBODIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BRUNEI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1542
    :cond_0
    const/4 v1, 0x1

    .line 1545
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportedPreviewSize(Ljava/util/List;II)Z
    .locals 3
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/core/SemCamera$Size;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 1555
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/core/SemCamera$Size;>;"
    if-eqz p0, :cond_1

    .line 1556
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core/SemCamera$Size;

    .line 1557
    .local v0, "size":Lcom/samsung/android/camera/core/SemCamera$Size;
    iget v2, v0, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    if-ne v2, p2, :cond_0

    .line 1558
    const/4 v1, 0x1

    .line 1562
    .end local v0    # "size":Lcom/samsung/android/camera/core/SemCamera$Size;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSystemSoundEffectsEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 1566
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_effects_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isTalkBackServiceActive(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1570
    if-nez p0, :cond_0

    .line 1586
    :goto_0
    return v2

    .line 1574
    :cond_0
    const-string v4, "accessibility"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1575
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_2

    .line 1576
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 1577
    .local v1, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1578
    const/4 v0, 0x0

    move v2, v3

    .line 1579
    goto :goto_0

    .line 1581
    :cond_1
    const/4 v0, 0x0

    .line 1582
    goto :goto_0

    .line 1585
    .end local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_2
    const/4 v0, 0x0

    .line 1586
    goto :goto_0
.end method

.method public static isUltraPowerSavingMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1591
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    .line 1592
    .local v0, "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUsaFeature()Z
    .locals 2

    .prologue
    .line 1203
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1204
    .local v0, "countryCode":Ljava/lang/String;
    const-string v1, "USA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1205
    const/4 v1, 0x1

    .line 1207
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVZWFeature()Z
    .locals 2

    .prologue
    .line 1611
    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1612
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1613
    const/4 v1, 0x1

    .line 1615
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1625
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1626
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->semIsNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static makeDirectory(Ljava/lang/String;)Z
    .locals 3
    .param p0, "dirPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1636
    if-nez p0, :cond_1

    .line 1643
    :cond_0
    :goto_0
    return v1

    .line 1639
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1640
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1643
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    goto :goto_0
.end method

.method public static notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z

    .prologue
    .line 1648
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1649
    .local v0, "boostIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1650
    const-string v1, "SSRM_STATUS_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1651
    const-string v1, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1652
    const-string v1, "PackageName"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1653
    const-string v1, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1654
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1655
    return-void
.end method

.method public static notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "recordingResolution"    # Ljava/lang/String;

    .prologue
    .line 1666
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1667
    .local v0, "boostIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1668
    const-string v1, "SSRM_STATUS_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1669
    const-string v1, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1670
    const-string v1, "SSRM_STATUS_RESOLUTION"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1671
    const-string v1, "PackageName"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1672
    const-string v1, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1673
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1674
    return-void
.end method

.method public static refreshDefaultDeviceProperties(Landroid/content/Context;)V
    .locals 6
    .param p0, "activity"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1678
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1680
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1682
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 1685
    .local v1, "rotation":I
    if-eqz v1, :cond_0

    if-ne v1, v5, :cond_1

    :cond_0
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v5, :cond_3

    :cond_1
    if-eq v1, v4, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    :cond_2
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_4

    .line 1687
    :cond_3
    sput v5, Lcom/sec/android/app/camera/util/Util;->mDefaultDeviceOrientation:I

    .line 1691
    :goto_0
    return-void

    .line 1689
    :cond_4
    sput v4, Lcom/sec/android/app/camera/util/Util;->mDefaultDeviceOrientation:I

    goto :goto_0
.end method

.method public static restoreRingerMode(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1695
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1696
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    sget v1, Lcom/sec/android/app/camera/util/Util;->mRingerMode:I

    if-eqz v1, :cond_0

    .line 1697
    sget v1, Lcom/sec/android/app/camera/util/Util;->mRingerMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1699
    :cond_0
    return-void
.end method

.method public static roundOrientation(I)I
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 1706
    add-int/lit8 v0, p0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public static saveDataToFile(Ljava/lang/String;[B)Z
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 1710
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "f":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 1711
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1712
    if-eqz v1, :cond_0

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1715
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .end local v1    # "f":Ljava/io/FileOutputStream;
    :goto_1
    return v2

    .line 1712
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v1    # "f":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 1713
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_1

    .line 1712
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1710
    :catch_2
    move-exception v3

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1712
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_2
    :try_start_6
    throw v2

    :catch_3
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2
.end method

.method public static setHighAccuracyLocationMode(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1719
    const-string v0, "Util"

    const-string v1, "setHighAccuracyLocationMode"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1721
    return-void
.end method

.method public static showHelpHub(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1724
    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->getHelpVersion(Landroid/content/Context;)I

    move-result v2

    .line 1725
    .local v2, "version":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1749
    :cond_0
    :goto_0
    return-void

    .line 1729
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1731
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1732
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "helphub:section"

    const-string v4, "camera_help_section"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1735
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1736
    :catch_0
    move-exception v0

    .line 1737
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showHelpHub : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1739
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1741
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1742
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "helphub:appid"

    const-string v4, "camera"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1744
    :try_start_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1745
    :catch_1
    move-exception v0

    .line 1746
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showHelpHub : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static silenceRingerMode(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1753
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1754
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/util/Util;->mRingerMode:I

    .line 1755
    sget v1, Lcom/sec/android/app/camera/util/Util;->mRingerMode:I

    if-eqz v1, :cond_0

    .line 1756
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1758
    :cond_0
    return-void
.end method

.method public static transformEventByScreenOrientation(Landroid/view/MotionEvent;III)V
    .locals 3
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "screenOrientation"    # I
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    .prologue
    .line 1776
    packed-switch p1, :pswitch_data_0

    .line 1790
    :goto_0
    :pswitch_0
    return-void

    .line 1778
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float v1, p3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 1781
    :pswitch_2
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 1784
    :pswitch_3
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    int-to-float v1, p3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 1776
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static transformEventForResizableWindow(Landroid/view/MotionEvent;IIII)V
    .locals 3
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "sourceWidth"    # I
    .param p2, "sourceHeight"    # I
    .param p3, "targetWidth"    # I
    .param p4, "targetHeight"    # I

    .prologue
    .line 1803
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-int v1, p1, p3

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-int v2, p2, p4

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1804
    return-void
.end method

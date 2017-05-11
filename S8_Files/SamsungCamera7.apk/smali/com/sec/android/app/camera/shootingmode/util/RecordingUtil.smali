.class public Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;
.super Ljava/lang/Object;
.source "RecordingUtil.java"


# static fields
.field private static DEFAULT_PADDING:F = 0.0f

.field private static SECONDS_IN_AN_HOUR:I = 0x0

.field private static SECONDS_IN_A_MINUTE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RecordingUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->DEFAULT_PADDING:F

    .line 43
    const/16 v0, 0x3c

    sput v0, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->SECONDS_IN_A_MINUTE:I

    .line 44
    sget v0, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->SECONDS_IN_A_MINUTE:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->SECONDS_IN_A_MINUTE:I

    mul-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->SECONDS_IN_AN_HOUR:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static cleanupFile(Ljava/lang/String;)V
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 56
    if-eqz p0, :cond_0

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const-string v1, "RecordingUtil"

    const-string v2, "temp video file deleted"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public static convertToHMSFormat(I)Ljava/lang/String;
    .locals 8
    .param p0, "seconds"    # I

    .prologue
    .line 71
    sget v3, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->SECONDS_IN_AN_HOUR:I

    div-int v0, p0, v3

    .line 72
    .local v0, "hour":I
    sget v3, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->SECONDS_IN_A_MINUTE:I

    div-int v3, p0, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->SECONDS_IN_A_MINUTE:I

    rem-int v1, v3, v4

    .line 73
    .local v1, "min":I
    sget v3, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->SECONDS_IN_A_MINUTE:I

    rem-int v2, p0, v3

    .line 74
    .local v2, "sec":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%02d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static convertToMSFormat(I)Ljava/lang/String;
    .locals 7
    .param p0, "seconds"    # I

    .prologue
    .line 84
    sget v2, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->SECONDS_IN_A_MINUTE:I

    div-int v2, p0, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->SECONDS_IN_A_MINUTE:I

    rem-int v0, v2, v3

    .line 85
    .local v0, "min":I
    sget v2, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->SECONDS_IN_A_MINUTE:I

    rem-int v1, p0, v2

    .line 86
    .local v1, "sec":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%02d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static createVideoDirectory(IZ)Ljava/lang/String;
    .locals 4
    .param p0, "storage"    # I
    .param p1, "cover"    # Z

    .prologue
    .line 97
    const-string v2, "RecordingUtil"

    const-string v3, "createVideoDirectory"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v1, 0x0

    .line 100
    .local v1, "videoPathDir":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 101
    invoke-static {p0}, Lcom/sec/android/app/camera/util/ImageUtils;->getCoverCameraImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    const-string v2, "RecordingUtil"

    const-string v3, "directory is not made"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v1, 0x0

    .line 113
    .end local v1    # "videoPathDir":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 103
    .end local v0    # "cameraDir":Ljava/io/File;
    .restart local v1    # "videoPathDir":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static createVideoFile(IZ)Ljava/lang/String;
    .locals 3
    .param p0, "storage"    # I
    .param p1, "cover"    # Z

    .prologue
    .line 125
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->createVideoDirectory(IZ)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "cameraDirPath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 127
    const-string v1, "RecordingUtil"

    const-string v2, "recording directory make fail"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v1, 0x0

    .line 131
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "temp_video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHMSFormatStringWidth(F)F
    .locals 2
    .param p0, "textSize"    # F

    .prologue
    .line 141
    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->getMaxNumericStringWidth(F)F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    const-string v1, "::"

    invoke-static {v1, p0}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public static getMSFormatStringWidth(F)F
    .locals 2
    .param p0, "textSize"    # F

    .prologue
    .line 151
    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->getMaxNumericStringWidth(F)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    const-string v1, ":"

    invoke-static {v1, p0}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private static getMaxNumericStringWidth(F)F
    .locals 6
    .param p0, "fontSize"    # F

    .prologue
    .line 230
    const-string v0, "0123456789"

    .line 231
    .local v0, "numbers":Ljava/lang/String;
    new-instance v1, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/text/TextPaint;-><init>(I)V

    .line 232
    .local v1, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {v1, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    new-array v2, v3, [F

    .line 235
    .local v2, "widths":[F
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;II[F)I

    .line 236
    invoke-static {v2}, Ljava/util/Arrays;->sort([F)V

    .line 237
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget v3, v2, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->DEFAULT_PADDING:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    return v3
.end method

.method public static makeHighLightVideoFile(Ljava/lang/String;)V
    .locals 7
    .param p0, "videofilePath"    # Ljava/lang/String;

    .prologue
    .line 161
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/media/0/DCIM/.metadata/HighLight.meta"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "meta":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v3, "sefFile":Ljava/io/File;
    :try_start_0
    const-string v4, "HighlightVideo_Data"

    const/16 v5, 0x8b0

    const/16 v6, 0x1000

    invoke-static {v3, v4, v1, v5, v6}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I

    move-result v4

    if-ltz v4, :cond_2

    .line 166
    const-string v4, "RecordingUtil"

    const-string v5, "Success to make SEF file"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 175
    const-string v4, "RecordingUtil"

    const-string v5, "Fail to meta.delete"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v3    # "sefFile":Ljava/io/File;
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/media/0/DCIM/.metadata"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v2, "metaFilePath":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 181
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1

    .line 182
    const-string v4, "RecordingUtil"

    const-string v5, "Fail to metaFilePath.delete"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    return-void

    .line 168
    .end local v2    # "metaFilePath":Ljava/io/File;
    .restart local v3    # "sefFile":Ljava/io/File;
    :cond_2
    :try_start_1
    const-string v4, "RecordingUtil"

    const-string v5, "Fail to make SEF file"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "RecordingUtil"

    const-string v5, "Fail to make SEF file"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static renameVideoFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "mSrcFile"    # Ljava/lang/String;
    .param p1, "mDestFile"    # Ljava/lang/String;

    .prologue
    .line 195
    const-string v3, "RecordingUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDestFile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v3, "RecordingUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSrcFile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 198
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v2, "src":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "dest":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 204
    .end local v0    # "dest":Ljava/io/File;
    .end local v2    # "src":Ljava/io/File;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static validateFile(Ljava/lang/String;)V
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 214
    if-eqz p0, :cond_0

    .line 215
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    const-string v1, "RecordingUtil"

    const-string v2, "Empty video file deleted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

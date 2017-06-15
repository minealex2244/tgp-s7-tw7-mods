.class public Lcom/sec/android/app/camera/engine/LastContentData;
.super Ljava/lang/Object;
.source "LastContentData.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/Engine$ContentData;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final TAG:Ljava/lang/String; = "LastContentData"

.field private static final THUMBNAIL_IMAGE_HEIGHT:I

.field private static final THUMBNAIL_IMAGE_WIDTH:I

.field private static final THUMBNAIL_SAMPLE_SIZE:I = 0x1


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContentUri:Landroid/net/Uri;

.field private mDateTaken:J

.field private mFilePath:Ljava/lang/String;

.field private mIsVideoType:Z

.field private mJpegData:[B

.field private final mLock:Ljava/lang/Object;

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mOrientation:I

.field private mSampleSize:I

.field private mThumbnailJpegData:[B

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f0a02aa

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/engine/LastContentData;->THUMBNAIL_IMAGE_WIDTH:I

    .line 34
    const v0, 0x7f0a02a9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/engine/LastContentData;->THUMBNAIL_IMAGE_HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mLock:Ljava/lang/Object;

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mSampleSize:I

    .line 41
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentUri:Landroid/net/Uri;

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mFilePath:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mTitle:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mIsVideoType:Z

    .line 47
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method

.method private prepareCaptureBitmap()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/16 v1, 0x4000

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget v1, Lcom/sec/android/app/camera/engine/LastContentData;->THUMBNAIL_IMAGE_WIDTH:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget v1, Lcom/sec/android/app/camera/engine/LastContentData;->THUMBNAIL_IMAGE_HEIGHT:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mThumbnailJpegData:[B

    if-eqz v0, :cond_1

    .line 198
    const-string v0, "LastContentData"

    const-string v1, "use thumbnail in exif"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mThumbnailJpegData:[B

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mThumbnailJpegData:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mBitmap:Landroid/graphics/Bitmap;

    .line 212
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mJpegData:[B

    if-eqz v0, :cond_2

    .line 204
    const-string v0, "LastContentData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No thumbnail in exif. create thumbnail from jpeg, mSampleSize : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mSampleSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget v2, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mSampleSize:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mJpegData:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mJpegData:[B

    array-length v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mBitmap:Landroid/graphics/Bitmap;

    .line 210
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 208
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mJpegData:[B

    .line 52
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iput-object v2, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mThumbnailJpegData:[B

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 57
    iput-object v2, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mBitmap:Landroid/graphics/Bitmap;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 61
    iput-object v2, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentUri:Landroid/net/Uri;

    .line 64
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mIsVideoType:Z

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 67
    iput-object v2, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mFilePath:Ljava/lang/String;

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 71
    iput-object v2, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mTitle:Ljava/lang/String;

    .line 73
    :cond_3
    return-void

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearCaptureData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mJpegData:[B

    .line 78
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iput-object v2, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mThumbnailJpegData:[B

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 81
    iput-object v2, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mBitmap:Landroid/graphics/Bitmap;

    .line 83
    :cond_0
    return-void

    .line 78
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/LastContentData;

    .line 88
    .local v0, "cloneObj":Lcom/sec/android/app/camera/engine/LastContentData;
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mJpegData:[B

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mJpegData:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/sec/android/app/camera/engine/LastContentData;->mJpegData:[B

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mThumbnailJpegData:[B

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mThumbnailJpegData:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/sec/android/app/camera/engine/LastContentData;->mThumbnailJpegData:[B

    .line 95
    :cond_1
    return-object v0
.end method

.method public getCaptureBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/LastContentData;->prepareCaptureBitmap()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getCaptureData()[B
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mJpegData:[B

    monitor-exit v1

    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mDateTaken:J

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mOrientation:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isContentVideoType()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mIsVideoType:Z

    return v0
.end method

.method public isJpegDataAvailable()Z
    .locals 2

    .prologue
    .line 169
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mJpegData:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCaptureData([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "sampleSize"    # I

    .prologue
    .line 176
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_0
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mJpegData:[B

    .line 178
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iput p2, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mSampleSize:I

    .line 180
    return-void

    .line 178
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCaptureThumbnailData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 183
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mThumbnailJpegData:[B

    .line 184
    return-void
.end method

.method public setContentUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentUri:Landroid/net/Uri;

    .line 122
    return-void
.end method

.method public setContentVideoType(Z)V
    .locals 0
    .param p1, "video"    # Z

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mIsVideoType:Z

    .line 165
    return-void
.end method

.method public setDateTaken(J)V
    .locals 1
    .param p1, "date"    # J

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mDateTaken:J

    .line 130
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mFilePath:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mOrientation:I

    .line 148
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mTitle:Ljava/lang/String;

    .line 156
    return-void
.end method

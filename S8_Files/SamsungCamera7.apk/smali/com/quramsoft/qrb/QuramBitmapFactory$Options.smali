.class public Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
.super Ljava/lang/Object;
.source "QuramBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quramsoft/qrb/QuramBitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quramsoft/qrb/QuramBitmapFactory$Options$Config;,
        Lcom/quramsoft/qrb/QuramBitmapFactory$Options$DecodeFromOption;,
        Lcom/quramsoft/qrb/QuramBitmapFactory$Options$InputType;
    }
.end annotation


# instance fields
.field public inCancelingRequested:Z

.field public inDecodeFromOption:I

.field public inDither:Z

.field public inInputType:I

.field public inPreferredConfig:I

.field public inQualityOverSpeed:I

.field public inSampleSize:I

.field private mDecodeHandle:J

.field private mExifHandle:J

.field private mHeight:I

.field private mMidpoint:[B

.field private mMidpointOffset:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1232
    const/4 v0, 0x7

    iput v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    .line 1234
    const/4 v0, 0x1

    iput v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 1235
    iput-boolean v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inDither:Z

    .line 1237
    iput v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inQualityOverSpeed:I

    .line 1238
    iput v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inInputType:I

    .line 1239
    iput v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inDecodeFromOption:I

    .line 1242
    iput-wide v2, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mDecodeHandle:J

    .line 1243
    iput v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mWidth:I

    .line 1244
    iput v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mHeight:I

    .line 1246
    iput-wide v2, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mExifHandle:J

    .line 1248
    iput-boolean v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    .line 1256
    return-void
.end method

.method static synthetic access$0(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 1

    .prologue
    .line 1243
    iget v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mWidth:I

    return v0
.end method

.method static synthetic access$1(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 1

    .prologue
    .line 1244
    iget v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mHeight:I

    return v0
.end method

.method static synthetic access$2(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)[B
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mMidpoint:[B

    return-object v0
.end method

.method static synthetic access$3(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 1

    .prologue
    .line 1251
    iget v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mMidpointOffset:I

    return v0
.end method

.method static synthetic access$4(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)V
    .locals 0

    .prologue
    .line 1243
    iput p1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mWidth:I

    return-void
.end method

.method static synthetic access$5(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)V
    .locals 0

    .prologue
    .line 1244
    iput p1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mHeight:I

    return-void
.end method


# virtual methods
.method protected getExif()J
    .locals 2

    .prologue
    .line 1301
    iget-wide v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mExifHandle:J

    return-wide v0
.end method

.method protected getHandle()J
    .locals 2

    .prologue
    .line 1280
    iget-wide v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mDecodeHandle:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1265
    iget v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mHeight:I

    return v0
.end method

.method public getMidpoint()[B
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mMidpoint:[B

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1260
    iget v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mWidth:I

    return v0
.end method

.method protected setExif(J)V
    .locals 1
    .param p1, "handle"    # J

    .prologue
    .line 1306
    iput-wide p1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mExifHandle:J

    .line 1307
    return-void
.end method

.method protected setHandle(J)V
    .locals 1
    .param p1, "handle"    # J

    .prologue
    .line 1285
    iput-wide p1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mDecodeHandle:J

    .line 1286
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 1275
    iput p1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mHeight:I

    .line 1276
    return-void
.end method

.method public setMidpoint([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mMidpoint:[B

    .line 1296
    iput p2, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mMidpointOffset:I

    .line 1297
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 1270
    iput p1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mWidth:I

    .line 1271
    return-void
.end method

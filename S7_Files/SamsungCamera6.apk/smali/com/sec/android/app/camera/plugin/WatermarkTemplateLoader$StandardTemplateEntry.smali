.class public final Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;
.super Ljava/lang/Object;
.source "WatermarkTemplateLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StandardTemplateEntry"
.end annotation


# instance fields
.field private mCategory:I

.field private mExtraMsg:[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

.field private mId:I

.field private mImageResourceId:I

.field private mPositionType:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;


# direct methods
.method public varargs constructor <init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "category"    # I
    .param p3, "imageResourceId"    # I
    .param p4, "pos"    # Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;
    .param p5, "extraMessages"    # [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    iput-object v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->mExtraMsg:[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    .line 397
    iput p1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->mId:I

    .line 398
    iput p2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->mCategory:I

    .line 399
    iput p3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->mImageResourceId:I

    .line 400
    iput-object p4, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->mPositionType:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    .line 402
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p5

    if-ge v0, v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->mExtraMsg:[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    aget-object v2, p5, v0

    aput-object v2, v1, v0

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    .prologue
    .line 389
    iget v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->mId:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    .prologue
    .line 389
    iget v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->mCategory:I

    return v0
.end method


# virtual methods
.method public getCategory()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->mCategory:I

    return v0
.end method

.method public getCommandId()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->mId:I

    return v0
.end method

.method public getDefaultPositionType()Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->mPositionType:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    return-object v0
.end method

.method public getExtraMsg()[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->mExtraMsg:[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    return-object v0
.end method

.method public getImageResourceId()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->mImageResourceId:I

    return v0
.end method

.class public Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;
.super Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;
.source "PlugInStickerStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WatermarkInfo"
.end annotation


# instance fields
.field public final captureResourceId:I

.field public final previewResourceHeight:I

.field public final previewResourceId:I

.field public final previewResourceWidth:I

.field public final watermarkTextInfo:[Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIII[Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;II)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "stickerName"    # Ljava/lang/String;
    .param p3, "thumbnailResourceId"    # I
    .param p4, "previewResourceId"    # I
    .param p5, "previewResourceWidth"    # I
    .param p6, "previewResourceHeight"    # I
    .param p7, "captureResourceId"    # I
    .param p8, "watermarkTextInfo"    # [Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;
    .param p9, "subOrder"    # I
    .param p10, "commandId"    # I

    .prologue
    .line 470
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p9

    move/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 472
    iput p4, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;->previewResourceId:I

    .line 473
    iput p5, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;->previewResourceWidth:I

    .line 474
    iput p6, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;->previewResourceHeight:I

    .line 475
    iput p7, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;->captureResourceId:I

    .line 476
    iput-object p8, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;->watermarkTextInfo:[Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;

    .line 477
    return-void
.end method

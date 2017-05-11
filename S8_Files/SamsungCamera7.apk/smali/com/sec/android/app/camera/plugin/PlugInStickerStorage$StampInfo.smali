.class public Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StampInfo;
.super Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;
.source "PlugInStickerStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StampInfo"
.end annotation


# instance fields
.field public final previewResourceHeight:I

.field public final previewResourceWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "stickerName"    # Ljava/lang/String;
    .param p3, "thumbnailResourceId"    # I
    .param p4, "previewResourceWidth"    # I
    .param p5, "previewResourceHeight"    # I
    .param p6, "subOrder"    # I
    .param p7, "commandId"    # I

    .prologue
    .line 357
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 359
    iput p4, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StampInfo;->previewResourceWidth:I

    .line 360
    iput p5, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StampInfo;->previewResourceHeight:I

    .line 361
    return-void
.end method

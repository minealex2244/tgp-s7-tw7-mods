.class Lcom/sec/android/app/camera/engine/CommonEngine$26;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;->makeAndUpdateThumbnail([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

.field final synthetic val$intData:[I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;[I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/engine/CommonEngine;

    .prologue
    .line 8806
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->val$intData:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 8809
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->val$intData:[I

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentThumbnailWidth:I
    invoke-static {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5100(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentThumbnailHeight:I
    invoke-static {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5200(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8810
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mOrientationOnTake:I
    invoke-static {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4200(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v2

    .line 8811
    .local v2, "orientation":I
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mIsBurstCapturing:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5300(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8812
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureEventListener:Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8813
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureEventListener:Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;->onBurstCaptureThumbnailTaken(Landroid/graphics/Bitmap;I)V

    .line 8820
    :cond_0
    :goto_0
    return-void

    .line 8816
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v3

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 8817
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->isPostProcessedThumbnailPictureCallbackAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 8818
    .local v1, "isNeedFlip":Z
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateThumbnail(Landroid/graphics/Bitmap;IZ)V

    goto :goto_0

    .line 8817
    .end local v1    # "isNeedFlip":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

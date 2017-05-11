.class Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

.field final synthetic val$intData:[I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;[I)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

    .prologue
    .line 9699
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->val$intData:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 9702
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->val$intData:[I

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentThumbnailWidth:I
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6900(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

    iget-object v4, v4, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentThumbnailHeight:I
    invoke-static {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$7000(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 9703
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

    iget-object v2, v2, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mLastOrientation:I
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2400(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v1

    .line 9704
    .local v1, "orientation":I
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

    iget-object v2, v2, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mIsBurstCapturing:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$7200(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9705
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

    iget-object v2, v2, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureEventListener:Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;
    invoke-static {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$7300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9706
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

    iget-object v2, v2, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureEventListener:Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;
    invoke-static {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$7300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;->onBurstCaptureThumbnailTaken(Landroid/graphics/Bitmap;I)V

    .line 9711
    :cond_0
    :goto_0
    return-void

    .line 9709
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

    iget-object v2, v2, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateThumbnail(Landroid/graphics/Bitmap;IZ)V

    goto :goto_0
.end method

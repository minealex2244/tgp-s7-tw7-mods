.class Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$2;
.super Ljava/lang/Object;
.source "StickerRectHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->updateWatermarkImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$2;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 774
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$2;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    # getter for: Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkInfo:Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->access$100(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 775
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$2;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$2;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    # getter for: Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkInfo:Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;
    invoke-static {v2}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->access$100(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;

    move-result-object v2

    # invokes: Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->getWatermarkImage(ILcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;)Landroid/graphics/Bitmap;
    invoke-static {v1, v4, v2}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->access$200(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;ILcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 776
    .local v0, "captureBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$2;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    # getter for: Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkImageUpdateListener:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$WatermarkImageUpdateListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->access$300(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;)Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$WatermarkImageUpdateListener;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-interface {v1, v4, v0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$WatermarkImageUpdateListener;->onWatermarkImageUpdate(ILjava/lang/Object;II)V

    .line 777
    const-string v1, "StickerRectHandler"

    const-string v2, "updateWatermarkImage end"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    .end local v0    # "captureBitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

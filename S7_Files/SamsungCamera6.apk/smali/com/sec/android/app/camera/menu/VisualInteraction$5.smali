.class Lcom/sec/android/app/camera/menu/VisualInteraction$5;
.super Ljava/lang/Object;
.source "VisualInteraction.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/VisualInteraction;->startCameraSwitchingAnimation([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

.field final synthetic val$blurImageWidth:I

.field final synthetic val$isFront:Z

.field final synthetic val$previewHeight:I

.field final synthetic val$previewWidth:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/VisualInteraction;IIIZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/VisualInteraction;

    .prologue
    .line 955
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    iput p2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->val$blurImageWidth:I

    iput p3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->val$previewHeight:I

    iput p4, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->val$previewWidth:I

    iput-boolean p5, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->val$isFront:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 958
    const-string v0, "Camera6VI"

    const-string v1, "mPreviewImage Image onAnimationEnd"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$700(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$800(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$700(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 962
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$700(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 963
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$702(Lcom/sec/android/app/camera/menu/VisualInteraction;Lcom/samsung/android/glview/GLImage;)Lcom/samsung/android/glview/GLImage;

    .line 965
    :cond_0
    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 10
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 970
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$900(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 971
    const-string v3, "Camera6VI"

    const-string v4, "Camera is pausing. Skip mPreviewImage onAnimationStart"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$1000(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->completeWaitAsync()V

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    const-string v3, "Camera6VI"

    const-string v4, "mPreviewImage Image onAnimationStart"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$400(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$1100(Lcom/sec/android/app/camera/menu/VisualInteraction;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 977
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$400(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 978
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$400(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 979
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v9}, Lcom/sec/android/app/camera/menu/VisualInteraction;->showBlackOverlay(FLcom/samsung/android/glview/GLViewGroup;)V

    .line 981
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$1000(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->completeWaitAsync()V

    .line 985
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$1100(Lcom/sec/android/app/camera/menu/VisualInteraction;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->val$blurImageWidth:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->val$blurImageWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->val$previewHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->val$previewWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 991
    .local v2, "scaledBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$900(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/util/ImageUtils;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 994
    .local v0, "blurBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$400(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 995
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$400(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/glview/GLImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 996
    iget-boolean v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->val$isFront:Z

    if-eqz v3, :cond_3

    .line 997
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$400(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setFlip(Z)V

    .line 1002
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$1100(Lcom/sec/android/app/camera/menu/VisualInteraction;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1003
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$1100(Lcom/sec/android/app/camera/menu/VisualInteraction;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1004
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # setter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v9}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$1102(Lcom/sec/android/app/camera/menu/VisualInteraction;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 986
    .end local v0    # "blurBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "scaledBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 987
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "Camera6VI"

    const-string v4, "fail to make scaled bitmap from mBitmap"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 999
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "blurBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$400(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/samsung/android/glview/GLImage;->setFlip(Z)V

    goto :goto_1
.end method

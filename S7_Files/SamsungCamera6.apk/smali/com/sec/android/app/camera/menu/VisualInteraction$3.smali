.class Lcom/sec/android/app/camera/menu/VisualInteraction$3;
.super Ljava/lang/Object;
.source "VisualInteraction.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/VisualInteraction;->hideCameraSwitchingAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/VisualInteraction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/VisualInteraction;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$3;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 636
    const-string v0, "Camera6VI"

    const-string v1, "Hide blur image onAnimationEnd"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$3;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsBlurImageAnimating:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$302(Lcom/sec/android/app/camera/menu/VisualInteraction;Z)Z

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$3;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$400(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$3;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$400(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$3;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$400(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 641
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$3;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$402(Lcom/sec/android/app/camera/menu/VisualInteraction;Lcom/samsung/android/glview/GLImage;)Lcom/samsung/android/glview/GLImage;

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$3;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationFinished:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$502(Lcom/sec/android/app/camera/menu/VisualInteraction;Z)Z

    .line 644
    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 649
    const-string v0, "Camera6VI"

    const-string v1, "Hide blur image onAnimationStart"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$3;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsBlurImageAnimating:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$302(Lcom/sec/android/app/camera/menu/VisualInteraction;Z)Z

    .line 651
    return-void
.end method

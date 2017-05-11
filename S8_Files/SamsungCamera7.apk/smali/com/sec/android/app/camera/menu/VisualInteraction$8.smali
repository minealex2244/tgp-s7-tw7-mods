.class Lcom/sec/android/app/camera/menu/VisualInteraction$8;
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


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/VisualInteraction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/VisualInteraction;

    .prologue
    .line 1495
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$8;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 1498
    const-string v0, "Camera7VI"

    const-string v1, "mBlurImage Image onAnimationEnd"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$8;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # setter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsBlurImageAnimating:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$302(Lcom/sec/android/app/camera/menu/VisualInteraction;Z)Z

    .line 1501
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$8;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mHideSwitchingAnimationLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$1400(Lcom/sec/android/app/camera/menu/VisualInteraction;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1502
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$8;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsHideSwitchingAnimationWaiting:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$1500(Lcom/sec/android/app/camera/menu/VisualInteraction;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1503
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$8;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # invokes: Lcom/sec/android/app/camera/menu/VisualInteraction;->hideCameraSwitchingAnimation()V
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$1600(Lcom/sec/android/app/camera/menu/VisualInteraction;)V

    .line 1504
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$8;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsHideSwitchingAnimationWaiting:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$1502(Lcom/sec/android/app/camera/menu/VisualInteraction;Z)Z

    .line 1506
    :cond_0
    monitor-exit v1

    .line 1507
    return-void

    .line 1506
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1511
    const-string v0, "Camera7VI"

    const-string v1, "mBlurImage Image onAnimationStart"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$8;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsBlurImageAnimating:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$302(Lcom/sec/android/app/camera/menu/VisualInteraction;Z)Z

    .line 1513
    return-void
.end method

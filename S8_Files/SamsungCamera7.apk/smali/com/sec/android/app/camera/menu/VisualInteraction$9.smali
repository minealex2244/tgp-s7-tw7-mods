.class Lcom/sec/android/app/camera/menu/VisualInteraction$9;
.super Ljava/lang/Object;
.source "VisualInteraction.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/VisualInteraction;->startPreviewAngleChangingAnimation([B)V
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
    .line 1565
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$9;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$9;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewAngleChangeAnimationFlagLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$1700(Lcom/sec/android/app/camera/menu/VisualInteraction;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1569
    :try_start_0
    const-string v0, "Camera7VI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreviewAngleChangingAnimation mPreviewImage onAnimationEnd, hide animation requested : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$9;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsRecordingFOVGuideHideAnimationRequested:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$1800(Lcom/sec/android/app/camera/menu/VisualInteraction;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$9;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsPreviewAngleChangingAnimationRunning:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$1902(Lcom/sec/android/app/camera/menu/VisualInteraction;Z)Z

    .line 1572
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$9;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsRecordingFOVGuideHideAnimationRequested:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$1800(Lcom/sec/android/app/camera/menu/VisualInteraction;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$9;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsRecordingFOVGuideHideAnimationRequested:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$1802(Lcom/sec/android/app/camera/menu/VisualInteraction;Z)Z

    .line 1574
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$9;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # invokes: Lcom/sec/android/app/camera/menu/VisualInteraction;->hidePreviewAngleChangingAnimation()V
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$2000(Lcom/sec/android/app/camera/menu/VisualInteraction;)V

    .line 1576
    :cond_0
    monitor-exit v1

    .line 1577
    return-void

    .line 1576
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1581
    const-string v0, "Camera7VI"

    const-string v1, "startPreviewAngleChangingAnimation mPreviewImage onAnimationStart"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$9;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/menu/VisualInteraction;->showBlackOverlay(FLcom/samsung/android/glview/GLViewGroup;)V

    .line 1583
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$9;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$1200(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->completeWaitAsync()V

    .line 1584
    return-void
.end method

.class Lcom/sec/android/app/camera/Camera$11;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 662
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 663
    const/4 v1, 0x0

    .line 664
    .local v1, "recreateSurface":Z
    const-string v3, "Camera6"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLayoutChangedRunnable : orientation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCurrentWindowOrientation:I
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCurrentWindowWidth:I
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$1300(Lcom/sec/android/app/camera/Camera;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCurrentWindowHeight:I
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$1400(Lcom/sec/android/app/camera/Camera;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLastWindowOrientation:I
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1500(Lcom/sec/android/app/camera/Camera;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCurrentWindowOrientation:I
    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 667
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCurrentWindowOrientation:I
    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)I

    move-result v4

    # setter for: Lcom/sec/android/app/camera/Camera;->mLastWindowOrientation:I
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/Camera;->access$1502(Lcom/sec/android/app/camera/Camera;I)I

    .line 668
    const-string v3, "Camera6"

    const-string v4, "onPreDraw: orientation is changed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    .line 670
    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isPreviewChangingAnimationRunning()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v3

    if-nez v3, :cond_0

    .line 671
    const/4 v1, 0x1

    .line 673
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 674
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->setPreviewAnimation(I)V

    .line 675
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startPreviewAnimation([B)V

    .line 679
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 681
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 682
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    .line 688
    .local v2, "resolutionId":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->getPreviewFrameLayout()Lcom/sec/android/app/camera/PreviewFrameLayout;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    .line 689
    .local v0, "previewLayout":Lcom/sec/android/app/camera/PreviewFrameLayout;
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 690
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 691
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/Camera;->resizePreviewAspectRatio(I)Z

    .line 692
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 697
    .end local v0    # "previewLayout":Lcom/sec/android/app/camera/PreviewFrameLayout;
    .end local v2    # "resolutionId":I
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCurrentWindowOrientation:I
    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCurrentWindowWidth:I
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$1300(Lcom/sec/android/app/camera/Camera;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCurrentWindowHeight:I
    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$1400(Lcom/sec/android/app/camera/Camera;)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/app/camera/Camera;->onLayoutChangedEvent(III)V

    .line 699
    .end local v1    # "recreateSurface":Z
    :cond_3
    return-void

    .line 684
    .restart local v1    # "recreateSurface":Z
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v2

    .restart local v2    # "resolutionId":I
    goto :goto_0

    .line 694
    .restart local v0    # "previewLayout":Lcom/sec/android/app/camera/PreviewFrameLayout;
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/Camera;->resizePreviewAspectRatio(I)Z

    goto :goto_1
.end method

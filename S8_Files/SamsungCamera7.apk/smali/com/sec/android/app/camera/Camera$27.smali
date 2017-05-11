.class Lcom/sec/android/app/camera/Camera$27;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->initCoverCamera()V
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
    .line 6811
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$27;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 5
    .param p1, "state"    # Lcom/samsung/android/sdk/cover/ScoverState;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 6814
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$27;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsPausing:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6815
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$27;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$3500(Lcom/sec/android/app/camera/Camera;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object p1

    .line 6816
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->isFakeCover()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6817
    :cond_0
    const-string v0, "Camera7"

    const-string v1, "Cover state is null or fake, so do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6846
    :cond_1
    :goto_0
    return-void

    .line 6820
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$27;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    # setter for: Lcom/sec/android/app/camera/Camera;->mCoverType:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$3602(Lcom/sec/android/app/camera/Camera;I)I

    .line 6821
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$27;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCoverType:I
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$3600(Lcom/sec/android/app/camera/Camera;)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$27;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCoverType:I
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$3600(Lcom/sec/android/app/camera/Camera;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$27;->this$0:Lcom/sec/android/app/camera/Camera;

    .line 6822
    # getter for: Lcom/sec/android/app/camera/Camera;->mCoverType:I
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$3600(Lcom/sec/android/app/camera/Camera;)I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    .line 6824
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$27;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsCoverAttached:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$3700(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getAttachState()Z

    move-result v0

    if-ne v0, v3, :cond_4

    .line 6825
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$27;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "camera.action.COVER_ATTACHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 6833
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$27;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getAttachState()Z

    move-result v1

    # setter for: Lcom/sec/android/app/camera/Camera;->mIsCoverAttached:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$3702(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 6834
    const-string v0, "Camera7"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverStateChanged mCoverType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$27;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCoverType:I
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$3600(Lcom/sec/android/app/camera/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsCoverAttached "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$27;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsCoverAttached:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$3700(Lcom/sec/android/app/camera/Camera;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6836
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    if-ne v0, v3, :cond_5

    .line 6837
    const-string v0, "Camera7"

    const-string v1, "State Cover Open"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6838
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$27;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mIsCoverOpen:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Camera;->access$3802(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 6839
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$27;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->setCoverModeChanged(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;Z)V

    goto/16 :goto_0

    .line 6828
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$27;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsCoverAttached:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$3700(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getAttachState()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6829
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$27;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "camera.action.COVER_DETACHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 6841
    :cond_5
    const-string v0, "Camera7"

    const-string v1, "State Cover Close"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6842
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$27;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mIsCoverOpen:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/Camera;->access$3802(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 6843
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$27;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->setCoverModeChanged(Z)V
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;Z)V

    goto/16 :goto_0
.end method

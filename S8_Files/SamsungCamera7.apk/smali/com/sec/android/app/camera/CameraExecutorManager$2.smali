.class Lcom/sec/android/app/camera/CameraExecutorManager$2;
.super Ljava/lang/Object;
.source "CameraExecutorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraExecutorManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraExecutorManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager$2;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$2;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    # setter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$402(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/samsung/android/sdk/bixby/BixbyApi;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$2;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # getter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$400(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setActiveApp(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$2;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # invokes: Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$500(Lcom/sec/android/app/camera/CameraExecutorManager;)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$2;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # getter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$600(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/samsung/android/sdk/bixby/data/State;

    move-result-object v0

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/data/State;->setStateId(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$2;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # getter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$600(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/samsung/android/sdk/bixby/data/State;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/data/State;->setLandingState(Ljava/lang/Boolean;)V

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$2;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # getter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$600(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/samsung/android/sdk/bixby/data/State;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/data/State;->setLastState(Ljava/lang/Boolean;)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$2;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # getter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$800(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager$2;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # invokes: Lcom/sec/android/app/camera/CameraExecutorManager;->getCameraExecutorManager()Lcom/sec/android/app/camera/CameraExecutorManager;
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$700(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/CameraExecutorManager;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$2;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # invokes: Lcom/sec/android/app/camera/CameraExecutorManager;->initLastLandingState()V
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$900(Lcom/sec/android/app/camera/CameraExecutorManager;)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$2;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # invokes: Lcom/sec/android/app/camera/CameraExecutorManager;->registerInterimStateListener()V
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$1000(Lcom/sec/android/app/camera/CameraExecutorManager;)V

    .line 196
    return-void
.end method

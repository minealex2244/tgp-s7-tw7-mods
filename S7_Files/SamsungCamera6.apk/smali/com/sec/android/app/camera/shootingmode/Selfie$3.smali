.class Lcom/sec/android/app/camera/shootingmode/Selfie$3;
.super Ljava/lang/Object;
.source "Selfie.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/Selfie;->onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Selfie;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 569
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 589
    :cond_0
    :goto_0
    return v2

    .line 572
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SHAPECORRECTION:Z

    if-eqz v0, :cond_3

    .line 573
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$300(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    const/16 v1, 0x81

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(IZ)Lcom/sec/android/app/camera/interfaces/MenuBase;

    .line 574
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Selfie;->hideBeautyMenuButton()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$400(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsWeChatSightModeSupported:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$500(Lcom/sec/android/app/camera/shootingmode/Selfie;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Selfie;->hideSightIcon()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$600(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    .line 578
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$700(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsActivatedSpotLightSlider:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$802(Lcom/sec/android/app/camera/shootingmode/Selfie;Z)Z

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$900(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    goto :goto_0

    .line 583
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$300(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    const/16 v1, 0x82

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(IZ)Lcom/sec/android/app/camera/interfaces/MenuBase;

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Selfie;->hideBeautyMenuButton()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$400(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsWeChatSightModeSupported:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$500(Lcom/sec/android/app/camera/shootingmode/Selfie;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Selfie;->hideSightIcon()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$600(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    goto :goto_0
.end method

.class Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;
.super Ljava/lang/Object;
.source "VideoCollage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/VideoCollage;->handleSwitchCameraCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

.field final synthetic val$pInstance:Lcom/sec/android/app/camera/shootingmode/VideoCollage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage;Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 1710
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->val$pInstance:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x12

    .line 1713
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    # getter for: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$200(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1714
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    # getter for: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$1500(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->removeMenu(I)V

    .line 1715
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    # getter for: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$1500(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    # setter for: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$1602(Lcom/sec/android/app/camera/shootingmode/VideoCollage;Lcom/sec/android/app/camera/menu/ZoomSliderMenu;)Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .line 1716
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    # getter for: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$1600(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->val$pInstance:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 1717
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    # getter for: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$1600(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->val$pInstance:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 1720
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_1

    .line 1721
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    # getter for: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$1500(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    const/16 v2, 0x7f

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # setter for: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$1702(Lcom/sec/android/app/camera/shootingmode/VideoCollage;Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .line 1722
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    # getter for: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$1700(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->val$pInstance:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 1724
    :cond_1
    return-void
.end method

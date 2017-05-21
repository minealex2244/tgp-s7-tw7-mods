.class Lcom/sec/android/app/camera/shootingmode/Auto$1;
.super Ljava/lang/Object;
.source "Auto.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/Auto;->onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Auto;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Auto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/shootingmode/Auto;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Auto$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Auto;

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

    .line 503
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 513
    :goto_0
    return v2

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Auto;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Auto;->access$000(Lcom/sec/android/app/camera/shootingmode/Auto;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    const/16 v1, 0x71

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(IZ)Lcom/sec/android/app/camera/interfaces/MenuBase;

    .line 507
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Auto;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Auto;->mBeautyLevelSliderMenuButton:Lcom/samsung/android/glview/GLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Auto;->access$100(Lcom/sec/android/app/camera/shootingmode/Auto;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Auto;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Auto;->mIsWeChatSightModeSupported:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Auto;->access$200(Lcom/sec/android/app/camera/shootingmode/Auto;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Auto;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Auto;->hideSightIcon()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Auto;->access$300(Lcom/sec/android/app/camera/shootingmode/Auto;)V

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Auto;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Auto;->access$400(Lcom/sec/android/app/camera/shootingmode/Auto;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Auto;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Auto;->access$400(Lcom/sec/android/app/camera/shootingmode/Auto;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideTouchEVSlider()V

    goto :goto_0
.end method

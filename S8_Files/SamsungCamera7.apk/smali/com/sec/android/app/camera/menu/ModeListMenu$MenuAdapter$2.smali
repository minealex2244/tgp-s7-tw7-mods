.class Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$2;
.super Ljava/lang/Object;
.source "ModeListMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/gl/ModeItem$SelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    .prologue
    .line 1634
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/samsung/android/glview/GLView;)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 1637
    check-cast p1, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .end local p1    # "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByShootingModeCommandID(IZ)Ljava/lang/String;

    move-result-object v0

    .line 1638
    .local v0, "modeDetail":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1639
    const-string v1, "1202"

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsNeedShowBaseMenu:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$702(Lcom/sec/android/app/camera/menu/ModeListMenu;Z)Z

    .line 1642
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$600(Lcom/sec/android/app/camera/menu/ModeListMenu;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V

    .line 1643
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideMenu()V

    .line 1644
    return-void
.end method

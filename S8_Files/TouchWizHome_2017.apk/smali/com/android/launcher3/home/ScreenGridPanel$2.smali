.class Lcom/android/launcher3/home/ScreenGridPanel$2;
.super Ljava/lang/Object;
.source "ScreenGridPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/ScreenGridPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/ScreenGridPanel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/ScreenGridPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/ScreenGridPanel;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/launcher3/home/ScreenGridPanel$2;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 332
    const-string v1, "ScreenGridPanel"

    const-string v2, "ScreenGrid save button clicked."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel$2;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mHomeController:Lcom/android/launcher3/home/HomeController;
    invoke-static {v1}, Lcom/android/launcher3/home/ScreenGridPanel;->access$300(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel$2;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mHomeController:Lcom/android/launcher3/home/HomeController;
    invoke-static {v1}, Lcom/android/launcher3/home/ScreenGridPanel;->access$300(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->applyGridChangeFinally()V

    .line 336
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel$2;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mHomeController:Lcom/android/launcher3/home/HomeController;
    invoke-static {v1}, Lcom/android/launcher3/home/ScreenGridPanel;->access$300(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->finishAllStage()V

    .line 337
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel$2;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mHomeController:Lcom/android/launcher3/home/HomeController;
    invoke-static {v1}, Lcom/android/launcher3/home/ScreenGridPanel;->access$300(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel$2;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v1}, Lcom/android/launcher3/home/ScreenGridPanel;->access$200(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 341
    .local v0, "grid":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v2

    iget-object v3, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 342
    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v3

    const/4 v4, 0x0

    .line 341
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertChangeGridLog(IIZZ)V

    .line 344
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel$2;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel$2;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v2}, Lcom/android/launcher3/home/ScreenGridPanel;->access$200(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v2

    # setter for: Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellX:I
    invoke-static {v1, v2}, Lcom/android/launcher3/home/ScreenGridPanel;->access$602(Lcom/android/launcher3/home/ScreenGridPanel;I)I

    .line 345
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel$2;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel$2;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v2}, Lcom/android/launcher3/home/ScreenGridPanel;->access$200(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v2

    # setter for: Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellY:I
    invoke-static {v1, v2}, Lcom/android/launcher3/home/ScreenGridPanel;->access$702(Lcom/android/launcher3/home/ScreenGridPanel;I)I

    .line 346
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel$2;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/launcher3/home/ScreenGridPanel;->access$500(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel$2;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/launcher3/home/ScreenGridPanel;->access$400(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 350
    return-void
.end method

.class Lcom/android/launcher3/home/HomeController$32;
.super Ljava/lang/Object;
.source "HomeController.java"

# interfaces
.implements Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 4146
    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$32;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canCapture()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4154
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$32;->this$0:Lcom/android/launcher3/home/HomeController;

    # getter for: Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeController;->access$500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$32;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$32;->this$0:Lcom/android/launcher3/home/HomeController;

    # getter for: Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeController;->access$500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController$32;->this$0:Lcom/android/launcher3/home/HomeController;

    # getter for: Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;
    invoke-static {v2}, Lcom/android/launcher3/home/HomeController;->access$500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$32;->this$0:Lcom/android/launcher3/home/HomeController;

    .line 4155
    # getter for: Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeController;->access$500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$32;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$32;->this$0:Lcom/android/launcher3/home/HomeController;

    # getter for: Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeController;->access$2100(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4156
    :cond_0
    const-string v0, "Launcher.HomeController"

    const-string v1, "canCapture false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4157
    const/4 v0, 0x0

    .line 4159
    :cond_1
    return v0
.end method

.method public getTargetView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 4149
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$32;->this$0:Lcom/android/launcher3/home/HomeController;

    # getter for: Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$2000(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/HomeContainer;

    move-result-object v0

    return-object v0
.end method

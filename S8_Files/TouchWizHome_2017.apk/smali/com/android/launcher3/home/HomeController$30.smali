.class Lcom/android/launcher3/home/HomeController$30;
.super Ljava/lang/Object;
.source "HomeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeController;->exitScreenGridStateDelayed(I)V
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
    .line 3855
    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$30;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3858
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$30;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->cancelGridChange()V

    .line 3859
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$30;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/home/HomeController;->enterOverviewState(Z)V

    .line 3860
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$30;->this$0:Lcom/android/launcher3/home/HomeController;

    # getter for: Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeController;->access$500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v2

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$30;->this$0:Lcom/android/launcher3/home/HomeController;

    .line 3861
    # getter for: Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeController;->access$500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$30;->this$0:Lcom/android/launcher3/home/HomeController;

    # getter for: Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;
    invoke-static {v3}, Lcom/android/launcher3/home/HomeController;->access$500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 3860
    invoke-virtual {v2, v1}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomePageBg(Lcom/android/launcher3/home/WorkspaceCellLayout;)V

    .line 3863
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$30;->this$0:Lcom/android/launcher3/home/HomeController;

    # invokes: Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeController;->access$1600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getStackSize()I

    move-result v1

    if-le v1, v5, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/GlobalSettingUtils;->getStartSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3864
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$30;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    .line 3865
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 3866
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean v4, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 3867
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$30;->this$0:Lcom/android/launcher3/home/HomeController;

    # invokes: Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeController;->access$1700(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 3869
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_0
    return-void
.end method

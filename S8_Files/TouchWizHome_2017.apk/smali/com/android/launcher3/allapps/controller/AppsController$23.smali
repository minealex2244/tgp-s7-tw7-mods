.class Lcom/android/launcher3/allapps/controller/AppsController$23;
.super Ljava/lang/Object;
.source "AppsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsController;->startSettingActivity(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 2832
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$23;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2835
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 2836
    .local v0, "gridXY":[I
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$23;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    # getter for: Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->access$600(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    .line 2837
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$23;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    # invokes: Lcom/android/launcher3/allapps/controller/AppsController;->repositionByGrid([I)V
    invoke-static {v1, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$700(Lcom/android/launcher3/allapps/controller/AppsController;[I)V

    .line 2838
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$23;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    .line 2839
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$23;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 2840
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$23;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    # invokes: Lcom/android/launcher3/allapps/controller/AppsController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;
    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->access$800(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController$23;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 2841
    return-void
.end method

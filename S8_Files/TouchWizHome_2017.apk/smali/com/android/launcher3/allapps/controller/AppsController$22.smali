.class Lcom/android/launcher3/allapps/controller/AppsController$22;
.super Ljava/lang/Object;
.source "AppsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsController;->findSearchedApp(Ljava/lang/String;Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsController;

.field final synthetic val$data:Lcom/android/launcher3/common/stage/StageEntry;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 2579
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$22;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsController$22;->val$data:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2582
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$22;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    # getter for: Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$500(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController$22;->val$data:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 2583
    return-void
.end method

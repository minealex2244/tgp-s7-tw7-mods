.class Lcom/android/launcher3/home/HomeController$33;
.super Ljava/lang/Object;
.source "HomeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeController;->findAppInFolder(Landroid/view/View;Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeController;

.field final synthetic val$data:Lcom/android/launcher3/common/stage/StageEntry;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 4323
    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$33;->this$0:Lcom/android/launcher3/home/HomeController;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeController$33;->val$data:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4326
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$33;->this$0:Lcom/android/launcher3/home/HomeController;

    # getter for: Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$2200(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController$33;->val$data:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 4327
    return-void
.end method

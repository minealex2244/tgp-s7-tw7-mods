.class Lcom/android/launcher3/allapps/controller/AppsController$18;
.super Ljava/lang/Object;
.source "AppsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsController;->createFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsController;

.field final synthetic val$folder:Lcom/android/launcher3/folder/view/FolderIconView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 2105
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$18;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsController$18;->val$folder:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2108
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 2109
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const-string v1, "KEY_FOLDER_ICON_VIEW"

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController$18;->val$folder:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2110
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$18;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    # invokes: Lcom/android/launcher3/allapps/controller/AppsController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;
    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->access$400(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 2111
    return-void
.end method

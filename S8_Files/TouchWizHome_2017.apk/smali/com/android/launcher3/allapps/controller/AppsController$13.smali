.class Lcom/android/launcher3/allapps/controller/AppsController$13;
.super Ljava/lang/Object;
.source "AppsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsController;->moveItemFromFolder(Lcom/android/launcher3/common/base/item/IconInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsController;

.field final synthetic val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 1552
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$13;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsController$13;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$13;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    # getter for: Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$300(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->closeFolder()V

    .line 1556
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$13;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    # getter for: Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;
    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$13;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-wide v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPageImmediately(I)V

    .line 1557
    return-void
.end method

.class Lcom/android/launcher3/home/HomeController$25;
.super Ljava/lang/Object;
.source "HomeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeController;->moveItemFromFolder(Lcom/android/launcher3/common/base/item/IconInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeController;

.field final synthetic val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 2877
    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$25;->this$0:Lcom/android/launcher3/home/HomeController;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeController$25;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2880
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$25;->this$0:Lcom/android/launcher3/home/HomeController;

    # getter for: Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$1100(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->closeFolder()V

    .line 2881
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$25;->this$0:Lcom/android/launcher3/home/HomeController;

    # getter for: Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$25;->this$0:Lcom/android/launcher3/home/HomeController;

    .line 2882
    # getter for: Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeController;->access$500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController$25;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-wide v2, v2, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v1

    .line 2881
    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->snapToPageImmediately(I)V

    .line 2883
    return-void
.end method

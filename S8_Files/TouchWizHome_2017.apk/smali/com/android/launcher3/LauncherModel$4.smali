.class Lcom/android/launcher3/LauncherModel$4;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->updateAppsForCloneItemEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 1174
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$4;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-boolean p2, p0, Lcom/android/launcher3/LauncherModel$4;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1177
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/LauncherModel$4;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppState;->setCloneItemEnabled(Z)V

    .line 1178
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$4;->val$enabled:Z

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$4;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$4;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;
    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->access$1300(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherModel$LoaderTask;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->bindRemainedItems(Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 1183
    :goto_0
    return-void

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$4;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$4;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;
    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->access$1300(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherModel$LoaderTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->removeCloneItem(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    goto :goto_0
.end method

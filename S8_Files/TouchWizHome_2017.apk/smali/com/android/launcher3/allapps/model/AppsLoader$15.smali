.class Lcom/android/launcher3/allapps/model/AppsLoader$15;
.super Ljava/lang/Object;
.source "AppsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsLoader;->finishBind(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

.field final synthetic val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 879
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$15;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iput-object p2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$15;->val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader$15;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$15;->val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    # invokes: Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z
    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1500(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader$15;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    # getter for: Lcom/android/launcher3/allapps/model/AppsLoader;->mIsSdCardReady:Z
    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1600(Lcom/android/launcher3/allapps/model/AppsLoader;)Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/launcher3/allapps/model/AppsLoader;->sPendingPackages:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1700()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 883
    const-string v0, "AppsLoader"

    const-string v1, "Apps finishBind but has PendingPackages, so registerReceiver : AppsAvailabilityCheck"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    # getter for: Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1900()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/home/HomeLoader$AppsAvailabilityCheck;

    invoke-direct {v1}, Lcom/android/launcher3/home/HomeLoader$AppsAvailabilityCheck;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.launcher3.SYSTEM_READY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 886
    # getter for: Lcom/android/launcher3/allapps/model/AppsLoader;->sWorkerHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1800()Landroid/os/Handler;

    move-result-object v4

    .line 884
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 888
    :cond_0
    return-void
.end method

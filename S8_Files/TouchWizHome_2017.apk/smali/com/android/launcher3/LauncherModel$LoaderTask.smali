.class Lcom/android/launcher3/LauncherModel$LoaderTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHighRankedPage:I

.field private mLoadAndBindStepFinished:Z

.field private mStopped:Z

.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "rank"    # I

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mHighRankedPage:I

    .line 550
    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 551
    iput p3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mHighRankedPage:I

    .line 552
    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/LauncherModel$LoaderTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel$LoaderTask;

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/LauncherModel$LoaderTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel$LoaderTask;

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->updateIconCache()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher3/LauncherModel$LoaderTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel$LoaderTask;

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->endLoaderTask()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/launcher3/LauncherModel$LoaderTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel$LoaderTask;
    .param p1, "x1"    # Z

    .prologue
    .line 542
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    return p1
.end method

.method private endLoaderTask()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 748
    const-string v1, "Launcher.Model"

    const-string v2, "endLoaderTask"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iput-object v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 753
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->access$1000(Lcom/android/launcher3/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 755
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;
    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->access$1300(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherModel$LoaderTask;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 756
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v3, 0x0

    # setter for: Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;
    invoke-static {v1, v3}, Lcom/android/launcher3/LauncherModel;->access$1302(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/LauncherModel$LoaderTask;)Lcom/android/launcher3/LauncherModel$LoaderTask;

    .line 758
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v3, 0x0

    # setter for: Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z
    invoke-static {v1, v3}, Lcom/android/launcher3/LauncherModel;->access$1102(Lcom/android/launcher3/LauncherModel;Z)Z

    .line 759
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v3, 0x1

    # setter for: Lcom/android/launcher3/LauncherModel;->mHasLoaderCompletedOnce:Z
    invoke-static {v1, v3}, Lcom/android/launcher3/LauncherModel;->access$1402(Lcom/android/launcher3/LauncherModel;Z)Z

    .line 761
    # getter for: Lcom/android/launcher3/LauncherModel;->sPackageChangeRunnables:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->access$1500()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 762
    const-string v1, "Launcher.Model"

    const-string v3, "endLoaderTask, run sPackageChangeRunnables"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    # getter for: Lcom/android/launcher3/LauncherModel;->sPackageChangeRunnables:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->access$1500()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 764
    .local v0, "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 768
    .end local v0    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 766
    :cond_1
    :try_start_1
    # getter for: Lcom/android/launcher3/LauncherModel;->sPackageChangeRunnables:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->access$1500()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 768
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 769
    return-void
.end method

.method private loadAndBindAllApps()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 812
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAndBindAllApps mAllAppsLoaded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->access$300(Lcom/android/launcher3/LauncherModel;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$300(Lcom/android/launcher3/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 816
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->setup(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 819
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_1

    .line 820
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v0, v3, v4, v3, p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->startAppsLoaderTask(IZZLcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 822
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_2

    .line 823
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->bindRemainedItems(Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 825
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_4

    .line 826
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->finishBind(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 828
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$200(Lcom/android/launcher3/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 829
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->updateIconCache()V

    .line 830
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mDisableableAppCache:Lcom/android/launcher3/common/model/DisableableAppCache;
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$600(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/DisableableAppCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/DisableableAppCache;->makeDisableableAppList()V

    .line 831
    invoke-static {}, Lcom/android/launcher3/gamehome/GameHomeManager;->getInstance()Lcom/android/launcher3/gamehome/GameHomeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/gamehome/GameHomeManager;->updateGameAppsVisibility()V

    .line 833
    :cond_3
    monitor-enter p0

    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v1, 0x1

    # setter for: Lcom/android/launcher3/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherModel;->access$302(Lcom/android/launcher3/LauncherModel;Z)Z

    .line 835
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$200(Lcom/android/launcher3/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 843
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->endLoaderTask()V

    .line 845
    :cond_5
    return-void

    .line 835
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 838
    :cond_6
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_4

    .line 839
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->bindItemsSync(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    goto :goto_0
.end method

.method private loadAndBindWorkspace()Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 555
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/launcher3/common/model/DataLoader;->setLoadingAndBindingWorkspace(Z)V

    .line 558
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAndBindWorkspace mWorkspaceLoaded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v3}, Lcom/android/launcher3/LauncherModel;->access$200(Lcom/android/launcher3/LauncherModel;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->access$200(Lcom/android/launcher3/LauncherModel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 562
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/home/HomeLoader;->setup(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 563
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # setter for: Lcom/android/launcher3/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v1, v5}, Lcom/android/launcher3/LauncherModel;->access$302(Lcom/android/launcher3/LauncherModel;Z)Z

    .line 565
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mHighRankedPage:I

    invoke-virtual {v2, v3, p0}, Lcom/android/launcher3/home/HomeLoader;->loadPageItems(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p0}, Lcom/android/launcher3/home/HomeLoader;->bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 566
    iput v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mHighRankedPage:I

    .line 569
    new-instance v0, Lcom/android/launcher3/LauncherModel$LoaderTask$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherModel$LoaderTask$1;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;)V

    .line 594
    :goto_0
    return-object v0

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v1, v4, p0}, Lcom/android/launcher3/home/HomeLoader;->bindItemsSync(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 593
    invoke-static {v5}, Lcom/android/launcher3/common/model/DataLoader;->setLoadingAndBindingWorkspace(Z)V

    goto :goto_0
.end method

.method private updateIconCache()V
    .locals 2

    .prologue
    .line 849
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 850
    .local v0, "packagesToIgnore":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/HomeLoader;->getIgnorePackage(Ljava/util/HashSet;)V

    .line 851
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/common/model/IconCache;
    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->access$000(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/IconCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/model/IconCache;->updateDbIcons(Ljava/util/Set;)V

    .line 852
    return-void
.end method

.method private waitForIdle()V
    .locals 6

    .prologue
    .line 602
    monitor-enter p0

    .line 603
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 605
    .local v0, "workspaceWaitTime":J
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/common/model/DeferredHandler;
    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->access$900(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/LauncherModel$LoaderTask$2;

    invoke-direct {v3, p0}, Lcom/android/launcher3/LauncherModel$LoaderTask$2;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/model/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 618
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 622
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 623
    :catch_0
    move-exception v2

    goto :goto_0

    .line 628
    :cond_0
    :try_start_2
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 629
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms for previous step to finish binding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 628
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    monitor-exit p0

    .line 633
    return-void

    .line 632
    .end local v0    # "workspaceWaitTime":J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method dumpState()V
    .locals 3

    .prologue
    .line 855
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mStopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mLoadAndBindStepFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->dumpState()V

    .line 858
    return-void
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 862
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    return v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 677
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/launcher3/LauncherModel;->access$1000(Lcom/android/launcher3/LauncherModel;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 678
    :try_start_0
    iget-boolean v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v4, :cond_0

    monitor-exit v5

    .line 745
    :goto_0
    return-void

    .line 679
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v6, 0x1

    # setter for: Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z
    invoke-static {v4, v6}, Lcom/android/launcher3/LauncherModel;->access$1102(Lcom/android/launcher3/LauncherModel;Z)Z

    .line 680
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    invoke-static {}, Lcom/android/launcher3/common/model/DataLoader;->loadDefaultLayoutIfNecessary()V

    .line 687
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/common/model/DataLoader;->setInstallingPackage(Landroid/content/Context;)V

    .line 689
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;
    invoke-static {v4}, Lcom/android/launcher3/LauncherModel;->access$1200(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 690
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 689
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 692
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "com.sec.android.app.launcher.hideapps.prefs"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 693
    const-string v4, "com.sec.android.app.launcher.hideapps.prefs"

    .line 694
    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 695
    .local v0, "hiddenItems":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 696
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->applyHideItem(Ljava/util/Set;)V

    .line 699
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 700
    .local v3, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "com.sec.android.app.launcher.hideapps.prefs"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 701
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 704
    .end local v0    # "hiddenItems":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v4, "Launcher.Model"

    const-string v5, "step 1: loading workspace"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->loadAndBindWorkspace()Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    move-result-object v1

    .line 707
    .local v1, "loaderCallback":Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    iget-boolean v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v4, :cond_3

    .line 708
    const-string v4, "Launcher.Model"

    const-string v5, "before waitForIdle : if stop, no need next steps."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 680
    .end local v1    # "loaderCallback":Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 711
    .restart local v1    # "loaderCallback":Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->waitForIdle()V

    .line 713
    iget-boolean v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v4, :cond_4

    .line 714
    const-string v4, "Launcher.Model"

    const-string v5, "after waitForIdle : if stop, no need next steps."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 717
    :cond_4
    if-eqz v1, :cond_5

    .line 718
    const-string v4, "Launcher.Model"

    const-string v5, "step 1-1: loading other workspace pages"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/home/HomeLoader;->executeLoaderTask(Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;)V

    .line 722
    :cond_5
    iget-boolean v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v4, :cond_6

    .line 723
    const-string v4, "Launcher.Model"

    const-string v5, "step 1-2 : if stop, no need next steps."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 727
    :cond_6
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 728
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 729
    const-string v4, "Launcher.Model"

    const-string v5, "step 2: HomeOnlyMode. skip loading all apps"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    if-nez v1, :cond_7

    .line 731
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->endLoaderTask()V

    .line 738
    :cond_7
    :goto_1
    iget-boolean v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v4, :cond_9

    .line 739
    const-string v4, "Launcher.Model"

    const-string v5, "step 2-1 : if stop, no need next steps."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 734
    :cond_8
    const-string v4, "Launcher.Model"

    const-string v5, "step 2: loading all apps"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    goto :goto_1

    .line 742
    :cond_9
    const-string v4, "Launcher.Model"

    const-string v5, "step 3: loading widgets"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # invokes: Lcom/android/launcher3/LauncherModel;->loadWidgets([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V
    invoke-static {v4, v7, v7, v8}, Lcom/android/launcher3/LauncherModel;->access$100(Lcom/android/launcher3/LauncherModel;[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    goto/16 :goto_0
.end method

.method runBindSynchronousPage(I)V
    .locals 3
    .param p1, "synchronousBindPage"    # I

    .prologue
    const/4 v2, 0x0

    .line 636
    const/16 v0, -0x3e9

    if-ne p1, v0, :cond_0

    .line 638
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not call runBindSynchronousPage() without valid page index"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$300(Lcom/android/launcher3/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$200(Lcom/android/launcher3/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 644
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting AllApps and Workspace to be loaded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$1000(Lcom/android/launcher3/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 647
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$1100(Lcom/android/launcher3/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 650
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Error! Background loading is already running"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 661
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/common/model/DeferredHandler;
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$900(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/DeferredHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/DeferredHandler;->flush()V

    .line 666
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0, p1, v2}, Lcom/android/launcher3/home/HomeLoader;->bindItemsSync(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 669
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v1, 0x1

    # invokes: Lcom/android/launcher3/LauncherModel;->loadWidgets([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V
    invoke-static {v0, v2, v2, v1}, Lcom/android/launcher3/LauncherModel;->access$100(Lcom/android/launcher3/LauncherModel;[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 673
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v0, p1, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->bindItemsSync(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 674
    return-void
.end method

.method stopLocked()V
    .locals 2

    .prologue
    .line 772
    monitor-enter p0

    .line 773
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    .line 774
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->setLoaderTaskStop(Z)V

    .line 775
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/model/WidgetLoader;->setLoaderTaskStop(Z)V

    .line 776
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 777
    monitor-exit p0

    .line 778
    return-void

    .line 777
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryGetCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Lcom/android/launcher3/LauncherModel$Callbacks;
    .locals 5
    .param p1, "oldCallbacks"    # Lcom/android/launcher3/LauncherModel$Callbacks;

    .prologue
    const/4 v1, 0x0

    .line 788
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->access$1000(Lcom/android/launcher3/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 789
    :try_start_0
    iget-boolean v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_0

    .line 790
    monitor-exit v2

    move-object v0, v1

    .line 806
    :goto_0
    return-object v0

    .line 793
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/android/launcher3/LauncherModel;->access$1600(Lcom/android/launcher3/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-nez v3, :cond_1

    .line 794
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 797
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    # getter for: Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/android/launcher3/LauncherModel;->access$1600(Lcom/android/launcher3/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 798
    .local v0, "callbacks":Lcom/android/launcher3/LauncherModel$Callbacks;
    if-eq v0, p1, :cond_2

    .line 799
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 801
    :cond_2
    if-nez v0, :cond_3

    .line 802
    const-string v3, "Launcher.Model"

    const-string v4, "no mCallbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 806
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 807
    .end local v0    # "callbacks":Lcom/android/launcher3/LauncherModel$Callbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

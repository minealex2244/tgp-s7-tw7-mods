.class Lcom/android/launcher3/common/compat/PackageInstallerCompatVL$1;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "PackageInstallerCompatVL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/launcher3/common/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    return-void
.end method

.method private pushSessionDisplayToLauncher(I)V
    .locals 4
    .param p1, "sessionId"    # I

    .prologue
    .line 128
    iget-object v2, p0, Lcom/android/launcher3/common/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;

    # getter for: Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;
    invoke-static {v2}, Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;->access$200(Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;)Landroid/content/pm/PackageInstaller;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v1

    .line 129
    .local v1, "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-eqz v1, :cond_0

    .line 130
    iget-object v2, p0, Lcom/android/launcher3/common/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v3

    # invokes: Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;->addSessionInfoToCahce(Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    invoke-static {v2, v1, v3}, Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;->access$300(Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 131
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 133
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/HomeLoader;->updateSessionDisplayInfo(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->updateSessionDisplayInfo(Ljava/lang/String;)V

    .line 138
    .end local v0    # "app":Lcom/android/launcher3/LauncherAppState;
    :cond_0
    return-void
.end method


# virtual methods
.method public onActiveChanged(IZ)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "active"    # Z

    .prologue
    .line 120
    return-void
.end method

.method public onBadgingChanged(I)V
    .locals 0
    .param p1, "sessionId"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/compat/PackageInstallerCompatVL$1;->pushSessionDisplayToLauncher(I)V

    .line 125
    return-void
.end method

.method public onCreated(I)V
    .locals 0
    .param p1, "sessionId"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/compat/PackageInstallerCompatVL$1;->pushSessionDisplayToLauncher(I)V

    .line 93
    return-void
.end method

.method public onFinished(IZ)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "success"    # Z

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-object v1, p0, Lcom/android/launcher3/common/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;

    # getter for: Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;->mActiveSessions:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;->access$000(Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/common/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;

    # getter for: Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;->mActiveSessions:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;->access$000(Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 102
    if-eqz v0, :cond_0

    .line 103
    iget-object v3, p0, Lcom/android/launcher3/common/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;

    new-instance v4, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;

    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    invoke-direct {v4, v0, v1, v2}, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;-><init>(Ljava/lang/String;II)V

    # invokes: Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;->sendUpdate(Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;)V
    invoke-static {v3, v4}, Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;->access$100(Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;)V

    .line 106
    :cond_0
    return-void

    .line 103
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public onProgressChanged(IF)V
    .locals 7
    .param p1, "sessionId"    # I
    .param p2, "progress"    # F

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/launcher3/common/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;

    # getter for: Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;
    invoke-static {v1}, Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;->access$200(Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;)Landroid/content/pm/PackageInstaller;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    .line 111
    .local v0, "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/launcher3/common/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;

    new-instance v2, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 114
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;-><init>(Ljava/lang/String;II)V

    .line 112
    # invokes: Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;->sendUpdate(Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;)V
    invoke-static {v1, v2}, Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;->access$100(Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;)V

    .line 116
    :cond_0
    return-void
.end method

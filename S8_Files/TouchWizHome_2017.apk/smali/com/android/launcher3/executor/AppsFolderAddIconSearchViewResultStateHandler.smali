.class Lcom/android/launcher3/executor/AppsFolderAddIconSearchViewResultStateHandler;
.super Lcom/android/launcher3/executor/AbstractAppsStateHandler;
.source "AppsFolderAddIconSearchViewResultStateHandler.java"


# instance fields
.field private mSearchText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractAppsStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 15
    invoke-virtual {p1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeFolderAddIconSearchResult"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    const-string v0, "HomeFolderAddIconSearchResult"

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsFolderAddIconSearchViewResultStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 20
    :goto_0
    return-void

    .line 18
    :cond_0
    const-string v0, "AppsFolderAddIconSearchResult"

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsFolderAddIconSearchViewResultStateHandler;->mNlgTargetState:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconSearchViewResultStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsFolderAddIconSearchViewResultStateHandler;->mSearchText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->setAddAppsSearchText(Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/executor/AppsFolderAddIconSearchViewResultStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 39
    return-void
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Text"

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsFolderAddIconSearchViewResultStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/executor/StateParamHelper;->getStringParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsFolderAddIconSearchViewResultStateHandler;->mSearchText:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/android/launcher3/executor/AppsFolderAddIconSearchViewResultStateHandler;->mSearchText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 27
    const-string v0, "PARAM_CHECK_ERROR"

    .line 30
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "PARAM_CHECK_OK"

    goto :goto_0
.end method

.class Lcom/android/launcher3/executor/HomeSingleAppUnlockStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeSingleAppUnlockStateHandler.java"


# instance fields
.field mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 17
    invoke-virtual {p1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeSingleAppLock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    const-string v0, "HomeSingleAppLock"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSingleAppUnlockStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 22
    :goto_0
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    invoke-virtual {v0}, Lcom/android/launcher3/executor/StateAppInfoHolder;->getStateAppInfo()Lcom/android/launcher3/executor/StateAppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSingleAppUnlockStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 23
    iget-object v0, p0, Lcom/android/launcher3/executor/HomeSingleAppUnlockStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    if-nez v0, :cond_1

    .line 24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StateAppInfo is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    const-string v0, "AppsSingleAppLock"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSingleAppUnlockStateHandler;->mNlgTargetState:Ljava/lang/String;

    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, "ret":I
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppUnlockStateHandler;->mNlgTargetState:Ljava/lang/String;

    const-string v3, "HomeSingleAppLock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppUnlockStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSingleAppUnlockStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 42
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 43
    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSingleAppUnlockStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "SingleApp"

    const-string v4, "Match"

    const-string v5, "no"

    .line 44
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppUnlockStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 45
    const/4 v1, 0x1

    .line 51
    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/executor/HomeSingleAppUnlockStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 52
    return-void

    .line 40
    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppUnlockStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSingleAppUnlockStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .restart local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppUnlockStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->unlockSingleApp(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    .line 48
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSingleAppUnlockStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "SingleApp"

    const-string v4, "Match"

    const-string v5, "yes"

    .line 49
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppUnlockStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_1
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 30
    const-string v0, "PARAM_CHECK_OK"

    return-object v0
.end method

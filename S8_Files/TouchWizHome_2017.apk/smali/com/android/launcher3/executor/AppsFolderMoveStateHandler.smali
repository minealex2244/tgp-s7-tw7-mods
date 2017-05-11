.class Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;
.super Lcom/android/launcher3/executor/AbstractAppsStateHandler;
.source "AppsFolderMoveStateHandler.java"


# instance fields
.field private mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

.field private mDetailDirection:I

.field private mPage:I

.field private mPageDirection:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    const/16 v1, -0x3e7

    .line 36
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractAppsStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 32
    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 33
    iput v1, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mPage:I

    iput v1, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mPageDirection:I

    iput v1, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mDetailDirection:I

    .line 37
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    .line 38
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 7
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    const/16 v4, -0x3e7

    .line 73
    const/16 v1, -0x3e7

    .line 75
    .local v1, "resultPageNum":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->hasFolderInApps(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->APPS:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "FolderName"

    const-string v4, "Match"

    const-string v5, "no"

    .line 77
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 79
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 111
    :goto_0
    return-void

    .line 84
    :cond_0
    iget v2, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mPage:I

    if-ne v2, v4, :cond_1

    iget v2, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mPageDirection:I

    if-eq v2, v4, :cond_2

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mPage:I

    iget v4, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mPageDirection:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->isAppsValidPage(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 86
    :cond_2
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->APPS:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "Page"

    const-string v4, "Exist"

    const-string v5, "no"

    .line 87
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 90
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemPageInApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 91
    .local v0, "nextPageNum":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/launcher3/executor/AppsPageHelper;->findAvailablePageAndCreateNewWhenFull(Lcom/android/launcher3/proxy/LauncherProxy;I)I

    move-result v1

    .line 92
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    iget v4, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mPageDirection:I

    iget v5, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mDetailDirection:I

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->moveAppsFolderItemToPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;III)I

    .line 110
    .end local v0    # "nextPageNum":I
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    goto :goto_0

    .line 94
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mPage:I

    iget v4, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mPageDirection:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->hasAppsEmptySpace(II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mPage:I

    invoke-static {v2, v3}, Lcom/android/launcher3/executor/AppsPageHelper;->findAvailablePageAndCreateNewWhenFull(Lcom/android/launcher3/proxy/LauncherProxy;I)I

    move-result v1

    .line 96
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    iget v4, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mPageDirection:I

    iget v5, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mDetailDirection:I

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->moveAppsFolderItemToPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;III)I

    .line 98
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->APPS:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "Space"

    const-string v4, "Available"

    const-string v5, "no"

    .line 99
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    const-string v3, "FolderName"

    iget-object v4, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 100
    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    const-string v3, "ToPage"

    add-int/lit8 v4, v1, 0x1

    .line 101
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_1

    .line 103
    :cond_4
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->APPS:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "Space"

    const-string v4, "Available"

    const-string v5, "yes"

    .line 104
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    const-string v3, "FolderName"

    iget-object v4, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 105
    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    iget v4, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mPage:I

    iget v5, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mPageDirection:I

    iget v6, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mDetailDirection:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/launcher3/proxy/LauncherProxy;->moveAppsFolderItemToPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;III)I

    goto/16 :goto_1
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    .line 43
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-gez v2, :cond_1

    .line 44
    :cond_0
    const-string v2, "PARAM_CHECK_ERROR"

    .line 68
    :goto_0
    return-object v2

    .line 47
    :cond_1
    invoke-static {v1}, Lcom/android/launcher3/executor/StateParamHelper;->newHelper(Ljava/util/Map;)Lcom/android/launcher3/executor/StateParamHelper;

    move-result-object v0

    .line 48
    .local v0, "helper":Lcom/android/launcher3/executor/StateParamHelper;
    const-string v2, "FolderName"

    sget-object v3, Lcom/android/launcher3/executor/StateParamHelper$Type;->STRING:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 49
    iget-object v2, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    const-string v3, "FolderName"

    invoke-virtual {v0, v3}, Lcom/android/launcher3/executor/StateParamHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/executor/StateAppInfo;->setName(Ljava/lang/String;)V

    .line 57
    const-string v2, "Page"

    sget-object v3, Lcom/android/launcher3/executor/StateParamHelper$Type;->INTEGER:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    const-string v2, "Page"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/executor/StateParamHelper;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mPage:I

    .line 61
    :cond_2
    iget v2, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mPage:I

    if-gez v2, :cond_4

    .line 62
    iget v2, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mPage:I

    iput v2, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mPageDirection:I

    .line 63
    const/16 v2, -0x3e7

    iput v2, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mPage:I

    .line 68
    :goto_1
    const-string v2, "PARAM_CHECK_OK"

    goto :goto_0

    .line 51
    :cond_3
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->APPS:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "FolderName"

    const-string v4, "Exist"

    const-string v5, "no"

    .line 52
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 54
    const-string v2, "PARAM_CHECK_ERROR"

    goto :goto_0

    .line 65
    :cond_4
    iget v2, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mPage:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/launcher3/executor/AppsFolderMoveStateHandler;->mPage:I

    goto :goto_1
.end method

.class Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;
.super Lcom/android/launcher3/executor/AbstractAppsStateHandler;
.source "AppsFolderAddIconStateHandler.java"


# instance fields
.field private mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

.field private mIsSelectAll:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractAppsStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 15
    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 21
    const-string v0, "AppsFolderAddIconSearchView"

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    .line 23
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 10
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    const/4 v8, 0x1

    .line 58
    const/4 v3, 0x0

    .line 59
    .local v3, "ret":I
    const/4 v2, 0x0

    .line 61
    .local v2, "resultAppName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/proxy/LauncherProxy;->getSecondTopStage()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/proxy/LauncherProxy;->getSearchResultListCount()I

    move-result v4

    .line 65
    .local v4, "searchResultCount":I
    if-nez v4, :cond_1

    .line 66
    const-string v6, "AppsFolderAddIconSearchResult"

    iput-object v6, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 67
    new-instance v6, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v7, "Text"

    const-string v8, "Match"

    const-string v9, "no"

    .line 68
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 126
    .end local v4    # "searchResultCount":I
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v3}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 127
    return-void

    .line 69
    .restart local v4    # "searchResultCount":I
    :cond_1
    if-ne v4, v8, :cond_3

    .line 70
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/proxy/LauncherProxy;->addSearchResultItemToFolder()I

    .line 72
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/proxy/LauncherProxy;->getSearchResultSingleAppInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v5

    .line 73
    .local v5, "singleAppInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v5, :cond_2

    iget-object v6, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v6, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/proxy/LauncherProxy;->getSearchResultSingleAppInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    :cond_2
    if-eqz v2, :cond_0

    .line 78
    new-instance v6, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v7}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v7, "Text"

    const-string v8, "Match"

    const-string v9, "yes"

    .line 79
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    const-string v7, "Text"

    .line 80
    invoke-virtual {v6, v7, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    .line 82
    .end local v5    # "singleAppInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    iget-boolean v6, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mIsSelectAll:Z

    if-eqz v6, :cond_4

    .line 83
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/proxy/LauncherProxy;->addSearchResultItemToFolder()I

    .line 85
    new-instance v6, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v7}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v7, "SelectedAll"

    const-string v8, "Exist"

    const-string v9, "yes"

    .line 86
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    const-string v7, "apps_count"

    .line 87
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    .line 89
    :cond_4
    const-string v6, "AppsFolderAddIconSearchResult"

    iput-object v6, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 90
    new-instance v6, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v7, "SelectedAll"

    const-string v8, "Exist"

    const-string v9, "no"

    .line 91
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    const-string v7, "apps_count"

    .line 92
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    .line 96
    .end local v4    # "searchResultCount":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v8, :cond_6

    .line 99
    new-instance v6, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v7, "AppsFolderAddIconView"

    invoke-direct {v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v7, "SingleAppOrdinal"

    const-string v8, "Match"

    const-string v9, "multi"

    .line 100
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    .line 102
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/proxy/LauncherProxy;->removeItemInAppsPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I

    move-result v1

    .line 104
    .local v1, "proxyResult":I
    if-nez v1, :cond_8

    .line 105
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/proxy/LauncherProxy;->addAppsFolderItem(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I

    move-result v1

    .line 107
    if-nez v1, :cond_7

    .line 108
    new-instance v6, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v7, "AppsFolderAddIconView"

    invoke-direct {v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v7, "SingleAppOrdinal"

    const-string v8, "Match"

    const-string v9, "yes"

    .line 109
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    .line 111
    :cond_7
    new-instance v6, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v7, "AppsFolderAddIconView"

    invoke-direct {v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v7, "SingleAppOrdinal"

    const-string v8, "Match"

    const-string v9, "no"

    .line 112
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    .line 115
    :cond_8
    new-instance v6, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v7, "AppsFolderAddIconView"

    invoke-direct {v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v7, "SingleAppOrdinal"

    const-string v8, "Match"

    const-string v9, "no"

    .line 116
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    .line 120
    .end local v1    # "proxyResult":I
    :cond_9
    const/4 v3, 0x1

    .line 121
    new-instance v6, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v7, "AppsFolderAddIconView"

    invoke-direct {v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v7, "SingleAppOrdinal"

    const-string v8, "Match"

    const-string v9, "no"

    .line 122
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 27
    const/4 v1, 0x0

    .line 29
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/proxy/LauncherProxy;->getSecondTopStage()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "SelectedAll"

    iget-object v4, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-static {p0, v2, v3, v4}, Lcom/android/launcher3/executor/StateParamHelper;->getBooleanParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mIsSelectAll:Z

    .line 52
    :cond_0
    :goto_0
    const-string v2, "PARAM_CHECK_OK"

    :goto_1
    return-object v2

    .line 35
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "AppName"

    const-string v4, "AppsFolderAddIconView"

    const-string v5, "SingleAppOrdinal"

    invoke-static {p0, v2, v3, v4, v5}, Lcom/android/launcher3/executor/StateParamHelper;->getStringParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 39
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_3

    .line 40
    const-string v2, "PARAM_CHECK_ERROR"

    goto :goto_1

    .line 44
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/executor/StateAppInfo;->setComponentName(Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 46
    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u00a0"

    if-ne v2, v3, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppNamebyComponentName(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "appName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/executor/StateAppInfo;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method

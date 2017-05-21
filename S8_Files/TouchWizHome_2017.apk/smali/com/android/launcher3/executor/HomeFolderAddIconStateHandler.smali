.class Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeFolderAddIconStateHandler.java"


# instance fields
.field private mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

.field private mIsSelectAll:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 32
    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 38
    const-string v0, "HomeFolderAddIconSearchView"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    .line 40
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 10
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    const/4 v8, 0x1

    .line 74
    const/4 v3, 0x0

    .line 75
    .local v3, "ret":I
    const/4 v2, 0x0

    .line 77
    .local v2, "resultAppName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/proxy/LauncherProxy;->getSecondTopStage()I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/proxy/LauncherProxy;->getSecondTopStage()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/proxy/LauncherProxy;->getSearchResultListCount()I

    move-result v4

    .line 82
    .local v4, "searchResultCount":I
    if-nez v4, :cond_2

    .line 83
    const-string v6, "HomeFolderAddIconSearchResult"

    iput-object v6, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 84
    new-instance v6, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v7, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v7, "Text"

    const-string v8, "Match"

    const-string v9, "no"

    .line 85
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 135
    .end local v4    # "searchResultCount":I
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v3}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 136
    return-void

    .line 86
    .restart local v4    # "searchResultCount":I
    :cond_2
    if-ne v4, v8, :cond_4

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/proxy/LauncherProxy;->addSearchResultItemToFolder()I

    .line 89
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/proxy/LauncherProxy;->getSearchResultSingleAppInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v5

    .line 90
    .local v5, "singleAppInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v5, :cond_3

    iget-object v6, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v6, :cond_3

    .line 91
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/proxy/LauncherProxy;->getSearchResultSingleAppInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    :cond_3
    if-eqz v2, :cond_1

    .line 95
    new-instance v6, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v7, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v7}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v7, "Text"

    const-string v8, "Match"

    const-string v9, "yes"

    .line 96
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    const-string v7, "Text"

    .line 97
    invoke-virtual {v6, v7, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    .line 99
    .end local v5    # "singleAppInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    iget-boolean v6, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mIsSelectAll:Z

    if-eqz v6, :cond_5

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/proxy/LauncherProxy;->addSearchResultItemToFolder()I

    .line 102
    new-instance v6, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v7, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v7}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v7, "SelectedAll"

    const-string v8, "Exist"

    const-string v9, "yes"

    .line 103
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    const-string v7, "apps_count"

    .line 104
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    .line 106
    :cond_5
    const-string v6, "HomeFolderAddIconSearchResult"

    iput-object v6, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 107
    new-instance v6, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v7, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v7, "SelectedAll"

    const-string v8, "Exist"

    const-string v9, "no"

    .line 108
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    const-string v7, "apps_count"

    .line 109
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    .line 113
    .end local v4    # "searchResultCount":I
    :cond_6
    const-string v6, "HomeFolderAddIconView"

    iput-object v6, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/proxy/LauncherProxy;->hasItemInApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 116
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 117
    .local v0, "itemInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 119
    .local v1, "itemsCount":I
    if-le v1, v8, :cond_7

    .line 120
    new-instance v6, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v7, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v7, "SingleAppOrdinal"

    const-string v8, "Match"

    const-string v9, "multi"

    .line 121
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    .line 123
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/proxy/LauncherProxy;->addHomeFolderItem(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I

    .line 124
    new-instance v6, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v7, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v7, "SingleAppOrdinal"

    const-string v8, "Match"

    const-string v9, "yes"

    .line 125
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    .line 129
    .end local v0    # "itemInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v1    # "itemsCount":I
    :cond_8
    const/4 v3, 0x1

    .line 130
    new-instance v6, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v7, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v7, "SingleAppOrdinal"

    const-string v8, "Match"

    const-string v9, "no"

    .line 131
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 46
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/proxy/LauncherProxy;->getSecondTopStage()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 48
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "SelectedAll"

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-static {p0, v2, v3, v4}, Lcom/android/launcher3/executor/StateParamHelper;->getBooleanParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mIsSelectAll:Z

    .line 69
    :cond_0
    :goto_0
    const-string v2, "PARAM_CHECK_OK"

    :goto_1
    return-object v2

    .line 52
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "AppName"

    const-string v4, "HomeFolderAddIconView"

    const-string v5, "SingleAppOrdinal"

    invoke-static {p0, v2, v3, v4, v5}, Lcom/android/launcher3/executor/StateParamHelper;->getStringParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 56
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_3

    .line 57
    const-string v2, "PARAM_CHECK_ERROR"

    goto :goto_1

    .line 61
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/executor/StateAppInfo;->setComponentName(Ljava/lang/String;)V

    .line 62
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 63
    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u00a0"

    if-ne v2, v3, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppNamebyComponentName(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "appName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/executor/StateAppInfo;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeSettingsHideAppsStateHandler.java"


# instance fields
.field mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 28
    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 33
    const-string v0, "HomeSettingsHideAppsView"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    .line 35
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemInfoInHideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    .line 65
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenByUser()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "SingleAppOrdinal"

    const-string v4, "Hidden"

    const-string v5, "yes"

    .line 68
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 69
    const/4 v1, 0x1

    .line 83
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 84
    return-void

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/executor/StateAppInfo;->setItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->hideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I

    .line 73
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/proxy/LauncherProxy;->goHome()I

    .line 74
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v3, "Home"

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "SingleAppOrdinal"

    const-string v4, "Match"

    const-string v5, "yes"

    .line 75
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    const-string v3, "AppName"

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 76
    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    .line 79
    :cond_1
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "SingleAppOrdinal"

    const-string v4, "Match"

    const-string v5, "no"

    .line 80
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 81
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "AppName"

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mNlgTargetState:Ljava/lang/String;

    const-string v5, "SingleAppOrdinal"

    invoke-static {p0, v2, v3, v4, v5}, Lcom/android/launcher3/executor/StateParamHelper;->getStringParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/executor/StateAppInfo;->setComponentName(Ljava/lang/String;)V

    .line 44
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "SingleAppOrdinal"

    const-string v4, "Exist"

    const-string v5, "no"

    .line 46
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 47
    const-string v2, "PARAM_CHECK_ERROR"

    .line 56
    :goto_0
    return-object v2

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 51
    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u00a0"

    if-ne v2, v3, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppNamebyComponentName(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "appName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/executor/StateAppInfo;->setName(Ljava/lang/String;)V

    .line 56
    .end local v0    # "appName":Ljava/lang/String;
    :cond_1
    const-string v2, "PARAM_CHECK_OK"

    goto :goto_0
.end method
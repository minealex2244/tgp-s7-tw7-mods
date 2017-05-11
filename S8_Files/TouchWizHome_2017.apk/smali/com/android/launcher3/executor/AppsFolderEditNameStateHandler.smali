.class Lcom/android/launcher3/executor/AppsFolderEditNameStateHandler;
.super Lcom/android/launcher3/executor/AbstractAppsStateHandler;
.source "AppsFolderEditNameStateHandler.java"


# instance fields
.field private mNewTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractAppsStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 18
    invoke-virtual {p1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeFolderEditName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const-string v0, "HomeFolderView"

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsFolderEditNameStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 23
    :goto_0
    return-void

    .line 21
    :cond_0
    const-string v0, "AppsFolderView"

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsFolderEditNameStateHandler;->mNlgTargetState:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/launcher3/executor/AppsFolderEditNameStateHandler;->mNlgTargetState:Ljava/lang/String;

    const-string v2, "HomeFolderView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const-string v1, "HomeFolderEditName"

    iput-object v1, p0, Lcom/android/launcher3/executor/AppsFolderEditNameStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 49
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/executor/AppsFolderEditNameStateHandler;->mNewTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_1

    .line 50
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsFolderEditNameStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "Text"

    const-string v3, "ExceedMaxChar"

    const-string v4, "yes"

    .line 51
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/AppsFolderEditNameStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 52
    const/4 v0, 0x1

    .line 58
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/executor/AppsFolderEditNameStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 59
    return-void

    .line 46
    :cond_0
    const-string v1, "AppsFolderEditName"

    iput-object v1, p0, Lcom/android/launcher3/executor/AppsFolderEditNameStateHandler;->mNlgTargetState:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderEditNameStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsFolderEditNameStateHandler;->mNewTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->changeAppsFolderTitle(Ljava/lang/String;)I

    .line 55
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsFolderEditNameStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "Text"

    const-string v3, "ExceedMaxChar"

    const-string v4, "no"

    .line 56
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/AppsFolderEditNameStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_1
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Text"

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsFolderEditNameStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/executor/StateParamHelper;->getStringParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsFolderEditNameStateHandler;->mNewTitle:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/android/launcher3/executor/AppsFolderEditNameStateHandler;->mNewTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v1, p0, Lcom/android/launcher3/executor/AppsFolderEditNameStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v1, "Text"

    const-string v2, "Exist"

    const-string v3, "no"

    .line 32
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsFolderEditNameStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 33
    const-string v0, "PARAM_CHECK_ERROR"

    .line 36
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "PARAM_CHECK_OK"

    goto :goto_0
.end method

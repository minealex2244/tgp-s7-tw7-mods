.class public abstract Lcom/android/launcher3/common/customer/PostPositionerBase;
.super Ljava/lang/Object;
.source "PostPositionerBase.java"


# instance fields
.field protected mAppState:Lcom/android/launcher3/LauncherAppState;

.field protected mContext:Landroid/content/Context;

.field protected mModelWorker:Landroid/os/Handler;

.field protected mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

.field protected mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/customer/PostPositionProvider;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "provider"    # Lcom/android/launcher3/common/customer/PostPositionProvider;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mModelWorker:Landroid/os/Handler;

    .line 36
    iput-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mAppState:Lcom/android/launcher3/LauncherAppState;

    .line 40
    iput-object p1, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mModelWorker:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mModelWorker:Landroid/os/Handler;

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/customer/PostPositionerBase;->setup()V

    .line 52
    return-void
.end method


# virtual methods
.method public abstract addItem(Lcom/android/launcher3/common/customer/ItemRecord;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
.end method

.method public abstract deleteFolder(J)V
.end method

.method public getSharedPref()Lcom/android/launcher3/common/customer/PostPositionSharedPref;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    return-object v0
.end method

.method public resetItem(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmpName"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/customer/PostPositionProvider;->resetItem(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method protected abstract setup()V
.end method

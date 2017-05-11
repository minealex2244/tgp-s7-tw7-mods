.class public Lcom/android/launcher3/home/LauncherAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "LauncherAppWidgetHost.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LauncherAppWidgetHost"


# instance fields
.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private final mProviderChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;I)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "hostId"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHost;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 51
    return-void
.end method


# virtual methods
.method addProviderChangeListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public createView(Landroid/content/Context;ILcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .prologue
    .line 106
    invoke-static {}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getPaddingForWidget()Landroid/graphics/Rect;

    move-result-object v3

    .line 107
    .local v3, "padding":Landroid/graphics/Rect;
    iget-boolean v4, p3, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v4, :cond_0

    .line 108
    new-instance v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-direct {v2, p1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 109
    .local v2, "lahv":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    const-string v4, "layout_inflater"

    .line 110
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 111
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v4, p3, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->initialLayout:I

    invoke-virtual {v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 112
    const/4 v4, 0x0

    invoke-virtual {v2, v4, p3}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 113
    invoke-virtual {v2}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->updateLastInflationOrientation()V

    .line 114
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->setPadding(IIII)V

    .line 119
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "lahv":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    :goto_0
    return-object v2

    .line 117
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 118
    .local v0, "hv":Landroid/appwidget/AppWidgetHostView;
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    move-object v2, v0

    .line 119
    goto :goto_0
.end method

.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 55
    new-instance v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-direct {v0, p1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHost;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, p2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v0

    .line 130
    .local v0, "info":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    invoke-super {p0, p1, v0}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 131
    return-void
.end method

.method protected onProvidersChanged()V
    .locals 6

    .prologue
    .line 91
    const-string v2, "LauncherAppWidgetHost"

    const-string v3, "onProvidersChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHost;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getWidgetsLoader()Lcom/android/launcher3/widget/model/WidgetLoader;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher3/widget/model/WidgetLoader;->notifyDirty([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/home/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 99
    .local v0, "callback":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 94
    .end local v0    # "callback":Ljava/lang/Runnable;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_0
    return-void
.end method

.method removeProviderChangeListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public startListening()V
    .locals 2

    .prologue
    .line 61
    :try_start_0
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->startListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/os/TransactionTooLargeException;

    if-nez v1, :cond_0

    .line 69
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopListening()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->clearViews()V

    .line 80
    return-void
.end method

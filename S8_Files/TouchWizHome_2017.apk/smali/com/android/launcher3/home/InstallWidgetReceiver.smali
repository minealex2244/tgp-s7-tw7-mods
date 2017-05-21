.class public Lcom/android/launcher3/home/InstallWidgetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallWidgetReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;
    }
.end annotation


# static fields
.field private static final ACTION_BIND_WIDGET:Ljava/lang/String; = "com.sec.android.launcher.action.BIND_WIDGET"

.field private static final EXTRA_APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field private static final EXTRA_COMPONENT:Ljava/lang/String; = "componentName"

.field private static final EXTRA_SPAN_X:Ljava/lang/String; = "spanX"

.field private static final EXTRA_SPAN_Y:Ljava/lang/String; = "spanY"

.field private static final TAG:Ljava/lang/String; = "InstallWidgetReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/InstallWidgetReceiver;Landroid/content/Context;Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/InstallWidgetReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/InstallWidgetReceiver;->bindWidget(Landroid/content/Context;Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;)Z

    move-result v0

    return v0
.end method

.method private bindWidget(Landroid/content/Context;Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;

    .prologue
    .line 79
    iget-object v3, p2, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->componentName:Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 80
    invoke-static {p1, v3, v4}, Lcom/android/launcher3/home/HomeLoader;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v1

    .line 81
    .local v1, "appWidgetInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/16 v3, 0x400

    invoke-direct {v0, p1, v3}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 82
    .local v0, "appWidgetHost":Landroid/appwidget/AppWidgetHost;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v3

    iput v3, p2, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->appWidgetId:I

    .line 83
    invoke-static {p1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v3

    iget v4, p2, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->appWidgetId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v2

    .line 85
    .local v2, "success":Z
    if-nez v2, :cond_0

    .line 86
    iget v3, p2, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v3}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 88
    :cond_0
    return v2
.end method

.method static decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;
    .locals 9
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 159
    .local v7, "object":Lorg/json/JSONObject;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v1, "data":Landroid/content/Intent;
    const-string v0, "componentName"

    const-string v2, "componentName"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v0, "spanX"

    const-string v2, "spanX"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string v0, "spanY"

    const-string v2, "spanY"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    const-string v0, "appWidgetId"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 164
    .local v3, "appWidgetId":I
    const-string v0, "time"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 166
    .local v4, "requestTime":J
    new-instance v0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;-><init>(Landroid/content/Intent;Landroid/content/Context;IJ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1    # "data":Landroid/content/Intent;
    .end local v3    # "appWidgetId":I
    .end local v4    # "requestTime":J
    .end local v7    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v6

    .line 168
    .local v6, "e":Lorg/json/JSONException;
    const-string v0, "InstallWidgetReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception reading widget to add: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 54
    if-eqz p2, :cond_0

    const-string v1, "com.sec.android.launcher.action.BIND_WIDGET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 58
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    new-instance v1, Lcom/android/launcher3/home/InstallWidgetReceiver$1;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/android/launcher3/home/InstallWidgetReceiver$1;-><init>(Lcom/android/launcher3/home/InstallWidgetReceiver;Landroid/content/Intent;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.class public final Lcom/android/launcher3/home/ExternalRequestQueue;
.super Ljava/lang/Object;
.source "ExternalRequestQueue.java"


# static fields
.field private static final EXTERNAL_REQUEST_LIST_HOME_APPS:Ljava/lang/String; = "external_request_list_home_apps"

.field private static final EXTERNAL_REQUEST_LIST_HOME_ONLY:Ljava/lang/String; = "external_request_list_home_only"

.field private static final INSTALL_SHORTCUT_FLUSHED:Ljava/lang/String; = "com.samsung.android.launcher.action.INSTALL_SHORTCUT_FLUSHED"

.field private static final TAG:Ljava/lang/String; = "ExternalRequestQueue"

.field private static final TASK_EDGE_PACKAGE:Ljava/lang/String; = "com.samsung.android.app.taskedge"

.field private static final sLock:Ljava/lang/Object;

.field private static sSharedPref:Landroid/content/SharedPreferences;

.field private static sUseExternalRequestQueue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/home/ExternalRequestQueue;->sUseExternalRequestQueue:Z

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/ExternalRequestQueue;->sLock:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/home/ExternalRequestQueue;->sSharedPref:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addToExternalRequestQueue(Landroid/content/SharedPreferences;Lcom/android/launcher3/home/ExternalRequestInfo;)V
    .locals 5
    .param p0, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p1, "info"    # Lcom/android/launcher3/home/ExternalRequestInfo;

    .prologue
    .line 202
    sget-object v4, Lcom/android/launcher3/home/ExternalRequestQueue;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 203
    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/home/ExternalRequestInfo;->encodeToString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "encoded":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 205
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getExternalRequestList(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v1

    .line 206
    .local v1, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 207
    new-instance v1, Ljava/util/LinkedHashSet;

    .end local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 211
    .restart local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-static {p0, v1}, Lcom/android/launcher3/home/ExternalRequestQueue;->setExternalRequestList(Landroid/content/SharedPreferences;Ljava/util/Set;)V

    .line 214
    .end local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    monitor-exit v4

    .line 215
    return-void

    .line 209
    .restart local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .end local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v2, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v1, v2

    .end local v2    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 214
    .end local v0    # "encoded":Ljava/lang/String;
    .end local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/ExternalRequestInfo;
    .locals 6
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    :try_start_0
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 181
    .local v1, "object":Lorg/json/JSONObject;
    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 183
    .local v2, "type":I
    packed-switch v2, :pswitch_data_0

    .line 197
    .end local v1    # "object":Lorg/json/JSONObject;
    .end local v2    # "type":I
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 185
    .restart local v1    # "object":Lorg/json/JSONObject;
    .restart local v2    # "type":I
    :pswitch_0
    invoke-static {p0, p1}, Lcom/android/launcher3/home/InstallShortcutReceiver;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object v3

    goto :goto_1

    .line 187
    :pswitch_1
    invoke-static {p0, p1}, Lcom/android/launcher3/home/UninstallShortcutReceiver;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;

    move-result-object v3

    goto :goto_1

    .line 189
    :pswitch_2
    invoke-static {p0, p1}, Lcom/android/launcher3/home/InstallWidgetReceiver;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;

    move-result-object v3

    goto :goto_1

    .line 191
    :pswitch_3
    invoke-static {p0, p1}, Lcom/android/launcher3/home/UninstallWidgetReceiver;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/UninstallWidgetReceiver$PendingUninstallWidgetInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 194
    .end local v1    # "object":Lorg/json/JSONObject;
    .end local v2    # "type":I
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "ExternalRequestQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception reading shortcut to add: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static disableAndFlushExternalRequestQueue(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p0, "context"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/home/ExternalRequestQueue;->sUseExternalRequestQueue:Z

    .line 57
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->flushExternalRequestQueue(Lcom/android/launcher3/Launcher;)V

    .line 58
    return-void
.end method

.method public static enableExternalRequestQueue()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/home/ExternalRequestQueue;->sUseExternalRequestQueue:Z

    .line 53
    return-void
.end method

.method private static flushExternalRequestQueue(Lcom/android/launcher3/Launcher;)V
    .locals 4
    .param p0, "context"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isHomeNormal()Z

    move-result v3

    if-nez v3, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 72
    invoke-static {v3, p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getAndClearExternalRequestQueue(Landroid/content/SharedPreferences;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 74
    .local v0, "installQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/home/ExternalRequestInfo;>;"
    new-instance v3, Lcom/android/launcher3/home/ExternalRequestQueue$1;

    invoke-direct {v3}, Lcom/android/launcher3/home/ExternalRequestQueue$1;-><init>()V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 84
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/home/ExternalRequestInfo;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/ExternalRequestInfo;

    .line 86
    .local v2, "pendingInfo":Lcom/android/launcher3/home/ExternalRequestInfo;
    invoke-virtual {v2, p0}, Lcom/android/launcher3/home/ExternalRequestInfo;->runRequestInfo(Landroid/content/Context;)V

    goto :goto_1

    .line 88
    .end local v2    # "pendingInfo":Lcom/android/launcher3/home/ExternalRequestInfo;
    :cond_2
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->sendBroadCaseToTaskEdge(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static getAndClearExternalRequestQueue(Landroid/content/SharedPreferences;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/home/ExternalRequestInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    sget-object v5, Lcom/android/launcher3/home/ExternalRequestQueue;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 119
    :try_start_0
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getExternalRequestList(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v3

    .line 120
    .local v3, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "ExternalRequestQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting and clearing EXTERNAL_REQUEST_LIST: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-nez v3, :cond_0

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v5

    .line 132
    :goto_0
    return-object v2

    .line 124
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v2, "requestInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/home/ExternalRequestInfo;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    .local v0, "encoded":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/launcher3/home/ExternalRequestQueue;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/ExternalRequestInfo;

    move-result-object v1

    .line 127
    .local v1, "info":Lcom/android/launcher3/home/ExternalRequestInfo;
    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 133
    .end local v0    # "encoded":Ljava/lang/String;
    .end local v1    # "info":Lcom/android/launcher3/home/ExternalRequestInfo;
    .end local v2    # "requestInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/home/ExternalRequestInfo;>;"
    .end local v3    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 131
    .restart local v2    # "requestInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/home/ExternalRequestInfo;>;"
    .restart local v3    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p0, v4}, Lcom/android/launcher3/home/ExternalRequestQueue;->setExternalRequestList(Landroid/content/SharedPreferences;Ljava/util/Set;)V

    .line 132
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static getExternalRequestList(Landroid/content/SharedPreferences;)Ljava/util/Set;
    .locals 2
    .param p0, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "external_request_list_home_only"

    :goto_0
    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "external_request_list_home_apps"

    goto :goto_0
.end method

.method static getExternalRequestListByType(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/home/ExternalRequestInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/home/ExternalRequestQueue;->getExternalRequestList(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v3

    .line 99
    .local v3, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v1, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/home/ExternalRequestInfo;>;"
    if-eqz v3, :cond_1

    .line 101
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    .local v0, "encoded":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/ExternalRequestInfo;

    move-result-object v2

    .line 103
    .local v2, "savedInfo":Lcom/android/launcher3/home/ExternalRequestInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher3/home/ExternalRequestInfo;->getRequestType()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 104
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    .end local v0    # "encoded":Ljava/lang/String;
    .end local v2    # "savedInfo":Lcom/android/launcher3/home/ExternalRequestInfo;
    :cond_1
    return-object v1
.end method

.method private static getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget-object v1, Lcom/android/launcher3/home/ExternalRequestQueue;->sSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 62
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "spKey":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/home/ExternalRequestQueue;->sSharedPref:Landroid/content/SharedPreferences;

    .line 65
    .end local v0    # "spKey":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/android/launcher3/home/ExternalRequestQueue;->sSharedPref:Landroid/content/SharedPreferences;

    return-object v1
.end method

.method static queueExternalRequestInfo(Lcom/android/launcher3/home/ExternalRequestInfo;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V
    .locals 2
    .param p0, "info"    # Lcom/android/launcher3/home/ExternalRequestInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app"    # Lcom/android/launcher3/LauncherAppState;

    .prologue
    .line 220
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 221
    .local v0, "launcherNotLoaded":Z
    :goto_0
    sget-boolean v1, Lcom/android/launcher3/home/ExternalRequestQueue;->sUseExternalRequestQueue:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 222
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher3/LauncherModel$Callbacks;->isHomeNormal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/ExternalRequestInfo;->runRequestInfo(Landroid/content/Context;)V

    .line 224
    invoke-static {p1}, Lcom/android/launcher3/home/ExternalRequestQueue;->sendBroadCaseToTaskEdge(Landroid/content/Context;)V

    .line 228
    :goto_1
    return-void

    .line 220
    .end local v0    # "launcherNotLoaded":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 226
    .restart local v0    # "launcherNotLoaded":Z
    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->addToExternalRequestQueue(Landroid/content/SharedPreferences;Lcom/android/launcher3/home/ExternalRequestInfo;)V

    goto :goto_1
.end method

.method static removeFromExternalRequestQueue(Landroid/content/Context;Lcom/android/launcher3/home/ExternalRequestInfo;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputInfo"    # Lcom/android/launcher3/home/ExternalRequestInfo;

    .prologue
    .line 137
    sget-object v6, Lcom/android/launcher3/home/ExternalRequestQueue;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 138
    :try_start_0
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/home/ExternalRequestQueue;->getExternalRequestList(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v4

    .line 139
    .local v4, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    .line 140
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 141
    .local v2, "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 142
    .local v3, "newStringsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    .local v0, "encoded":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/ExternalRequestInfo;

    move-result-object v1

    .line 145
    .local v1, "info":Lcom/android/launcher3/home/ExternalRequestInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/launcher3/home/ExternalRequestInfo;->equals(Lcom/android/launcher3/home/ExternalRequestInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 150
    .end local v0    # "encoded":Ljava/lang/String;
    .end local v1    # "info":Lcom/android/launcher3/home/ExternalRequestInfo;
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/launcher3/home/ExternalRequestQueue;->setExternalRequestList(Landroid/content/SharedPreferences;Ljava/util/Set;)V

    .line 152
    .end local v2    # "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "newStringsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    monitor-exit v6

    .line 153
    return-void

    .line 152
    .end local v4    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method static removeFromExternalRequestQueue(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 176
    :goto_0
    return-void

    .line 160
    :cond_0
    sget-object v6, Lcom/android/launcher3/home/ExternalRequestQueue;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 161
    :try_start_0
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/home/ExternalRequestQueue;->getExternalRequestList(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v4

    .line 162
    .local v4, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_4

    .line 163
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 164
    .local v2, "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 165
    .local v3, "newStringsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 166
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    .local v0, "encoded":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/ExternalRequestInfo;

    move-result-object v1

    .line 168
    .local v1, "info":Lcom/android/launcher3/home/ExternalRequestInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher3/home/ExternalRequestInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 169
    invoke-virtual {v1}, Lcom/android/launcher3/home/ExternalRequestInfo;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 170
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 175
    .end local v0    # "encoded":Ljava/lang/String;
    .end local v1    # "info":Lcom/android/launcher3/home/ExternalRequestInfo;
    .end local v2    # "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "newStringsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 173
    .restart local v2    # "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "newStringsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/launcher3/home/ExternalRequestQueue;->setExternalRequestList(Landroid/content/SharedPreferences;Ljava/util/Set;)V

    .line 175
    .end local v2    # "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "newStringsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static sendBroadCaseToTaskEdge(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Lcom/android/launcher3/home/ExternalRequestQueue$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/ExternalRequestQueue$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 242
    :cond_0
    return-void
.end method

.method private static setExternalRequestList(Landroid/content/SharedPreferences;Ljava/util/Set;)V
    .locals 2
    .param p0, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "external_request_list_home_only"

    :goto_0
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    return-void

    .line 112
    :cond_0
    const-string v0, "external_request_list_home_apps"

    goto :goto_0
.end method

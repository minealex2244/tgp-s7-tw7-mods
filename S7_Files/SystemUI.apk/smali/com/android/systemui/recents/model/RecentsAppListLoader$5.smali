.class Lcom/android/systemui/recents/model/RecentsAppListLoader$5;
.super Ljava/lang/Object;
.source "RecentsAppListLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/model/RecentsAppListLoader;->preloadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/model/RecentsAppListLoader;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$5;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 250
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 251
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 252
    sget-object v4, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;

    .line 254
    .local v1, "info":Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;
    iget-object v4, v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 253
    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "title":Ljava/lang/String;
    if-eqz v3, :cond_0

    .end local v3    # "title":Ljava/lang/String;
    :goto_1
    iput-object v3, v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->title:Ljava/lang/String;

    .line 257
    iget-object v4, v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 256
    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->shouldLaunchAsMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->supportMultiInstance:Z

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    .restart local v3    # "title":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, ""

    goto :goto_1

    .line 259
    .end local v1    # "info":Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;
    .end local v3    # "title":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$5;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-set0(Lcom/android/systemui/recents/model/RecentsAppListLoader;Z)Z

    .line 260
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/NotifyDataLoadEvent;

    invoke-direct {v5}, Lcom/android/systemui/recents/events/activity/NotifyDataLoadEvent;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 248
    return-void
.end method
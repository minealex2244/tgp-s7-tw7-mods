.class Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$4;
.super Ljava/lang/Object;
.source "RecentsAppListLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;

.field final synthetic val$packages:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;
    .param p2, "val$packages"    # [Ljava/lang/String;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$4;->this$1:Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;

    iput-object p2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$4;->val$packages:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 392
    const/4 v1, 0x0

    .line 393
    .local v1, "update":Z
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$4;->val$packages:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    .end local v1    # "update":Z
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v0, v4, v2

    .line 394
    .local v0, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$4;->this$1:Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;

    invoke-static {v6, v0, v3}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->-wrap1(Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;Ljava/lang/String;Z)Z

    move-result v6

    or-int/2addr v1, v6

    .line 395
    .local v1, "update":Z
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$4;->this$1:Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;

    invoke-static {v6, v0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->-wrap0(Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 393
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "update":Z
    :cond_0
    if-eqz v1, :cond_1

    .line 398
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/NotifyDataLoadEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/NotifyDataLoadEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 391
    :cond_1
    return-void
.end method

.class Lcom/android/systemui/recents/model/RecentsAppListLoader$4;
.super Ljava/lang/Object;
.source "RecentsAppListLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/model/RecentsAppListLoader;->buildAppInfos()V
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
    .line 116
    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 120
    sget-object v6, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mRawResolveInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 123
    const/4 v5, 0x0

    .line 124
    .local v5, "rInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getKioskId()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-set1(Lcom/android/systemui/recents/model/RecentsAppListLoader;I)I

    .line 125
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {v6}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-get2(Lcom/android/systemui/recents/model/RecentsAppListLoader;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 126
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {v7}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-get2(Lcom/android/systemui/recents/model/RecentsAppListLoader;)I

    move-result v7

    invoke-virtual {v6, v8, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getLauncherPacakgesAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 133
    .local v5, "rInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 134
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 135
    .local v4, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 136
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget v6, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForceResizable(Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 137
    :cond_0
    sget-object v6, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mRawResolveInfoList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 128
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "i":I
    .end local v4    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v5, "rInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getLauncherPacakges(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .local v5, "rInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_0

    .line 141
    .restart local v2    # "i":I
    :cond_3
    sget-object v6, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 142
    const/4 v2, 0x0

    :goto_2
    sget-object v6, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mRawResolveInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 143
    sget-object v6, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mRawResolveInfoList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 145
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    new-instance v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-direct {v1, v6}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    .line 146
    .local v1, "appInfo":Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;
    iput-object v3, v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 147
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    iget-object v6, v6, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mApplicationContext:Landroid/content/Context;

    .line 148
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 147
    invoke-static {v6, v7}, Lcom/android/systemui/recents/misc/AppListUsageStats;->getCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->executeCount:I

    .line 150
    sget-object v6, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 118
    .end local v1    # "appInfo":Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_4
    return-void
.end method

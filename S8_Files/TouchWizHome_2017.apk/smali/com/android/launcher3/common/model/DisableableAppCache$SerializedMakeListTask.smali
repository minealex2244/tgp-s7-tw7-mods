.class Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;
.super Ljava/lang/Object;
.source "DisableableAppCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/DisableableAppCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SerializedMakeListTask"
.end annotation


# instance fields
.field private final mAppsToMakeList:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/common/model/DisableableAppCache;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/DisableableAppCache;Ljava/util/Stack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/DisableableAppCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p2, "appsToMakeList":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;->this$0:Lcom/android/launcher3/common/model/DisableableAppCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p2, p0, Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;->mAppsToMakeList:Ljava/util/Stack;

    .line 326
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 330
    iget-object v9, p0, Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;->mAppsToMakeList:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 331
    iget-object v9, p0, Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;->mAppsToMakeList:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 333
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v9, p0, Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;->this$0:Lcom/android/launcher3/common/model/DisableableAppCache;

    # getter for: Lcom/android/launcher3/common/model/DisableableAppCache;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/android/launcher3/common/model/DisableableAppCache;->access$000(Lcom/android/launcher3/common/model/DisableableAppCache;)Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v11, 0x80

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 334
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 335
    .local v4, "md":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 336
    .local v8, "unblock":Z
    const/4 v0, 0x0

    .line 337
    .local v0, "block":Z
    if-eqz v4, :cond_0

    iget-object v9, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 338
    const-string v9, "com.sec.android.app.unblockdisabling"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 339
    const-string v9, "com.sec.android.app.blockdisabling"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 341
    :cond_0
    sget-object v9, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableBlockedItems:Ljava/util/ArrayList;

    iget-object v10, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 342
    if-eqz v0, :cond_3

    .line 343
    sget-object v9, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableBlockedItems:Ljava/util/ArrayList;

    iget-object v10, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v0    # "block":Z
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "md":Landroid/os/Bundle;
    .end local v8    # "unblock":Z
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;->scheduleNext()V

    .line 368
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-void

    .line 345
    .restart local v0    # "block":Z
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "md":Landroid/os/Bundle;
    .restart local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "unblock":Z
    :cond_3
    if-eqz v8, :cond_4

    .line 346
    :try_start_1
    sget-object v9, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableableItems:Ljava/util/ArrayList;

    iget-object v10, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 347
    sget-object v9, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableableItems:Ljava/util/ArrayList;

    iget-object v10, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 363
    .end local v0    # "block":Z
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "md":Landroid/os/Bundle;
    .end local v8    # "unblock":Z
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "DisableableAppCache"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while making list from Meta : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "block":Z
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "md":Landroid/os/Bundle;
    .restart local v8    # "unblock":Z
    :cond_4
    :try_start_2
    iget-object v9, p0, Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;->this$0:Lcom/android/launcher3/common/model/DisableableAppCache;

    # getter for: Lcom/android/launcher3/common/model/DisableableAppCache;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/android/launcher3/common/model/DisableableAppCache;->access$000(Lcom/android/launcher3/common/model/DisableableAppCache;)Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android"

    const/16 v11, 0x40

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 352
    .local v7, "sys":Landroid/content/pm/PackageInfo;
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v10, 0x0

    aget-object v6, v9, v10

    .line 353
    .local v6, "signature":Landroid/content/pm/Signature;
    iget-object v9, p0, Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;->this$0:Lcom/android/launcher3/common/model/DisableableAppCache;

    # getter for: Lcom/android/launcher3/common/model/DisableableAppCache;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/android/launcher3/common/model/DisableableAppCache;->access$000(Lcom/android/launcher3/common/model/DisableableAppCache;)Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v11, 0x40

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 355
    .local v3, "itemPkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v6, v9}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 356
    sget-object v9, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableableItems:Ljava/util/ArrayList;

    iget-object v10, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 357
    sget-object v9, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableableItems:Ljava/util/ArrayList;

    iget-object v10, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public scheduleNext()V
    .locals 6

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;->this$0:Lcom/android/launcher3/common/model/DisableableAppCache;

    # getter for: Lcom/android/launcher3/common/model/DisableableAppCache;->mWorkerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/launcher3/common/model/DisableableAppCache;->access$200(Lcom/android/launcher3/common/model/DisableableAppCache;)Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/android/launcher3/common/model/DisableableAppCache;->DISABLEABLE_APP_UPDATE_TOKEN:Ljava/lang/Object;
    invoke-static {}, Lcom/android/launcher3/common/model/DisableableAppCache;->access$100()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 372
    return-void
.end method

.class Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;
.super Ljava/lang/Object;
.source "SecLockscreenNotificationApplist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    .prologue
    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get12(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/util/ArrayMap;

    move-result-object v28

    monitor-enter v28

    .line 468
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 469
    .local v22, "start":J
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get0()Z

    move-result v27

    if-eqz v27, :cond_0

    const-string/jumbo v27, "SecLockNotiApplist"

    const-string/jumbo v29, "Collecting apps..."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get12(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/util/ArrayMap;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->clear()V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get13(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 474
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v4, "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get10(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/content/pm/PackageManager;

    move-result-object v27

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v21

    .line 486
    .local v21, "tempAppInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v27, Landroid/content/Intent;

    const-string/jumbo v29, "android.intent.action.MAIN"

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 487
    const-string/jumbo v29, "android.intent.category.LAUNCHER"

    .line 486
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 490
    .local v14, "launchIntent":Landroid/content/Intent;
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    .line 491
    .local v17, "mEntriesMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get4(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/content/Context;

    move-result-object v27

    const-string/jumbo v29, "user"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/UserManager;

    .line 492
    .local v18, "mUm":Landroid/os/UserManager;
    invoke-virtual/range {v18 .. v18}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserHandle;

    .line 493
    .local v24, "user":Landroid/os/UserHandle;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v27

    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 467
    .end local v4    # "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v14    # "launchIntent":Landroid/content/Intent;
    .end local v17    # "mEntriesMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;>;"
    .end local v18    # "mUm":Landroid/os/UserManager;
    .end local v21    # "tempAppInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v22    # "start":J
    .end local v24    # "user":Landroid/os/UserHandle;
    .end local v25    # "user$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v27

    monitor-exit v28

    throw v27

    .line 497
    .restart local v4    # "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v14    # "launchIntent":Landroid/content/Intent;
    .restart local v17    # "mEntriesMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;>;"
    .restart local v18    # "mUm":Landroid/os/UserManager;
    .restart local v21    # "tempAppInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v22    # "start":J
    .restart local v25    # "user$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_8

    .line 498
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v26

    .line 499
    .local v26, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get10(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/content/pm/PackageManager;

    move-result-object v27

    .line 500
    const/16 v29, 0x200

    .line 499
    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v26

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v12

    .line 501
    .local v12, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "list$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ApplicationInfo;

    .line 502
    .local v15, "list":Landroid/content/pm/ApplicationInfo;
    const/4 v8, 0x0

    .line 503
    .local v8, "hasLaunchEntry":Z
    const/4 v5, 0x0

    .local v5, "count":I
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v5, v0, :cond_3

    .line 504
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 505
    const/4 v8, 0x1

    .line 509
    :cond_3
    iget v0, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v27, v0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x80

    move/from16 v27, v0

    if-nez v27, :cond_4

    .line 510
    iget v0, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x1

    if-nez v27, :cond_6

    .line 512
    :cond_4
    :goto_4
    iget-boolean v0, v15, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    .line 513
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 503
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 511
    :cond_6
    if-eqz v8, :cond_2

    goto :goto_4

    .line 497
    .end local v5    # "count":I
    .end local v8    # "hasLaunchEntry":Z
    .end local v15    # "list":Landroid/content/pm/ApplicationInfo;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 537
    .end local v12    # "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16    # "list$iterator":Ljava/util/Iterator;
    .end local v26    # "userId":I
    :cond_8
    const/4 v9, 0x0

    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_b

    .line 538
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .line 539
    .local v10, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get7(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get1(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)[Ljava/lang/String;

    move-result-object v29

    const/16 v27, 0x0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    :goto_6
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_9

    aget-object v19, v29, v27

    .line 541
    .local v19, "packageName":Ljava/lang/String;
    iget-object v0, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_a

    .line 542
    invoke-interface {v4, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 543
    add-int/lit8 v9, v9, -0x1

    .line 537
    .end local v19    # "packageName":Ljava/lang/String;
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 540
    .restart local v19    # "packageName":Ljava/lang/String;
    :cond_a
    add-int/lit8 v27, v27, 0x1

    goto :goto_6

    .line 550
    .end local v10    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v19    # "packageName":Ljava/lang/String;
    :cond_b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "info$iterator":Ljava/util/Iterator;
    :cond_c
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .line 551
    .restart local v10    # "info":Landroid/content/pm/ApplicationInfo;
    iget-object v13, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 552
    .local v13, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get12(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/util/ArrayMap;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_c

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get10(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/content/pm/PackageManager;

    move-result-object v27

    sget-object v29, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mBackend:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$Backend;

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v10, v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$Backend;)Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;

    move-result-object v20

    .line 558
    .local v20, "row":Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get12(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/util/ArrayMap;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 565
    .end local v10    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "key":Ljava/lang/String;
    .end local v20    # "row":Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get13(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get12(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/util/ArrayMap;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get6(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/os/Handler;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get11(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Ljava/lang/Runnable;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 570
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    sub-long v6, v30, v22

    .line 571
    .local v6, "elapsed":J
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get0()Z

    move-result v27

    if-eqz v27, :cond_e

    const-string/jumbo v27, "SecLockNotiApplist"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Collected "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get12(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/util/ArrayMap;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " apps in "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_e
    monitor-exit v28

    .line 466
    return-void
.end method

.class public Lcom/android/launcher3/allapps/controller/PostAppsPositioner;
.super Lcom/android/launcher3/common/customer/PostPositionerBase;
.source "PostAppsPositioner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PostAppsPositioner"


# instance fields
.field private mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

.field private mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/customer/PostPositionProvider;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "provider"    # Lcom/android/launcher3/common/customer/PostPositionProvider;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/customer/PostPositionerBase;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/customer/PostPositionProvider;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/controller/PostAppsPositioner;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/ItemRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/PostAppsPositioner;
    .param p1, "x1"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p2, "x2"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "x3"    # Lcom/android/launcher3/common/customer/ItemRecord;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->addItem(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/ItemRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/controller/PostAppsPositioner;)Lcom/android/launcher3/common/customer/PostPositionProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/PostAppsPositioner;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    return-object v0
.end method

.method private declared-synchronized addItem(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/ItemRecord;)Z
    .locals 12
    .param p1, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "itemRecord"    # Lcom/android/launcher3/common/customer/ItemRecord;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 89
    monitor-enter p0

    :try_start_0
    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 90
    const-wide/16 v4, -0x1

    .line 91
    .local v4, "folderId":J
    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/ItemRecord;->isAppsPreloadFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getPreloadedFolderId(Ljava/lang/String;)J

    move-result-wide v4

    .line 93
    const-string v1, "PostAppsPositioner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder is preloaded folder. folderId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    cmp-long v1, v4, v10

    if-gez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderId(Ljava/lang/String;Z)J

    move-result-wide v4

    .line 97
    const-string v1, "PostAppsPositioner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request preloaded folder. but not created by xml so find other folder type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    :goto_0
    const-wide/32 v2, 0x1869f

    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    .line 106
    const-string v1, "PostAppsPositioner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " folder already removed by user."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v8

    .line 136
    .end local v4    # "folderId":J
    :goto_1
    monitor-exit p0

    return v1

    .line 100
    .restart local v4    # "folderId":J
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderId(Ljava/lang/String;Z)J

    move-result-wide v4

    .line 101
    const-string v1, "PostAppsPositioner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder is not preloaded folder. folderId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    .end local v4    # "folderId":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 108
    .restart local v4    # "folderId":J
    :cond_2
    cmp-long v1, v4, v10

    if-lez v1, :cond_3

    .line 109
    :try_start_2
    const-string v1, "PostAppsPositioner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder exist. folderId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " add to folder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    .line 110
    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->addToFolder(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;JLcom/android/launcher3/common/customer/ItemRecord;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 111
    const-string v1, "PostAppsPositioner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addToFolder Child item isn\'t exist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    .line 112
    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 115
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderId(Ljava/lang/String;Z)J

    move-result-wide v4

    .line 116
    const-string v1, "PostAppsPositioner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder is not created so need to make a folder by folderId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/allapps/model/AppsLoader;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v7

    .line 118
    .local v7, "appItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    cmp-long v1, v4, v10

    if-lez v1, :cond_4

    if-eqz v7, :cond_4

    .line 119
    const-string v1, "PostAppsPositioner"

    const-string v2, "create folder from ready id"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0, v7, p3, p1}, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->createFolder(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/customer/ItemRecord;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 121
    const-string v1, "PostAppsPositioner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFolder Child item isn\'t exist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    .line 122
    goto/16 :goto_1

    .line 125
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    .line 126
    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v6}, Lcom/android/launcher3/allapps/model/AppsLoader;->getItemInfoInAppsForComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    .line 127
    .local v0, "addedItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v0, :cond_5

    .line 128
    const-string v1, "PostAppsPositioner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add item and save ready id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v2

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v10, v11, v3}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeFolderId(Ljava/lang/String;JZ)V

    .end local v0    # "addedItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v4    # "folderId":J
    .end local v7    # "appItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_5
    :goto_2
    move v1, v9

    .line 136
    goto/16 :goto_1

    .line 134
    :cond_6
    const-string v1, "PostAppsPositioner"

    const-string v2, "folder is not created and folderName from PrefInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private addToFolder(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;JLcom/android/launcher3/common/customer/ItemRecord;)Z
    .locals 9
    .param p1, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "folderId"    # J
    .param p5, "itemRecord"    # Lcom/android/launcher3/common/customer/ItemRecord;

    .prologue
    const/4 v3, 0x1

    .line 141
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/model/AppsLoader;->findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v2

    .line 142
    .local v2, "fItem":Lcom/android/launcher3/folder/FolderInfo;
    const-string v4, "PostAppsPositioner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToFolder() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-eqz v2, :cond_2

    .line 144
    const-string v4, "PostAppsPositioner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToAppsFolder() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5, p2, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->getItemInfoInAppsForComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 147
    .local v1, "appItem":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v1, :cond_1

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, "addedApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    const-string v4, "PostAppsPositioner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToAppsFolder() - folderItem ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , appItem container = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->id:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 153
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v4, v2, v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->addToFolderItem(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V

    .line 163
    .end local v0    # "addedApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v1    # "appItem":Lcom/android/launcher3/common/base/item/IconInfo;
    :goto_0
    return v3

    .line 156
    .restart local v0    # "addedApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .restart local v1    # "appItem":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    const-string v4, "PostAppsPositioner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToAppsFolder() - item:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is already added to folder:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    .end local v0    # "addedApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_1
    const-string v3, "PostAppsPositioner"

    const-string v4, "no app item for addToFolder"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v1    # "appItem":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private createFolder(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/customer/ItemRecord;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)Z
    .locals 10
    .param p1, "appItem"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "itemRecord"    # Lcom/android/launcher3/common/customer/ItemRecord;
    .param p3, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 168
    if-eqz p1, :cond_0

    .line 170
    new-instance v1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {v1}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    .line 172
    .local v1, "fItem":Lcom/android/launcher3/folder/FolderInfo;
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    invoke-virtual {p2}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 178
    const-wide/16 v6, -0x66

    iput-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    .line 179
    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v5, v7}, Lcom/android/launcher3/folder/FolderInfo;->setOption(IZLandroid/content/Context;)V

    .line 180
    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    .line 181
    iget v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v6, v1, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    .line 182
    iget v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v6, v1, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    .line 183
    iget v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v6, v1, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    .line 186
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    .line 187
    invoke-virtual {p3}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {p3}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v5}, Lcom/android/launcher3/allapps/model/AppsLoader;->getItemInfoInAppsForComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 188
    .local v3, "newItem":Lcom/android/launcher3/common/base/item/IconInfo;
    if-nez v3, :cond_1

    .line 202
    .end local v1    # "fItem":Lcom/android/launcher3/folder/FolderInfo;
    .end local v3    # "newItem":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local p1    # "appItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    :goto_1
    return v4

    .line 173
    .restart local v1    # "fItem":Lcom/android/launcher3/folder/FolderInfo;
    .restart local p1    # "appItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "PostAppsPositioner"

    const-string v7, "generate new item id for created folder is failed."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "newItem":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v2, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local p1    # "appItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v6, v1, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->addFolderAndBindItem(Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/ArrayList;)V

    .line 197
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {p2}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->removeFolderId(Ljava/lang/String;Z)V

    .line 198
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {p2}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v6, v7, v8, v9, v4}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeFolderId(Ljava/lang/String;JZ)V

    .line 199
    const-string v4, "PostAppsPositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createFolder() - fItem.id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 200
    goto :goto_1
.end method


# virtual methods
.method public addItem(Lcom/android/launcher3/common/customer/ItemRecord;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 3
    .param p1, "itemRecord"    # Lcom/android/launcher3/common/customer/ItemRecord;
    .param p2, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->isAppsAdd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    .line 63
    :cond_0
    const-string v0, "PostAppsPositioner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAppsItem() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    if-nez v0, :cond_1

    .line 66
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    if-nez v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    if-nez v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getUpdater()Lcom/android/launcher3/common/model/DataUpdater;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mModelWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/allapps/controller/PostAppsPositioner$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/launcher3/allapps/controller/PostAppsPositioner$1;-><init>(Lcom/android/launcher3/allapps/controller/PostAppsPositioner;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/ItemRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deleteFolder(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    const-wide/32 v4, 0x1869f

    const/4 v2, 0x0

    .line 207
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderNameId(J)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "foldername":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {v1, v0, v4, v5, v2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeFolderId(Ljava/lang/String;JZ)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getPreloadedFolderNameId(J)Ljava/lang/String;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {v1, v0, v4, v5, v2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeFolderId(Ljava/lang/String;JZ)V

    goto :goto_0
.end method

.method protected setup()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    const/16 v1, -0x66

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->setContainer(I)V

    .line 52
    return-void
.end method

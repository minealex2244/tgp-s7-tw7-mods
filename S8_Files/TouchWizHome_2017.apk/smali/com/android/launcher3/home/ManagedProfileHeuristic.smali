.class public Lcom/android/launcher3/home/ManagedProfileHeuristic;
.super Ljava/lang/Object;
.source "ManagedProfileHeuristic.java"


# static fields
.field private static final AUTO_ADD_TO_FOLDER_DURATION:J = 0x1b77400L

.field private static final TAG:Ljava/lang/String; = "ManagedProfileHeuristic"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHomescreenApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mModel:Lcom/android/launcher3/LauncherModel;

.field private final mPackageSetKey:Ljava/lang/String;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private final mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

.field private final mUserCreationTime:J

.field private final mUserSerial:J

.field private mWorkFolderApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 87
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 89
    invoke-static {p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v0

    .line 90
    .local v0, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUserSerial:J

    .line 91
    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserCreationTime(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUserCreationTime:J

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->getInstalledPackagesPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUserSerial:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.launcher.managedusers.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    .line 96
    return-void
.end method

.method private static addAllUserKeys(JLjava/util/HashSet;)V
    .locals 2
    .param p0, "userSerial"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p2, "keysOut":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "home_only_installed_packages_for_user_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installed_packages_for_user_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "home_only_user_folder_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_folder_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 341
    return-void
.end method

.method private finalizeAdditions(Z)V
    .locals 4
    .param p1, "addHomeScreenShortcuts"    # Z

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->finalizeWorkFolder()V

    .line 242
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 245
    :cond_0
    return-void
.end method

.method private finalizeWorkFolder()V
    .locals 13

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 166
    iget-object v7, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 220
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v7, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/launcher3/home/ManagedProfileHeuristic$1;

    invoke-direct {v8, p0}, Lcom/android/launcher3/home/ManagedProfileHeuristic$1;-><init>(Lcom/android/launcher3/home/ManagedProfileHeuristic;)V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 178
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->getUserFolderIdPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUserSerial:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "folderIdKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 180
    iget-object v7, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    const-wide/16 v8, 0x0

    invoke-interface {v7, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 181
    .local v0, "folderId":J
    iget-object v7, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/launcher3/home/HomeLoader;->findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v6

    .line 183
    .local v6, "workFolder":Lcom/android/launcher3/folder/FolderInfo;
    if-eqz v6, :cond_1

    invoke-virtual {v6, v11}, Lcom/android/launcher3/folder/FolderInfo;->hasOption(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 185
    :cond_1
    iget-object v7, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 188
    :cond_2
    iget-object v7, v6, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {p0, v0, v1, v7}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->saveWorkFolderShortcuts(JI)V

    .line 190
    iget-object v5, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    .line 192
    .local v5, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v7, Lcom/android/launcher3/util/MainThreadExecutor;

    invoke-direct {v7}, Lcom/android/launcher3/util/MainThreadExecutor;-><init>()V

    new-instance v8, Lcom/android/launcher3/home/ManagedProfileHeuristic$2;

    invoke-direct {v8, p0, v5, v6}, Lcom/android/launcher3/home/ManagedProfileHeuristic$2;-><init>(Lcom/android/launcher3/home/ManagedProfileHeuristic;Ljava/util/ArrayList;Lcom/android/launcher3/folder/FolderInfo;)V

    invoke-virtual {v7, v8}, Lcom/android/launcher3/util/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 203
    .end local v0    # "folderId":J
    .end local v5    # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v6    # "workFolder":Lcom/android/launcher3/folder/FolderInfo;
    :cond_3
    new-instance v6, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {v6}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    .line 204
    .restart local v6    # "workFolder":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v7, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    const v8, 0x7f0800bb

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v6, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 205
    const/4 v7, 0x0

    invoke-virtual {v6, v11, v10, v7}, Lcom/android/launcher3/folder/FolderInfo;->setOption(IZLandroid/content/Context;)V

    .line 208
    iget-object v7, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 209
    .local v3, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v6, v3}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_1

    .line 213
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    .local v4, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v7, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v4, v12}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 216
    iget-object v7, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->getUserFolderIdPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUserSerial:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-wide v10, v6, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-interface {v7, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 218
    iget-wide v8, v6, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-direct {p0, v8, v9, v12}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->saveWorkFolderShortcuts(JI)V

    goto/16 :goto_0
.end method

.method public static get(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/home/ManagedProfileHeuristic;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 65
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    invoke-static {p0}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/util/DualAppUtils;->isDualAppId(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    :cond_0
    new-instance v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/ManagedProfileHeuristic;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 69
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getInstalledPackagesPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "home_only_installed_packages_for_user_"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "installed_packages_for_user_"

    goto :goto_0
.end method

.method private getUserApps(Ljava/util/HashSet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "outExistingApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 306
    .local v0, "userApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 307
    const/4 v1, 0x0

    .line 310
    :goto_0
    return v1

    .line 309
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 310
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getUserFolderIdPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "home_only_user_folder_"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_folder_"

    goto :goto_0
.end method

.method static markExistingUsersForNoFolderCreation(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 348
    invoke-static {p0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v4

    .line 349
    .local v4, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    .line 351
    .local v1, "myUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    const/4 v2, 0x0

    .line 352
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 353
    .local v3, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 357
    if-nez v2, :cond_1

    .line 358
    const-string v6, "com.sec.android.app.launcher.managedusers.prefs"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 362
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->getUserFolderIdPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "folderIdKey":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 364
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-wide/16 v8, -0x1

    invoke-interface {v6, v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 367
    .end local v0    # "folderIdKey":Ljava/lang/String;
    .end local v3    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_2
    return-void
.end method

.method private markForAddition(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;J)V
    .locals 6
    .param p1, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p2, "installTime"    # J

    .prologue
    .line 156
    iget-wide v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUserCreationTime:J

    const-wide/32 v4, 0x1b77400

    add-long/2addr v2, v4

    cmp-long v1, p2, v2

    if-gtz v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    .line 159
    .local v0, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/launcher3/common/base/item/IconInfo;->fromActivityInfo(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    return-void

    .line 156
    .end local v0    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static processAllUsers(Ljava/util/List;Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "users":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/UserHandleCompat;>;"
    invoke-static {p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v4

    .line 319
    .local v4, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 320
    .local v5, "validKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 321
    .local v3, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-virtual {v4, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v8

    invoke-static {v8, v9, v5}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->addAllUserKeys(JLjava/util/HashSet;)V

    goto :goto_0

    .line 324
    .end local v3    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_0
    const-string v6, "com.sec.android.app.launcher.managedusers.prefs"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 327
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 328
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 329
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 330
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 333
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 334
    return-void
.end method

.method private saveWorkFolderShortcuts(JI)V
    .locals 7
    .param p1, "workFolderId"    # J
    .param p3, "startingRank"    # I

    .prologue
    const/4 v6, 0x0

    .line 226
    iget-object v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 227
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "startingRank":I
    .local v1, "startingRank":I
    iput p3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 228
    iput-wide p1, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 229
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 230
    iput v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 231
    iput v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 232
    iget-object v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeLoader;->getUpdater()Lcom/android/launcher3/common/model/DataUpdater;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    move p3, v1

    .line 233
    .end local v1    # "startingRank":I
    .restart local p3    # "startingRank":I
    goto :goto_0

    .line 234
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public processPackageAdd([Ljava/lang/String;)V
    .locals 12
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 251
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    .line 252
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    .line 254
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 255
    .local v6, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, v6}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->getUserApps(Ljava/util/HashSet;)Z

    move-result v7

    .line 257
    .local v7, "userAppsExisted":Z
    const/4 v4, 0x0

    .line 258
    .local v4, "newPackageAdded":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 259
    .local v2, "installTime":J
    iget-object v8, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v1

    .line 261
    .local v1, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    array-length v11, p1

    move v9, v10

    :goto_0
    if-ge v9, v11, :cond_1

    aget-object v5, p1, v9

    .line 262
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 263
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 264
    const/4 v4, 0x1

    .line 266
    iget-object v8, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 267
    invoke-virtual {v1, v5, v8}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 268
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 269
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    invoke-direct {p0, v8, v2, v3}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->markForAddition(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;J)V

    .line 261
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    :cond_0
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_0

    .line 274
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    .line 275
    iget-object v8, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    invoke-interface {v8, v9, v6}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 276
    invoke-direct {p0, v7}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->finalizeAdditions(Z)V

    .line 278
    :cond_2
    return-void
.end method

.method public processPackageRemoved([Ljava/lang/String;)V
    .locals 6
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 284
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 285
    .local v2, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, v2}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->getUserApps(Ljava/util/HashSet;)Z

    .line 286
    const/4 v1, 0x0

    .line 288
    .local v1, "packageRemoved":Z
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, p1, v3

    .line 289
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 290
    const/4 v1, 0x1

    .line 288
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 294
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 295
    iget-object v3, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 297
    :cond_2
    return-void
.end method

.method public processUserApps(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    .line 106
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 107
    .local v13, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->getUserApps(Ljava/util/HashSet;)Z

    move-result v15

    .line 109
    .local v15, "userAppsExisted":Z
    const/4 v11, 0x0

    .line 111
    .local v11, "newPackageAdded":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 112
    .local v10, "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {v10}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 113
    .local v12, "packageName":Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    invoke-virtual {v13, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    const/4 v11, 0x1

    .line 118
    const/4 v2, 0x1

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    .line 119
    .local v4, "columns":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent LIKE ? AND itemType=0 AND hidden="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    .line 121
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "profileId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUserSerial:J

    move-wide/from16 v18, v0

    .line 122
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x25

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v7, 0x25

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 124
    .local v6, "selectionArg":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 127
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 129
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 130
    const-string v2, "ManagedProfileHeuristic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "work app was hided - "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 140
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArg":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 141
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ManagedProfileHeuristic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 134
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "columns":[Ljava/lang/String;
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v6    # "selectionArg":[Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 137
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    .line 138
    invoke-virtual {v2, v12, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 139
    .local v14, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-wide v2, v14, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v3}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->markForAddition(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;J)V

    goto/16 :goto_0

    .line 134
    .end local v14    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 146
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArg":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_3
    if-eqz v11, :cond_4

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    invoke-interface {v2, v3, v13}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->finalizeAdditions(Z)V

    .line 153
    :cond_4
    return-void
.end method

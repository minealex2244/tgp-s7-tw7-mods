.class public Lcom/android/launcher3/common/model/BadgeSettingsFragment;
.super Landroid/app/Fragment;
.source "BadgeSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;,
        Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;,
        Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BadgeSettingsFragment"


# instance fields
.field private final BADGE_APP_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final BADGE_MANAGE_COLUMNS:[Ljava/lang/String;

.field private allSwitchLayout:Landroid/widget/LinearLayout;

.field private isDatabaseLoaderRunning:Z

.field private mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

.field private mAllSwitch:Landroid/widget/Switch;

.field private mBadgeAppItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

.field private mBadgeSettings:I

.field private mBadges_Hidden:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "package"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "class"

    aput-object v2, v0, v1

    const-string v1, "hidden"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->BADGE_MANAGE_COLUMNS:[Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadges_Hidden:Ljava/util/List;

    .line 51
    iput-boolean v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->isDatabaseLoaderRunning:Z

    .line 52
    iput v4, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeSettings:I

    .line 451
    new-instance v0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$3;-><init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->BADGE_APP_COMPARATOR:Ljava/util/Comparator;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->updateAllSwitch()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAllSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->loadBadgeProvider()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->createAppItemArray()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;)Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;
    .param p1, "x1"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->isDatabaseLoaderRunning:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->isDatabaseLoaderRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->refreshAllAppItems(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadges_Hidden:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeSettings:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Lcom/android/launcher3/common/model/BadgeSettingsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->dismissProgress()V

    return-void
.end method

.method private createAppItemArray()V
    .locals 6

    .prologue
    .line 271
    iget-object v4, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v3

    .line 272
    .local v3, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    const/4 v4, 0x0

    .line 273
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v1

    .line 274
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    iget-object v4, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 275
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 276
    .local v0, "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    new-instance v2, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;-><init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)V

    .line 277
    .local v2, "item":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    iget-object v5, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    .end local v0    # "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v2    # "item":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    iget-object v5, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->BADGE_APP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 281
    return-void
.end method

.method private dismissProgress()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 297
    return-void
.end method

.method private hasActivityForComponent(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 327
    iget-object v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v2

    .line 328
    .local v2, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 329
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    if-eqz v0, :cond_1

    .line 330
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 331
    .local v1, "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {v1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 332
    const/4 v3, 0x1

    .line 335
    .end local v1    # "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadBadgeProvider()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 339
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadges_Hidden:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 340
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/model/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->BADGE_MANAGE_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 341
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 342
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 344
    .local v10, "pkgName":Ljava/lang/String;
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 345
    .local v7, "className":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 346
    .local v9, "hidden":I
    if-ne v9, v11, :cond_0

    if-eqz v7, :cond_0

    .line 347
    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v10, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .local v8, "cn":Landroid/content/ComponentName;
    invoke-direct {p0, v8}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->hasActivityForComponent(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadges_Hidden:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_1
    const-string v0, "BadgeSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBadgeCounts: mBadges_Hidden add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v9    # "hidden":I
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 356
    :cond_3
    const-string v0, "BadgeSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadBadgeProvider: mBadges_Hidden count= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadges_Hidden:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void
.end method

.method private refreshAllAppItems(Z)V
    .locals 3
    .param p1, "hidden"    # Z

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    .line 115
    .local v0, "app":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->setHidden(Z)V

    goto :goto_0

    .line 117
    .end local v0    # "app":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->notifyDataSetChanged()V

    .line 118
    return-void
.end method

.method public static setAppBadgeStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    const/4 v7, 0x0

    .line 168
    sget-object v1, Lcom/android/launcher3/common/model/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    .line 169
    .local v1, "badgeUri":Landroid/net/Uri;
    const-string v4, "package=? AND class=?"

    .line 170
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    aput-object p1, v0, v7

    const/4 v5, 0x1

    aput-object p2, v0, v5

    .line 171
    .local v0, "args":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 172
    .local v2, "contentValues":Landroid/content/ContentValues;
    const-string v5, "hidden"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v4, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 174
    .local v3, "result":I
    if-nez v3, :cond_0

    .line 175
    const-string v5, "package"

    invoke-virtual {v2, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v5, "class"

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v5, "badgecount"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 181
    :cond_0
    return-void
.end method

.method private updateAllSwitch()V
    .locals 7

    .prologue
    .line 121
    const/4 v0, 0x1

    .line 122
    .local v0, "all":Z
    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    .line 123
    .local v1, "app":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    invoke-virtual {v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 128
    .end local v1    # "app":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v4

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08018c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    .line 130
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08011b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_2

    const-wide/16 v2, 0x1

    .line 128
    :goto_0
    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 132
    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAllSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 133
    return-void

    .line 130
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enableAllAppsbadge(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAllSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 382
    .local v0, "isChecked":Z
    xor-int v1, p1, v0

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->allSwitchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->performClick()Z

    .line 386
    :cond_0
    return-void
.end method

.method public enableAppBadge(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 389
    iget-object v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 390
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 391
    iget-object v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    .line 392
    .local v1, "item":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    invoke-virtual {v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    if-nez p2, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->setHidden(Z)V

    .line 394
    invoke-virtual {v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHasChange()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 395
    iget-object v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->notifyItemChanged(I)V

    .line 390
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 399
    .end local v1    # "item":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    :cond_2
    return-void
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 301
    const/4 v0, 0x1

    .line 303
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    .line 66
    const-string v0, "BadgeSettingsFragment"

    const-string v1, "onCreate: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->startLoader()V

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 73
    const v1, 0x7f03001a

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0f0049

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 76
    const v1, 0x7f0f0048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAllSwitch:Landroid/widget/Switch;

    .line 77
    const v1, 0x7f0f0047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->allSwitchLayout:Landroid/widget/LinearLayout;

    .line 78
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f100009

    invoke-direct {v1, v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 80
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 82
    new-instance v1, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    .line 83
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    new-instance v2, Lcom/android/launcher3/common/model/BadgeSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$1;-><init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->setOnChangeListener(Lcom/android/launcher3/common/model/BadgeSettingsAdapter$OnChangeListener;)V

    .line 89
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 91
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getBadgeSetings()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeSettings:I

    .line 92
    iget v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeSettings:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 93
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAllSwitch:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->allSwitchLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->allSwitchLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/launcher3/common/model/BadgeSettingsFragment$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$2;-><init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_1
    return-object v0

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAllSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->cancel(Z)Z

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    if-eqz v0, :cond_1

    .line 197
    const-string v0, "BadgeSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy: mDatabaseLoader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_1
    const-string v0, "BadgeSettingsFragment"

    const-string v1, "onDestroy: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 201
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 186
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->startDatabaseLoader()V

    .line 187
    const-string v0, "BadgeSettingsFragment"

    const-string v1, "onPause: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method public showProgress()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 287
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 290
    return-void
.end method

.method public startDatabaseLoader()V
    .locals 3

    .prologue
    .line 370
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isSupportBadgeManage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 373
    const-string v0, "BadgeSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDatabaseLoader: return ,mDatabaseLoader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    :cond_1
    new-instance v0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;-><init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Lcom/android/launcher3/common/model/BadgeSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    .line 377
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public startLoader()V
    .locals 2

    .prologue
    .line 360
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isSupportBadgeManage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->cancel(Z)Z

    .line 365
    :cond_1
    new-instance v0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;-><init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Lcom/android/launcher3/common/model/BadgeSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    .line 366
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public updateAppBadgeIntoDatabase()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 136
    iget-object v7, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    if-eqz v7, :cond_5

    .line 137
    const-string v7, "BadgeSettingsFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateAppBadgeIntoDatabase: count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    invoke-virtual {v11}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->getItemCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v7, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    invoke-virtual {v7}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->getItemCount()I

    move-result v7

    if-lez v7, :cond_5

    .line 139
    const/4 v4, 0x0

    .line 140
    .local v4, "hasShow":Z
    const/4 v3, 0x0

    .line 141
    .local v3, "hasHide":Z
    iget-object v7, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    .line 142
    .local v0, "app":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHidden()Z

    move-result v7

    if-nez v7, :cond_1

    .line 143
    const/4 v4, 0x1

    .line 144
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHidden()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 145
    const/4 v3, 0x1

    .line 146
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHasChange()Z

    move-result v2

    .line 147
    .local v2, "hasChange":Z
    if-eqz v2, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 149
    .local v6, "pakcgeName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHidden()Z

    move-result v5

    .line 151
    .local v5, "hidden":Z
    invoke-virtual {v0, v9}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->setHasChange(Z)V

    .line 152
    iget-object v11, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_3

    move v7, v8

    :goto_1
    invoke-static {v11, v6, v1, v7}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->setAppBadgeStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    move v7, v9

    goto :goto_1

    .line 155
    .end local v0    # "app":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "hasChange":Z
    .end local v5    # "hidden":Z
    .end local v6    # "pakcgeName":Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    .line 156
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/launcher3/LauncherAppState;->setBadgeSetings(I)V

    .line 164
    .end local v3    # "hasHide":Z
    .end local v4    # "hasShow":Z
    :cond_5
    :goto_2
    const-string v7, "BadgeSettingsFragment"

    const-string v8, "updateAppBadgeIntoDatabase: done "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 157
    .restart local v3    # "hasHide":Z
    .restart local v4    # "hasShow":Z
    :cond_6
    if-eqz v3, :cond_7

    .line 158
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/launcher3/LauncherAppState;->setBadgeSetings(I)V

    goto :goto_2

    .line 160
    :cond_7
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/launcher3/LauncherAppState;->setBadgeSetings(I)V

    goto :goto_2
.end method

.method public updateList()V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->showProgress()V

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->isDatabaseLoaderRunning:Z

    .line 310
    const-string v0, "BadgeSettingsFragment"

    const-string v1, "updateList: mDatabaseLoader is Running..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    if-eqz v0, :cond_0

    .line 314
    const-string v0, "BadgeSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateList() called with: mBadgeAppLoader.getStatus()= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 316
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->showProgress()V

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->BADGE_APP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 320
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->notifyDataSetChanged()V

    .line 321
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0
.end method

.class public Lcom/android/launcher3/common/customer/PostPositionController;
.super Ljava/lang/Object;
.source "PostPositionController.java"


# static fields
.field public static final SUPPORT_AUTO_FOLDERING:Z = false

.field private static final TAG:Ljava/lang/String; = "PostPositionController"

.field private static sInstance:Lcom/android/launcher3/common/customer/PostPositionController;


# instance fields
.field private mAppsAutoFolderName:Ljava/lang/String;

.field private mAppsInstaller:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHomeAutoFolderName:Ljava/lang/String;

.field private mHomeInstaller:Ljava/lang/String;

.field private mIsEnabled:Z

.field private mPositionerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/customer/PostPositionerBase;",
            ">;"
        }
    .end annotation
.end field

.field private mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mPositionerList:Ljava/util/ArrayList;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mIsEnabled:Z

    .line 56
    iput-object p1, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method private createItemRecordForAutoFoldering(Landroid/content/ComponentName;)Lcom/android/launcher3/common/customer/ItemRecord;
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x1

    .line 278
    const/4 v1, 0x0

    .line 279
    .local v1, "itemRecord":Lcom/android/launcher3/common/customer/ItemRecord;
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "installer":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mHomeInstaller:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mHomeInstaller:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    new-instance v1, Lcom/android/launcher3/common/customer/ItemRecord;

    .end local v1    # "itemRecord":Lcom/android/launcher3/common/customer/ItemRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->APP:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v3}, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/common/customer/ItemRecord;-><init>(Ljava/lang/String;I)V

    .line 283
    .restart local v1    # "itemRecord":Lcom/android/launcher3/common/customer/ItemRecord;
    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/customer/ItemRecord;->setHomeAdded(Z)V

    .line 284
    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/customer/ItemRecord;->setHomePreloadFolder(Z)V

    .line 285
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mHomeAutoFolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/customer/ItemRecord;->setHomeFolderName(Ljava/lang/String;)V

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mAppsInstaller:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mAppsInstaller:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    if-nez v1, :cond_1

    .line 290
    new-instance v1, Lcom/android/launcher3/common/customer/ItemRecord;

    .end local v1    # "itemRecord":Lcom/android/launcher3/common/customer/ItemRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->APP:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v3}, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/common/customer/ItemRecord;-><init>(Ljava/lang/String;I)V

    .line 293
    .restart local v1    # "itemRecord":Lcom/android/launcher3/common/customer/ItemRecord;
    :cond_1
    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/customer/ItemRecord;->setAppsAdded(Z)V

    .line 294
    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/customer/ItemRecord;->setAppsPreloadFolder(Z)V

    .line 295
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mAppsAutoFolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/customer/ItemRecord;->setAppsFolderName(Ljava/lang/String;)V

    .line 298
    :cond_2
    return-object v1
.end method

.method private getActivityInfo(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .locals 5
    .param p1, "cmpName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 244
    iget-object v3, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v2

    .line 245
    .local v2, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 247
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    if-eqz v0, :cond_1

    .line 248
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 249
    .local v1, "i":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {v1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 255
    .end local v1    # "i":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAutoFolderingInfo(Lcom/android/launcher3/common/customer/PostPositionSharedPref;)Z
    .locals 1
    .param p1, "ppPref"    # Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    sget-object v0, Lcom/android/launcher3/common/customer/PostPositionController;->sInstance:Lcom/android/launcher3/common/customer/PostPositionController;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/launcher3/common/customer/PostPositionController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/customer/PostPositionController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/common/customer/PostPositionController;->sInstance:Lcom/android/launcher3/common/customer/PostPositionController;

    .line 64
    :cond_0
    sget-object v0, Lcom/android/launcher3/common/customer/PostPositionController;->sInstance:Lcom/android/launcher3/common/customer/PostPositionController;

    return-object v0
.end method

.method private isAvaliableState()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isComponentActive(Landroid/content/ComponentName;[Landroid/content/pm/ComponentInfo;)Z
    .locals 7
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "components"    # [Landroid/content/pm/ComponentInfo;

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "active":Z
    if-eqz p2, :cond_1

    .line 261
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "className":Ljava/lang/String;
    array-length v5, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, p2, v4

    .line 263
    .local v2, "ci":Landroid/content/pm/ComponentInfo;
    iget-object v6, v2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 264
    iget-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    .line 265
    .local v1, "ces":I
    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    if-nez v1, :cond_1

    iget-boolean v4, v2, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-eqz v4, :cond_1

    .line 268
    :cond_0
    const/4 v0, 0x1

    .line 274
    .end local v1    # "ces":I
    .end local v2    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v3    # "className":Ljava/lang/String;
    :cond_1
    return v0

    .line 262
    .restart local v2    # "ci":Landroid/content/pm/ComponentInfo;
    .restart local v3    # "className":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addAllItems()V
    .locals 2

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/android/launcher3/common/customer/PostPositionController;->isAvaliableState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    const-string v0, "PostPositionController"

    const-string v1, "Not isAvaliableState!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    const-string v0, "PostPositionController"

    const-string v1, "addAllItems() - All"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/customer/PostPositionController;->addItem(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addItem(Lcom/android/launcher3/common/customer/ItemRecord;)V
    .locals 9
    .param p1, "itemRecord"    # Lcom/android/launcher3/common/customer/ItemRecord;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/launcher3/common/customer/PostPositionController;->isAvaliableState()Z

    move-result v6

    if-nez v6, :cond_1

    .line 151
    const-string v6, "PostPositionController"

    const-string v7, "Not isAvaliableState!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    .line 156
    .local v5, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    const/4 v2, 0x0

    .line 157
    .local v2, "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 158
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_6

    .line 159
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v6

    sget-object v7, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->APP:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    if-ne v6, v7, :cond_2

    .line 160
    invoke-direct {p0, v0, v5}, Lcom/android/launcher3/common/customer/PostPositionController;->getActivityInfo(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v2

    .line 161
    if-nez v2, :cond_3

    .line 162
    const-string v6, "PostPositionController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addHomeItem(): Can\'t find ActivityInfo. - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v6

    sget-object v7, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->WIDGET:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    if-ne v6, v7, :cond_3

    .line 167
    :try_start_0
    iget-object v6, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 169
    .local v3, "pkgInfoReceivers":Landroid/content/pm/PackageInfo;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v6}, Lcom/android/launcher3/common/customer/PostPositionController;->isComponentActive(Landroid/content/ComponentName;[Landroid/content/pm/ComponentInfo;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 170
    const-string v6, "PostPositionController"

    const-string v7, "Widget exist and will be added soon"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v3    # "pkgInfoReceivers":Landroid/content/pm/PackageInfo;
    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/common/customer/PostPositionProvider;->updateItemRecordResult(ZLjava/lang/String;)V

    .line 187
    iget-object v6, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mPositionerList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/customer/PostPositionerBase;

    .line 188
    .local v4, "pp":Lcom/android/launcher3/common/customer/PostPositionerBase;
    if-eqz v4, :cond_4

    .line 189
    invoke-virtual {v4, p1, v2, v5}, Lcom/android/launcher3/common/customer/PostPositionerBase;->addItem(Lcom/android/launcher3/common/customer/ItemRecord;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    goto :goto_1

    .line 172
    .end local v4    # "pp":Lcom/android/launcher3/common/customer/PostPositionerBase;
    .restart local v3    # "pkgInfoReceivers":Landroid/content/pm/PackageInfo;
    :cond_5
    :try_start_1
    const-string v6, "PostPositionController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t find widget component info : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 175
    .end local v3    # "pkgInfoReceivers":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "PostPositionController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t find widget component info : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 182
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v6, "PostPositionController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addHomeItem(): Wrong Component expression. - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public addItem(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/customer/PostPositionController;->addItem(Ljava/lang/String;Z)V

    .line 196
    return-void
.end method

.method public addItem(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isWidgetOnly"    # Z

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/launcher3/common/customer/PostPositionController;->isAvaliableState()Z

    move-result v6

    if-nez v6, :cond_1

    .line 200
    const-string v6, "PostPositionController"

    const-string v7, "Not isAvaliableState!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    return-void

    .line 204
    :cond_1
    const-string v6, "PostPositionController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addItem() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isWidgetOnly : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, "autoFoldering":Z
    if-nez p2, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mHomeInstaller:Ljava/lang/String;

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mAppsInstaller:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 208
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mContext:Landroid/content/Context;

    .line 209
    invoke-static {v6}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v6

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v4

    .line 210
    .local v4, "matches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 211
    .local v2, "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {v2}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/launcher3/common/customer/PostPositionController;->createItemRecordForAutoFoldering(Landroid/content/ComponentName;)Lcom/android/launcher3/common/customer/ItemRecord;

    move-result-object v5

    .line 212
    .local v5, "record":Lcom/android/launcher3/common/customer/ItemRecord;
    if-eqz v5, :cond_3

    .line 213
    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/customer/PostPositionController;->addItem(Lcom/android/launcher3/common/customer/ItemRecord;)V

    .line 214
    const/4 v0, 0x1

    goto :goto_0

    .line 219
    .end local v2    # "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v4    # "matches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .end local v5    # "record":Lcom/android/launcher3/common/customer/ItemRecord;
    :cond_4
    if-nez v0, :cond_0

    .line 220
    iget-object v6, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    invoke-virtual {v6, p1}, Lcom/android/launcher3/common/customer/PostPositionProvider;->getItemRecordsNeedToPosition(Ljava/lang/String;)[Lcom/android/launcher3/common/customer/ItemRecord;

    move-result-object v3

    .line 221
    .local v3, "items":[Lcom/android/launcher3/common/customer/ItemRecord;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-lez v6, :cond_0

    .line 222
    array-length v7, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v1, v3, v6

    .line 223
    .local v1, "i":Lcom/android/launcher3/common/customer/ItemRecord;
    if-eqz p2, :cond_5

    invoke-virtual {v1}, Lcom/android/launcher3/common/customer/ItemRecord;->getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v8

    sget-object v9, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->WIDGET:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    if-eq v8, v9, :cond_5

    .line 222
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 226
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/customer/PostPositionController;->addItem(Lcom/android/launcher3/common/customer/ItemRecord;)V

    goto :goto_2
.end method

.method public checkAndEnablePositioner()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 68
    const-wide/16 v4, -0x64

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/common/customer/PostPositionController;->getSharedPref(J)Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    move-result-object v1

    .line 69
    .local v1, "ppPref":Lcom/android/launcher3/common/customer/PostPositionSharedPref;
    if-eqz v1, :cond_3

    .line 70
    invoke-virtual {v1}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->isEnabled()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mIsEnabled:Z

    .line 71
    invoke-direct {p0, v1}, Lcom/android/launcher3/common/customer/PostPositionController;->getAutoFolderingInfo(Lcom/android/launcher3/common/customer/PostPositionSharedPref;)Z

    move-result v0

    .line 72
    .local v0, "autoFolderEnable":Z
    iget-boolean v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mIsEnabled:Z

    if-nez v2, :cond_1

    .line 73
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    invoke-virtual {v2}, Lcom/android/launcher3/common/customer/PostPositionProvider;->hasItemRecord()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    :cond_0
    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->setEnabled(Z)V

    .line 75
    iput-boolean v3, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mIsEnabled:Z

    .line 78
    :cond_1
    const-string v2, "PostPositionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndEnableProvider() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mIsEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v0    # "autoFolderEnable":Z
    :goto_1
    return-void

    .line 70
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 80
    :cond_3
    const-string v2, "PostPositionController"

    const-string v3, "checkAndEnableProvider() - ppPref is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public deleteFolder(J)V
    .locals 3
    .param p1, "folderId"    # J

    .prologue
    .line 327
    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mPositionerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/customer/PostPositionerBase;

    .line 328
    .local v0, "pp":Lcom/android/launcher3/common/customer/PostPositionerBase;
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/customer/PostPositionerBase;->deleteFolder(J)V

    goto :goto_0

    .line 332
    .end local v0    # "pp":Lcom/android/launcher3/common/customer/PostPositionerBase;
    :cond_1
    return-void
.end method

.method public getAppsAutoFolderId(Ljava/lang/String;)J
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 302
    const-wide/16 v0, -0x1

    .line 312
    .local v0, "folderId":J
    return-wide v0
.end method

.method public getProvider()Lcom/android/launcher3/common/customer/PostPositionProvider;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    return-object v0
.end method

.method public getSharedPref(J)Lcom/android/launcher3/common/customer/PostPositionSharedPref;
    .locals 5
    .param p1, "container"    # J

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mPositionerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/customer/PostPositionerBase;

    .line 114
    .local v0, "pp":Lcom/android/launcher3/common/customer/PostPositionerBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/customer/PostPositionerBase;->getSharedPref()Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getContainer()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/android/launcher3/common/customer/PostPositionerBase;->getSharedPref()Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    move-result-object v1

    .line 118
    .end local v0    # "pp":Lcom/android/launcher3/common/customer/PostPositionerBase;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mIsEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerPositioner(Lcom/android/launcher3/common/customer/PostPositionerBase;)V
    .locals 1
    .param p1, "pp"    # Lcom/android/launcher3/common/customer/PostPositionerBase;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mPositionerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public removeAutoFolderInfo(J)V
    .locals 7
    .param p1, "folderId"    # J

    .prologue
    .line 316
    const-wide/16 v4, -0x66

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/common/customer/PostPositionController;->getSharedPref(J)Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    move-result-object v2

    .line 317
    .local v2, "ppPref":Lcom/android/launcher3/common/customer/PostPositionSharedPref;
    if-eqz v2, :cond_0

    .line 318
    iget-object v3, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mAppsAutoFolderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getPreloadedFolderId(Ljava/lang/String;)J

    move-result-wide v0

    .line 319
    .local v0, "autoFolderId":J
    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    .line 320
    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeAutoFolderingInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mAppsInstaller:Ljava/lang/String;

    .line 324
    .end local v0    # "autoFolderId":J
    :cond_0
    return-void
.end method

.method public setProvider(Lcom/android/launcher3/common/customer/PostPositionProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/android/launcher3/common/customer/PostPositionProvider;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    .line 129
    return-void
.end method

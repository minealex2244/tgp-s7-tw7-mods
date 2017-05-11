.class public Lcom/android/launcher3/common/quickoption/QuickOptionManager;
.super Ljava/lang/Object;
.source "QuickOptionManager.java"


# static fields
.field public static final OPTION_ADD_APPS:I = 0x800

.field public static final OPTION_ADD_TO_HOME:I = 0x4

.field public static final OPTION_ADD_TO_PERSONAL:I = 0x4000

.field public static final OPTION_APP_INFO:I = 0x400

.field public static final OPTION_CLEAR_BADGE:I = 0x20

.field public static final OPTION_DELETE_FOLDER:I = 0x8

.field public static final OPTION_DISABLE:I = 0x200

.field public static final OPTION_INSTALL_DUAL_IM:I = 0x8000

.field public static final OPTION_LOCK:I = 0x1000

.field public static final OPTION_MOVE_FROM_FOLDER:I = 0x10

.field public static final OPTION_PUT_TO_SLEEP:I = 0x80

.field public static final OPTION_REMOVE:I = 0x2

.field public static final OPTION_SECURE_FOLDER:I = 0x40

.field public static final OPTION_SELECT:I = 0x1

.field public static final OPTION_UNINSTALL:I = 0x100

.field public static final OPTION_UNLOCK:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "QuickOptionManager"


# instance fields
.field private mAnchorRect:Landroid/graphics/Rect;

.field private mAnchorView:Landroid/view/View;

.field private mBounceAnimation:Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;

.field private mController:Lcom/android/launcher3/common/stage/Stage;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mItemRemoveAnimation:Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mOptionOfHomeItem:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 98
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    .line 101
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mOptionOfHomeItem:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/common/stage/Stage;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mController:Lcom/android/launcher3/common/stage/Stage;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mBounceAnimation:Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;

    return-object v0
.end method

.method private getOptionAddApps(Lcom/android/launcher3/folder/FolderInfo;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    .locals 3
    .param p1, "folderInfo"    # Lcom/android/launcher3/folder/FolderInfo;

    .prologue
    const/4 v1, 0x0

    .line 389
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->canShowAddAppsOptions(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 408
    :goto_0
    return-object v0

    .line 392
    :cond_0
    new-instance v0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-direct {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;-><init>()V

    .line 393
    .local v0, "addApps":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    const v2, 0x7f0200d6

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setIconRsrId(I)V

    .line 394
    const v2, 0x7f080078

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setTitleRsrId(I)V

    .line 395
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mAnchorView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v2, :cond_1

    .line 396
    new-instance v1, Lcom/android/launcher3/common/quickoption/QuickOptionManager$11;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager$11;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setCallback(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 408
    goto :goto_0
.end method

.method private getOptionAddToHome(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    .locals 2
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 538
    new-instance v0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-direct {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;-><init>()V

    .line 539
    .local v0, "addToHome":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setIconRsrId(I)V

    .line 540
    const v1, 0x7f080079

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setTitleRsrId(I)V

    .line 541
    new-instance v1, Lcom/android/launcher3/common/quickoption/QuickOptionManager$16;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager$16;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setCallback(Ljava/lang/Runnable;)V

    .line 550
    return-object v0
.end method

.method private getOptionAddToPersonal(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    .locals 3
    .param p1, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 498
    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 500
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isPossibleAddToPersonal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    new-instance v0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-direct {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;-><init>()V

    .line 503
    .local v0, "addToPersonal":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    const v2, 0x7f0200d8

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setIconRsrId(I)V

    .line 504
    const v2, 0x7f08007a

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setTitleRsrId(I)V

    .line 505
    new-instance v2, Lcom/android/launcher3/common/quickoption/QuickOptionManager$14;

    invoke-direct {v2, p0, v1, p2, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager$14;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Ljava/lang/String;Landroid/content/ComponentName;Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setCallback(Ljava/lang/Runnable;)V

    .line 516
    .end local v0    # "addToPersonal":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOptionAppInfo(Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/content/ComponentName;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    .locals 2
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 354
    if-eqz p2, :cond_0

    .line 355
    new-instance v0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-direct {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;-><init>()V

    .line 356
    .local v0, "appInfo":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setIconRsrId(I)V

    .line 357
    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setTitleRsrId(I)V

    .line 358
    new-instance v1, Lcom/android/launcher3/common/quickoption/QuickOptionManager$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager$9;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setCallback(Ljava/lang/Runnable;)V

    .line 369
    .end local v0    # "appInfo":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOptionClearBadge(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    .locals 2
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 202
    iget v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->mBadgeCount:I

    if-eqz v1, :cond_0

    .line 203
    new-instance v0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-direct {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;-><init>()V

    .line 204
    .local v0, "clearBadge":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setIconRsrId(I)V

    .line 205
    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setTitleRsrId(I)V

    .line 206
    new-instance v1, Lcom/android/launcher3/common/quickoption/QuickOptionManager$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/common/quickoption/QuickOptionManager$3;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setCallback(Ljava/lang/Runnable;)V

    .line 226
    .end local v0    # "clearBadge":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOptionDeleteFolder(Lcom/android/launcher3/folder/FolderInfo;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    .locals 2
    .param p1, "folderInfo"    # Lcom/android/launcher3/folder/FolderInfo;

    .prologue
    .line 373
    new-instance v0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-direct {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;-><init>()V

    .line 374
    .local v0, "removeFolder":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    const v1, 0x7f0200e1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setIconRsrId(I)V

    .line 375
    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setTitleRsrId(I)V

    .line 376
    new-instance v1, Lcom/android/launcher3/common/quickoption/QuickOptionManager$10;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager$10;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Lcom/android/launcher3/folder/FolderInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setCallback(Ljava/lang/Runnable;)V

    .line 385
    return-object v0
.end method

.method private getOptionDisable(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    .locals 5
    .param p1, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const v4, 0x7f0200dc

    .line 298
    if-eqz p2, :cond_1

    .line 299
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, v2}, Lcom/android/launcher3/Utilities;->canDisable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    new-instance v1, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-direct {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;-><init>()V

    .line 302
    .local v1, "disable":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setIconRsrId(I)V

    .line 303
    const v3, 0x7f080082

    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setTitleRsrId(I)V

    .line 304
    new-instance v3, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;

    invoke-direct {v3, p0, p1, v2, p2}, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Lcom/android/launcher3/common/base/item/IconInfo;Ljava/lang/String;Landroid/content/ComponentName;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setCallback(Ljava/lang/Runnable;)V

    .line 350
    .end local v1    # "disable":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 335
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, v2}, Lcom/android/launcher3/Utilities;->canUninstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 336
    new-instance v0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-direct {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;-><init>()V

    .line 337
    .local v0, "dimmedDisable":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setIconRsrId(I)V

    .line 338
    const v3, 0x7f080081

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setTitleRsrId(I)V

    .line 339
    new-instance v3, Lcom/android/launcher3/common/quickoption/QuickOptionManager$8;

    invoke-direct {v3, p0, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager$8;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setCallback(Ljava/lang/Runnable;)V

    move-object v1, v0

    .line 347
    goto :goto_0

    .line 350
    .end local v0    # "dimmedDisable":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getOptionInstallDualIM(Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    .locals 2
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 520
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, p1, p2}, Lcom/android/launcher3/util/DualAppUtils;->canInstallDualApp(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    new-instance v0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-direct {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;-><init>()V

    .line 522
    .local v0, "installDualIM":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setIconRsrId(I)V

    .line 523
    const v1, 0x7f080083

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setTitleRsrId(I)V

    .line 524
    new-instance v1, Lcom/android/launcher3/common/quickoption/QuickOptionManager$15;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/common/quickoption/QuickOptionManager$15;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setCallback(Ljava/lang/Runnable;)V

    .line 534
    .end local v0    # "installDualIM":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOptionLock(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    .locals 3
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v1, 0x0

    .line 412
    if-nez p1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-object v1

    .line 414
    :cond_1
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    .line 415
    .local v0, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->canShowLockOptions(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    new-instance v1, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-direct {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;-><init>()V

    .line 418
    .local v1, "lock":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    const v2, 0x7f0200df

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setIconRsrId(I)V

    .line 419
    const v2, 0x7f080084

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setTitleRsrId(I)V

    .line 420
    new-instance v2, Lcom/android/launcher3/common/quickoption/QuickOptionManager$12;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager$12;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Lcom/android/launcher3/folder/folderlock/FolderLock;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setCallback(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getOptionMoveFromFolder(Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    .locals 2
    .param p1, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 554
    new-instance v0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-direct {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;-><init>()V

    .line 555
    .local v0, "takeOutOfFolder":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    const v1, 0x7f0200e0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setIconRsrId(I)V

    .line 556
    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setTitleRsrId(I)V

    .line 557
    new-instance v1, Lcom/android/launcher3/common/quickoption/QuickOptionManager$17;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager$17;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setCallback(Ljava/lang/Runnable;)V

    .line 565
    return-object v0
.end method

.method private getOptionPutToSleep(Ljava/lang/String;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 250
    if-eqz p1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, p1}, Lcom/android/launcher3/util/AppFreezerUtils;->canPutIntoSleepMode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    new-instance v0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-direct {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;-><init>()V

    .line 253
    .local v0, "putToSleep":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    const v1, 0x7f0200e3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setIconRsrId(I)V

    .line 254
    const v1, 0x7f08008a

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setTitleRsrId(I)V

    .line 255
    new-instance v1, Lcom/android/launcher3/common/quickoption/QuickOptionManager$5;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager$5;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setCallback(Ljava/lang/Runnable;)V

    .line 268
    .end local v0    # "putToSleep":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    :goto_0
    return-object v0

    .line 265
    :cond_0
    const-string v1, "QuickOptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to put into sleep this app : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOptionRemove(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    .locals 3
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->isRemovable(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 167
    new-instance v0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-direct {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;-><init>()V

    .line 168
    .local v0, "remove":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    const v1, 0x7f0200e1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setIconRsrId(I)V

    .line 169
    iget v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v1, :cond_1

    .line 171
    :cond_0
    const v1, 0x7f080087

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setTitleRsrId(I)V

    .line 177
    :goto_0
    new-instance v1, Lcom/android/launcher3/common/quickoption/QuickOptionManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager$2;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setCallback(Ljava/lang/Runnable;)V

    .line 198
    .end local v0    # "remove":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    :goto_1
    return-object v0

    .line 172
    .restart local v0    # "remove":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    :cond_1
    iget v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 173
    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setTitleRsrId(I)V

    goto :goto_0

    .line 175
    :cond_2
    const v1, 0x7f080086

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setTitleRsrId(I)V

    goto :goto_0

    .line 198
    .end local v0    # "remove":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getOptionSecureFolder(Ljava/lang/String;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 230
    if-eqz p1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, p1}, Lcom/android/launcher3/util/SecureFolderHelper;->canAddAppToSecureFolder(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    new-instance v0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-direct {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;-><init>()V

    .line 233
    .local v0, "addToSecureFolder":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setIconRsrId(I)V

    .line 234
    const v1, 0x7f080089

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setTitleRsrId(I)V

    .line 235
    new-instance v1, Lcom/android/launcher3/common/quickoption/QuickOptionManager$4;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager$4;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setCallback(Ljava/lang/Runnable;)V

    .line 246
    .end local v0    # "addToSecureFolder":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOptionSelect(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    .locals 2
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 143
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_1

    .line 144
    :cond_0
    new-instance v0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-direct {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;-><init>()V

    .line 145
    .local v0, "select":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    const v1, 0x7f0200e2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setIconRsrId(I)V

    .line 146
    const v1, 0x7f080089

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setTitleRsrId(I)V

    .line 147
    new-instance v1, Lcom/android/launcher3/common/quickoption/QuickOptionManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager$1;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setCallback(Ljava/lang/Runnable;)V

    .line 162
    .end local v0    # "select":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOptionUninstall(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    .locals 3
    .param p1, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 272
    if-eqz p2, :cond_0

    .line 273
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v0}, Lcom/android/launcher3/Utilities;->canUninstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    new-instance v1, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-direct {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;-><init>()V

    .line 276
    .local v1, "uninstall":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    const v2, 0x7f0200e4

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setIconRsrId(I)V

    .line 277
    const v2, 0x7f08008c

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setTitleRsrId(I)V

    .line 278
    new-instance v2, Lcom/android/launcher3/common/quickoption/QuickOptionManager$6;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/launcher3/common/quickoption/QuickOptionManager$6;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Lcom/android/launcher3/common/base/item/IconInfo;Ljava/lang/String;Landroid/content/ComponentName;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setCallback(Ljava/lang/Runnable;)V

    .line 294
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "uninstall":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getOptionUnlock(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    .locals 3
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v1, 0x0

    .line 455
    if-nez p1, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-object v1

    .line 457
    :cond_1
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    .line 458
    .local v0, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->canShowUnlockOptions(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    new-instance v1, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-direct {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;-><init>()V

    .line 461
    .local v1, "unlock":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    const v2, 0x7f0200e5

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setIconRsrId(I)V

    .line 462
    const v2, 0x7f08008d

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setTitleRsrId(I)V

    .line 463
    new-instance v2, Lcom/android/launcher3/common/quickoption/QuickOptionManager$13;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager$13;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Lcom/android/launcher3/folder/folderlock/FolderLock;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setCallback(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private isInWidgetItemsList(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 10
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 585
    :try_start_0
    instance-of v7, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_3

    .line 586
    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local p1    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 587
    .local v2, "className":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherModel;->getWidgetsLoader()Lcom/android/launcher3/widget/model/WidgetLoader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/widget/model/WidgetLoader;->getWidgetItems()Ljava/util/List;

    move-result-object v6

    .line 588
    .local v6, "widgets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 589
    .local v4, "o":Ljava/lang/Object;
    instance-of v8, v4, Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    .line 590
    check-cast v4, Ljava/util/ArrayList;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 591
    .local v5, "widget":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v9, v5, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v9, :cond_1

    .line 592
    check-cast v5, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    .end local v5    # "widget":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v5}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 594
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-nez v9, :cond_2

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 595
    .local v0, "activity":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 596
    const/4 v7, 0x1

    .line 606
    .end local v0    # "activity":Ljava/lang/String;
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "className":Ljava/lang/String;
    .end local v6    # "widgets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_1
    return v7

    .line 594
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "className":Ljava/lang/String;
    .restart local v6    # "widgets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 603
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "className":Ljava/lang/String;
    .end local v6    # "widgets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v3

    .line 604
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 606
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private isRemovable(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 3
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v0, 0x1

    .line 569
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eq v1, v0, :cond_2

    :cond_0
    iget v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    iget v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 573
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eqz v1, :cond_2

    .line 576
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->isInWidgetItemsList(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method clearItemBounceAnimation()V
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mBounceAnimation:Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mBounceAnimation:Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->stop()V

    .line 651
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mBounceAnimation:Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;

    .line 653
    :cond_0
    return-void
.end method

.method clearItemRemoveAnimation()V
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mItemRemoveAnimation:Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;

    .line 633
    return-void
.end method

.method createItemRemoveAnimation()Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 624
    :goto_0
    return-object v0

    .line 623
    :cond_0
    new-instance v0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mAnchorView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mItemRemoveAnimation:Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;

    .line 624
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mItemRemoveAnimation:Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;

    goto :goto_0
.end method

.method getAnchorRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mAnchorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method getItemRemoveAnimation()Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mItemRemoveAnimation:Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;

    return-object v0
.end method

.method getOptions(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)Ljava/util/List;
    .locals 5
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/QuickOptionListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v4}, Lcom/android/launcher3/common/drag/DragSource;->getController()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mController:Lcom/android/launcher3/common/stage/Stage;

    .line 105
    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 106
    .local v1, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mController:Lcom/android/launcher3/common/stage/Stage;

    instance-of v4, v4, Lcom/android/launcher3/home/HomeController;

    iput-boolean v4, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mOptionOfHomeItem:Z

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "componentName":Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 110
    .local v3, "packageName":Ljava/lang/String;
    instance-of v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_12

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v4

    if-nez v4, :cond_12

    move-object v4, v1

    .line 111
    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 115
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 119
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v2, "options":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/QuickOptionListItem;>;"
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_2

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionSelect(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_2
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_3

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionRemove(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_3
    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_4

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionAddToHome(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_4
    and-int/lit8 v4, p2, 0x8

    if-eqz v4, :cond_5

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {p0, v4}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionDeleteFolder(Lcom/android/launcher3/folder/FolderInfo;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_5
    and-int/lit8 v4, p2, 0x10

    if-eqz v4, :cond_6

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {p0, v4}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionMoveFromFolder(Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_6
    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_7

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionClearBadge(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_7
    and-int/lit8 v4, p2, 0x40

    if-eqz v4, :cond_8

    invoke-direct {p0, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionSecureFolder(Ljava/lang/String;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_8
    and-int/lit16 v4, p2, 0x80

    if-eqz v4, :cond_9

    invoke-direct {p0, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionPutToSleep(Ljava/lang/String;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_9
    and-int/lit16 v4, p2, 0x100

    if-eqz v4, :cond_a

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {p0, v4, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionUninstall(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_a
    and-int/lit16 v4, p2, 0x200

    if-eqz v4, :cond_b

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {p0, v4, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionDisable(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_b
    and-int/lit16 v4, p2, 0x400

    if-eqz v4, :cond_c

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {p0, v4, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionAppInfo(Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/content/ComponentName;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_c
    and-int/lit16 v4, p2, 0x800

    if-eqz v4, :cond_d

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {p0, v4}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionAddApps(Lcom/android/launcher3/folder/FolderInfo;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_d
    and-int/lit16 v4, p2, 0x1000

    if-eqz v4, :cond_e

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionLock(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_e
    and-int/lit16 v4, p2, 0x2000

    if-eqz v4, :cond_f

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionUnlock(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_f
    and-int/lit16 v4, p2, 0x4000

    if-eqz v4, :cond_10

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {p0, v4, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionAddToPersonal(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_10
    const v4, 0x8000

    and-int/2addr v4, p2

    if-eqz v4, :cond_11

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {p0, v4, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionInstallDualIM(Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_11
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 139
    return-object v2

    .line 112
    .end local v2    # "options":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/QuickOptionListItem;>;"
    :cond_12
    instance-of v4, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 113
    check-cast v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v0, v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mItemRemoveAnimation:Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mItemRemoveAnimation:Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->cancel()V

    .line 659
    :cond_0
    return-void
.end method

.method public setAnchorRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mAnchorRect:Landroid/graphics/Rect;

    .line 619
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mAnchorView:Landroid/view/View;

    .line 611
    return-void
.end method

.method public startBounceAnimation()V
    .locals 4

    .prologue
    .line 636
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mAnchorView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 646
    :goto_0
    return-void

    .line 638
    :cond_0
    new-instance v1, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mAnchorView:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mBounceAnimation:Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;

    .line 639
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 640
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/launcher3/common/quickoption/QuickOptionManager$18;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager$18;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
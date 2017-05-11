.class public Lcom/android/launcher3/common/multiselect/MultiSelectManager;
.super Ljava/lang/Object;
.source "MultiSelectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;
    }
.end annotation


# static fields
.field private static final MAX_COUNT:I = 0x32

.field private static final MIN_COUNT_CREATE_FOLDER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MultiSelectManager"


# instance fields
.field private mAddToPersonalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddToPersonalPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedAppsSourceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/launcher3/common/drag/DragSource;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedAppsViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentMobileKeyboard:I

.field private mCurrentOrientation:I

.field private mIsFromHomeKey:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mMultiSelectCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiSelectHelpDialog:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

.field private mMultiSelectMode:Z

.field private mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

.field private mPostUninstallPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureFolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureFolderPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mToast:Landroid/widget/Toast;

.field private mUninstallAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUninstallPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectMode:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsSourceMap:Landroid/util/SparseArray;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallAppList:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mPostUninstallPendingList:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallPendingList:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderList:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalList:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    .line 77
    iput-boolean v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mIsFromHomeKey:Z

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    .line 87
    return-void
.end method

.method private addToPersonal()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->addToPersonal(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 474
    :cond_0
    return-void
.end method

.method private addToSecureFolder()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/launcher3/util/SecureFolderHelper;->addAppToSecureFolder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 468
    :cond_0
    return-void
.end method

.method private disableApp(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)V
    .locals 10
    .param p1, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "compName"    # Landroid/content/ComponentName;

    .prologue
    .line 580
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 581
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 582
    invoke-static {v0, v2}, Lcom/android/launcher3/util/DualAppUtils;->isDualApp(Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v0, v2}, Lcom/android/launcher3/util/DualAppUtils;->hasDualApp(Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/util/DualAppUtils;->uninstallOrDisableDualApp(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 615
    :cond_1
    :goto_0
    return-void

    .line 585
    :cond_2
    const/4 v7, 0x0

    .line 586
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    .line 587
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 588
    .local v9, "pm":Landroid/content/pm/PackageManager;
    if-eqz v9, :cond_1

    .line 590
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v9, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 591
    invoke-virtual {v9, p2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 596
    :goto_1
    new-instance v6, Lcom/android/launcher3/common/multiselect/MultiSelectManager$1;

    invoke-direct {v6, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager$1;-><init>(Lcom/android/launcher3/common/multiselect/MultiSelectManager;)V

    .line 603
    .local v6, "r":Ljava/lang/Runnable;
    if-eqz v7, :cond_4

    .line 604
    if-nez v4, :cond_3

    .line 605
    invoke-virtual {v9, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 608
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 609
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 608
    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->createAndShow(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/app/FragmentManager;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 592
    .end local v6    # "r":Ljava/lang/Runnable;
    :catch_0
    move-exception v8

    .line 593
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "MultiSelectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NameNotFoundException : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 611
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "r":Ljava/lang/Runnable;
    :cond_4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private enableHelpDialog()Z
    .locals 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher.multiselect.help.prefs"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private startUninstallActivity()V
    .locals 4

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearUninstallApplist()V

    .line 402
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 403
    .local v0, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 405
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->postUninstallActivity()V

    .line 407
    :cond_1
    return-void
.end method

.method private updateEnabledButton(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "added"    # Z

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->updateEnabledButton(Landroid/view/View;Z)V

    .line 258
    return-void
.end method


# virtual methods
.method public acceptDropToFolder()Z
    .locals 1

    .prologue
    .line 533
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 534
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    .line 535
    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->acceptDropToFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addAddToPersonalList(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    return-void
.end method

.method public addAddToPersonalPendingList(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    return-void
.end method

.method public addCheckedApp(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "source"    # Lcom/android/launcher3/common/drag/DragSource;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsSourceMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->updateEnabledButton(Landroid/view/View;Z)V

    .line 206
    return-void
.end method

.method public addMultiSelectCallbacks(Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectHelpDialog:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    invoke-interface {p1, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;->onSetPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V

    .line 109
    :cond_0
    return-void
.end method

.method public addSecureFolderList(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    return-void
.end method

.method public addSecureFolderPendingList(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    return-void
.end method

.method public addUninstallPendingList(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    return-void
.end method

.method public canLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 275
    iget-boolean v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectMode:Z

    if-nez v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    instance-of v1, p1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v1, :cond_0

    .line 280
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v0

    goto :goto_0
.end method

.method public canSelectItem()Z
    .locals 7

    .prologue
    const/16 v6, 0x32

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 287
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v6, :cond_1

    move v0, v2

    .line 288
    .local v0, "ret":Z
    :goto_0
    if-nez v0, :cond_0

    .line 289
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v5, 0x7f08005a

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    .line 290
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 289
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_2

    .line 292
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mToast:Landroid/widget/Toast;

    .line 296
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 298
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    return v0

    .end local v0    # "ret":Z
    :cond_1
    move v0, v3

    .line 287
    goto :goto_0

    .line 294
    .restart local v0    # "ret":Z
    .restart local v1    # "text":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public clearCheckedApps()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 222
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 224
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v2, :cond_0

    .line 225
    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {v1}, Lcom/android/launcher3/common/view/IconView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 226
    .local v0, "checkBox":Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 232
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 233
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsSourceMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 234
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 235
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 236
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 237
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 238
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 239
    return-void
.end method

.method public clearUninstallApplist()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 452
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 453
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mPostUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 454
    return-void
.end method

.method public clearUninstallPendigList()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 462
    return-void
.end method

.method public containsAddToPersonalList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAddToPersonalPendingList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsSecureFolderList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsSecureFolderPendingList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAddToPersonalListSize()I
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCheckedAppCount()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCheckedAppDragSource(I)Lcom/android/launcher3/common/drag/DragSource;
    .locals 1
    .param p1, "hashCode"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsSourceMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsSourceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DragSource;

    .line 253
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckedAppsViewList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCheckedItemCountInFolder(J)I
    .locals 7
    .param p1, "container"    # J

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 263
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 264
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 265
    .local v1, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v4, p1, v4

    if-nez v4, :cond_0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return v0
.end method

.method public getMultiSelectPanel()Lcom/android/launcher3/common/multiselect/MultiSelectPanel;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    return-object v0
.end method

.method public getSecureFolderListSize()I
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public hasFolderItem()Z
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->hasFolderItem()Z

    move-result v0

    return v0
.end method

.method public hideHelpDialog(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 550
    const-string v0, "MultiSelectManager"

    const-string v1, "hideHelpDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectHelpDialog:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectHelpDialog:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->hide(Z)V

    .line 554
    :cond_0
    return-void
.end method

.method public homeKeyPressed()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mIsFromHomeKey:Z

    .line 154
    return-void
.end method

.method public isMultiSelectMode()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectMode:Z

    return v0
.end method

.method public isShowingHelpDialog()Z
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectHelpDialog:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectHelpDialog:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->isShowingHelpDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChangeSelectMode(ZZ)V
    .locals 6
    .param p1, "enter"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    const-string v3, "MultiSelectManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChangeSelectMode - enter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iput-boolean p1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectMode:Z

    .line 121
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    if-eqz v3, :cond_0

    if-nez p1, :cond_0

    .line 122
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setFolderSelect(Z)V

    .line 125
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 126
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;

    .line 127
    .local v0, "cb":Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;
    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;->onChangeSelectMode(ZZ)V

    goto :goto_0

    .line 130
    .end local v0    # "cb":Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;
    :cond_1
    if-eqz p1, :cond_5

    .line 131
    invoke-direct {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->enableHelpDialog()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->showHelpDialog(Z)V

    .line 141
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v3}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->showMultiSelectPanel(ZZ)V

    .line 145
    :cond_3
    if-nez p1, :cond_4

    .line 146
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-boolean v5, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mIsFromHomeKey:Z

    if-eqz v5, :cond_6

    :goto_2
    invoke-virtual {v3, v4, v2, v1}, Lcom/android/launcher3/util/logging/SALogging;->insertMultiSelectCancelLog(Lcom/android/launcher3/Launcher;ZZ)V

    .line 149
    :cond_4
    iput-boolean v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mIsFromHomeKey:Z

    .line 150
    return-void

    .line 135
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isShowingHelpDialog()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hideHelpDialog(Z)V

    goto :goto_1

    :cond_6
    move v1, v2

    .line 146
    goto :goto_2
.end method

.method public onClickMultiSelectPanel(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 171
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    .line 172
    invoke-virtual {v5}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getTextForUninstallButton()Ljava/lang/String;

    move-result-object v5

    .line 171
    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertMultiSelectLog(ILjava/util/ArrayList;Lcom/android/launcher3/Launcher;Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getButtonEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->showToast(I)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "done":Z
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;

    .line 182
    .local v0, "cb":Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;
    if-nez v1, :cond_2

    .line 183
    if-nez p1, :cond_3

    .line 184
    invoke-direct {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->startUninstallActivity()V

    .line 185
    const/4 v1, 0x1

    .line 194
    :cond_2
    :goto_2
    invoke-interface {v0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;->onClickMultiSelectPanel(I)V

    goto :goto_1

    .line 186
    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    .line 187
    invoke-direct {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addToSecureFolder()V

    .line 188
    const/4 v1, 0x1

    goto :goto_2

    .line 189
    :cond_4
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    .line 190
    invoke-direct {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addToPersonal()V

    .line 191
    const/4 v1, 0x1

    goto :goto_2

    .line 197
    .end local v0    # "cb":Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearCheckedApps()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 571
    iget v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCurrentMobileKeyboard:I

    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v0, v1, :cond_1

    .line 573
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCurrentMobileKeyboard:I

    .line 574
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCurrentOrientation:I

    .line 575
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->onConfigurationChangedIfNeeded()V

    .line 577
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 102
    return-void
.end method

.method public postUninstallActivity()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 410
    const-string v4, "MultiSelectManager"

    const-string v5, "postUninstallActivity"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallAppList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 413
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallAppList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .line 414
    .local v3, "uninstallApp":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 415
    .local v1, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    const/4 v0, 0x0

    .line 416
    .local v0, "compName":Landroid/content/ComponentName;
    const-string v2, ""

    .line 417
    .local v2, "pkgName":Ljava/lang/String;
    instance-of v4, v3, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 418
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 419
    iget-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 420
    if-nez v0, :cond_0

    .line 421
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 423
    :cond_0
    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 428
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4, v2}, Lcom/android/launcher3/Utilities;->canDisable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 429
    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->disableApp(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)V

    .line 448
    .end local v0    # "compName":Landroid/content/ComponentName;
    .end local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "uninstallApp":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-void

    .line 430
    .restart local v0    # "compName":Landroid/content/ComponentName;
    .restart local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v3    # "uninstallApp":Ljava/lang/Object;
    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4, v2}, Lcom/android/launcher3/Utilities;->canUninstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 431
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 432
    invoke-static {v4, v2}, Lcom/android/launcher3/util/DualAppUtils;->isDualApp(Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v4, v2}, Lcom/android/launcher3/util/DualAppUtils;->hasDualApp(Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 433
    :cond_4
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v4, v2, v5}, Lcom/android/launcher3/util/DualAppUtils;->uninstallOrDisableDualApp(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    goto :goto_0

    .line 434
    :cond_5
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4, v3}, Lcom/android/launcher3/util/UninstallAppUtils;->startUninstallActivity(Lcom/android/launcher3/Launcher;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 435
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mPostUninstallPendingList:Ljava/util/ArrayList;

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .end local v3    # "uninstallApp":Ljava/lang/Object;
    iget-object v5, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->postUninstallActivity()V

    goto :goto_0

    .line 439
    .restart local v3    # "uninstallApp":Ljava/lang/Object;
    :cond_6
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mPostUninstallPendingList:Ljava/util/ArrayList;

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .end local v3    # "uninstallApp":Ljava/lang/Object;
    iget-object v5, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->postUninstallActivity()V

    goto :goto_0

    .line 443
    .end local v0    # "compName":Landroid/content/ComponentName;
    .end local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mPostUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 444
    invoke-virtual {p0, v6}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->showToast(I)V

    .line 445
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mPostUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public removeAddToPersonalList(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 510
    return-void
.end method

.method public removeAddToPersonalPendingList(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 526
    return-void
.end method

.method public removeCheckedApp(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsSourceMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 212
    iget-boolean v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectMode:Z

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->updateEnabledButton(Landroid/view/View;Z)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isShowingHelpDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hideHelpDialog(Z)V

    .line 219
    :cond_1
    return-void
.end method

.method public removeMultiSelectCallbacks(Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 115
    :cond_0
    return-void
.end method

.method public removeSecureFolderList(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 482
    return-void
.end method

.method public removeSecureFolderPendingList(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 498
    return-void
.end method

.method public setEnableHelpDialog(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 561
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 562
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.sec.android.app.launcher.multiselect.help.prefs"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 563
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 564
    return-void
.end method

.method public setup(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 90
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 91
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f0f0094

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    iput-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    .line 92
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f0f0095

    .line 93
    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    iput-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectHelpDialog:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    .line 95
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 96
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCurrentOrientation:I

    .line 97
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCurrentMobileKeyboard:I

    .line 98
    return-void
.end method

.method public showHelpDialog(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 543
    const-string v0, "MultiSelectManager"

    const-string v1, "showHelpDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectHelpDialog:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    if-eqz v0, :cond_0

    .line 545
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectHelpDialog:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->show(Landroid/view/View;Z)V

    .line 547
    :cond_0
    return-void
.end method

.method public showMultiSelectPanel(ZZ)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 165
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->showMultiSelectPanel(ZZ)V

    .line 168
    :cond_1
    return-void
.end method

.method public showToast(I)V
    .locals 11
    .param p1, "id"    # I

    .prologue
    const v10, 0x7f08005b

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 302
    const-string v2, ""

    .line 303
    .local v2, "text":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 391
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mToast:Landroid/widget/Toast;

    if-nez v4, :cond_d

    .line 392
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mToast:Landroid/widget/Toast;

    .line 396
    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 397
    :cond_1
    return-void

    .line 305
    :pswitch_0
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mPostUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_1

    .line 309
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mPostUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    move v0, v5

    .line 310
    .local v0, "postUninstall":Z
    :goto_2
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mPostUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 312
    .local v1, "size":I
    :goto_3
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mPostUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 314
    .local v3, "title":Ljava/lang/String;
    :goto_4
    if-le v1, v5, :cond_6

    .line 315
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f080058

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v3, v7, v6

    add-int/lit8 v8, v1, -0x1

    .line 316
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    .line 315
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v0    # "postUninstall":Z
    .end local v1    # "size":I
    .end local v3    # "title":Ljava/lang/String;
    :cond_3
    move v0, v6

    .line 309
    goto :goto_2

    .line 310
    .restart local v0    # "postUninstall":Z
    :cond_4
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallPendingList:Ljava/util/ArrayList;

    .line 311
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_3

    .line 312
    .restart local v1    # "size":I
    :cond_5
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallPendingList:Ljava/util/ArrayList;

    .line 313
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    goto :goto_4

    .line 318
    .restart local v3    # "title":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f080057

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 321
    goto :goto_0

    .line 324
    .end local v0    # "postUninstall":Z
    .end local v1    # "size":I
    .end local v3    # "title":Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_1

    .line 327
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f08005d

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    .line 329
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v4, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v4, v8, v6

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    .line 330
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v5

    .line 327
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 331
    goto/16 :goto_0

    .line 334
    :pswitch_2
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getDimTypeCreateFolder()I

    move-result v4

    if-ne v4, v5, :cond_7

    .line 335
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f080054

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 336
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 335
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 337
    :cond_7
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getDimTypeCreateFolder()I

    move-result v4

    if-ne v4, v9, :cond_8

    .line 339
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v5, 0x7f080055

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 340
    :cond_8
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getDimTypeCreateFolder()I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 342
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v5, 0x7f080053

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 347
    :pswitch_3
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_1

    .line 350
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v9, :cond_9

    .line 351
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f080060

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    .line 353
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v6

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v5, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v8, 0x7f08005e

    .line 354
    invoke-virtual {v5, v8}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v9

    .line 351
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 355
    :cond_9
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v9, :cond_a

    .line 356
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f080061

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    .line 358
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v6

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v9, 0x7f08005e

    .line 359
    invoke-virtual {v8, v9}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 356
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 361
    :cond_a
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f08005f

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    .line 363
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v6

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v9, 0x7f08005e

    .line 364
    invoke-virtual {v8, v9}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 361
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 366
    goto/16 :goto_0

    .line 369
    :pswitch_4
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_1

    .line 372
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v9, :cond_b

    .line 373
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f080060

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    .line 375
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v6

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v5, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 376
    invoke-virtual {v5, v10}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v9

    .line 373
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 377
    :cond_b
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v9, :cond_c

    .line 378
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f080061

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    .line 380
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v6

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 381
    invoke-virtual {v8, v10}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 378
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 383
    :cond_c
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f08005f

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    .line 385
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v6

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 386
    invoke-virtual {v8, v10}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 383
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 394
    :cond_d
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

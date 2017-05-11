.class Lcom/android/launcher3/allapps/model/AppsLoader$30;
.super Ljava/lang/Object;
.source "AppsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsLoader;->setPackageState(Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

.field final synthetic val$installInfo:Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 2212
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$30;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iput-object p2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$30;->val$installInfo:Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 2215
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2217
    .local v5, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v6, p0, Lcom/android/launcher3/allapps/model/AppsLoader$30;->val$installInfo:Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v6, v6, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    if-nez v6, :cond_1

    .line 2255
    :cond_0
    :goto_0
    return-void

    .line 2222
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/model/AppsLoader$30;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/model/AppsLoader;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2223
    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v7, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_2

    move-object v1, v2

    .line 2224
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2225
    .local v1, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2226
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v0, :cond_2

    iget-object v7, p0, Lcom/android/launcher3/allapps/model/AppsLoader$30;->val$installInfo:Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;

    iget-object v7, v7, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    .line 2227
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2228
    iget-object v7, p0, Lcom/android/launcher3/allapps/model/AppsLoader$30;->val$installInfo:Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v7, v7, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    invoke-virtual {v1, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->setInstallProgress(I)V

    .line 2230
    iget-object v7, p0, Lcom/android/launcher3/allapps/model/AppsLoader$30;->val$installInfo:Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v7, v7, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 2232
    iget v7, v1, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    and-int/lit8 v7, v7, -0x9

    iput v7, v1, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    .line 2234
    :cond_3
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2239
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2241
    iget-object v6, p0, Lcom/android/launcher3/allapps/model/AppsLoader$30;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    # invokes: Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    invoke-static {v6}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1700(Lcom/android/launcher3/allapps/model/AppsLoader;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v3

    .line 2242
    .local v3, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-eqz v3, :cond_0

    .line 2243
    new-instance v4, Lcom/android/launcher3/allapps/model/AppsLoader$30$1;

    invoke-direct {v4, p0, v3, v5}, Lcom/android/launcher3/allapps/model/AppsLoader$30$1;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader$30;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/HashSet;)V

    .line 2252
    .local v4, "r":Ljava/lang/Runnable;
    iget-object v6, p0, Lcom/android/launcher3/allapps/model/AppsLoader$30;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    # invokes: Lcom/android/launcher3/allapps/model/AppsLoader;->runOrAddDifferRunnable(Ljava/lang/Runnable;)V
    invoke-static {v6, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$2400(Lcom/android/launcher3/allapps/model/AppsLoader;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

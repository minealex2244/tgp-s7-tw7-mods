.class Lcom/android/launcher3/allapps/controller/AppsController$8;
.super Ljava/lang/Object;
.source "AppsController.java"

# interfaces
.implements Lcom/android/launcher3/common/base/item/ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsController;->updateApps(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsController;

.field final synthetic val$folderIconsToRefresh:Ljava/util/ArrayList;

.field final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;Ljava/util/HashSet;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$8;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsController$8;->val$updates:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/android/launcher3/allapps/controller/AppsController$8;->val$folderIconsToRefresh:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 7
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1122
    instance-of v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_0

    instance-of v6, p2, Lcom/android/launcher3/common/view/IconView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController$8;->val$updates:Ljava/util/HashSet;

    .line 1123
    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v0, p1

    .line 1124
    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .local v0, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object v1, p2

    .line 1125
    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    .line 1126
    .local v1, "iconView":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual {v1}, Lcom/android/launcher3/common/view/IconView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1127
    .local v2, "oldIcon":Landroid/graphics/drawable/Drawable;
    instance-of v6, v2, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    if-eqz v6, :cond_1

    check-cast v2, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    .line 1128
    .end local v2    # "oldIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;->hasNotCompleted()Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v4

    .line 1129
    .local v3, "oldPromiseState":Z
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v6

    if-eq v6, v3, :cond_2

    :goto_1
    invoke-virtual {v1, v0, v4}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;Z)V

    .line 1131
    instance-of v4, p3, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v4, :cond_0

    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    const/16 v6, 0x9

    if-ge v4, v6, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController$8;->val$folderIconsToRefresh:Ljava/util/ArrayList;

    .line 1133
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1134
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController$8;->val$folderIconsToRefresh:Ljava/util/ArrayList;

    check-cast p3, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local p3    # "parent":Landroid/view/View;
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1137
    .end local v0    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v1    # "iconView":Lcom/android/launcher3/common/view/IconView;
    .end local v3    # "oldPromiseState":Z
    :cond_0
    return v5

    .restart local v0    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v1    # "iconView":Lcom/android/launcher3/common/view/IconView;
    .restart local p3    # "parent":Landroid/view/View;
    :cond_1
    move v3, v5

    .line 1128
    goto :goto_0

    .restart local v3    # "oldPromiseState":Z
    :cond_2
    move v4, v5

    .line 1129
    goto :goto_1
.end method

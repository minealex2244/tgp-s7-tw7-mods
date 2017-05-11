.class public Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;
.super Ljava/lang/Object;
.source "FolderProxyCallbacksImpl.java"

# interfaces
.implements Lcom/android/launcher3/proxy/FolderProxyCallbacks;


# instance fields
.field private mFolderController:Lcom/android/launcher3/folder/controller/FolderController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/controller/FolderController;)V
    .locals 0
    .param p1, "folderController"    # Lcom/android/launcher3/folder/controller/FolderController;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    .line 42
    return-void
.end method


# virtual methods
.method public addFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 109
    instance-of v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local p1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->addItem(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 112
    :cond_0
    return-void
.end method

.method public changeBackgroundColor(I)V
    .locals 1
    .param p1, "colorIndex"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->setIconBackgroundColor(I)V

    .line 105
    return-void
.end method

.method public changeTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    .line 147
    .local v1, "f":Lcom/android/launcher3/folder/view/FolderView;
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getEditTextRegion()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 148
    .local v0, "edit":Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->dismissEditingName()V

    .line 150
    return-void
.end method

.method public getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 1
    .param p1, "itemTitle"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->getItemViewByComponentName(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewByComponentName(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->findIconView(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;
    .locals 5
    .param p1, "itemTitle"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 62
    :goto_0
    return-object v1

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher3/common/base/view/PagedView;->findIconViews(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 57
    .local v0, "iconViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/view/IconView;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    .line 58
    .local v1, "v":Lcom/android/launcher3/common/view/IconView;
    instance-of v4, v1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v4, :cond_1

    goto :goto_0

    .end local v1    # "v":Lcom/android/launcher3/common/view/IconView;
    :cond_2
    move-object v1, v2

    .line 62
    goto :goto_0
.end method

.method public getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpenedFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    return-object v0
.end method

.method public getPagedView()Lcom/android/launcher3/common/base/view/PagedView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v0

    goto :goto_0
.end method

.method public movePage(I)V
    .locals 2
    .param p1, "pageNum"    # I

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v0

    .line 99
    .local v0, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public movePageToItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 160
    return-void
.end method

.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 2
    .param p1, "pf"    # Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Text"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Text"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->changeTitle(Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x1

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openBackgroundColorView()V
    .locals 2

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 138
    .local v0, "f":Lcom/android/launcher3/folder/view/FolderView;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->toggleColorPicker()V

    .line 141
    :cond_0
    return-void
.end method

.method public removeFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 118
    .local v0, "folder":Lcom/android/launcher3/folder/view/FolderView;
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 119
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v2

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 122
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getBaseController()Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/launcher3/common/base/controller/ControllerBase;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 123
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getBaseController()Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/launcher3/common/base/controller/ControllerBase;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 125
    :cond_1
    return-void
.end method

.method public selectItem(Lcom/android/launcher3/common/view/IconView;)V
    .locals 2
    .param p1, "iv"    # Lcom/android/launcher3/common/view/IconView;

    .prologue
    .line 73
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/folder/controller/FolderController;->onCheckedChanged(Landroid/view/View;Z)V

    .line 76
    :cond_0
    return-void
.end method

.method public unSelectItem(Lcom/android/launcher3/common/view/IconView;)V
    .locals 2
    .param p1, "iv"    # Lcom/android/launcher3/common/view/IconView;

    .prologue
    .line 80
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/folder/controller/FolderController;->onCheckedChanged(Landroid/view/View;Z)V

    .line 83
    :cond_0
    return-void
.end method

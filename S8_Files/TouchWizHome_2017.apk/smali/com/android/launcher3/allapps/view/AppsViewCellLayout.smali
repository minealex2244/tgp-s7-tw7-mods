.class public Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
.super Lcom/android/launcher3/common/base/view/CellLayout;
.source "AppsViewCellLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method


# virtual methods
.method public getContentIconSize()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getContentTop()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getContentTop()I

    move-result v0

    return v0
.end method

.method public isFullyOccupied()Z
    .locals 2

    .prologue
    .line 119
    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mCountY:I

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 81
    .local v0, "handled":Z
    return v0
.end method

.method public removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->removeView(Landroid/view/View;)V

    .line 116
    :cond_0
    return-void
.end method

.method public setBgImage(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const v4, 0x7f0200ce

    const v3, 0x7f02006a

    const/4 v2, 0x0

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-nez p1, :cond_1

    .line 97
    const/4 v0, 0x0

    .line 107
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    return-void

    .line 98
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 103
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setCellDimensions()V
    .locals 7

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v6

    .line 52
    .local v6, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mFixedCellWidth:I

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mCellWidth:I

    .line 53
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mFixedCellHeight:I

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mCellHeight:I

    .line 54
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellGap()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mHeightGap:I

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mWidthGap:I

    .line 56
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mCountX:I

    .line 57
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mCountY:I

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    iget v1, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mWidthGap:I

    iget v4, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mHeightGap:I

    iget v5, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mCountX:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setCellDimensions(IIIII)V

    .line 59
    return-void
.end method

.method protected supportWhiteBg()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method protected updateChildIfReorderAnimationCancel()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public updateIconViews()V
    .locals 5

    .prologue
    .line 62
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 63
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 66
    instance-of v4, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 67
    check-cast v1, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 68
    .local v1, "folderVIew":Lcom/android/launcher3/folder/view/FolderIconView;
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->applyStyle()V

    .line 62
    .end local v1    # "folderVIew":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 69
    :cond_1
    instance-of v4, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_0

    move-object v3, v0

    .line 70
    check-cast v3, Lcom/android/launcher3/common/view/IconView;

    .line 71
    .local v3, "iconView":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual {v3}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 75
    .end local v0    # "childView":Landroid/view/View;
    .end local v3    # "iconView":Lcom/android/launcher3/common/view/IconView;
    :cond_2
    return-void
.end method

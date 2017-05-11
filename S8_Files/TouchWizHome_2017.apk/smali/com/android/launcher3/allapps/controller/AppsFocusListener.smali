.class public Lcom/android/launcher3/allapps/controller/AppsFocusListener;
.super Lcom/android/launcher3/util/focus/FocusListener;
.source "AppsFocusListener.java"


# instance fields
.field TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/launcher3/util/focus/FocusListener;-><init>()V

    .line 15
    const-string v0, "AppsFocusListener"

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsFocusListener;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFocusIn(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsFocusListener;->TAG:Ljava/lang/String;

    const-string v1, "onFocusIn: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public onFocusOut(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsFocusListener;->TAG:Ljava/lang/String;

    const-string v1, "onFocusOut: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method public onKeyPressDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsFocusListener;->TAG:Ljava/lang/String;

    const-string v1, "onKeyPressDown: default"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyPressLeft(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 16
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez v13, :cond_0

    .line 33
    const/4 v13, 0x0

    .line 77
    :goto_0
    return v13

    .line 35
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 36
    .local v5, "ii":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v3, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 37
    .local v3, "currentFocusIdx":I
    iget-wide v14, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v4, v14

    .line 39
    .local v4, "currentPageIdx":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    instance-of v13, v13, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-nez v13, :cond_1

    .line 40
    const/4 v13, 0x0

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 43
    .local v1, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 44
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    instance-of v13, v13, Lcom/android/launcher3/common/base/view/PagedView;

    if-nez v13, :cond_2

    .line 45
    const/4 v13, 0x0

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/view/PagedView;

    .line 49
    .local v12, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    .line 50
    .local v2, "countX":I
    if-nez v2, :cond_3

    .line 51
    const/4 v13, 0x0

    goto :goto_0

    .line 54
    :cond_3
    const/4 v7, 0x0

    .line 55
    .local v7, "nextFocusIdx":I
    move v8, v4

    .line 57
    .local v8, "nextPageIdx":I
    move v10, v4

    .local v10, "pageIdx":I
    :goto_1
    if-ltz v10, :cond_4

    .line 58
    add-int/lit8 v7, v3, -0x1

    .line 59
    if-ltz v7, :cond_5

    .line 67
    :cond_4
    if-gez v10, :cond_7

    .line 68
    const/4 v13, 0x1

    goto :goto_0

    .line 62
    :cond_5
    if-nez v10, :cond_6

    const/4 v13, 0x1

    goto :goto_0

    .line 63
    :cond_6
    add-int/lit8 v13, v10, -0x1

    invoke-virtual {v12, v13}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 64
    .local v11, "prevPage":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v11}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 65
    add-int/lit8 v8, v10, -0x1

    .line 57
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 70
    .end local v11    # "prevPage":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_7
    invoke-virtual {v12, v8}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 71
    .local v6, "nextCl":Lcom/android/launcher3/common/base/view/CellLayout;
    rem-int v13, v7, v2

    div-int v14, v7, v2

    invoke-virtual {v6, v13, v14}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v9

    .line 72
    .local v9, "nextView":Landroid/view/View;
    if-nez v9, :cond_8

    .line 73
    const/4 v13, 0x1

    goto :goto_0

    .line 76
    :cond_8
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 77
    const/4 v13, 0x1

    goto :goto_0
.end method

.method public onKeyPressRight(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 16
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez v14, :cond_0

    .line 84
    const/4 v14, 0x0

    .line 127
    :goto_0
    return v14

    .line 86
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 87
    .local v7, "ii":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v3, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 88
    .local v3, "currentFocusIdx":I
    iget-wide v14, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v6, v14

    .line 90
    .local v6, "currentPageIdx":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    instance-of v14, v14, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-nez v14, :cond_1

    .line 91
    const/4 v14, 0x0

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 94
    .local v1, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 95
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    instance-of v14, v14, Lcom/android/launcher3/common/base/view/PagedView;

    if-nez v14, :cond_2

    .line 96
    const/4 v14, 0x0

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/base/view/PagedView;

    .line 99
    .local v13, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v13}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v12

    .line 101
    .local v12, "pageCount":I
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    .line 102
    .local v2, "countX":I
    if-nez v2, :cond_3

    .line 103
    const/4 v14, 0x0

    goto :goto_0

    .line 106
    :cond_3
    const/4 v9, 0x0

    .line 107
    .local v9, "nextFocusIdx":I
    const/4 v10, 0x0

    .line 108
    .local v10, "nextPageIdx":I
    move v10, v6

    :goto_1
    if-ge v10, v12, :cond_4

    .line 109
    add-int/lit8 v9, v3, 0x1

    .line 110
    invoke-virtual {v13, v6}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 111
    .local v5, "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v5}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v4

    .line 112
    .local v4, "currentItemCount":I
    if-ge v9, v4, :cond_5

    .line 117
    .end local v4    # "currentItemCount":I
    .end local v5    # "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_4
    if-lt v10, v12, :cond_6

    .line 118
    const/4 v14, 0x1

    goto :goto_0

    .line 115
    .restart local v4    # "currentItemCount":I
    .restart local v5    # "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_5
    const/4 v3, -0x1

    .line 108
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 120
    .end local v4    # "currentItemCount":I
    .end local v5    # "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_6
    invoke-virtual {v13, v10}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 121
    .local v8, "nextCl":Lcom/android/launcher3/common/base/view/CellLayout;
    rem-int v14, v9, v2

    div-int v15, v9, v2

    invoke-virtual {v8, v14, v15}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v11

    .line 122
    .local v11, "nextView":Landroid/view/View;
    if-nez v11, :cond_7

    .line 123
    const/4 v14, 0x1

    goto :goto_0

    .line 126
    :cond_7
    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    .line 127
    const/4 v14, 0x1

    goto :goto_0
.end method

.method public onKeyPressUp(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsFocusListener;->TAG:Ljava/lang/String;

    const-string v1, "onKeyPressUp: default"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const/4 v0, 0x0

    return v0
.end method

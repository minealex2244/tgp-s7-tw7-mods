.class public Lcom/samsung/android/glview/GLGridList;
.super Lcom/samsung/android/glview/GLAbsList;
.source "GLGridList.java"


# static fields
.field public static final AUTO_FIT:I = -0x1


# instance fields
.field private mColumnWidth:F

.field private mDefaultNumColumns:I

.field private mHorizontalSpacing:F

.field private mItemCount:I

.field private mLeftPadding:F

.field private mNeedToChangeLeftPadding:Z

.field private mNeedToChangeTopPadding:Z

.field private mNumColumns:I

.field private mTopPadding:F

.field private mVerticalSpacing:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFFFFFFI)V
    .locals 3
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "columnWidth"    # F
    .param p7, "hSpacing"    # F
    .param p8, "vSpacing"    # F
    .param p9, "leftPadding"    # F
    .param p10, "topPadding"    # F
    .param p11, "numColumns"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 75
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLAbsList;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 32
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    .line 36
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    .line 40
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    .line 42
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    .line 43
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeLeftPadding:Z

    .line 45
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mTopPadding:F

    .line 46
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeTopPadding:Z

    .line 50
    iput v1, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 51
    iput v1, p0, Lcom/samsung/android/glview/GLGridList;->mDefaultNumColumns:I

    .line 77
    iput p6, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    .line 78
    iput p7, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    .line 79
    iput p8, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    .line 80
    iput p11, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 81
    iput p11, p0, Lcom/samsung/android/glview/GLGridList;->mDefaultNumColumns:I

    .line 82
    iput p9, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    .line 83
    iput p10, p0, Lcom/samsung/android/glview/GLGridList;->mTopPadding:F

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/glview/GLGridList;->init()V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFFFFI)V
    .locals 3
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "columnWidth"    # F
    .param p7, "hSpacing"    # F
    .param p8, "vSpacing"    # F
    .param p9, "numColumns"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 102
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLAbsList;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 32
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    .line 36
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    .line 40
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    .line 42
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    .line 43
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeLeftPadding:Z

    .line 45
    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mTopPadding:F

    .line 46
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeTopPadding:Z

    .line 50
    iput v1, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 51
    iput v1, p0, Lcom/samsung/android/glview/GLGridList;->mDefaultNumColumns:I

    .line 104
    iput p6, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    .line 105
    iput p7, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    .line 106
    iput p8, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    .line 107
    iput p9, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 108
    iput p9, p0, Lcom/samsung/android/glview/GLGridList;->mDefaultNumColumns:I

    .line 109
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 456
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    if-ne v0, v1, :cond_1

    .line 457
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 458
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeLeftPadding:Z

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mTopPadding:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 462
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeTopPadding:Z

    goto :goto_0
.end method

.method private updateContentArea(F)V
    .locals 4
    .param p1, "offset"    # F

    .prologue
    const/4 v3, 0x0

    .line 468
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 469
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getContentAreaWidth()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    .line 470
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getContentAreaHeight()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    .line 482
    :goto_0
    return-void

    .line 474
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    .line 475
    .local v1, "viewWidth":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 477
    .local v0, "viewHeight":F
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 478
    add-float v2, p1, v0

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    goto :goto_0

    .line 480
    :cond_2
    add-float v2, p1, v1

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    goto :goto_0
.end method

.method private updateListPadding()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 485
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 486
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeLeftPadding:Z

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getContentAreaWidth()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeTopPadding:Z

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getContentAreaHeight()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mTopPadding:F

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getNumColumns()I
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized refreshList()V
    .locals 10

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLAbsList;->refreshList()V

    .line 124
    iget v7, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getContentAreaWidth()F

    move-result v7

    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v8, v9

    div-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 135
    :goto_0
    iget v7, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    if-gtz v7, :cond_0

    .line 136
    const/4 v7, 0x1

    iput v7, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/glview/GLGridList;->updateListPadding()V

    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, "nextLeft":F
    const/4 v3, 0x0

    .line 143
    .local v3, "offset":F
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 145
    .local v2, "numColumns":I
    const/4 v4, 0x0

    .line 146
    .local v4, "pos":I
    iget-object v7, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/glview/GLView;

    .line 147
    .local v6, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->resetTranslate()V

    .line 148
    rem-int v0, v4, v2

    .line 149
    .local v0, "column":I
    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->isLocaleRTL()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 150
    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v8, v9

    sub-int v9, v2, v0

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    add-float v1, v8, v9

    .line 154
    :goto_2
    div-int v5, v4, v2

    .line 155
    .local v5, "row":I
    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    add-float/2addr v8, v9

    int-to-float v9, v5

    mul-float v3, v8, v9

    .line 156
    invoke-virtual {v6, v1, v3}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FF)V

    .line 157
    add-int/lit8 v4, v4, 0x1

    .line 158
    goto :goto_1

    .line 127
    .end local v0    # "column":I
    .end local v1    # "nextLeft":F
    .end local v2    # "numColumns":I
    .end local v3    # "offset":F
    .end local v4    # "pos":I
    .end local v5    # "row":I
    .end local v6    # "view":Lcom/samsung/android/glview/GLView;
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/glview/GLGridList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-interface {v7}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getCount()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    .line 128
    iget v7, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mDefaultNumColumns:I

    if-ge v7, v8, :cond_2

    .line 129
    iget v7, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    iput v7, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 131
    :cond_2
    :try_start_1
    iget v7, p0, Lcom/samsung/android/glview/GLGridList;->mDefaultNumColumns:I

    iput v7, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    goto :goto_0

    .line 152
    .restart local v0    # "column":I
    .restart local v1    # "nextLeft":F
    .restart local v2    # "numColumns":I
    .restart local v3    # "offset":F
    .restart local v4    # "pos":I
    .restart local v6    # "view":Lcom/samsung/android/glview/GLView;
    :cond_3
    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v8, v9

    int-to-float v9, v0

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    add-float v1, v8, v9

    goto :goto_2

    .line 159
    .end local v0    # "column":I
    .end local v6    # "view":Lcom/samsung/android/glview/GLView;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 161
    invoke-direct {p0, v3}, Lcom/samsung/android/glview/GLGridList;->updateContentArea(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V
    .locals 12
    .param p1, "adapter"    # Lcom/samsung/android/glview/GLAbsList$Adapter;
    .param p2, "scrollOrientation"    # I

    .prologue
    const/4 v11, 0x1

    .line 172
    monitor-enter p0

    if-nez p1, :cond_0

    .line 173
    :try_start_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 175
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/glview/GLGridList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    .line 176
    iget-object v8, p0, Lcom/samsung/android/glview/GLGridList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-interface {v8}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getCount()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    .line 177
    iput p2, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    .line 179
    iget-object v8, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/glview/GLView;

    .line 180
    .local v7, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->clear()V

    goto :goto_0

    .line 183
    .end local v7    # "view":Lcom/samsung/android/glview/GLView;
    :cond_1
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/glview/GLGridList;->setScrollOrientation(I)V

    .line 185
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getContentAreaWidth()F

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v8, v9

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    iget v10, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v9, v10

    div-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 195
    :goto_1
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    if-gtz v8, :cond_2

    .line 196
    const/4 v8, 0x1

    iput v8, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 199
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/glview/GLGridList;->updateListPadding()V

    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, "nextLeft":F
    const/4 v3, 0x0

    .line 203
    .local v3, "offset":F
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 205
    .local v2, "numColumns":I
    const/4 v6, 0x0

    .local v6, "startPos":I
    :goto_2
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    if-ge v6, v8, :cond_f

    .line 206
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    if-ne v8, v11, :cond_5

    .line 207
    iget v1, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    .line 212
    :goto_3
    add-int v8, v6, v2

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 214
    .local v0, "lastColumnPos":I
    move v4, v6

    .local v4, "pos":I
    :goto_4
    if-ge v4, v0, :cond_e

    .line 215
    iget-object v8, p0, Lcom/samsung/android/glview/GLGridList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;

    move-result-object v7

    .line 216
    .restart local v7    # "view":Lcom/samsung/android/glview/GLView;
    if-nez v7, :cond_6

    .line 214
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 188
    .end local v0    # "lastColumnPos":I
    .end local v1    # "nextLeft":F
    .end local v2    # "numColumns":I
    .end local v3    # "offset":F
    .end local v4    # "pos":I
    .end local v6    # "startPos":I
    .end local v7    # "view":Lcom/samsung/android/glview/GLView;
    :cond_3
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mDefaultNumColumns:I

    if-ge v8, v9, :cond_4

    .line 189
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    iput v8, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    goto :goto_1

    .line 191
    :cond_4
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mDefaultNumColumns:I

    iput v8, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    goto :goto_1

    .line 209
    .restart local v1    # "nextLeft":F
    .restart local v2    # "numColumns":I
    .restart local v3    # "offset":F
    .restart local v6    # "startPos":I
    :cond_5
    iget v1, p0, Lcom/samsung/android/glview/GLGridList;->mTopPadding:F

    goto :goto_3

    .line 218
    .restart local v0    # "lastColumnPos":I
    .restart local v4    # "pos":I
    .restart local v7    # "view":Lcom/samsung/android/glview/GLView;
    :cond_6
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    if-ne v8, v11, :cond_c

    .line 219
    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getScrollHint()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 220
    neg-float v8, v3

    iput v8, p0, Lcom/samsung/android/glview/GLGridList;->mScrollSumY:F

    .line 223
    :cond_7
    div-int v5, v4, v2

    .line 224
    .local v5, "row":I
    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    add-float/2addr v8, v9

    int-to-float v9, v5

    mul-float v3, v8, v9

    .line 226
    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->isLocaleRTL()Z

    move-result v8

    if-eqz v8, :cond_8

    rem-int v8, v4, v2

    if-nez v8, :cond_8

    .line 227
    add-int/lit8 v8, v2, -0x1

    int-to-float v8, v8

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v9

    iget v10, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v1, v8

    .line 229
    :cond_8
    invoke-virtual {v7, v1, v3}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FF)V

    .line 231
    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->isLocaleRTL()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 232
    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v8

    sub-float/2addr v1, v8

    .line 236
    :goto_6
    add-int/lit8 v8, v0, -0x1

    if-ge v4, v8, :cond_9

    .line 237
    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->isLocaleRTL()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 238
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    sub-float/2addr v1, v8

    .line 257
    :cond_9
    :goto_7
    invoke-virtual {v7, p0}, Lcom/samsung/android/glview/GLView;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 258
    invoke-virtual {p0, v7}, Lcom/samsung/android/glview/GLGridList;->addView(Lcom/samsung/android/glview/GLView;)V

    goto :goto_5

    .line 234
    :cond_a
    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v8

    add-float/2addr v1, v8

    goto :goto_6

    .line 240
    :cond_b
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v1, v8

    goto :goto_7

    .line 244
    .end local v5    # "row":I
    :cond_c
    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getScrollHint()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 245
    neg-float v8, v3

    iput v8, p0, Lcom/samsung/android/glview/GLGridList;->mScrollSumX:F

    .line 248
    :cond_d
    div-int v5, v4, v2

    .line 249
    .restart local v5    # "row":I
    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v8, v9

    int-to-float v9, v5

    mul-float v3, v8, v9

    .line 251
    invoke-virtual {v7, v3, v1}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FF)V

    .line 252
    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v8

    add-float/2addr v1, v8

    .line 253
    add-int/lit8 v8, v0, -0x1

    if-ge v4, v8, :cond_9

    .line 254
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    add-float/2addr v1, v8

    goto :goto_7

    .line 205
    .end local v5    # "row":I
    .end local v7    # "view":Lcom/samsung/android/glview/GLView;
    :cond_e
    add-int/2addr v6, v2

    goto/16 :goto_2

    .line 262
    .end local v0    # "lastColumnPos":I
    .end local v4    # "pos":I
    :cond_f
    invoke-direct {p0, v3}, Lcom/samsung/android/glview/GLGridList;->updateContentArea(F)V

    .line 264
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLAbsList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    monitor-exit p0

    return-void
.end method

.method public setColumnWidth(FZ)V
    .locals 1
    .param p1, "columnWidth"    # F
    .param p2, "update"    # Z

    .prologue
    .line 274
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 275
    iput p1, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    .line 276
    if-eqz p2, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    .line 280
    :cond_0
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLAbsList;->setHeight(F)V

    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    .line 286
    return-void
.end method

.method public declared-synchronized setNumColumns(IZ)V
    .locals 2
    .param p1, "columns"    # I
    .param p2, "update"    # Z

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 299
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    if-eq v0, p1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/samsung/android/glview/GLGridList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-interface {v0}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    .line 301
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    if-ge v0, p1, :cond_2

    .line 302
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 306
    :goto_1
    iput p1, p0, Lcom/samsung/android/glview/GLGridList;->mDefaultNumColumns:I

    .line 308
    if-eqz p2, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 304
    :cond_2
    :try_start_2
    iput p1, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 319
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLAbsList;->setSize(FF)V

    .line 320
    return-void
.end method

.method public declared-synchronized setSize(FFZ)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "update"    # Z

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    .line 325
    if-eqz p3, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->checkBoundary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLGridList;->setBouncing(Z)V

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->setVisibleArea()V

    .line 332
    iget-object v0, p0, Lcom/samsung/android/glview/GLGridList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->setScrollBarLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :cond_1
    monitor-exit p0

    return-void

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSpacing(FFZ)V
    .locals 1
    .param p1, "hSpacing"    # F
    .param p2, "vSpacing"    # F
    .param p3, "update"    # Z

    .prologue
    .line 346
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 347
    :cond_0
    iput p1, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    .line 348
    iput p2, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    .line 349
    if-eqz p3, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    .line 353
    :cond_1
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 357
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLAbsList;->setWidth(F)V

    .line 358
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    .line 359
    return-void
.end method

.method public declared-synchronized updateEndOffset(F)V
    .locals 2
    .param p1, "offset"    # F

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 374
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 365
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 366
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    .line 371
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->setScrollBarLayout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 368
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized updateStartOffset(FI)V
    .locals 8
    .param p1, "offset"    # F
    .param p2, "align"    # I

    .prologue
    const/4 v2, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 383
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    cmpg-float v3, p1, v5

    if-gez v3, :cond_1

    .line 453
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 386
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    if-ne v3, v1, :cond_8

    .line 387
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getHeight()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    add-float/2addr v4, p1

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_3

    .line 388
    .local v1, "scrollable":Z
    :goto_1
    if-nez v1, :cond_6

    .line 389
    packed-switch p2, :pswitch_data_0

    .line 407
    :cond_2
    :goto_2
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 408
    .local v0, "mGLView":Lcom/samsung/android/glview/GLView;
    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1}, Lcom/samsung/android/glview/GLView;->moveLayout(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 383
    .end local v0    # "mGLView":Lcom/samsung/android/glview/GLView;
    .end local v1    # "scrollable":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    move v1, v2

    .line 387
    goto :goto_1

    .line 393
    .restart local v1    # "scrollable":Z
    :pswitch_1
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v2, v6

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getLayoutY()F

    move-result v3

    sub-float p1, v2, v3

    .line 394
    cmpg-float v2, p1, v5

    if-gez v2, :cond_4

    .line 395
    const/4 p1, 0x0

    goto :goto_2

    .line 397
    :cond_4
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    add-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getHeight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 398
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    sub-float p1, v2, v3

    goto :goto_2

    .line 403
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float p1, v2

    goto :goto_2

    .line 410
    :cond_5
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    .line 450
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->isScrollable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->setScrollBarLayout()V

    goto :goto_0

    .line 412
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 413
    .restart local v0    # "mGLView":Lcom/samsung/android/glview/GLView;
    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1}, Lcom/samsung/android/glview/GLView;->moveLayout(FF)V

    goto :goto_5

    .line 415
    .end local v0    # "mGLView":Lcom/samsung/android/glview/GLView;
    :cond_7
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    goto :goto_4

    .line 418
    .end local v1    # "scrollable":Z
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getWidth()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    add-float/2addr v4, p1

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_a

    .line 419
    .restart local v1    # "scrollable":Z
    :goto_6
    if-nez v1, :cond_d

    .line 420
    packed-switch p2, :pswitch_data_1

    .line 438
    :cond_9
    :goto_7
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 439
    .restart local v0    # "mGLView":Lcom/samsung/android/glview/GLView;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/glview/GLView;->moveLayout(FF)V

    goto :goto_8

    .end local v0    # "mGLView":Lcom/samsung/android/glview/GLView;
    .end local v1    # "scrollable":Z
    :cond_a
    move v1, v2

    .line 418
    goto :goto_6

    .line 424
    .restart local v1    # "scrollable":Z
    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v2, v6

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getLayoutX()F

    move-result v3

    sub-float p1, v2, v3

    .line 425
    cmpg-float v2, p1, v5

    if-gez v2, :cond_b

    .line 426
    const/4 p1, 0x0

    goto :goto_7

    .line 428
    :cond_b
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    add-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getWidth()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    .line 429
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    sub-float p1, v2, v3

    goto :goto_7

    .line 434
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float p1, v2

    goto :goto_7

    .line 441
    :cond_c
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    goto/16 :goto_4

    .line 443
    :cond_d
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 444
    .restart local v0    # "mGLView":Lcom/samsung/android/glview/GLView;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/glview/GLView;->moveLayout(FF)V

    goto :goto_9

    .line 446
    .end local v0    # "mGLView":Lcom/samsung/android/glview/GLView;
    :cond_e
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    .line 389
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 420
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

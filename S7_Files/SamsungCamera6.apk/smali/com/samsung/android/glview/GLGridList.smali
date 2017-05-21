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

    .line 429
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    if-ne v0, v1, :cond_1

    .line 430
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 431
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeLeftPadding:Z

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mTopPadding:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 435
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeTopPadding:Z

    goto :goto_0
.end method

.method private updateContentArea(F)V
    .locals 4
    .param p1, "offset"    # F

    .prologue
    const/4 v3, 0x0

    .line 441
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 442
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getContentAreaWidth()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    .line 443
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getContentAreaHeight()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    .line 455
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    .line 448
    .local v1, "viewWidth":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 450
    .local v0, "viewHeight":F
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 451
    add-float v2, p1, v0

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    goto :goto_0

    .line 453
    :cond_2
    add-float v2, p1, v1

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    goto :goto_0
.end method

.method private updateListPadding()V
    .locals 3

    .prologue
    .line 458
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 459
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeLeftPadding:Z

    if-eqz v0, :cond_0

    .line 460
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

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeTopPadding:Z

    if-eqz v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public getNumColumns()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    return v0
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
    rem-int v0, v4, v2

    .line 148
    .local v0, "column":I
    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->isLocaleRTL()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 149
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

    .line 153
    :goto_2
    div-int v5, v4, v2

    .line 154
    .local v5, "row":I
    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    add-float/2addr v8, v9

    int-to-float v9, v5

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mTopPadding:F

    add-float v3, v8, v9

    .line 155
    const/4 v8, 0x0

    invoke-virtual {v6, v1, v3, v8}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FFZ)V

    .line 156
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

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

    .line 151
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

    if-ge v6, v8, :cond_d

    .line 206
    iget v1, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    .line 208
    add-int v8, v6, v2

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 210
    .local v0, "lastColumnPos":I
    move v4, v6

    .local v4, "pos":I
    :goto_3
    if-ge v4, v0, :cond_c

    .line 211
    iget-object v8, p0, Lcom/samsung/android/glview/GLGridList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;

    move-result-object v7

    .line 212
    .restart local v7    # "view":Lcom/samsung/android/glview/GLView;
    if-nez v7, :cond_5

    .line 210
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

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

    .line 214
    .restart local v0    # "lastColumnPos":I
    .restart local v1    # "nextLeft":F
    .restart local v2    # "numColumns":I
    .restart local v3    # "offset":F
    .restart local v4    # "pos":I
    .restart local v6    # "startPos":I
    .restart local v7    # "view":Lcom/samsung/android/glview/GLView;
    :cond_5
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    if-ne v8, v11, :cond_b

    .line 215
    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getScrollHint()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 216
    neg-float v8, v3

    iput v8, p0, Lcom/samsung/android/glview/GLGridList;->mScrollSumY:F

    .line 219
    :cond_6
    div-int v5, v4, v2

    .line 220
    .local v5, "row":I
    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    add-float/2addr v8, v9

    int-to-float v9, v5

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mTopPadding:F

    add-float v3, v8, v9

    .line 222
    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->isLocaleRTL()Z

    move-result v8

    if-eqz v8, :cond_7

    rem-int v8, v4, v2

    if-nez v8, :cond_7

    .line 223
    add-int/lit8 v8, v2, -0x1

    int-to-float v8, v8

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v9

    iget v10, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v1, v8

    .line 225
    :cond_7
    invoke-virtual {v7, v1, v3}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FF)V

    .line 227
    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->isLocaleRTL()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 228
    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v8

    sub-float/2addr v1, v8

    .line 232
    :goto_5
    add-int/lit8 v8, v0, -0x1

    if-ge v4, v8, :cond_8

    .line 233
    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->isLocaleRTL()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 234
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    sub-float/2addr v1, v8

    .line 244
    .end local v5    # "row":I
    :cond_8
    :goto_6
    invoke-virtual {v7, p0}, Lcom/samsung/android/glview/GLView;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 245
    invoke-virtual {p0, v7}, Lcom/samsung/android/glview/GLGridList;->addView(Lcom/samsung/android/glview/GLView;)V

    goto :goto_4

    .line 230
    .restart local v5    # "row":I
    :cond_9
    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v8

    add-float/2addr v1, v8

    goto :goto_5

    .line 236
    :cond_a
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v1, v8

    goto :goto_6

    .line 240
    .end local v5    # "row":I
    :cond_b
    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getScrollHint()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 241
    neg-float v8, v3

    iput v8, p0, Lcom/samsung/android/glview/GLGridList;->mScrollSumX:F

    goto :goto_6

    .line 205
    .end local v7    # "view":Lcom/samsung/android/glview/GLView;
    :cond_c
    add-int/2addr v6, v2

    goto/16 :goto_2

    .line 249
    .end local v0    # "lastColumnPos":I
    .end local v4    # "pos":I
    :cond_d
    invoke-direct {p0, v3}, Lcom/samsung/android/glview/GLGridList;->updateContentArea(F)V

    .line 251
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLAbsList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    monitor-exit p0

    return-void
.end method

.method public setColumnWidth(FZ)V
    .locals 1
    .param p1, "columnWidth"    # F
    .param p2, "update"    # Z

    .prologue
    .line 261
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 262
    iput p1, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    .line 263
    if-eqz p2, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    .line 267
    :cond_0
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 271
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLAbsList;->setHeight(F)V

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    .line 273
    return-void
.end method

.method public setNumColumns(IZ)V
    .locals 2
    .param p1, "columns"    # I
    .param p2, "update"    # Z

    .prologue
    .line 282
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    if-eq v0, p1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/samsung/android/glview/GLGridList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-interface {v0}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    .line 288
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    if-ge v0, p1, :cond_2

    .line 289
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 290
    iput p1, p0, Lcom/samsung/android/glview/GLGridList;->mDefaultNumColumns:I

    .line 296
    :goto_1
    if-eqz p2, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    goto :goto_0

    .line 292
    :cond_2
    iput p1, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    .line 293
    iput p1, p0, Lcom/samsung/android/glview/GLGridList;->mDefaultNumColumns:I

    goto :goto_1
.end method

.method public setSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 307
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLAbsList;->setSize(FF)V

    .line 308
    return-void
.end method

.method public declared-synchronized setSize(FFZ)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "update"    # Z

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    .line 313
    if-eqz p3, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->checkBoundary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLGridList;->setBouncing(Z)V

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->setVisibleArea()V

    .line 320
    iget-object v0, p0, Lcom/samsung/android/glview/GLGridList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->setScrollBarLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :cond_1
    monitor-exit p0

    return-void

    .line 311
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
    .line 334
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 335
    :cond_0
    iput p1, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    .line 336
    iput p2, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    .line 337
    if-eqz p3, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    .line 341
    :cond_1
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 345
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLAbsList;->setWidth(F)V

    .line 346
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    .line 347
    return-void
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

    .line 356
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

    .line 426
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 359
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    if-ne v3, v1, :cond_8

    .line 360
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getHeight()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    add-float/2addr v4, p1

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_3

    .line 361
    .local v1, "scrollable":Z
    :goto_1
    if-nez v1, :cond_6

    .line 362
    packed-switch p2, :pswitch_data_0

    .line 380
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

    .line 381
    .local v0, "mGLView":Lcom/samsung/android/glview/GLView;
    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1}, Lcom/samsung/android/glview/GLView;->moveLayout(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 356
    .end local v0    # "mGLView":Lcom/samsung/android/glview/GLView;
    .end local v1    # "scrollable":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    move v1, v2

    .line 360
    goto :goto_1

    .line 366
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

    .line 367
    cmpg-float v2, p1, v5

    if-gez v2, :cond_4

    .line 368
    const/4 p1, 0x0

    goto :goto_2

    .line 370
    :cond_4
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    add-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getHeight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 371
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    sub-float p1, v2, v3

    goto :goto_2

    .line 376
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float p1, v2

    goto :goto_2

    .line 383
    :cond_5
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    .line 423
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->isScrollable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->setScrollBarLayout()V

    goto :goto_0

    .line 385
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

    .line 386
    .restart local v0    # "mGLView":Lcom/samsung/android/glview/GLView;
    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1}, Lcom/samsung/android/glview/GLView;->moveLayout(FF)V

    goto :goto_5

    .line 388
    .end local v0    # "mGLView":Lcom/samsung/android/glview/GLView;
    :cond_7
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    goto :goto_4

    .line 391
    .end local v1    # "scrollable":Z
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getWidth()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    add-float/2addr v4, p1

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_a

    .line 392
    .restart local v1    # "scrollable":Z
    :goto_6
    if-nez v1, :cond_d

    .line 393
    packed-switch p2, :pswitch_data_1

    .line 411
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

    .line 412
    .restart local v0    # "mGLView":Lcom/samsung/android/glview/GLView;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/glview/GLView;->moveLayout(FF)V

    goto :goto_8

    .end local v0    # "mGLView":Lcom/samsung/android/glview/GLView;
    .end local v1    # "scrollable":Z
    :cond_a
    move v1, v2

    .line 391
    goto :goto_6

    .line 397
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

    .line 398
    cmpg-float v2, p1, v5

    if-gez v2, :cond_b

    .line 399
    const/4 p1, 0x0

    goto :goto_7

    .line 401
    :cond_b
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    add-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getWidth()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    .line 402
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    sub-float p1, v2, v3

    goto :goto_7

    .line 407
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float p1, v2

    goto :goto_7

    .line 414
    :cond_c
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    goto/16 :goto_4

    .line 416
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

    .line 417
    .restart local v0    # "mGLView":Lcom/samsung/android/glview/GLView;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/glview/GLView;->moveLayout(FF)V

    goto :goto_9

    .line 419
    .end local v0    # "mGLView":Lcom/samsung/android/glview/GLView;
    :cond_e
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    .line 362
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 393
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

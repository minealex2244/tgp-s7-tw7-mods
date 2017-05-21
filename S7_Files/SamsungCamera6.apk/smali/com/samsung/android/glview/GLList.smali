.class public Lcom/samsung/android/glview/GLList;
.super Lcom/samsung/android/glview/GLAbsList;
.source "GLList.java"


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF)V
    .locals 0
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLAbsList;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 36
    return-void
.end method


# virtual methods
.method public addView(Lcom/samsung/android/glview/GLView;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 44
    instance-of v0, p1, Lcom/samsung/android/glview/GLList;

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 47
    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 48
    iget v0, p0, Lcom/samsung/android/glview/GLList;->mContentHeight:F

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLList;->mContentHeight:F

    .line 49
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/glview/GLList;->mContentWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 50
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLList;->mContentWidth:F

    .line 59
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLAbsList;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 60
    return-void

    .line 53
    :cond_2
    iget v0, p0, Lcom/samsung/android/glview/GLList;->mContentWidth:F

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLList;->mContentWidth:F

    .line 54
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/glview/GLList;->mContentHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 55
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLList;->mContentHeight:F

    goto :goto_0
.end method

.method public refreshList()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 64
    invoke-super {p0}, Lcom/samsung/android/glview/GLAbsList;->refreshList()V

    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, "offset":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    .line 69
    .local v1, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->resetTranslate()V

    .line 70
    iget v3, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    if-ne v3, v4, :cond_1

    .line 71
    invoke-virtual {v1, v5, v0, v6}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FFZ)V

    .line 72
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    add-float/2addr v0, v3

    goto :goto_0

    .line 73
    :cond_1
    iget v3, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    if-ne v3, v7, :cond_0

    .line 74
    invoke-virtual {v1, v0, v5, v6}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FFZ)V

    .line 75
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    add-float/2addr v0, v3

    goto :goto_0

    .line 78
    .end local v1    # "view":Lcom/samsung/android/glview/GLView;
    :cond_2
    iget v2, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    if-ne v2, v4, :cond_4

    .line 79
    iput v0, p0, Lcom/samsung/android/glview/GLList;->mContentHeight:F

    .line 83
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 84
    return-void

    .line 80
    :cond_4
    iget v2, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    if-ne v2, v7, :cond_3

    .line 81
    iput v0, p0, Lcom/samsung/android/glview/GLList;->mContentWidth:F

    goto :goto_1
.end method

.method public removeView(Lcom/samsung/android/glview/GLView;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/glview/GLList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget v0, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 93
    iget v0, p0, Lcom/samsung/android/glview/GLList;->mContentHeight:F

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLList;->mContentHeight:F

    .line 98
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLAbsList;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 99
    return-void

    .line 95
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLList;->mContentWidth:F

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLList;->mContentWidth:F

    goto :goto_0
.end method

.method public setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V
    .locals 8
    .param p1, "adapter"    # Lcom/samsung/android/glview/GLAbsList$Adapter;
    .param p2, "scrollOrientation"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/glview/GLList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    .line 113
    iput p2, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    .line 115
    iget-object v4, p0, Lcom/samsung/android/glview/GLList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLView;

    .line 116
    .local v3, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->clear()V

    goto :goto_0

    .line 119
    .end local v3    # "view":Lcom/samsung/android/glview/GLView;
    :cond_1
    iget v4, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLList;->setScrollOrientation(I)V

    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, "offset":F
    iget-object v4, p0, Lcom/samsung/android/glview/GLList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-interface {v4}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getCount()I

    move-result v0

    .line 123
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 124
    iget-object v4, p0, Lcom/samsung/android/glview/GLList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;

    move-result-object v3

    .line 125
    .restart local v3    # "view":Lcom/samsung/android/glview/GLView;
    if-nez v3, :cond_2

    .line 156
    .end local v3    # "view":Lcom/samsung/android/glview/GLView;
    :goto_2
    return-void

    .line 127
    .restart local v3    # "view":Lcom/samsung/android/glview/GLView;
    :cond_2
    iget v4, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    if-ne v4, v6, :cond_4

    .line 128
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getScrollHint()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 129
    neg-float v4, v2

    iput v4, p0, Lcom/samsung/android/glview/GLList;->mScrollSumY:F

    .line 131
    :cond_3
    invoke-virtual {v3, v7, v2}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FF)V

    .line 132
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    add-float/2addr v2, v4

    .line 140
    :goto_3
    invoke-virtual {v3, p0}, Lcom/samsung/android/glview/GLView;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 141
    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLView;->setForcedClipping(Z)V

    .line 142
    invoke-virtual {p0, v3}, Lcom/samsung/android/glview/GLList;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 134
    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getScrollHint()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 135
    neg-float v4, v2

    iput v4, p0, Lcom/samsung/android/glview/GLList;->mScrollSumX:F

    .line 137
    :cond_5
    invoke-virtual {v3, v2, v7}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FF)V

    .line 138
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    add-float/2addr v2, v4

    goto :goto_3

    .line 145
    .end local v3    # "view":Lcom/samsung/android/glview/GLView;
    :cond_6
    iget v4, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    if-ne v4, v6, :cond_8

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->getHeight()F

    move-result v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_7

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->getWidth()F

    move-result v4

    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/glview/GLList;->setSize(FF)V

    .line 155
    :cond_7
    :goto_4
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLAbsList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V

    goto :goto_2

    .line 150
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->getWidth()F

    move-result v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_7

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->getHeight()F

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/glview/GLList;->setSize(FF)V

    goto :goto_4
.end method

.method public declared-synchronized setHeight(F)V
    .locals 3
    .param p1, "height"    # F

    .prologue
    const/4 v2, 0x1

    .line 160
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLAbsList;->setHeight(F)V

    .line 161
    iget v1, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    if-ne v1, v2, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->checkBoundary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLList;->setBouncing(Z)V

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->setVisibleArea()V

    .line 167
    iget-object v1, p0, Lcom/samsung/android/glview/GLList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->setScrollBarLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_1
    monitor-exit p0

    return-void

    .line 170
    :cond_2
    :try_start_1
    iget v1, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 171
    iget-object v1, p0, Lcom/samsung/android/glview/GLList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 172
    .local v0, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setHeight(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    .end local v0    # "view":Lcom/samsung/android/glview/GLView;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setSize(FF)V
    .locals 5
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v4, 0x1

    .line 182
    monitor-enter p0

    const/4 v2, 0x0

    .line 183
    .local v2, "widthChanged":Z
    const/4 v0, 0x0

    .line 185
    .local v0, "heightChanged":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->getWidth()F

    move-result v3

    invoke-static {v3, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    const/4 v2, 0x1

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->getHeight()F

    move-result v3

    invoke-static {v3, p2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v3

    if-nez v3, :cond_1

    .line 189
    const/4 v0, 0x1

    .line 191
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLAbsList;->setSize(FF)V

    .line 192
    if-eqz v2, :cond_2

    iget v3, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    if-ne v3, v4, :cond_2

    .line 193
    iget-object v3, p0, Lcom/samsung/android/glview/GLList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    .line 194
    .local v1, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->setWidth(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 182
    .end local v1    # "view":Lcom/samsung/android/glview/GLView;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 196
    :cond_2
    if-eqz v0, :cond_3

    :try_start_1
    iget v3, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 199
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->refreshList()V

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->checkBoundary()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 202
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/glview/GLList;->setBouncing(Z)V

    .line 204
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->setVisibleArea()V

    .line 205
    iget-object v3, p0, Lcom/samsung/android/glview/GLList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v3, :cond_5

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->setScrollBarLayout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    :cond_5
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setWidth(F)V
    .locals 3
    .param p1, "width"    # F

    .prologue
    const/4 v2, 0x1

    .line 213
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLAbsList;->setWidth(F)V

    .line 214
    iget v1, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    if-ne v1, v2, :cond_0

    .line 215
    iget-object v1, p0, Lcom/samsung/android/glview/GLList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 216
    .local v0, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setWidth(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 213
    .end local v0    # "view":Lcom/samsung/android/glview/GLView;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 218
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/samsung/android/glview/GLList;->mScrollOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->checkBoundary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLList;->setBouncing(Z)V

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->setVisibleArea()V

    .line 224
    iget-object v1, p0, Lcom/samsung/android/glview/GLList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v1, :cond_2

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->setScrollBarLayout()V

    .line 228
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLList;->refreshList()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    monitor-exit p0

    return-void
.end method

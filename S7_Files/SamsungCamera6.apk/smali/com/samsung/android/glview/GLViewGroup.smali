.class public Lcom/samsung/android/glview/GLViewGroup;
.super Lcom/samsung/android/glview/GLView;
.source "GLViewGroup.java"


# static fields
.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000


# instance fields
.field private mDepthSortNeeded:Z

.field protected mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/glview/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private mViewGroupFlags:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;)V
    .locals 1
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/glview/GLViewGroup;->initViewGroup()V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF)V
    .locals 1
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/glview/GLViewGroup;->initViewGroup()V

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF)V
    .locals 1
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 96
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/glview/GLViewGroup;->initViewGroup()V

    .line 98
    return-void
.end method

.method private initViewGroup()V
    .locals 1

    .prologue
    .line 1051
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLViewGroup;->setDescendantFocusability(I)V

    .line 1052
    return-void
.end method


# virtual methods
.method public addAccessibilityBaseViewNode(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "listBaseViewNode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/glview/GLView;>;"
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mInScreen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addAccessibilityChildViewNode(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "listChildViewNode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/glview/GLView;>;"
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 115
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mInScreen:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    :cond_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    .line 120
    .local v1, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setParentId(I)V

    .line 121
    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->addAccessibilityChildViewNode(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public addView(ILcom/samsung/android/glview/GLView;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 153
    if-nez p2, :cond_0

    .line 154
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 156
    :cond_0
    iput-object p0, p2, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 163
    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 164
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    .line 165
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mSizeGiven:Z

    if-nez v1, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->updateSize()V

    .line 168
    :cond_1
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addView(Lcom/samsung/android/glview/GLView;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 135
    :cond_0
    iput-object p0, p1, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    .line 136
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->onOrientationChanged(I)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 139
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    .line 141
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mSizeGiven:Z

    if-nez v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->updateSize()V

    .line 144
    :cond_1
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 178
    .local v0, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 177
    .end local v0    # "view":Lcom/samsung/android/glview/GLView;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 180
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 181
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    monitor-exit p0

    return-void
.end method

.method public contains(FF)Z
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 191
    move v1, p1

    .line 192
    .local v1, "pointX":F
    move v2, p2

    .line 193
    .local v2, "pointY":F
    iget-boolean v8, p0, Lcom/samsung/android/glview/GLViewGroup;->mInScreen:Z

    if-nez v8, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v6

    .line 196
    :cond_1
    iget v8, p0, Lcom/samsung/android/glview/GLViewGroup;->mRotateDegree:I

    if-eqz v8, :cond_2

    .line 197
    const/4 v8, 0x2

    new-array v4, v8, [F

    .line 198
    .local v4, "rotationPivot":[F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getOrientation()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLViewGroup;->mDefaultOrientation:I

    add-int/2addr v8, v9

    rem-int/lit8 v8, v8, 0x4

    invoke-virtual {p0, v8}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v0

    .line 200
    .local v0, "leftTop":[F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getRight()F

    move-result v9

    add-float/2addr v8, v9

    div-float/2addr v8, v10

    aput v8, v0, v6

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getBottom()F

    move-result v9

    add-float/2addr v8, v9

    div-float/2addr v8, v10

    aput v8, v0, v7

    .line 202
    iget-object v8, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLContext:Lcom/samsung/android/glview/GLContext;

    aget v9, v0, v6

    aget v10, v0, v7

    invoke-static {v8, v4, v9, v10}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getOrientation()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLViewGroup;->mDefaultOrientation:I

    add-int/2addr v8, v9

    rem-int/lit8 v8, v8, 0x4

    neg-int v8, v8

    mul-int/lit8 v8, v8, 0x5a

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getRotateDegree()I

    move-result v9

    sub-int/2addr v8, v9

    aget v9, v0, v6

    aget v10, v0, v7

    invoke-static {p1, p2, v8, v9, v10}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v3

    .line 204
    .local v3, "rotatedPoint":Landroid/graphics/PointF;
    iget v1, v3, Landroid/graphics/PointF;->x:F

    .line 205
    iget v2, v3, Landroid/graphics/PointF;->y:F

    .line 207
    .end local v0    # "leftTop":[F
    .end local v3    # "rotatedPoint":Landroid/graphics/PointF;
    .end local v4    # "rotationPivot":[F
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/glview/GLView;

    .line 208
    .local v5, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v5, v1, v2}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v9

    if-eqz v9, :cond_3

    move v6, v7

    .line 209
    goto :goto_0
.end method

.method public contains(Lcom/samsung/android/glview/GLView;)Z
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v1, 0x0

    .line 216
    if-nez p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v1

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 220
    .local v0, "glView":Lcom/samsung/android/glview/GLView;
    if-ne v0, p1, :cond_2

    .line 221
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public dumpViewHierarchy(I)V
    .locals 6
    .param p1, "level"    # I

    .prologue
    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .local v1, "s":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 231
    const-string v3, "| "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 234
    const-string v3, "DUMP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Focusable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->isFocusable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Clip(Manual:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/glview/GLViewGroup;->mManualClip:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    .line 242
    .local v2, "view":Lcom/samsung/android/glview/GLView;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLView;->dumpViewHierarchy(I)V

    goto :goto_2

    .line 238
    .end local v2    # "view":Lcom/samsung/android/glview/GLView;
    :cond_1
    const-string v3, "DUMP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Focusable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->isFocusable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 244
    :cond_2
    return-void
.end method

.method public findNextFocusFromView(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;
    .locals 18
    .param p1, "focusedView"    # Lcom/samsung/android/glview/GLView;
    .param p2, "direction"    # I

    .prologue
    .line 248
    if-nez p1, :cond_1

    .line 249
    const/4 v4, 0x0

    .line 341
    :cond_0
    return-object v4

    .line 251
    :cond_1
    const/4 v4, 0x0

    .line 253
    .local v4, "candidateView":Lcom/samsung/android/glview/GLView;
    invoke-super/range {p0 .. p2}, Lcom/samsung/android/glview/GLView;->findNextFocusFromView(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v10

    .line 254
    .local v10, "tempView":Lcom/samsung/android/glview/GLView;
    if-eqz v10, :cond_2

    .line 255
    move-object v4, v10

    .line 258
    :cond_2
    const/4 v11, 0x0

    .line 259
    .local v11, "tempViewCenterX":F
    const/4 v12, 0x0

    .line 260
    .local v12, "tempViewCenterY":F
    const/4 v5, 0x0

    .line 261
    .local v5, "candidateViewCenterX":F
    const/4 v6, 0x0

    .line 262
    .local v6, "candidateViewCenterY":F
    const/4 v9, 0x0

    .line 263
    .local v9, "horizontalOffset":F
    const/4 v13, 0x0

    .line 264
    .local v13, "verticalOffset":F
    const/4 v2, 0x0

    .line 265
    .local v2, "candidateHorizontalOffset":F
    const/4 v3, 0x0

    .line 266
    .local v3, "candidateVerticalOffset":F
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    add-int v15, v15, v16

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v7, v15, v16

    .line 267
    .local v7, "focusedViewCenterX":F
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    add-int v15, v15, v16

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v8, v15, v16

    .line 269
    .local v8, "focusedViewCenterY":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/glview/GLView;

    .line 270
    .local v14, "view":Lcom/samsung/android/glview/GLView;
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/samsung/android/glview/GLView;->findNextFocusFromView(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v10

    .line 271
    if-eqz v10, :cond_3

    .line 272
    if-nez v4, :cond_4

    .line 273
    move-object v4, v10

    goto :goto_0

    .line 275
    :cond_4
    invoke-virtual {v10}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v11, v16, v17

    .line 276
    invoke-virtual {v10}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v12, v16, v17

    .line 277
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v5, v16, v17

    .line 278
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v6, v16, v17

    .line 279
    sub-float v16, v7, v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 280
    sub-float v16, v8, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 281
    sub-float v16, v7, v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 282
    sub-float v16, v8, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 284
    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    .line 287
    :sswitch_0
    cmpl-float v16, v11, v5

    if-ltz v16, :cond_3

    cmpg-float v16, v11, v7

    if-gtz v16, :cond_3

    .line 288
    cmpl-float v16, v9, v13

    if-ltz v16, :cond_3

    .line 289
    sub-float v16, v13, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    sub-float v17, v9, v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    cmpg-float v16, v16, v17

    if-gtz v16, :cond_5

    .line 290
    move-object v4, v10

    goto/16 :goto_0

    .line 292
    :cond_5
    cmpg-float v16, v13, v3

    if-gtz v16, :cond_3

    .line 293
    move-object v4, v10

    goto/16 :goto_0

    .line 300
    :sswitch_1
    cmpg-float v16, v11, v5

    if-gtz v16, :cond_3

    cmpl-float v16, v11, v7

    if-ltz v16, :cond_3

    .line 301
    cmpl-float v16, v9, v13

    if-ltz v16, :cond_3

    .line 302
    sub-float v16, v13, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    sub-float v17, v9, v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    cmpg-float v16, v16, v17

    if-gtz v16, :cond_6

    .line 303
    move-object v4, v10

    goto/16 :goto_0

    .line 305
    :cond_6
    cmpg-float v16, v13, v3

    if-gtz v16, :cond_3

    .line 306
    move-object v4, v10

    goto/16 :goto_0

    .line 313
    :sswitch_2
    cmpl-float v16, v12, v6

    if-ltz v16, :cond_3

    cmpg-float v16, v12, v8

    if-gtz v16, :cond_3

    .line 314
    cmpg-float v16, v9, v13

    if-gtz v16, :cond_3

    .line 315
    sub-float v16, v13, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    sub-float v17, v9, v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    cmpl-float v16, v16, v17

    if-ltz v16, :cond_7

    .line 316
    move-object v4, v10

    goto/16 :goto_0

    .line 318
    :cond_7
    cmpg-float v16, v9, v2

    if-gtz v16, :cond_3

    .line 319
    move-object v4, v10

    goto/16 :goto_0

    .line 326
    :sswitch_3
    cmpg-float v16, v12, v6

    if-gtz v16, :cond_3

    cmpl-float v16, v12, v8

    if-ltz v16, :cond_3

    .line 327
    cmpg-float v16, v9, v13

    if-gtz v16, :cond_3

    .line 328
    sub-float v16, v13, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    sub-float v17, v9, v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    cmpl-float v16, v16, v17

    if-ltz v16, :cond_8

    .line 329
    move-object v4, v10

    goto/16 :goto_0

    .line 331
    :cond_8
    cmpg-float v16, v9, v2

    if-gtz v16, :cond_3

    .line 332
    move-object v4, v10

    goto/16 :goto_0

    .line 284
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x31 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_1
        0x52 -> :sswitch_3
        0x62 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 351
    const/4 v4, 0x0

    .line 352
    .local v4, "resultView":Lcom/samsung/android/glview/GLView;
    move v2, p1

    .line 353
    .local v2, "pointX":F
    move v3, p2

    .line 354
    .local v3, "pointY":F
    iget-boolean v8, p0, Lcom/samsung/android/glview/GLViewGroup;->mInScreen:Z

    if-nez v8, :cond_1

    .line 355
    const/4 p0, 0x0

    .line 386
    .end local p0    # "this":Lcom/samsung/android/glview/GLViewGroup;
    :cond_0
    :goto_0
    return-object p0

    .line 358
    .restart local p0    # "this":Lcom/samsung/android/glview/GLViewGroup;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_2

    .line 359
    const/4 p0, 0x0

    goto :goto_0

    .line 361
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getBypassTouch()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 362
    const/4 p0, 0x0

    goto :goto_0

    .line 363
    :cond_3
    iget v8, p0, Lcom/samsung/android/glview/GLViewGroup;->mRotateDegree:I

    if-eqz v8, :cond_4

    .line 364
    const/4 v8, 0x2

    new-array v6, v8, [F

    .line 365
    .local v6, "rotationPivot":[F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getOrientation()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLViewGroup;->mDefaultOrientation:I

    add-int/2addr v8, v9

    rem-int/lit8 v8, v8, 0x4

    invoke-virtual {p0, v8}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v1

    .line 366
    .local v1, "leftTop":[F
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getRight()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    aput v9, v1, v8

    .line 367
    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getBottom()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    aput v9, v1, v8

    .line 368
    iget-object v8, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v9, 0x0

    aget v9, v1, v9

    const/4 v10, 0x1

    aget v10, v1, v10

    invoke-static {v8, v6, v9, v10}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 369
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getOrientation()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLViewGroup;->mDefaultOrientation:I

    add-int/2addr v8, v9

    rem-int/lit8 v8, v8, 0x4

    neg-int v8, v8

    mul-int/lit8 v8, v8, 0x5a

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getRotateDegree()I

    move-result v9

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    aget v9, v1, v9

    const/4 v10, 0x1

    aget v10, v1, v10

    invoke-static {p1, p2, v8, v9, v10}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v5

    .line 370
    .local v5, "rotatedPoint":Landroid/graphics/PointF;
    iget v2, v5, Landroid/graphics/PointF;->x:F

    .line 371
    iget v3, v5, Landroid/graphics/PointF;->y:F

    .line 373
    .end local v1    # "leftTop":[F
    .end local v5    # "rotatedPoint":Landroid/graphics/PointF;
    .end local v6    # "rotationPivot":[F
    :cond_4
    iget-object v8, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 374
    .local v0, "glview":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLView;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v7

    .line 375
    .local v7, "view":Lcom/samsung/android/glview/GLView;
    if-eqz v7, :cond_5

    .line 376
    move-object v4, v7

    goto :goto_1

    .line 380
    .end local v0    # "glview":Lcom/samsung/android/glview/GLView;
    .end local v7    # "view":Lcom/samsung/android/glview/GLView;
    :cond_6
    if-eqz v4, :cond_7

    move-object p0, v4

    .line 381
    goto/16 :goto_0

    .line 383
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->contains(FF)Z

    move-result v8

    if-nez v8, :cond_0

    .line 386
    const/4 p0, 0x0

    goto/16 :goto_0
.end method

.method public findViewById(I)Lcom/samsung/android/glview/GLView;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 405
    .end local p0    # "this":Lcom/samsung/android/glview/GLViewGroup;
    :goto_0
    return-object p0

    .line 399
    .restart local p0    # "this":Lcom/samsung/android/glview/GLViewGroup;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 400
    .local v0, "glView":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    .line 401
    .local v1, "view":Lcom/samsung/android/glview/GLView;
    if-eqz v1, :cond_1

    move-object p0, v1

    .line 402
    goto :goto_0

    .line 405
    .end local v0    # "glView":Lcom/samsung/android/glview/GLView;
    .end local v1    # "view":Lcom/samsung/android/glview/GLView;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewByObjectTag(Ljava/lang/String;)Lcom/samsung/android/glview/GLView;
    .locals 4
    .param p1, "objectTag"    # Ljava/lang/String;

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getObjectTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 426
    .end local p0    # "this":Lcom/samsung/android/glview/GLViewGroup;
    :goto_0
    return-object p0

    .line 418
    .restart local p0    # "this":Lcom/samsung/android/glview/GLViewGroup;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 419
    .local v0, "glView":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->findViewByObjectTag(Ljava/lang/String;)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    .line 420
    .local v1, "view":Lcom/samsung/android/glview/GLView;
    if-eqz v1, :cond_1

    .line 421
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_1

    move-object p0, v1

    .line 422
    goto :goto_0

    .line 426
    .end local v0    # "glView":Lcom/samsung/android/glview/GLView;
    .end local v1    # "view":Lcom/samsung/android/glview/GLView;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewByTag(I)Lcom/samsung/android/glview/GLView;
    .locals 4
    .param p1, "tag"    # I

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTag()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 445
    .end local p0    # "this":Lcom/samsung/android/glview/GLViewGroup;
    :goto_0
    return-object p0

    .line 439
    .restart local p0    # "this":Lcom/samsung/android/glview/GLViewGroup;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 440
    .local v0, "glView":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->findViewByTag(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    .line 441
    .local v1, "view":Lcom/samsung/android/glview/GLView;
    if-eqz v1, :cond_1

    move-object p0, v1

    .line 442
    goto :goto_0

    .line 445
    .end local v0    # "glView":Lcom/samsung/android/glview/GLView;
    .end local v1    # "view":Lcom/samsung/android/glview/GLView;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewFromLeftMostTop()Lcom/samsung/android/glview/GLView;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 455
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mInScreen:Z

    if-nez v3, :cond_1

    .line 486
    :cond_0
    return-object v1

    .line 459
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getBypassTouch()Z

    move-result v3

    if-nez v3, :cond_0

    .line 467
    const/4 v1, 0x0

    .line 469
    .local v1, "resultView":Lcom/samsung/android/glview/GLView;
    iget-object v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 470
    .local v0, "glView":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->findViewFromLeftMostTop()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    .line 471
    .local v2, "view":Lcom/samsung/android/glview/GLView;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 472
    if-nez v1, :cond_3

    .line 473
    move-object v1, v2

    .line 476
    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getCurrentLeft()F

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getCurrentLeft()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    .line 477
    move-object v1, v2

    goto :goto_0

    .line 478
    :cond_4
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getCurrentLeft()F

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getCurrentLeft()F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    .line 479
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getCurrentTop()F

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getCurrentTop()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    .line 480
    move-object v1, v2

    goto :goto_0
.end method

.method public findViewFromLeftMostTop(IFF)Lcom/samsung/android/glview/GLView;
    .locals 11
    .param p1, "orientation"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/4 v5, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    .line 491
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1

    .line 562
    :cond_0
    return-object v5

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getBypassTouch()Z

    move-result v7

    if-nez v7, :cond_0

    .line 499
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;->findViewFromLeftMostTop(IFF)Lcom/samsung/android/glview/GLView;

    move-result-object v6

    .line 500
    .local v6, "tempView":Lcom/samsung/android/glview/GLView;
    const/4 v5, 0x0

    .line 501
    .local v5, "resultView":Lcom/samsung/android/glview/GLView;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 502
    move-object v5, v6

    .line 505
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    .line 506
    .local v2, "glView":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/android/glview/GLView;->findViewFromLeftMostTop(IFF)Lcom/samsung/android/glview/GLView;

    move-result-object v6

    .line 507
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->isFocusable()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 508
    if-nez v5, :cond_4

    .line 509
    move-object v5, v6

    goto :goto_0

    .line 511
    :cond_4
    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float v0, v8, v10

    .line 512
    .local v0, "centerX":F
    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float v1, v8, v10

    .line 514
    .local v1, "centerY":F
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float v3, v8, v10

    .line 515
    .local v3, "resultCenterX":F
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float v4, v8, v10

    .line 517
    .local v4, "resultCenterY":F
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 519
    :pswitch_0
    cmpg-float v8, v1, v4

    if-gez v8, :cond_5

    .line 520
    move-object v5, v6

    goto :goto_0

    .line 521
    :cond_5
    invoke-static {v1, v4}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 522
    cmpg-float v8, v0, v3

    if-gtz v8, :cond_3

    .line 523
    move-object v5, v6

    goto :goto_0

    .line 528
    :pswitch_1
    cmpl-float v8, v1, v4

    if-lez v8, :cond_6

    .line 529
    move-object v5, v6

    goto :goto_0

    .line 530
    :cond_6
    invoke-static {v1, v4}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 531
    cmpl-float v8, v0, v3

    if-lez v8, :cond_3

    .line 532
    move-object v5, v6

    goto/16 :goto_0

    .line 537
    :pswitch_2
    cmpl-float v8, v0, v3

    if-lez v8, :cond_7

    .line 538
    move-object v5, v6

    goto/16 :goto_0

    .line 539
    :cond_7
    invoke-static {v0, v3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 540
    cmpg-float v8, v0, v4

    if-gtz v8, :cond_3

    .line 541
    move-object v5, v6

    goto/16 :goto_0

    .line 546
    :pswitch_3
    cmpg-float v8, v0, v3

    if-gez v8, :cond_8

    .line 547
    move-object v5, v6

    goto/16 :goto_0

    .line 548
    :cond_8
    invoke-static {v0, v3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 549
    cmpl-float v8, v1, v4

    if-ltz v8, :cond_3

    .line 550
    move-object v5, v6

    goto/16 :goto_0

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;
    .locals 13
    .param p1, "focusedView"    # Lcom/samsung/android/glview/GLView;
    .param p2, "direction"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 566
    if-nez p1, :cond_1

    .line 567
    const/4 v0, 0x0

    .line 625
    :cond_0
    return-object v0

    .line 570
    :cond_1
    const/4 v0, 0x0

    .line 572
    .local v0, "candidateView":Lcom/samsung/android/glview/GLView;
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    .line 573
    .local v5, "tempView":Lcom/samsung/android/glview/GLView;
    if-eqz v5, :cond_2

    .line 574
    move-object v0, v5

    .line 577
    :cond_2
    const/4 v6, 0x0

    .line 578
    .local v6, "tempViewCenterX":F
    const/4 v7, 0x0

    .line 579
    .local v7, "tempViewCenterY":F
    const/4 v1, 0x0

    .line 580
    .local v1, "candidateViewCenterX":F
    const/4 v2, 0x0

    .line 581
    .local v2, "candidateViewCenterY":F
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    div-float v3, v9, v12

    .line 582
    .local v3, "focusedViewCenterX":F
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    div-float v4, v9, v12

    .line 584
    .local v4, "focusedViewCenterY":F
    iget-object v9, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/glview/GLView;

    .line 585
    .local v8, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v8, p1, p2}, Lcom/samsung/android/glview/GLView;->findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    .line 586
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->isFocusable()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 587
    if-nez v0, :cond_4

    .line 588
    move-object v0, v5

    goto :goto_0

    .line 590
    :cond_4
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    div-float v6, v10, v12

    .line 591
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    div-float v7, v10, v12

    .line 592
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    div-float v1, v10, v12

    .line 593
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    div-float v2, v10, v12

    .line 595
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 598
    :sswitch_0
    cmpl-float v10, v6, v1

    if-lez v10, :cond_3

    cmpg-float v10, v6, v3

    if-gez v10, :cond_3

    .line 599
    move-object v0, v5

    goto :goto_0

    .line 604
    :sswitch_1
    cmpg-float v10, v6, v1

    if-gez v10, :cond_3

    cmpl-float v10, v6, v3

    if-lez v10, :cond_3

    .line 605
    move-object v0, v5

    goto :goto_0

    .line 610
    :sswitch_2
    cmpl-float v10, v7, v2

    if-lez v10, :cond_3

    cmpg-float v10, v7, v4

    if-gez v10, :cond_3

    .line 611
    move-object v0, v5

    goto :goto_0

    .line 616
    :sswitch_3
    cmpg-float v10, v7, v2

    if-gez v10, :cond_3

    cmpl-float v10, v7, v4

    if-lez v10, :cond_3

    .line 617
    move-object v0, v5

    goto/16 :goto_0

    .line 595
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x31 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_1
        0x52 -> :sswitch_3
        0x62 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public getDescendantFocusability()I
    .locals 2

    .prologue
    .line 629
    iget v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mViewGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v0, v1

    return v0
.end method

.method public getIndex(Lcom/samsung/android/glview/GLView;)I
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 646
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 647
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    const/4 v0, 0x0

    .line 648
    .local v0, "index":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 649
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 654
    .end local v0    # "index":I
    :goto_1
    return v0

    .line 652
    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getLoaded()Z
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x1

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(I)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 685
    iget-object v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    return-object v0
.end method

.method public initSize()V
    .locals 6

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v1

    .line 696
    .local v1, "right":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v0

    .line 698
    .local v0, "bottom":F
    iget-object v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    .line 699
    .local v2, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v4, v1

    if-lez v4, :cond_1

    .line 700
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    add-float v1, v4, v5

    .line 702
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    .line 703
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    add-float v0, v4, v5

    goto :goto_0

    .line 706
    .end local v2    # "view":Lcom/samsung/android/glview/GLView;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getSizeSpecified()Z

    move-result v3

    if-nez v3, :cond_3

    .line 707
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v3

    sub-float v3, v1, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v4

    sub-float v4, v0, v4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->updateSize(FF)V

    .line 709
    :cond_3
    return-void
.end method

.method public isDepthSorted()Z
    .locals 5

    .prologue
    .line 712
    iget-object v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 713
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    const/4 v2, 0x0

    .line 714
    .local v2, "previousView":Lcom/samsung/android/glview/GLView;
    const/4 v0, 0x0

    .line 715
    .local v0, "currentView":Lcom/samsung/android/glview/GLView;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 716
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "currentView":Lcom/samsung/android/glview/GLView;
    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 717
    .restart local v0    # "currentView":Lcom/samsung/android/glview/GLView;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getLayoutZ()F

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getLayoutZ()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 718
    const/4 v3, 0x0

    .line 722
    :goto_1
    return v3

    .line 720
    :cond_0
    move-object v2, v0

    goto :goto_0

    .line 722
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public onAlphaUpdated()V
    .locals 3

    .prologue
    .line 727
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 728
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 729
    .local v0, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    goto :goto_0

    .line 731
    .end local v0    # "view":Lcom/samsung/android/glview/GLView;
    :cond_0
    return-void
.end method

.method public onDepthUpdated()V
    .locals 1

    .prologue
    .line 735
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onDepthUpdated()V

    .line 736
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    .line 737
    return-void
.end method

.method protected onDraw()V
    .locals 5

    .prologue
    .line 963
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    if-eqz v3, :cond_0

    .line 964
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->sortViews()V

    .line 966
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getMatrix()[F

    move-result-object v1

    .line 967
    .local v1, "matrix":[F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 968
    .local v0, "clipRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    .line 969
    .local v2, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->clip()V

    .line 971
    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/glview/GLView;->draw([FLandroid/graphics/Rect;)V

    .line 973
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->clearClip()V

    goto :goto_0

    .line 975
    .end local v2    # "view":Lcom/samsung/android/glview/GLView;
    :cond_1
    return-void
.end method

.method public onHoverIndicatorColorChanged()V
    .locals 3

    .prologue
    .line 741
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 742
    .local v0, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onHoverIndicatorColorChanged()V

    goto :goto_0

    .line 744
    .end local v0    # "view":Lcom/samsung/android/glview/GLView;
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onHoverIndicatorColorChanged()V

    .line 745
    return-void
.end method

.method public onLayoutUpdated()V
    .locals 3

    .prologue
    .line 754
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 755
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 756
    .local v0, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    goto :goto_0

    .line 758
    .end local v0    # "view":Lcom/samsung/android/glview/GLView;
    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 1

    .prologue
    .line 986
    const/4 v0, 0x1

    return v0
.end method

.method protected onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 996
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 997
    .local v0, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->onOrientationChanged(I)V

    goto :goto_0

    .line 999
    .end local v0    # "view":Lcom/samsung/android/glview/GLView;
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onOrientationChanged(I)V

    .line 1000
    return-void
.end method

.method protected onOutOfScreen()V
    .locals 3

    .prologue
    .line 1004
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 1005
    .local v0, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onOutOfScreen()V

    goto :goto_0

    .line 1007
    .end local v0    # "view":Lcom/samsung/android/glview/GLView;
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onOutOfScreen()V

    .line 1008
    return-void
.end method

.method public onRequestFocusInDescendants(ILcom/samsung/android/glview/GLView;)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedView"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getSize()I

    move-result v1

    .line 765
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_1

    .line 766
    const/4 v5, 0x0

    .line 767
    .local v5, "index":I
    const/4 v4, 0x1

    .line 768
    .local v4, "increment":I
    move v2, v1

    .line 776
    .local v2, "end":I
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 777
    .local v6, "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/glview/GLView;>;"
    move v3, v5

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_0

    .line 778
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-lt v3, v7, :cond_2

    .line 787
    :cond_0
    const/4 v7, 0x0

    :goto_2
    return v7

    .line 770
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "increment":I
    .end local v5    # "index":I
    .end local v6    # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/glview/GLView;>;"
    :cond_1
    add-int/lit8 v5, v1, -0x1

    .line 771
    .restart local v5    # "index":I
    const/4 v4, -0x1

    .line 772
    .restart local v4    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .line 780
    .restart local v3    # "i":I
    .restart local v6    # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/glview/GLView;>;"
    :cond_2
    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 781
    .local v0, "child":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isFocusable()Z

    move-result v7

    if-nez v7, :cond_3

    instance-of v7, v0, Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v7, :cond_4

    .line 782
    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 783
    const/4 v7, 0x1

    goto :goto_2

    .line 777
    :cond_4
    add-int/2addr v3, v4

    goto :goto_1
.end method

.method public onReset()V
    .locals 3

    .prologue
    .line 792
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 793
    .local v0, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->reset()V

    goto :goto_0

    .line 795
    .end local v0    # "view":Lcom/samsung/android/glview/GLView;
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 1012
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 1013
    .local v0, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    goto :goto_0

    .line 1015
    .end local v0    # "view":Lcom/samsung/android/glview/GLView;
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    .line 1016
    return-void
.end method

.method public removeView(Lcom/samsung/android/glview/GLView;)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 804
    if-nez p1, :cond_0

    .line 815
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 808
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 809
    .local v0, "glView":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->removeView(Lcom/samsung/android/glview/GLView;)V

    goto :goto_1

    .line 812
    .end local v0    # "glView":Lcom/samsung/android/glview/GLView;
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 813
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 814
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    goto :goto_0
.end method

.method public requestFocus(ILcom/samsung/android/glview/GLView;)Z
    .locals 5
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedView"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 821
    .local v0, "descendantFocusability":I
    sparse-switch v0, :sswitch_data_0

    .line 833
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 823
    :sswitch_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    .line 830
    :cond_0
    :goto_0
    return v1

    .line 825
    :sswitch_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    .line 826
    .local v1, "took":Z
    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->onRequestFocusInDescendants(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    goto :goto_0

    .line 829
    .end local v1    # "took":Z
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->onRequestFocusInDescendants(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    .line 830
    .restart local v1    # "took":Z
    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    goto :goto_0

    .line 821
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDescendantFocusability(I)V
    .locals 2
    .param p1, "focusability"    # I

    .prologue
    .line 633
    sparse-switch p1, :sswitch_data_0

    .line 639
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :sswitch_0
    iget v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mViewGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mViewGroupFlags:I

    .line 642
    iget v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mViewGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mViewGroupFlags:I

    .line 643
    return-void

    .line 633
    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V
    .locals 3
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$DragListener;

    .prologue
    .line 840
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 841
    .local v0, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V

    goto :goto_0

    .line 843
    .end local v0    # "view":Lcom/samsung/android/glview/GLView;
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V

    .line 844
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "paddings"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    .line 853
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 854
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    .line 855
    .local v1, "view":Lcom/samsung/android/glview/GLView;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 856
    .local v0, "childPaddings":Landroid/graphics/Rect;
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 857
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 861
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getRight()F

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getRight()F

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 862
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getRight()F

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 866
    :goto_2
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 867
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 871
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getBottom()F

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getBottom()F

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 872
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getBottom()F

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 877
    :goto_4
    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 859
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 864
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 869
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 874
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 879
    .end local v0    # "childPaddings":Landroid/graphics/Rect;
    .end local v1    # "view":Lcom/samsung/android/glview/GLView;
    :cond_4
    return-void
.end method

.method public setShaderParameter(F)V
    .locals 3
    .param p1, "parameter"    # F

    .prologue
    .line 889
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 890
    .local v0, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setShaderParameter(F)V

    goto :goto_0

    .line 892
    .end local v0    # "view":Lcom/samsung/android/glview/GLView;
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setShaderParameter(F)V

    .line 893
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 902
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 903
    .local v0, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setShaderProgram(I)V

    goto :goto_0

    .line 905
    .end local v0    # "view":Lcom/samsung/android/glview/GLView;
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setShaderProgram(I)V

    .line 906
    return-void
.end method

.method public setShaderStep(F)V
    .locals 3
    .param p1, "step"    # F

    .prologue
    .line 916
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 917
    .local v0, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setShaderStep(F)V

    goto :goto_0

    .line 919
    .end local v0    # "view":Lcom/samsung/android/glview/GLView;
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setShaderStep(F)V

    .line 920
    return-void
.end method

.method public setTint(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 927
    return-void
.end method

.method protected sortViews()V
    .locals 3

    .prologue
    .line 1019
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1022
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->isDepthSorted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1048
    :goto_0
    return-void

    .line 1028
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1029
    .local v1, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/glview/GLView;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1030
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1034
    :cond_1
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/glview/GLViewGroup$1;-><init>(Lcom/samsung/android/glview/GLViewGroup;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1045
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1046
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1047
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    goto :goto_0
.end method

.method public updateLayout(Z)V
    .locals 3
    .param p1, "depthUpdated"    # Z

    .prologue
    .line 932
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 933
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 934
    .local v0, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_0

    .line 936
    .end local v0    # "view":Lcom/samsung/android/glview/GLView;
    :cond_0
    return-void
.end method

.method public updateSize()V
    .locals 6

    .prologue
    .line 942
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v1

    .line 943
    .local v1, "right":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v0

    .line 944
    .local v0, "bottom":F
    iget-object v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    .line 945
    .local v2, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v4, v1

    if-lez v4, :cond_1

    .line 946
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    add-float v1, v4, v5

    .line 948
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    .line 949
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    add-float v0, v4, v5

    goto :goto_0

    .line 952
    .end local v2    # "view":Lcom/samsung/android/glview/GLView;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v3

    sub-float v3, v1, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v4

    sub-float v4, v0, v4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->updateSize(FF)V

    .line 953
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->refreshClipRect()V

    .line 954
    return-void
.end method

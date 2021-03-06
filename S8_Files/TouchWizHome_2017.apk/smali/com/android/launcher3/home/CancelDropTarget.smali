.class public Lcom/android/launcher3/home/CancelDropTarget;
.super Landroid/widget/FrameLayout;
.source "CancelDropTarget.java"

# interfaces
.implements Lcom/android/launcher3/common/drag/DropTarget;
.implements Lcom/android/launcher3/common/drag/DragManager$DragListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ANIMATION_SCALE_DURATION:I = 0xaf

.field private static final CIRCLE_ANIMATION_DURATION:I = 0xe9

.field private static final DRAG_VIEW_DROP_DURATION:I = 0x10a

.field private static final IMAGEVIEW_SCALE_DURATION:I = 0x85

.field private static final TEXTVIEW_FADE_DURATION:I = 0xe9


# instance fields
.field private mActive:Z

.field private mCircleView:Landroid/widget/ImageView;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mEnable:Z

.field private mImageView:Landroid/widget/ImageView;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/CancelDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/CancelDropTarget;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/CancelDropTarget;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/CancelDropTarget;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/CancelDropTarget;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/CancelDropTarget;->setCancelDropTargetVisible(Z)V

    return-void
.end method

.method private animateCircleView(Z)V
    .locals 8
    .param p1, "visible"    # Z

    .prologue
    const-wide/16 v6, 0xe9

    .line 273
    iget-object v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mCircleView:Landroid/widget/ImageView;

    .line 274
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    .line 275
    new-instance v2, Lcom/android/launcher3/home/CancelDropTarget$2;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/home/CancelDropTarget$2;-><init>(Lcom/android/launcher3/home/CancelDropTarget;Landroid/widget/ImageView;)V

    .line 282
    .local v2, "listener":Landroid/animation/AnimatorListenerAdapter;
    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050001

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 284
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 285
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 286
    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 287
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 303
    :goto_0
    return-void

    .line 289
    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v2    # "listener":Landroid/animation/AnimatorListenerAdapter;
    :cond_0
    new-instance v2, Lcom/android/launcher3/home/CancelDropTarget$3;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/home/CancelDropTarget$3;-><init>(Lcom/android/launcher3/home/CancelDropTarget;Landroid/widget/ImageView;)V

    .line 296
    .restart local v2    # "listener":Landroid/animation/AnimatorListenerAdapter;
    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f050000

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 298
    .restart local v0    # "animator":Landroid/animation/Animator;
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 299
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 300
    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 301
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method private animateScale(Z)V
    .locals 10
    .param p1, "visible"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 314
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 316
    .local v0, "anim":Landroid/animation/AnimatorSet;
    if-eqz p1, :cond_0

    .line 317
    invoke-direct {p0, v7}, Lcom/android/launcher3/home/CancelDropTarget;->setCancelDropTargetVisible(Z)V

    .line 318
    const/4 v1, 0x0

    .line 319
    .local v1, "fromValue":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 331
    .local v3, "toValue":F
    :goto_0
    const-wide/16 v4, 0xaf

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 332
    new-array v4, v9, [Landroid/animation/Animator;

    const-string v5, "scaleX"

    new-array v6, v9, [F

    aput v1, v6, v8

    aput v3, v6, v7

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "scaleY"

    new-array v6, v9, [F

    aput v1, v6, v8

    aput v3, v6, v7

    .line 333
    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v7

    .line 332
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 334
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 335
    return-void

    .line 321
    .end local v1    # "fromValue":F
    .end local v3    # "toValue":F
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 322
    .restart local v1    # "fromValue":F
    const/4 v3, 0x0

    .line 323
    .restart local v3    # "toValue":F
    new-instance v2, Lcom/android/launcher3/home/CancelDropTarget$4;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/CancelDropTarget$4;-><init>(Lcom/android/launcher3/home/CancelDropTarget;)V

    .line 329
    .local v2, "listener":Landroid/animation/AnimatorListenerAdapter;
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private getIconRect(IIII)Landroid/graphics/Rect;
    .locals 12
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "drawableWidth"    # I
    .param p4, "drawableHeight"    # I

    .prologue
    .line 356
    iget-object v10, p0, Lcom/android/launcher3/home/CancelDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    .line 359
    .local v1, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 360
    .local v5, "to":Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v10, v5}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 362
    move v7, p3

    .line 363
    .local v7, "width":I
    move/from16 v2, p4

    .line 368
    .local v2, "height":I
    iget v10, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getPaddingLeft()I

    move-result v11

    add-int v3, v10, v11

    .line 369
    .local v3, "left":I
    add-int v4, v3, v7

    .line 371
    .local v4, "right":I
    iget v10, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v11, v2

    div-int/lit8 v11, v11, 0x2

    add-int v6, v10, v11

    .line 372
    .local v6, "top":I
    add-int v0, v6, v2

    .line 374
    .local v0, "bottom":I
    invoke-virtual {v5, v3, v6, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 377
    sub-int v10, p1, v7

    neg-int v10, v10

    div-int/lit8 v8, v10, 0x2

    .line 378
    .local v8, "xOffset":I
    sub-int v10, p2, v2

    neg-int v10, v10

    div-int/lit8 v9, v10, 0x2

    .line 379
    .local v9, "yOffset":I
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 381
    return-object v5
.end method

.method private setCancelDropTargetVisible(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 338
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/CancelDropTarget;->setVisibility(I)V

    .line 339
    iget-object v3, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    invoke-direct {p0}, Lcom/android/launcher3/home/CancelDropTarget;->setDefaultState()V

    .line 343
    return-void

    :cond_0
    move v0, v2

    .line 338
    goto :goto_0

    :cond_1
    move v0, v2

    .line 339
    goto :goto_1

    :cond_2
    move v1, v2

    .line 340
    goto :goto_2
.end method

.method private setDefaultState()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 346
    iget-object v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 347
    iget-object v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 348
    iget-object v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 349
    iget-object v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 350
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/CancelDropTarget;->setScaleX(F)V

    .line 351
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/CancelDropTarget;->setScaleY(F)V

    .line 352
    return-void
.end method

.method private setResource(III)V
    .locals 3
    .param p1, "LabelId"    # I
    .param p2, "drawableId"    # I
    .param p3, "CircleId"    # I

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "label":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 114
    iget-object v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher3/home/CancelDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    return-void
.end method


# virtual methods
.method public final acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mActive:Z

    return v0
.end method

.method animateCancelDropTarget()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 306
    iget-boolean v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mActive:Z

    if-nez v0, :cond_0

    .line 307
    iput-boolean v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mActive:Z

    .line 308
    invoke-direct {p0, v1}, Lcom/android/launcher3/home/CancelDropTarget;->animateScale(Z)V

    .line 310
    :cond_0
    return-void
.end method

.method changeColorForBg(Z)V
    .locals 3
    .param p1, "whiteBg"    # Z

    .prologue
    .line 389
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d002e

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 391
    .local v0, "color":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/widget/ImageView;Z)V

    .line 392
    iget-object v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 393
    return-void

    .line 390
    .end local v0    # "color":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d002d

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 253
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 254
    .local v0, "coords":[I
    iget-object v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 255
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 256
    return-void
.end method

.method public getOutlineColor()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOutlineColor()I

    move-result v0

    return v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 0

    .prologue
    .line 265
    return-object p0
.end method

.method public isDropEnabled(Z)Z
    .locals 1
    .param p1, "isDrop"    # Z

    .prologue
    .line 242
    if-eqz p1, :cond_0

    .line 243
    iget-boolean v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mActive:Z

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 270
    return-void
.end method

.method public onDragEnd()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-boolean v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mActive:Z

    if-eqz v0, :cond_0

    .line 158
    iput-boolean v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mActive:Z

    iput-boolean v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mEnable:Z

    .line 159
    invoke-direct {p0, v1}, Lcom/android/launcher3/home/CancelDropTarget;->animateScale(Z)V

    .line 161
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 9
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "dropTargetChanged"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 121
    iget-boolean v2, p0, Lcom/android/launcher3/home/CancelDropTarget;->mActive:Z

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/launcher3/home/CancelDropTarget;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    invoke-direct {p0, v8}, Lcom/android/launcher3/home/CancelDropTarget;->animateCircleView(Z)V

    .line 125
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 126
    .local v0, "anim":Landroid/animation/AnimatorSet;
    const-wide/16 v2, 0x85

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 127
    new-array v2, v6, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    const-string v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    .line 128
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    .line 127
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 129
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 132
    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "description":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    .line 135
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    .end local v1    # "description":Ljava/lang/String;
    :cond_0
    return-void

    .line 127
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data
.end method

.method public onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 7
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "dropTargetChanged"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 139
    iget-boolean v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mActive:Z

    if-eqz v1, :cond_0

    .line 140
    invoke-direct {p0, v6}, Lcom/android/launcher3/home/CancelDropTarget;->animateCircleView(Z)V

    .line 142
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 143
    .local v0, "anim":Landroid/animation/AnimatorSet;
    const-wide/16 v2, 0x85

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 144
    new-array v1, v5, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    const-string v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    const-string v4, "scaleY"

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    .line 145
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 144
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 146
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 148
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    :cond_0
    return-void

    .line 144
    nop

    :array_0
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 0
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 166
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "source"    # Lcom/android/launcher3/common/drag/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 27
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 170
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher3/home/CancelDropTarget;->mActive:Z

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher3/home/CancelDropTarget;->mEnable:Z

    .line 172
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/CancelDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v4

    .line 173
    .local v4, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 174
    .local v6, "from":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/CancelDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v25

    .line 177
    .local v25, "width":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/CancelDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    .line 178
    .local v21, "height":I
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v5

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 179
    invoke-virtual {v9}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v9

    .line 178
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v21

    invoke-direct {v0, v5, v9, v1, v2}, Lcom/android/launcher3/home/CancelDropTarget;->getIconRect(IIII)Landroid/graphics/Rect;

    move-result-object v7

    .line 180
    .local v7, "to":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float v8, v5, v9

    .line 182
    .local v8, "scale":F
    new-instance v16, Lcom/android/launcher3/home/CancelDropTarget$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/CancelDropTarget$1;-><init>(Lcom/android/launcher3/home/CancelDropTarget;)V

    .line 189
    .local v16, "onAnimationEndRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3dcccccd    # 0.1f

    const v12, 0x3dcccccd    # 0.1f

    const/16 v13, 0x10a

    new-instance v14, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v15, 0x40000000    # 2.0f

    invoke-direct {v14, v15}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v4 .. v18}, Lcom/android/launcher3/common/view/DragLayer;->animateView(Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 193
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 194
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 195
    .local v20, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 196
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v5

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 197
    invoke-virtual {v9}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v9

    .line 196
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v21

    invoke-direct {v0, v5, v9, v1, v2}, Lcom/android/launcher3/home/CancelDropTarget;->getIconRect(IIII)Landroid/graphics/Rect;

    move-result-object v7

    .line 198
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float v8, v5, v9

    .line 199
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3dcccccd    # 0.1f

    const v12, 0x3dcccccd    # 0.1f

    const/16 v13, 0x10a

    new-instance v14, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v15, 0x40000000    # 2.0f

    invoke-direct {v14, v15}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v4 .. v18}, Lcom/android/launcher3/common/view/DragLayer;->animateView(Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    goto :goto_0

    .line 206
    .end local v20    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_0
    sget-object v5, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    const v9, 0x7f08001d

    invoke-virtual {v5, v9}, Lcom/android/launcher3/util/Talk;->say(I)V

    .line 208
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/CancelDropTarget;->mTextView:Landroid/widget/TextView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    .line 209
    .local v19, "alphaAnimator":Landroid/animation/Animator;
    const-wide/16 v10, 0xe9

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 210
    invoke-virtual/range {v19 .. v19}, Landroid/animation/Animator;->start()V

    .line 212
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    .line 213
    .local v23, "scaleAnimatorX":Landroid/animation/Animator;
    const-wide/16 v10, 0x85

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v5, v23

    .line 214
    check-cast v5, Landroid/animation/ObjectAnimator;

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    move-object/from16 v5, v23

    .line 215
    check-cast v5, Landroid/animation/ObjectAnimator;

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 216
    invoke-virtual/range {v23 .. v23}, Landroid/animation/Animator;->start()V

    .line 218
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v24

    .line 219
    .local v24, "scaleAnimatorY":Landroid/animation/Animator;
    const-wide/16 v10, 0x85

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v5, v24

    .line 220
    check-cast v5, Landroid/animation/ObjectAnimator;

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    move-object/from16 v5, v24

    .line 221
    check-cast v5, Landroid/animation/ObjectAnimator;

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 222
    invoke-virtual/range {v24 .. v24}, Landroid/animation/Animator;->start()V

    .line 224
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/home/CancelDropTarget;->animateScale(Z)V

    .line 225
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v9

    const-string v10, "HCMS"

    const-string v11, "Cancel"

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 226
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v5}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v5

    const/4 v9, 0x5

    if-ne v5, v9, :cond_1

    .line 227
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v5, v5, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v5, :cond_1

    .line 228
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 229
    invoke-virtual {v5}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getProviderInfo()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 230
    .local v22, "info":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v9}, Lcom/android/launcher3/util/logging/SALogging;->insertCancelAddWidgetLog(Landroid/content/ComponentName;)V

    .line 233
    .end local v22    # "info":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    :cond_1
    return-void

    .line 212
    :array_0
    .array-data 4
        0x3f99999a    # 1.2f
        0x3fa66666    # 1.3f
    .end array-data

    .line 218
    :array_1
    .array-data 4
        0x3f99999a    # 1.2f
        0x3fa66666    # 1.3f
    .end array-data
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 86
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03001d

    .line 88
    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 90
    .local v1, "iconContainer":Landroid/widget/FrameLayout;
    const v2, 0x7f0f0053

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/launcher3/home/CancelDropTarget;->mTextView:Landroid/widget/TextView;

    .line 91
    const v2, 0x7f0f0052

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    .line 92
    const v2, 0x7f0f0051

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/launcher3/home/CancelDropTarget;->mCircleView:Landroid/widget/ImageView;

    .line 94
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/CancelDropTarget;->changeColorForBg(Z)V

    .line 98
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/launcher3/home/CancelDropTarget;->setCancelDropTargetVisible(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 102
    .local v0, "grid":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/android/launcher3/home/CancelDropTarget;->mTextView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_1
    const v2, 0x7f08001d

    const v3, 0x7f0200f9

    const v4, 0x7f02002a

    invoke-direct {p0, v2, v3, v4}, Lcom/android/launcher3/home/CancelDropTarget;->setResource(III)V

    .line 108
    return-void
.end method

.method setEnable(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mEnable:Z

    .line 386
    return-void
.end method

.method updateCircleSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 396
    iget-object v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 397
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 398
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 399
    iget-object v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    return-void
.end method

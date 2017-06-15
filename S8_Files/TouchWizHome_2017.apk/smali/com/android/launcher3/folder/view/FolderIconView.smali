.class public Lcom/android/launcher3/folder/view/FolderIconView;
.super Lcom/android/launcher3/common/view/IconView;
.source "FolderIconView.java"

# interfaces
.implements Lcom/android/launcher3/folder/FolderEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;,
        Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;
    }
.end annotation


# static fields
.field private static final ALPHA_SCAN_AREA:I = 0x14

.field private static final CONSUMPTION_ANIMATION_DURATION:I = 0x64

.field private static final DROP_IN_ANIMATION_DURATION:I = 0x12c

.field private static final FINAL_ITEM_ANIMATION_DURATION:I = 0xc8

.field private static final INITIAL_ITEM_ANIMATION_DURATION:I = 0x122

.field private static final INNER_RING_GROWTH_FACTOR:F = 0.15f

.field private static final INVALID_INT_VALUE:I = -0x1

.field public static final NUM_ITEMS_IN_PREVIEW:I = 0x9

.field private static final TAG:Ljava/lang/String; = "FolderIconView"

.field private static sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

.field private static sStaticValuesDirty:Z


# instance fields
.field private mAnimParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

.field private mAnimating:Z

.field private mAvailableSpaceInPreview:I

.field private mBaselineIconScale:F

.field private mBaselineIconSize:I

.field private mDragInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

.field private mFolderIconBitmap:Landroid/graphics/Bitmap;

.field private mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

.field private mFolderView:Lcom/android/launcher3/folder/view/FolderView;

.field private mHiddenItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Lcom/android/launcher3/folder/FolderInfo;

.field private mIntrinsicIconSize:I

.field private mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

.field private mMiniIconCol:I

.field private mMiniIconGap:I

.field private mOldBounds:Landroid/graphics/Rect;

.field private mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

.field private mPreviewBackground:Landroid/widget/ImageView;

.field private mPreviewFactorChanged:Z

.field private mPreviewIcons:Landroid/widget/ImageView;

.field private mPreviewLocalOffsetX:I

.field private mPreviewLocalOffsetY:I

.field private mPreviewOffsetX:I

.field private mPreviewOffsetY:I

.field private mPreviewPadding:I

.field private mShadow:Landroid/widget/ImageView;

.field private mSlop:F

.field private mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

.field private mTotalWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/folder/view/FolderIconView;->sStaticValuesDirty:Z

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/view/IconView;-><init>(Landroid/content/Context;)V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mTotalWidth:I

    .line 137
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAnimating:Z

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mOldBounds:Landroid/graphics/Rect;

    .line 140
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    .line 146
    new-instance v0, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;-><init>(FFFI)V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    .line 147
    new-instance v0, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;-><init>(FFFI)V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAnimParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mHiddenItems:Ljava/util/ArrayList;

    .line 160
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->init()V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/view/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mTotalWidth:I

    .line 137
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAnimating:Z

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mOldBounds:Landroid/graphics/Rect;

    .line 140
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    .line 146
    new-instance v0, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;-><init>(FFFI)V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    .line 147
    new-instance v0, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;-><init>(FFFI)V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAnimParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mHiddenItems:Ljava/util/ArrayList;

    .line 155
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->init()V

    .line 156
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher3/folder/view/FolderIconView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderIconView;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    return p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/android/launcher3/folder/view/FolderIconView;->sStaticValuesDirty:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 91
    sput-boolean p0, Lcom/android/launcher3/folder/view/FolderIconView;->sStaticValuesDirty:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/folder/view/FolderIconView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderIconView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mHiddenItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderIconView;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviews()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/folder/view/FolderIconView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderIconView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/folder/view/FolderIconView;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderIconView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAnimParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/launcher3/folder/view/FolderIconView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderIconView;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAnimating:Z

    return p1
.end method

.method private animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V
    .locals 8
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "duration"    # I
    .param p3, "reverse"    # Z
    .param p4, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1080
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewItemDrawingParams(ILcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-result-object v4

    .line 1082
    .local v4, "finalParams":Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v6, v0, v1

    .line 1083
    .local v6, "scale0":F
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAvailableSpaceInPreview:I

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float v3, v0, v2

    .line 1084
    .local v3, "transX0":F
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAvailableSpaceInPreview:I

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float v5, v0, v1

    .line 1085
    .local v5, "transY0":F
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAnimParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iput-object p1, v0, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 1087
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 1088
    .local v7, "va":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/launcher3/folder/view/FolderIconView$3;

    move-object v1, p0

    move v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/folder/view/FolderIconView$3;-><init>(Lcom/android/launcher3/folder/view/FolderIconView;ZFLcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;FF)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1102
    new-instance v0, Lcom/android/launcher3/folder/view/FolderIconView$4;

    invoke-direct {v0, p0, p4}, Lcom/android/launcher3/folder/view/FolderIconView$4;-><init>(Lcom/android/launcher3/folder/view/FolderIconView;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1116
    int-to-long v0, p2

    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1117
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 1118
    return-void

    .line 1087
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private computeLockedPreviewDrawingParams(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;
    .locals 12
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 721
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 722
    .local v0, "drawableSize":I
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getMeasuredWidth()I

    move-result v7

    .line 724
    .local v7, "totalSize":I
    new-instance v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v10, v10, v8, v11}, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;-><init>(FFFI)V

    .line 725
    .local v4, "params":Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;
    iget v8, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    if-ne v8, v0, :cond_0

    iget v8, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mTotalWidth:I

    if-ne v8, v7, :cond_0

    iget-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    if-eqz v8, :cond_1

    .line 729
    :cond_0
    move v1, v0

    .line 730
    .local v1, "mLockedIntrinsicIconSize":I
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v6, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 731
    .local v6, "previewSize":I
    iget v5, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewPadding:I

    .line 732
    .local v5, "previewPadding":I
    mul-int/lit8 v8, v5, 0x2

    sub-int v2, v6, v8

    .line 733
    .local v2, "mLockedmAvailableSpaceInPreview":I
    int-to-float v8, v2

    int-to-float v9, v1

    div-float v3, v8, v9

    .line 735
    .local v3, "mLockedmBaselineIconScale":F
    iput v10, v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transX:F

    .line 736
    iput v10, v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transY:F

    .line 737
    iput v11, v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->overlayAlpha:I

    .line 738
    iput v3, v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    .line 739
    iput-object p1, v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 741
    iput-boolean v11, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    .line 743
    .end local v1    # "mLockedIntrinsicIconSize":I
    .end local v2    # "mLockedmAvailableSpaceInPreview":I
    .end local v3    # "mLockedmBaselineIconScale":F
    .end local v5    # "previewPadding":I
    .end local v6    # "previewSize":I
    :cond_1
    return-object v4
.end method

.method private computeMiniIconSize(I)V
    .locals 3
    .param p1, "itemCount"    # I

    .prologue
    .line 703
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    .line 704
    .local v0, "oldIconCol":I
    if-lez p1, :cond_1

    .line 706
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    .line 707
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconGap:I

    .line 714
    :goto_0
    iget v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    if-eq v0, v1, :cond_0

    .line 715
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    .line 717
    :cond_0
    return-void

    .line 710
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    .line 711
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconGap:I

    goto :goto_0
.end method

.method private computePreviewDrawingParams(II)V
    .locals 6
    .param p1, "drawableSize"    # I
    .param p2, "totalSize"    # I

    .prologue
    .line 747
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/launcher3/folder/view/FolderIconView;->computeMiniIconSize(I)V

    .line 749
    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    if-ne v3, p1, :cond_0

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mTotalWidth:I

    if-ne v3, p2, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    if-eqz v3, :cond_1

    .line 751
    :cond_0
    iput p1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    .line 752
    iput p2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mTotalWidth:I

    .line 753
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewIcons:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    .line 754
    .local v1, "previewPosY":I
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 755
    .local v2, "previewSize":I
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewPadding:I

    .line 756
    .local v0, "previewPadding":I
    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v2, v3

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAvailableSpaceInPreview:I

    .line 768
    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAvailableSpaceInPreview:I

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconGap:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconSize:I

    .line 769
    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconScale:F

    .line 771
    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mTotalWidth:I

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAvailableSpaceInPreview:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewOffsetX:I

    .line 772
    add-int v3, v1, v0

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewOffsetY:I

    .line 773
    iput v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewLocalOffsetX:I

    .line 774
    iput v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewLocalOffsetY:I

    .line 775
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    .line 777
    .end local v0    # "previewPadding":I
    .end local v1    # "previewPosY":I
    .end local v2    # "previewSize":I
    :cond_1
    return-void
.end method

.method private computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 780
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewDrawingParams(II)V

    .line 781
    return-void
.end method

.method private computePreviewItemDrawingParams(ILcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;
    .locals 9
    .param p1, "index"    # I
    .param p2, "params"    # Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    .prologue
    const/4 v8, 0x0

    .line 831
    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    rem-int v7, p1, v7

    sub-int v1, v6, v7

    .line 832
    .local v1, "posX":I
    :goto_0
    iget v6, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    div-int v2, p1, v6

    .line 833
    .local v2, "posY":I
    iget v6, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconSize:I

    iget v7, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconGap:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v1

    int-to-float v4, v6

    .line 834
    .local v4, "transX":F
    iget v6, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconSize:I

    iget v7, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconGap:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v2

    int-to-float v5, v6

    .line 835
    .local v5, "transY":F
    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconScale:F

    .line 836
    .local v3, "totalScale":F
    const/4 v0, 0x0

    .line 838
    .local v0, "overlayAlpha":I
    if-nez p2, :cond_1

    .line 839
    new-instance p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    .end local p2    # "params":Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;
    invoke-direct {p2, v4, v5, v3, v8}, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;-><init>(FFFI)V

    .line 846
    .restart local p2    # "params":Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;
    :goto_1
    return-object p2

    .line 831
    .end local v0    # "overlayAlpha":I
    .end local v1    # "posX":I
    .end local v2    # "posY":I
    .end local v3    # "totalScale":F
    .end local v4    # "transX":F
    .end local v5    # "transY":F
    :cond_0
    iget v6, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    rem-int v1, p1, v6

    goto :goto_0

    .line 841
    .restart local v0    # "overlayAlpha":I
    .restart local v1    # "posX":I
    .restart local v2    # "posY":I
    .restart local v3    # "totalScale":F
    .restart local v4    # "transX":F
    .restart local v5    # "transY":F
    :cond_1
    iput v4, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transX:F

    .line 842
    iput v5, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transY:F

    .line 843
    iput v3, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    .line 844
    iput v8, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->overlayAlpha:I

    goto :goto_1
.end method

.method private drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "params"    # Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    .prologue
    const/16 v8, 0xff

    .line 850
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 851
    iget-object v0, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 852
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 853
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 854
    iget v5, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewLocalOffsetX:I

    add-int v2, v5, v6

    .line 855
    .local v2, "l":I
    iget v5, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transY:F

    float-to-int v5, v5

    iget v6, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewLocalOffsetY:I

    add-int v4, v5, v6

    .line 857
    .local v4, "t":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v5, v2

    .line 858
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v6, v4

    .line 856
    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 859
    instance-of v5, v0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    if-eqz v5, :cond_1

    move-object v1, v0

    .line 860
    check-cast v1, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    .line 861
    .local v1, "fd":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    invoke-virtual {v1}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->getBrightness()I

    move-result v3

    .line 862
    .local v3, "oldBrightness":I
    iget v5, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->overlayAlpha:I

    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->setBrightness(I)V

    .line 863
    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 864
    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->setBrightness(I)V

    .line 871
    .end local v1    # "fd":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    .end local v3    # "oldBrightness":I
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 873
    .end local v2    # "l":I
    .end local v4    # "t":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 874
    return-void

    .line 866
    .restart local v2    # "l":I
    .restart local v4    # "t":I
    :cond_1
    iget v5, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->overlayAlpha:I

    invoke-static {v5, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 868
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 869
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method private drawPreviews()V
    .locals 21

    .prologue
    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 1036
    :goto_0
    return-void

    .line 925
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    move/from16 v19, v0

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v18 .. v20}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    .line 926
    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 928
    .local v16, "previewCanvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v12

    .line 938
    .local v12, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_2

    .line 939
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/view/IconView;

    .line 940
    .local v17, "v":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 941
    .local v7, "f":Lcom/android/launcher3/common/base/item/IconInfo;
    const/4 v15, 0x0

    .line 942
    .local v15, "pkg":Ljava/lang/String;
    if-eqz v7, :cond_1

    iget-object v0, v7, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    if-eqz v18, :cond_1

    .line 943
    iget-object v0, v7, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 946
    :cond_1
    if-eqz v7, :cond_8

    .line 947
    if-eqz v15, :cond_7

    invoke-static {v15}, Lcom/android/launcher3/common/view/LiveIconManager;->isCalendarPackage(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 950
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->applyKnoxLiveIcon(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 951
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    iget-object v0, v7, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 962
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    .line 968
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    .end local v7    # "f":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v17    # "v":Lcom/android/launcher3/common/view/IconView;
    :cond_2
    :goto_2
    const/4 v6, 0x0

    .line 969
    .local v6, "drawDone":Z
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 970
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v8

    .line 971
    .local v8, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnabled()Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/folder/FolderInfo;->isLockedFolderOpenedOnce()Z

    move-result v18

    if-nez v18, :cond_3

    .line 972
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0200f6

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 973
    .local v13, "lockedD":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/launcher3/folder/view/FolderIconView;->computeLockedPreviewDrawingParams(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;)V

    .line 974
    const/4 v6, 0x1

    .line 978
    .end local v8    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    .end local v13    # "lockedD":Landroid/graphics/drawable/Drawable;
    :cond_3
    if-nez v6, :cond_11

    .line 979
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x9

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 980
    .local v14, "nItemsInPreview":I
    add-int/lit8 v9, v14, -0x1

    .local v9, "i":I
    :goto_3
    if-ltz v9, :cond_11

    .line 981
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher3/common/view/IconView;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 982
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/view/IconView;

    .line 983
    .restart local v17    # "v":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 984
    .restart local v7    # "f":Lcom/android/launcher3/common/base/item/IconInfo;
    if-nez v7, :cond_9

    .line 985
    const-string v18, "FolderIconView"

    const-string v19, "ignore drawPreviewItem because IconInfo is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    .end local v7    # "f":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v17    # "v":Lcom/android/launcher3/common/view/IconView;
    :cond_4
    :goto_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 952
    .end local v6    # "drawDone":Z
    .end local v9    # "i":I
    .end local v14    # "nItemsInPreview":I
    .restart local v7    # "f":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v17    # "v":Lcom/android/launcher3/common/view/IconView;
    :cond_5
    invoke-static {v15}, Lcom/android/launcher3/common/view/LiveIconManager;->isCalendarPackage(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 953
    iget-object v0, v7, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getLiveIconDrawable(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v5

    .restart local v5    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 955
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 956
    .local v10, "iconBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 957
    .restart local v5    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 959
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    .end local v10    # "iconBitmap":Landroid/graphics/Bitmap;
    :cond_7
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 960
    .restart local v10    # "iconBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v5    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 964
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    .end local v10    # "iconBitmap":Landroid/graphics/Bitmap;
    :cond_8
    const-string v18, "FolderIconView"

    const-string v19, "ignore computePreviewDrawingParams because IconInfo is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 988
    .end local v15    # "pkg":Ljava/lang/String;
    .restart local v6    # "drawDone":Z
    .restart local v9    # "i":I
    .restart local v14    # "nItemsInPreview":I
    :cond_9
    const/4 v15, 0x0

    .line 989
    .restart local v15    # "pkg":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    if-eqz v18, :cond_a

    .line 990
    iget-object v0, v7, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 992
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mHiddenItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 993
    if-eqz v15, :cond_10

    .line 994
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->applyKnoxLiveIcon(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 995
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    iget-object v0, v7, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1006
    .restart local v5    # "d":Landroid/graphics/drawable/Drawable;
    :goto_5
    const/4 v4, 0x0

    .line 1007
    .local v4, "backupIconScale":F
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    .line 1009
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconScale:F

    .line 1010
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconScale:F

    .line 1013
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewItemDrawingParams(ILcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;)V

    .line 1017
    const/16 v18, 0x0

    cmpl-float v18, v4, v18

    if-lez v18, :cond_4

    .line 1018
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconScale:F

    goto/16 :goto_4

    .line 996
    .end local v4    # "backupIconScale":F
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    :cond_c
    invoke-static {v15}, Lcom/android/launcher3/common/view/LiveIconManager;->isCalendarPackage(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 997
    iget-object v0, v7, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getLiveIconDrawable(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v11

    .line 998
    .local v11, "iconDrawable":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    invoke-virtual {v7}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v18

    if-nez v18, :cond_d

    iget v0, v7, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    move/from16 v18, v0

    if-eqz v18, :cond_e

    :cond_d
    const/16 v18, 0x1

    :goto_6
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    .line 999
    move-object v5, v11

    .line 1000
    .restart local v5    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_5

    .line 998
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    :cond_e
    const/16 v18, 0x0

    goto :goto_6

    .line 1001
    .end local v11    # "iconDrawable":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getTopDrawable(Lcom/android/launcher3/common/view/IconView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .restart local v5    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_5

    .line 1004
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getTopDrawable(Lcom/android/launcher3/common/view/IconView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .restart local v5    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_5

    .line 1029
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    .end local v7    # "f":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v9    # "i":I
    .end local v14    # "nItemsInPreview":I
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v17    # "v":Lcom/android/launcher3/common/view/IconView;
    :cond_11
    sget-object v18, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher3/folder/FolderInfo;->color:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_12

    .line 1030
    sget-object v18, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher3/folder/FolderInfo;->color:I

    move/from16 v19, v0

    aget-object v3, v18, v19

    .line 1031
    .local v3, "b":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v3, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->getMaskedIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    .line 1034
    .end local v3    # "b":Landroid/graphics/Bitmap;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewIcons:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1035
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->setShadow()V

    goto/16 :goto_0
.end method

.method public static fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 12
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "folderInfo"    # Lcom/android/launcher3/folder/FolderInfo;
    .param p3, "controller"    # Lcom/android/launcher3/common/base/controller/ControllerBase;
    .param p4, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p5, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;
    .param p6, "iconDisplay"    # I

    .prologue
    .line 194
    const/4 v2, 0x0

    .line 201
    .local v2, "error":Z
    const-class v7, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {p2, v7}, Lcom/android/launcher3/folder/FolderInfo;->getBoundView(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 202
    .local v4, "icon":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p2, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-nez v7, :cond_1

    .line 204
    :cond_0
    const/4 v7, 0x0

    iput-boolean v7, p2, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    .line 205
    invoke-virtual {p2}, Lcom/android/launcher3/folder/FolderInfo;->unbind()V

    .line 206
    const/4 v4, 0x0

    .line 209
    :cond_1
    if-eqz v4, :cond_3

    .line 210
    const-string v7, "FolderIconView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "already view bound. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 212
    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 214
    :cond_2
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 276
    :goto_0
    return-object v4

    .line 217
    :cond_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030023

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 218
    .local v6, "view":Landroid/view/View;
    instance-of v7, v6, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v7, :cond_6

    move-object v4, v6

    .line 219
    check-cast v4, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 223
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->setClipToPadding(Z)V

    .line 224
    const v7, 0x7f0f0008

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mTitleView:Landroid/widget/TextView;

    .line 225
    iget-object v7, p2, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    const v7, 0x7f0f0007

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    .line 229
    const v7, 0x7f0f0072

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewIcons:Landroid/widget/ImageView;

    .line 230
    const v7, 0x7f0f0071

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mShadow:Landroid/widget/ImageView;

    .line 231
    move/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->setIconDisplay(I)V

    .line 233
    move-object v5, v4

    .line 234
    .local v5, "parentFolderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    iget-object v7, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    new-instance v8, Lcom/android/launcher3/folder/view/FolderIconView$1;

    invoke-direct {v8, v5}, Lcom/android/launcher3/folder/view/FolderIconView$1;-><init>(Lcom/android/launcher3/folder/view/FolderIconView;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 245
    iget v7, p2, Lcom/android/launcher3/folder/FolderInfo;->color:I

    if-nez v7, :cond_4

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v7

    if-nez v7, :cond_5

    .line 246
    :cond_4
    iget v7, p2, Lcom/android/launcher3/folder/FolderInfo;->color:I

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->setIconBackgroundColor(I)V

    .line 249
    :cond_5
    invoke-virtual {v4, p2}, Lcom/android/launcher3/folder/view/FolderIconView;->setTag(Ljava/lang/Object;)V

    .line 250
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 252
    iput-object p2, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    .line 253
    const v7, 0x7f080033

    invoke-virtual {p0, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p2, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 256
    invoke-static {p0}, Lcom/android/launcher3/folder/view/FolderView;->fromXml(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v3

    .line 257
    .local v3, "folder":Lcom/android/launcher3/folder/view/FolderView;
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/launcher3/folder/view/FolderView;->setMultiSelectManager(Lcom/android/launcher3/common/multiselect/MultiSelectManager;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/launcher3/folder/view/FolderView;->setDragMgr(Lcom/android/launcher3/common/drag/DragManager;)V

    .line 259
    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderView;->setFolderIcon(Lcom/android/launcher3/folder/view/FolderIconView;)V

    .line 261
    invoke-virtual {v3, p2, p3}, Lcom/android/launcher3/folder/view/FolderView;->bind(Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    .line 262
    iput-object v3, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    .line 263
    invoke-direct {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviews()V

    .line 264
    new-instance v7, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->getIconSize()I

    move-result v8

    invoke-direct {v7, p0, v4, v8}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/folder/view/FolderIconView;I)V

    iput-object v7, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    .line 265
    invoke-virtual {p2, v4}, Lcom/android/launcher3/folder/FolderInfo;->addListener(Lcom/android/launcher3/folder/FolderEventListener;)V

    .line 267
    const v7, 0x7f0f0075

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mBadgeView:Landroid/widget/TextView;

    .line 268
    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshBadge()V

    .line 270
    iget-wide v8, p2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v10, -0x66

    cmp-long v7, v8, v10

    if-eqz v7, :cond_7

    .line 271
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->changeTextColorForBg(Z)V

    goto/16 :goto_0

    .line 221
    .end local v3    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    .end local v5    # "parentFolderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid resid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 273
    .restart local v3    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    .restart local v5    # "parentFolderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->changeTextColorForBg(Z)V

    goto/16 :goto_0
.end method

.method private getDrawable(Lcom/android/launcher3/common/view/IconView;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "v"    # Lcom/android/launcher3/common/view/IconView;

    .prologue
    .line 1073
    invoke-virtual {p1}, Lcom/android/launcher3/common/view/IconView;->getIconVew()Landroid/widget/ImageView;

    move-result-object v1

    .line 1074
    .local v1, "icon":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1075
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getLiveIconDrawable(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 1067
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, p1, p2}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1068
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    invoke-static {v0, v2}, Lcom/android/launcher3/util/BitmapUtils;->createIconDrawable(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v1

    .line 1069
    .local v1, "iconDrawable":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    return-object v1
.end method

.method private getLocalCenterForIndex(I[I)F
    .locals 7
    .param p1, "index"    # I
    .param p2, "center"    # [I

    .prologue
    const/16 v3, 0x9

    const/high16 v6, 0x40000000    # 2.0f

    .line 799
    if-lt p1, v3, :cond_0

    const/4 v2, 0x4

    .line 800
    .local v2, "targetIndex":I
    :goto_0
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewItemDrawingParams(ILcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    .line 802
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v4, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transX:F

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewOffsetX:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transX:F

    .line 803
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v4, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transY:F

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewOffsetY:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transY:F

    .line 804
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transX:F

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v4, v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float v0, v3, v4

    .line 805
    .local v0, "offsetX":F
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transY:F

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v4, v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float v1, v3, v4

    .line 807
    .local v1, "offsetY":F
    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p2, v3

    .line 808
    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p2, v3

    .line 809
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    return v3

    .end local v0    # "offsetX":F
    .end local v1    # "offsetY":F
    .end local v2    # "targetIndex":I
    :cond_0
    move v2, p1

    .line 799
    goto :goto_0
.end method

.method private getMaskedIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "plate"    # Landroid/graphics/Bitmap;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "recycle"    # Z

    .prologue
    const/4 v7, 0x0

    .line 895
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->needMaskedIcon(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 917
    .end local p2    # "icon":Landroid/graphics/Bitmap;
    :goto_0
    return-object p2

    .line 898
    .restart local p2    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 899
    .local v3, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 900
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 901
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 902
    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap;->getScaledWidth(Landroid/graphics/Canvas;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->getScaledWidth(Landroid/graphics/Canvas;)I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 903
    .local v1, "maskScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_2

    .line 904
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 905
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 906
    invoke-virtual {v0, p1, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 907
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 911
    :goto_1
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 912
    invoke-virtual {v0, p2, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 914
    if-eqz p3, :cond_1

    .line 915
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p2, v3

    .line 917
    goto :goto_0

    .line 909
    :cond_2
    invoke-virtual {v0, p1, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private getTopDrawable(Lcom/android/launcher3/common/view/IconView;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "v"    # Lcom/android/launcher3/common/view/IconView;

    .prologue
    .line 1039
    invoke-virtual {p1}, Lcom/android/launcher3/common/view/IconView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1040
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 164
    sget-boolean v1, Lcom/android/launcher3/folder/view/FolderIconView;->sStaticValuesDirty:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 165
    :cond_0
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    move-result-object v0

    .line 166
    .local v0, "fs":Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
    if-eqz v0, :cond_1

    .line 167
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/Bitmap;

    sput-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    .line 168
    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    .line 169
    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    .line 170
    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    .line 171
    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v6

    .line 172
    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v7

    .line 177
    .end local v0    # "fs":Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
    :cond_1
    new-instance v1, Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    .line 178
    new-instance v1, Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/event/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    .line 180
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewPadding:I

    .line 181
    return-void
.end method

.method private final needMaskedIcon(Landroid/graphics/Bitmap;)Z
    .locals 11
    .param p1, "plate"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 877
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    move-result-object v2

    .line 878
    .local v2, "fs":Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getFolderType()I

    move-result v9

    if-ne v9, v8, :cond_1

    .line 891
    :cond_0
    :goto_0
    return v7

    .line 882
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/lit8 v9, v9, -0x14

    div-int/lit8 v3, v9, 0x2

    .line 883
    .local v3, "startX":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x14

    div-int/lit8 v4, v9, 0x2

    .line 884
    .local v4, "startY":I
    move v5, v3

    .local v5, "x":I
    add-int/lit8 v0, v3, 0x14

    .local v0, "endX":I
    :goto_1
    if-ge v5, v0, :cond_3

    .line 885
    move v6, v4

    .local v6, "y":I
    add-int/lit8 v1, v4, 0x14

    .local v1, "endY":I
    :goto_2
    if-ge v6, v1, :cond_2

    .line 886
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    const/16 v10, 0xff

    if-ne v9, v10, :cond_0

    .line 885
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 884
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v1    # "endY":I
    .end local v6    # "y":I
    :cond_3
    move v7, v8

    .line 891
    goto :goto_0
.end method

.method private onDrop(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 10
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "animateView"    # Lcom/android/launcher3/common/drag/DragView;
    .param p3, "finalRect"    # Landroid/graphics/Rect;
    .param p4, "scaleRelativeToDragLayer"    # F
    .param p5, "index"    # I
    .param p6, "postAnimationRunnable"    # Ljava/lang/Runnable;
    .param p7, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 529
    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/folder/view/FolderIconView;->onDrop(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/lang/Runnable;Z)V

    .line 530
    return-void
.end method

.method private onDrop(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/lang/Runnable;Z)V
    .locals 24
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "animateView"    # Lcom/android/launcher3/common/drag/DragView;
    .param p3, "finalRect"    # Landroid/graphics/Rect;
    .param p4, "scaleRelativeToDragLayer"    # F
    .param p5, "index"    # I
    .param p6, "postAnimationRunnable"    # Ljava/lang/Runnable;
    .param p7, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p8, "postDropRunnable"    # Ljava/lang/Runnable;
    .param p9, "immediateAdd"    # Z

    .prologue
    .line 536
    const/16 v20, 0x0

    .line 537
    .local v20, "disallowFolderRingAnimation":Z
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v14, v5, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v5, v12, v14

    if-nez v5, :cond_1

    .line 538
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v12, v5, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v14, -0x65

    cmp-long v5, v12, v14

    if-nez v5, :cond_6

    .line 539
    const/16 v20, 0x1

    .line 545
    :cond_0
    :goto_0
    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    iget-object v5, v5, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v5, :cond_1

    .line 547
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    iget-object v5, v5, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    invoke-virtual {v5, v9}, Lcom/android/launcher3/common/base/view/CellLayout;->hideFolderAccept(Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;)V

    .line 553
    :cond_1
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v14, -0x1

    cmp-long v5, v12, v14

    if-eqz v5, :cond_2

    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v5

    iget-wide v12, v5, Lcom/android/launcher3/folder/FolderInfo;->id:J

    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 556
    :cond_2
    const/4 v5, -0x1

    move-object/from16 v0, p1

    iput v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 557
    const/4 v5, -0x1

    move-object/from16 v0, p1

    iput v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 562
    if-eqz p2, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderInfo;->isAlphabeticalOrder()Z

    move-result v5

    if-nez v5, :cond_8

    .line 563
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v4

    .line 564
    .local v4, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 565
    .local v6, "from":Landroid/graphics/Rect;
    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v6}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 566
    move-object/from16 v7, p3

    .line 567
    .local v7, "to":Landroid/graphics/Rect;
    if-nez v7, :cond_3

    .line 568
    new-instance v7, Landroid/graphics/Rect;

    .end local v7    # "to":Landroid/graphics/Rect;
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 569
    .restart local v7    # "to":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getScaleX()F

    move-result v22

    .line 570
    .local v22, "scaleX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getScaleY()F

    move-result v23

    .line 571
    .local v23, "scaleY":F
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/folder/view/FolderIconView;->setScaleX(F)V

    .line 572
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/folder/view/FolderIconView;->setScaleY(F)V

    .line 573
    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v7}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result p4

    .line 575
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->setScaleX(F)V

    .line 576
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->setScaleY(F)V

    .line 580
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getMeasuredWidth()I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewDrawingParams(II)V

    .line 582
    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v19, v0

    .line 583
    .local v19, "center":[I
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->getLocalCenterForIndex(I[I)F

    move-result v21

    .line 584
    .local v21, "scale":F
    const/4 v5, 0x0

    const/4 v9, 0x0

    aget v9, v19, v9

    int-to-float v9, v9

    mul-float v9, v9, p4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, v19, v5

    .line 585
    const/4 v5, 0x1

    const/4 v9, 0x1

    aget v9, v19, v9

    int-to-float v9, v9

    mul-float v9, v9, p4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, v19, v5

    .line 587
    const/4 v5, 0x0

    aget v5, v19, v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v5, v9

    const/4 v9, 0x1

    aget v9, v19, v9

    .line 588
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    .line 587
    invoke-virtual {v7, v5, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 590
    const/16 v5, 0x9

    move/from16 v0, p5

    if-ge v0, v5, :cond_7

    const/high16 v8, 0x3f000000    # 0.5f

    .line 592
    .local v8, "finalAlpha":F
    :goto_1
    mul-float v11, v21, p4

    .line 593
    .local v11, "finalScale":F
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v13, 0x12c

    new-instance v14, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v14, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v15, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v15, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    const/16 v17, 0x0

    move-object/from16 v5, p2

    move v12, v11

    move-object/from16 v16, p6

    move-object/from16 v18, p0

    invoke-virtual/range {v4 .. v18}, Lcom/android/launcher3/common/view/DragLayer;->animateView(Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 597
    if-eqz p9, :cond_4

    .line 598
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/folder/view/FolderIconView;->addItem(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 600
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mHiddenItems:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviews()V

    .line 603
    new-instance v5, Lcom/android/launcher3/folder/view/FolderIconView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    invoke-direct {v5, v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView$2;-><init>(Lcom/android/launcher3/folder/view/FolderIconView;Lcom/android/launcher3/common/base/item/IconInfo;Ljava/lang/Runnable;)V

    const-wide/16 v12, 0x12c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12, v13}, Lcom/android/launcher3/folder/view/FolderIconView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 629
    .end local v4    # "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    .end local v6    # "from":Landroid/graphics/Rect;
    .end local v7    # "to":Landroid/graphics/Rect;
    .end local v8    # "finalAlpha":F
    .end local v11    # "finalScale":F
    .end local v19    # "center":[I
    .end local v21    # "scale":F
    :cond_5
    :goto_2
    return-void

    .line 540
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v12, v5, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v14, -0x66

    cmp-long v5, v12, v14

    if-nez v5, :cond_0

    .line 541
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget v9, v9, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    if-ge v5, v9, :cond_0

    .line 542
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 590
    .restart local v4    # "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    .restart local v6    # "from":Landroid/graphics/Rect;
    .restart local v7    # "to":Landroid/graphics/Rect;
    .restart local v19    # "center":[I
    .restart local v21    # "scale":F
    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    .line 614
    .end local v4    # "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    .end local v6    # "from":Landroid/graphics/Rect;
    .end local v7    # "to":Landroid/graphics/Rect;
    .end local v19    # "center":[I
    .end local v21    # "scale":F
    :cond_8
    if-eqz p9, :cond_9

    .line 615
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/folder/view/FolderIconView;->addItem(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 617
    :cond_9
    if-eqz p7, :cond_a

    .line 618
    const/4 v5, 0x0

    move-object/from16 v0, p7

    iput-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 621
    :cond_a
    if-eqz p6, :cond_b

    .line 622
    invoke-interface/range {p6 .. p6}, Ljava/lang/Runnable;->run()V

    .line 625
    :cond_b
    if-eqz p8, :cond_5

    .line 626
    invoke-interface/range {p8 .. p8}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    .line 185
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/folder/view/FolderIconView;->sStaticValuesDirty:Z

    .line 186
    return-void
.end method

.method private updateLayout()V
    .locals 0

    .prologue
    .line 1384
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshBadge()V

    .line 1385
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviews()V

    .line 1388
    return-void
.end method

.method private willAcceptItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v1, 0x1

    .line 442
    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    .line 443
    .local v0, "itemType":I
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 445
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->acceptDropToFolder()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    .line 446
    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->isFull()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-boolean v2, v2, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-nez v2, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 450
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 451
    .local v0, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->willAcceptItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addItem(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 457
    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method public addItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderInfo;->add(Ljava/util/ArrayList;)V

    .line 462
    return-void
.end method

.method public animateChildScale(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;)V
    .locals 11
    .param p1, "prevGridIconInfo"    # Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1358
    if-nez p1, :cond_0

    .line 1370
    :goto_0
    return-void

    .line 1362
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v2

    .line 1363
    .local v2, "preIconSize":I
    int-to-float v3, v2

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 1365
    .local v1, "iconScale":F
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewIcons:Landroid/widget/ImageView;

    new-array v4, v9, [Landroid/animation/PropertyValuesHolder;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v9, [F

    aput v1, v6, v7

    aput v10, v6, v8

    .line 1366
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v7

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v9, [F

    aput v1, v6, v7

    aput v10, v6, v8

    .line 1367
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1365
    invoke-static {v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1369
    .local v0, "animator":Landroid/animation/Animator;
    invoke-super {p0, p1, v0}, Lcom/android/launcher3/common/view/IconView;->animateChildScale(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method public applyStyle()V
    .locals 4

    .prologue
    .line 281
    invoke-super {p0}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    .line 283
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 284
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 285
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    if-eq v2, v3, :cond_0

    .line 286
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    .line 288
    :cond_0
    iget v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 289
    iget v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 290
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 291
    .local v1, "topMargin":I
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewIcons:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 292
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_1

    .line 293
    iget v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 294
    iget v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 295
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 298
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "topMargin":I
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviews()V

    .line 299
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 1248
    invoke-super {p0}, Lcom/android/launcher3/common/view/IconView;->cancelLongPress()V

    .line 1250
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    .line 1251
    return-void
.end method

.method protected getBounceAnimation()Lcom/android/launcher3/util/animation/AppIconBounceAnimation;
    .locals 3

    .prologue
    .line 1142
    new-instance v0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewIcons:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;-><init>(Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method public getFolderIconBitmapWithPlate()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1044
    iget-object v9, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget v1, v9, Lcom/android/launcher3/folder/FolderInfo;->color:I

    .line 1046
    .local v1, "index":I
    if-lez v1, :cond_0

    sget-object v9, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    if-nez v9, :cond_1

    .line 1047
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02009c

    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v9}, Lcom/android/launcher3/util/BitmapUtils;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1052
    .local v4, "plate":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v9, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 1053
    .local v8, "size":I
    iget-object v9, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1054
    .local v5, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1055
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1056
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1057
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1058
    .local v2, "matrix":Landroid/graphics/Matrix;
    int-to-float v9, v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v6, v9, v10

    .line 1059
    .local v6, "scaleX":F
    int-to-float v9, v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v7, v9, v10

    .line 1060
    .local v7, "scaleY":F
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1061
    invoke-virtual {v0, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1062
    iget-object v9, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v9, v12, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1063
    return-object v5

    .line 1049
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "matrix":Landroid/graphics/Matrix;
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v4    # "plate":Landroid/graphics/Bitmap;
    .end local v5    # "result":Landroid/graphics/Bitmap;
    .end local v6    # "scaleX":F
    .end local v7    # "scaleY":F
    .end local v8    # "size":I
    :cond_1
    sget-object v9, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v9, v1

    .restart local v4    # "plate":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    return-object v0
.end method

.method public getFolderView()Lcom/android/launcher3/folder/view/FolderView;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewIcons:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1242
    invoke-super {p0}, Lcom/android/launcher3/common/view/IconView;->onAttachedToWindow()V

    .line 1243
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mSlop:F

    .line 1244
    return-void
.end method

.method public onDragEnter(Ljava/lang/Object;)V
    .locals 5
    .param p1, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 465
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->willAcceptItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 475
    .end local p1    # "dragInfo":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 468
    .restart local p1    # "dragInfo":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 469
    .local v1, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 470
    .local v0, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    iget v3, v1, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v4, v1, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->setCell(II)V

    .line 471
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->setCellLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 472
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getIconSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->animateToAcceptState(I)V

    .line 473
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->showFolderAccept(Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;)V

    .line 474
    check-cast p1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .end local p1    # "dragInfo":Ljava/lang/Object;
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mDragInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    goto :goto_0
.end method

.method public onDragExit()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->animateToNaturalState()V

    .line 524
    return-void
.end method

.method public onDragExit(Ljava/lang/Object;)V
    .locals 0
    .param p1, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->onDragExit()V

    .line 520
    return-void
.end method

.method public onDragOver(Ljava/lang/Object;)V
    .locals 0
    .param p1, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 478
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 1
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 632
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/graphics/Rect;)V

    .line 633
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "dstRect"    # Landroid/graphics/Rect;

    .prologue
    const-wide/16 v4, -0x66

    .line 636
    const/4 v1, 0x0

    .line 637
    .local v1, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    const/4 v7, 0x0

    .line 638
    .local v7, "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v0, :cond_3

    .line 639
    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .end local v1    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 640
    .restart local v1    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 641
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v0}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    :cond_0
    iget-wide v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 643
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v1

    .line 644
    new-instance v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .end local v7    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    invoke-direct {v7}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    .line 645
    .restart local v7    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iput-object v1, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 646
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iput-object v0, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 649
    :cond_2
    if-nez v7, :cond_3

    .line 650
    move-object v7, p1

    .line 653
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->notifyDrop()V

    .line 654
    if-eqz v1, :cond_4

    .line 655
    iget-object v2, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/folder/view/FolderIconView;->onDrop(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 657
    :cond_4
    return-void
.end method

.method public onDrop(Ljava/util/ArrayList;Landroid/graphics/Rect;)V
    .locals 17
    .param p2, "dstRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 660
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    const/4 v3, 0x0

    .line 661
    .local v3, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 662
    .local v15, "dragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_4

    .line 663
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 664
    .local v14, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    const/4 v9, 0x0

    .line 665
    .local v9, "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v2, v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_3

    .line 666
    iget-object v3, v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .end local v3    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 667
    .restart local v3    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v4, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    .line 668
    iget-object v2, v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v2}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    iget-wide v4, v3, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    .line 670
    :cond_0
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v3

    .line 671
    new-instance v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .end local v9    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    invoke-direct {v9}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    .line 672
    .restart local v9    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iput-object v3, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 673
    iget-object v2, v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iput-object v2, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 674
    iget-object v2, v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    iput-object v2, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 677
    :cond_1
    if-nez v9, :cond_2

    .line 678
    move-object v9, v14

    .line 680
    :cond_2
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 684
    .end local v9    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v14    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_4
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 685
    .local v12, "animateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 686
    .restart local v14    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v2, v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 689
    .end local v14    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/launcher3/folder/view/FolderView;->setSuppressOnAdd(Z)V

    .line 690
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 691
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/folder/view/FolderIconView;->addItems(Ljava/util/ArrayList;)V

    .line 694
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 695
    .local v13, "contentSize":I
    const/16 v16, 0x0

    :goto_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_7

    .line 696
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 697
    .restart local v9    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v4, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/high16 v6, 0x3f800000    # 1.0f

    add-int v7, v13, v16

    iget-object v8, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher3/folder/view/FolderIconView;->onDrop(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/lang/Runnable;Z)V

    .line 695
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 700
    .end local v9    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_7
    return-void
.end method

.method public onItemAdded(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 1147
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->updateLayout()V

    .line 1148
    return-void
.end method

.method public onItemRemoved(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 1157
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    .line 1158
    .local v0, "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1159
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshCountBadge(I)V

    .line 1162
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->updateLayout()V

    .line 1163
    return-void
.end method

.method public onItemsAdded(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1152
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->updateLayout()V

    .line 1153
    return-void
.end method

.method public onItemsRemoved(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1167
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    .line 1168
    .local v0, "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1169
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshCountBadge(I)V

    .line 1172
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->updateLayout()V

    .line 1173
    return-void
.end method

.method public onLockedFolderOpenStateUpdated(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "opened"    # Ljava/lang/Boolean;

    .prologue
    .line 1203
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->updateLayout()V

    .line 1204
    return-void
.end method

.method public onOrderingChanged(Z)V
    .locals 0
    .param p1, "alphabeticalOrder"    # Z

    .prologue
    .line 1198
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->updateLayout()V

    .line 1199
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/folder/view/FolderIconView;->sStaticValuesDirty:Z

    .line 304
    invoke-super {p0}, Lcom/android/launcher3/common/view/IconView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const v4, 0x7f080033

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1177
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_0

    .line 1179
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 1180
    .local v1, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget v0, v1, Lcom/android/launcher3/folder/FolderInfo;->mBadgeCount:I

    .line 1181
    .local v0, "badge":I
    if-le v0, v5, :cond_1

    .line 1182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1183
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080065

    .line 1184
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 1183
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1182
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1194
    .end local v0    # "badge":I
    .end local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_0
    :goto_0
    return-void

    .line 1185
    .restart local v0    # "badge":I
    .restart local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_1
    if-ne v0, v5, :cond_2

    .line 1186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1187
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080064

    .line 1188
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1186
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1190
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 1208
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->onTouchOutofIconArea(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1209
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->cancelLongPress()V

    move v0, v1

    .line 1237
    :cond_0
    :goto_0
    return v0

    .line 1214
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/common/view/IconView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1217
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/event/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1218
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    move v0, v1

    .line 1219
    goto :goto_0

    .line 1222
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1224
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->postCheckForLongPress()V

    goto :goto_0

    .line 1228
    :pswitch_1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->setAlpha(F)V

    .line 1229
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 1232
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mSlop:F

    invoke-static {p0, v1, v2, v3}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1233
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 1222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performCreateAnimation(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FLjava/lang/Runnable;)V
    .locals 10
    .param p1, "destInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "destView"    # Landroid/view/View;
    .param p3, "srcInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p4, "srcView"    # Lcom/android/launcher3/common/drag/DragView;
    .param p5, "dstRect"    # Landroid/graphics/Rect;
    .param p6, "scaleRelativeToDragLayer"    # F
    .param p7, "postAnimationRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 485
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getDrawable(Lcom/android/launcher3/common/view/IconView;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 486
    .local v8, "animateDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 487
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 486
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewDrawingParams(II)V

    .line 491
    const/16 v0, 0x122

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v8, v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V

    .line 492
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->addItem(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 495
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 496
    .local v9, "parentView":Landroid/view/ViewGroup;
    if-eqz v9, :cond_0

    .line 497
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 498
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 502
    :cond_0
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/folder/view/FolderIconView;->onDrop(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 503
    return-void
.end method

.method public performDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "finalView"    # Landroid/view/View;
    .param p2, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 506
    instance-of v1, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 507
    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getTopDrawable(Lcom/android/launcher3/common/view/IconView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 508
    .local v0, "animateDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 509
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 508
    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewDrawingParams(II)V

    .line 513
    const/16 v1, 0xc8

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/launcher3/folder/view/FolderIconView;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V

    .line 516
    .end local v0    # "animateDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public refreshBadge()V
    .locals 27

    .prologue
    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v15

    .line 1258
    .local v15, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_0
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 1259
    .local v10, "icon":Landroid/view/View;
    instance-of v0, v10, Lcom/android/launcher3/common/view/IconView;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 1260
    check-cast v10, Lcom/android/launcher3/common/view/IconView;

    .end local v10    # "icon":Landroid/view/View;
    invoke-virtual {v10}, Lcom/android/launcher3/common/view/IconView;->refreshBadge()V

    goto :goto_0

    .line 1265
    .end local v15    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v21

    .line 1266
    .local v21, "tag":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 1267
    .local v20, "sum":I
    if-eqz v21, :cond_5

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderInfo;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v14, v21

    .line 1268
    check-cast v14, Lcom/android/launcher3/folder/FolderInfo;

    .line 1273
    .local v14, "item":Lcom/android/launcher3/folder/FolderInfo;
    const/4 v5, 0x0

    .line 1274
    .local v5, "cn":Landroid/content/ComponentName;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1275
    .local v6, "componentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, v14, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_2
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1276
    .local v11, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 1277
    iget-object v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 1280
    :cond_3
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 1281
    iget v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    move/from16 v23, v0

    add-int v20, v20, v23

    .line 1282
    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1285
    .end local v11    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_4
    move/from16 v0, v20

    iput v0, v14, Lcom/android/launcher3/folder/FolderInfo;->mBadgeCount:I

    .line 1287
    .end local v5    # "cn":Landroid/content/ComponentName;
    .end local v6    # "componentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "item":Lcom/android/launcher3/folder/FolderInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBadgeView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    .line 1288
    const/16 v19, 0x0

    .line 1289
    .local v19, "shouldHideBadge":Z
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1290
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v9

    .line 1291
    .local v9, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnabled()Z

    move-result v22

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v22

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/folder/FolderInfo;->isLockedFolderOpenedOnce()Z

    move-result v22

    if-nez v22, :cond_6

    .line 1292
    const/16 v19, 0x1

    .line 1295
    .end local v9    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v16

    .line 1296
    .local v16, "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    if-eqz v16, :cond_c

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v22

    if-eqz v22, :cond_c

    const/16 v17, 0x1

    .line 1297
    .local v17, "multiSelectMode":Z
    :goto_2
    if-nez v17, :cond_f

    if-eqz v20, :cond_f

    if-nez v19, :cond_f

    .line 1298
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v22

    if-nez v22, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mIsSetThemeBadgeBg:Z

    move/from16 v22, v0

    if-nez v22, :cond_7

    .line 1299
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/theme/OpenThemeManager;->preloadBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1300
    .local v4, "badgeImage":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_7

    .line 1301
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/folder/view/FolderIconView;->mIsSetThemeBadgeBg:Z

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBadgeView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1305
    .end local v4    # "badgeImage":Landroid/graphics/drawable/Drawable;
    :cond_7
    const/4 v13, 0x0

    .line 1306
    .local v13, "isOverThousand":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/folder/FolderInfo;

    .line 1307
    .local v8, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget v2, v8, Lcom/android/launcher3/folder/FolderInfo;->mBadgeCount:I

    .line 1308
    .local v2, "badge":I
    const/16 v22, 0x3e8

    move/from16 v0, v22

    if-lt v2, v0, :cond_8

    .line 1309
    const/4 v13, 0x1

    .line 1310
    const/16 v2, 0x3e7

    .line 1313
    :cond_8
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v2, v0, :cond_d

    .line 1314
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f080033

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget-object v0, v8, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1315
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f080064

    .line 1316
    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1314
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1324
    :goto_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1325
    .local v3, "badgeCount":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 1326
    .local v7, "currentLanguage":Ljava/lang/String;
    const-string v22, "ar"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_9

    const-string v22, "fa"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 1327
    :cond_9
    invoke-static {v3, v7}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1331
    :goto_4
    if-eqz v13, :cond_a

    .line 1332
    new-instance v18, Ljava/lang/StringBuffer;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1333
    .local v18, "sb":Ljava/lang/StringBuffer;
    const/16 v22, 0x2b

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1334
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1336
    .end local v18    # "sb":Ljava/lang/StringBuffer;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBadgeView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1337
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->updateBadgeLayout()V

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBadgeView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1348
    .end local v2    # "badge":I
    .end local v3    # "badgeCount":Ljava/lang/String;
    .end local v7    # "currentLanguage":Ljava/lang/String;
    .end local v8    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v13    # "isOverThousand":Z
    .end local v16    # "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    .end local v17    # "multiSelectMode":Z
    .end local v19    # "shouldHideBadge":Z
    :cond_b
    :goto_5
    return-void

    .line 1296
    .restart local v16    # "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    .restart local v19    # "shouldHideBadge":Z
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 1318
    .restart local v2    # "badge":I
    .restart local v8    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .restart local v13    # "isOverThousand":Z
    .restart local v17    # "multiSelectMode":Z
    :cond_d
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f080033

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget-object v0, v8, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1319
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f080065

    .line 1320
    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    .line 1319
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1318
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1329
    .restart local v3    # "badgeCount":Ljava/lang/String;
    .restart local v7    # "currentLanguage":Ljava/lang/String;
    :cond_e
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 1340
    .end local v2    # "badge":I
    .end local v3    # "badgeCount":Ljava/lang/String;
    .end local v7    # "currentLanguage":Ljava/lang/String;
    .end local v8    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v13    # "isOverThousand":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBadgeView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1341
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderInfo;

    move/from16 v22, v0

    if-eqz v22, :cond_b

    .line 1342
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/folder/FolderInfo;

    .line 1343
    .local v12, "info":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f080033

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    iget-object v0, v12, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method public refreshCountBadge(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 1373
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mCountBadgeView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1374
    if-lez p1, :cond_1

    .line 1375
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mCountBadgeView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1376
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mCountBadgeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1381
    :cond_0
    :goto_0
    return-void

    .line 1378
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mCountBadgeView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public refreshFolderIcon()V
    .locals 0

    .prologue
    .line 1352
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviews()V

    .line 1353
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->invalidate()V

    .line 1354
    return-void
.end method

.method public setIconBackgroundColor(I)V
    .locals 2
    .param p1, "colorIndex"    # I

    .prologue
    .line 1130
    sget-object v0, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1131
    if-ltz p1, :cond_0

    sget-object v0, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1132
    :cond_0
    const/4 p1, 0x0

    .line 1134
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1138
    :goto_0
    return-void

    .line 1136
    :cond_2
    const-string v0, "FolderIconView"

    const-string v1, "setIconBackgroundColor : sSharedIconBgBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

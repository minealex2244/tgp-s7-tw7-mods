.class public Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;
.super Landroid/widget/LinearLayout;
.source "MultiSelectHelpDialog.java"

# interfaces
.implements Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiSelectHelpDialog"


# instance fields
.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mCancelButton:Landroid/widget/ImageView;

.field private mCurX:I

.field private mInitPage:I

.field private mInitX:I

.field private mIsHotseat:Z

.field private mIsTopPicker:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

.field private mPadding:I

.field private mPivotX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitX:I

    .line 51
    iput v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mCurX:I

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitPage:I

    .line 53
    iput v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mPadding:I

    .line 54
    iput-boolean v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mIsHotseat:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;

    .line 56
    iput-boolean v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mIsTopPicker:Z

    .line 57
    iput v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mPivotX:I

    .line 70
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;)Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private animateDialog(ZZ)V
    .locals 9
    .param p1, "show"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 247
    iget-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 248
    iget-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 249
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;

    .line 252
    :cond_0
    if-eqz p2, :cond_4

    .line 253
    if-eqz p1, :cond_2

    .line 254
    .local v3, "value":F
    :goto_0
    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [F

    aput v3, v7, v5

    invoke-static {p0, v6, v7}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 255
    .local v1, "scaleX":Landroid/animation/ObjectAnimator;
    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [F

    aput v3, v7, v5

    invoke-static {p0, v6, v7}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 256
    .local v2, "scaleY":Landroid/animation/ObjectAnimator;
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [F

    aput v3, v7, v5

    invoke-static {p0, v6, v7}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 258
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    iget v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mPivotX:I

    int-to-float v6, v6

    invoke-virtual {p0, v6}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setPivotX(F)V

    .line 259
    iget-boolean v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mIsTopPicker:Z

    if-eqz v6, :cond_3

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setPivotY(F)V

    .line 261
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;

    .line 262
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v1, v6, v5

    aput-object v2, v6, v8

    const/4 v5, 0x2

    aput-object v0, v6, v5

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 263
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 264
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$2;

    invoke-direct {v5, p0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$2;-><init>(Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;Z)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 290
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 300
    .end local v0    # "alpha":Landroid/animation/ObjectAnimator;
    .end local v1    # "scaleX":Landroid/animation/ObjectAnimator;
    .end local v2    # "scaleY":Landroid/animation/ObjectAnimator;
    .end local v3    # "value":F
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v3, v4

    .line 253
    goto :goto_0

    .line 259
    .restart local v0    # "alpha":Landroid/animation/ObjectAnimator;
    .restart local v1    # "scaleX":Landroid/animation/ObjectAnimator;
    .restart local v2    # "scaleY":Landroid/animation/ObjectAnimator;
    .restart local v3    # "value":F
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    goto :goto_1

    .line 292
    .end local v0    # "alpha":Landroid/animation/ObjectAnimator;
    .end local v1    # "scaleX":Landroid/animation/ObjectAnimator;
    .end local v2    # "scaleY":Landroid/animation/ObjectAnimator;
    .end local v3    # "value":F
    :cond_4
    if-eqz p1, :cond_5

    move v4, v5

    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setVisibility(I)V

    .line 293
    if-eqz p1, :cond_1

    .line 294
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setScaleX(F)V

    .line 295
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setScaleY(F)V

    .line 296
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setAlpha(F)V

    .line 297
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->bringToFront()V

    goto :goto_2

    .line 292
    :cond_5
    const/16 v4, 0x8

    goto :goto_3
.end method


# virtual methods
.method public hide(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 197
    const-string v0, "MultiSelectHelpDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide help bubble - animate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->animateDialog(ZZ)V

    .line 200
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitPage:I

    .line 201
    return-void
.end method

.method public isShowingHelpDialog()Z
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layout(Landroid/view/View;)V
    .locals 32
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 91
    .local v22, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v25, v0

    .line 92
    .local v25, "widthPixels":I
    const v28, 0x7f090101

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 93
    .local v20, "pickerWidth":I
    const v28, 0x7f090100

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 94
    .local v18, "pickerMargin":I
    const v28, 0x7f090105

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 95
    .local v7, "dialogMarginTop":I
    const v28, 0x7f090104

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 96
    .local v6, "dialogMarginLeft":I
    const v28, 0x7f090106

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 97
    .local v8, "dialogPadding":I
    const v28, 0x7f09002d

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 99
    .local v16, "panelHeight":I
    const v28, 0x7f0f00a9

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 100
    .local v19, "pickerTop":Landroid/view/View;
    const v28, 0x7f0f00ad

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 102
    .local v17, "pickerBottom":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 103
    .local v14, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v14, :cond_4

    iget-wide v0, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x65

    cmp-long v28, v28, v30

    if-nez v28, :cond_4

    const/16 v28, 0x1

    :goto_0
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mIsHotseat:Z

    .line 105
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mIsHotseat:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v11, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    .line 106
    .local v11, "gridIconInfo":Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v28

    if-eqz v28, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v12, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 110
    .local v12, "gridInfo":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    :goto_2
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v13

    .line 112
    .local v13, "iconSize":I
    :goto_3
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v4, v0, [I

    .line 113
    .local v4, "absLoc":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 114
    const/16 v28, 0x0

    aget v29, v4, v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v30

    sub-int v30, v30, v13

    div-int/lit8 v30, v30, 0x2

    add-int v29, v29, v30

    aput v29, v4, v28

    .line 115
    const/16 v29, 0x1

    aget v30, v4, v29

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v28

    :goto_4
    add-int v28, v28, v30

    aput v28, v4, v29

    .line 117
    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->measure(II)V

    .line 119
    mul-int/lit8 v28, v6, 0x2

    sub-int v15, v25, v28

    .line 120
    .local v15, "maxWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->getMeasuredWidth()I

    move-result v28

    move/from16 v0, v28

    if-lt v0, v15, :cond_0

    .line 121
    const v28, 0x7f0f00ab

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 122
    .local v24, "tv":Landroid/widget/TextView;
    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    sub-int v29, v15, v8

    const v30, 0x7f090103

    .line 123
    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    sub-int v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 124
    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->measure(II)V

    .line 127
    .end local v24    # "tv":Landroid/widget/TextView;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->getMeasuredWidth()I

    move-result v9

    .line 128
    .local v9, "dialogWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->getMeasuredHeight()I

    move-result v5

    .line 129
    .local v5, "dialogHeight":I
    const/16 v28, 0x1

    aget v28, v4, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v23, v0

    .line 131
    .local v23, "transY":F
    const/16 v28, 0x0

    aget v28, v4, v28

    div-int/lit8 v29, v13, 0x2

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v9

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    div-float v29, v29, v30

    sub-float v26, v28, v29

    .line 132
    .local v26, "x":F
    int-to-float v0, v6

    move/from16 v28, v0

    cmpg-float v28, v26, v28

    if-gez v28, :cond_a

    .line 133
    int-to-float v0, v6

    move/from16 v26, v0

    .line 137
    :cond_1
    :goto_5
    const/16 v28, 0x0

    aget v28, v4, v28

    div-int/lit8 v29, v13, 0x2

    add-int v28, v28, v29

    div-int/lit8 v29, v20, 0x2

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v28, v26

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v21, v0

    .line 139
    .local v21, "pickerX":I
    div-int/lit8 v28, v20, 0x2

    add-int v28, v28, v21

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mPivotX:I

    .line 141
    sget-boolean v28, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v28, :cond_2

    .line 142
    sub-int v28, v9, v20

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    add-int v21, v21, v28

    .line 145
    sub-int v28, v25, v9

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setLeft(I)V

    .line 146
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setRight(I)V

    .line 148
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setX(F)V

    .line 150
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mIsTopPicker:Z

    .line 151
    const/16 v27, 0x0

    .line 152
    .local v27, "y":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v23, v28

    invoke-virtual {v12}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPageTop()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    cmpg-float v28, v28, v29

    if-gtz v28, :cond_b

    .line 153
    int-to-float v0, v13

    move/from16 v28, v0

    add-float v28, v28, v23

    int-to-float v0, v7

    move/from16 v29, v0

    add-float v28, v28, v29

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v27, v0

    .line 154
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mIsTopPicker:Z

    .line 158
    :goto_6
    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setY(F)V

    .line 160
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 161
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 163
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mIsTopPicker:Z

    move/from16 v28, v0

    if-eqz v28, :cond_c

    .line 164
    const/16 v28, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    const/16 v28, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->getX()F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mCurX:I

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitX:I

    .line 173
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setScaleX(F)V

    .line 174
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setScaleY(F)V

    .line 175
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setAlpha(F)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v28

    if-eqz v28, :cond_3

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v10

    .line 179
    .local v10, "folderView":Lcom/android/launcher3/folder/view/FolderView;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v28

    if-eqz v28, :cond_3

    .line 180
    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->setPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V

    .line 183
    .end local v10    # "folderView":Lcom/android/launcher3/folder/view/FolderView;
    :cond_3
    return-void

    .line 103
    .end local v4    # "absLoc":[I
    .end local v5    # "dialogHeight":I
    .end local v9    # "dialogWidth":I
    .end local v11    # "gridIconInfo":Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    .end local v12    # "gridInfo":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    .end local v13    # "iconSize":I
    .end local v15    # "maxWidth":I
    .end local v21    # "pickerX":I
    .end local v23    # "transY":F
    .end local v26    # "x":F
    .end local v27    # "y":I
    :cond_4
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 105
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 106
    .restart local v11    # "gridIconInfo":Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v28, v0

    .line 107
    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v28

    if-eqz v28, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v12, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v28, v0

    .line 108
    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v12, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    goto/16 :goto_2

    .line 110
    .restart local v12    # "gridInfo":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    :cond_8
    invoke-virtual {v12}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v13

    goto/16 :goto_3

    .line 115
    .restart local v4    # "absLoc":[I
    .restart local v13    # "iconSize":I
    :cond_9
    invoke-virtual {v12}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getContentTop()I

    move-result v28

    goto/16 :goto_4

    .line 134
    .restart local v5    # "dialogHeight":I
    .restart local v9    # "dialogWidth":I
    .restart local v15    # "maxWidth":I
    .restart local v23    # "transY":F
    .restart local v26    # "x":F
    :cond_a
    int-to-float v0, v9

    move/from16 v28, v0

    add-float v28, v28, v26

    sub-int v29, v25, v6

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_1

    .line 135
    sub-int v28, v25, v9

    sub-int v28, v28, v6

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v26, v0

    goto/16 :goto_5

    .line 156
    .restart local v21    # "pickerX":I
    .restart local v27    # "y":I
    :cond_b
    int-to-float v0, v5

    move/from16 v28, v0

    sub-float v28, v23, v28

    int-to-float v0, v7

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v27, v0

    goto/16 :goto_6

    .line 167
    :cond_c
    const/16 v28, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    const/16 v28, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 78
    const v0, 0x7f0f00ac

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mCancelButton:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mCancelButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$1;-><init>(Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public onPageChange(III)V
    .locals 5
    .param p1, "page"    # I
    .param p2, "scrollX"    # I
    .param p3, "pageCount"    # I

    .prologue
    .line 230
    iget-boolean v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mIsHotseat:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->isShowingHelpDialog()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitPage:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    sget-boolean v3, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v3, :cond_2

    add-int/lit8 v3, p3, -0x1

    sub-int v2, v3, p1

    .line 235
    .local v2, "pageIndex":I
    :goto_1
    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitPage:I

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int v0, v3, v4

    .line 236
    .local v0, "initPage":I
    iget v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mPadding:I

    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitPage:I

    if-ge v2, v3, :cond_3

    add-int/lit8 v3, v2, 0x1

    :goto_2
    mul-int v1, v4, v3

    .line 238
    .local v1, "padding":I
    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitPage:I

    if-eq v2, v3, :cond_4

    .line 239
    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitX:I

    add-int/2addr v3, v0

    sub-int/2addr v3, p2

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mCurX:I

    .line 240
    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mCurX:I

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setX(F)V

    goto :goto_0

    .end local v0    # "initPage":I
    .end local v1    # "padding":I
    .end local v2    # "pageIndex":I
    :cond_2
    move v2, p1

    .line 234
    goto :goto_1

    .line 236
    .restart local v0    # "initPage":I
    .restart local v2    # "pageIndex":I
    :cond_3
    add-int/lit8 v3, v2, -0x1

    goto :goto_2

    .line 242
    .restart local v1    # "padding":I
    :cond_4
    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitX:I

    iput v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mCurX:I

    goto :goto_0
.end method

.method public onPageScroll(IIIII)V
    .locals 5
    .param p1, "page"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "scrollX"    # I
    .param p5, "pageCount"    # I

    .prologue
    .line 209
    iget-boolean v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mIsHotseat:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->isShowingHelpDialog()Z

    move-result v3

    if-nez v3, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    sget-boolean v3, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v3, :cond_3

    add-int/lit8 v3, p5, -0x1

    sub-int v2, v3, p1

    .line 215
    .local v2, "pageIndex":I
    :goto_1
    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitPage:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 216
    iput v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitPage:I

    .line 217
    if-nez v2, :cond_4

    move v3, p4

    :goto_2
    iput v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mPadding:I

    .line 221
    :cond_2
    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mCurX:I

    sub-int/2addr v3, p2

    add-int v0, v3, p4

    .line 222
    .local v0, "curX":I
    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitPage:I

    if-ne v2, v3, :cond_5

    move v1, v0

    .line 225
    .local v1, "finalX":I
    :goto_3
    int-to-float v3, v1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setX(F)V

    goto :goto_0

    .end local v0    # "curX":I
    .end local v1    # "finalX":I
    .end local v2    # "pageIndex":I
    :cond_3
    move v2, p1

    .line 213
    goto :goto_1

    .line 217
    .restart local v2    # "pageIndex":I
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 218
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v3, v2

    sub-int v3, p4, v3

    div-int/2addr v3, v2

    .line 217
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    goto :goto_2

    .line 222
    .restart local v0    # "curX":I
    :cond_5
    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitPage:I

    if-ge v2, v3, :cond_6

    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitX:I

    .line 223
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_3

    :cond_6
    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitX:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3
.end method

.method public show(Landroid/view/View;Z)V
    .locals 3
    .param p1, "sourceView"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 186
    const-string v0, "MultiSelectHelpDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show help bubble - animate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->isShowingHelpDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->hide(Z)V

    .line 191
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitPage:I

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->layout(Landroid/view/View;)V

    .line 193
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->animateDialog(ZZ)V

    .line 194
    return-void
.end method

.class public Lcom/android/launcher3/common/multiselect/MultiSelectPanel;
.super Landroid/widget/LinearLayout;
.source "MultiSelectPanel.java"


# static fields
.field public static final BTN_ADD_TO_PERSONAL:I = 0x4

.field public static final BTN_CREATE_FOLDER:I = 0x2

.field public static final BTN_MAX:I = 0x5

.field public static final BTN_REMOVE_SHORTCUT:I = 0x1

.field public static final BTN_SECURE_FOLDER:I = 0x3

.field public static final BTN_UNINSTALL:I = 0x0

.field public static final DIM_TYPE_ALL_FOLDER_ITEMS:I = 0x3

.field public static final DIM_TYPE_ENABLE:I = 0x0

.field public static final DIM_TYPE_ONE_ITEM:I = 0x1

.field public static final DIM_TYPE_SELECT_FOLDER:I = 0x2

.field private static final SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

.field private static final SINE_IN_OUT_80:Landroid/view/animation/Interpolator;


# instance fields
.field private mAcceptDropToFolder:Z

.field private mAddToPersonalButton:Landroid/widget/TextView;

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mCreateFolderButton:Landroid/widget/TextView;

.field private mDimTypeCreateFolder:I

.field private mEnabledBtn:[Z

.field private mHasFolderItem:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mRemoveShortcutButton:Landroid/widget/TextView;

.field private mSecureFolderButton:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x22

    .line 62
    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    .line 63
    const/16 v0, 0x1e

    .line 64
    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAnimator:Landroid/animation/AnimatorSet;

    .line 85
    iput-boolean v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAcceptDropToFolder:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mHasFolderItem:Z

    .line 87
    iput v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mDimTypeCreateFolder:I

    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mEnabledBtn:[Z

    .line 143
    new-instance v0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$1;-><init>(Lcom/android/launcher3/common/multiselect/MultiSelectPanel;)V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 150
    new-instance v0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$2;-><init>(Lcom/android/launcher3/common/multiselect/MultiSelectPanel;)V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 101
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/multiselect/MultiSelectPanel;Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/multiselect/MultiSelectPanel;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getIdByView(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/multiselect/MultiSelectPanel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/multiselect/MultiSelectPanel;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->onClickMultiSelectPanel(I)V

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 244
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAnimator:Landroid/animation/AnimatorSet;

    .line 245
    return-void
.end method

.method private changeColorForBg(Z)V
    .locals 4
    .param p1, "whiteBg"    # Z

    .prologue
    const/4 v3, 0x1

    .line 557
    const v1, 0x7f0f00ae

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 558
    .local v0, "panel":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 560
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    invoke-static {v1, v2, p1, v3}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 561
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    .line 562
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v3

    .line 561
    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 564
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    invoke-static {v1, v2, p1, v3}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 565
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    .line 566
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v3

    .line 565
    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 568
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mCreateFolderButton:Landroid/widget/TextView;

    invoke-static {v1, v2, p1, v3}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 569
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mCreateFolderButton:Landroid/widget/TextView;

    .line 570
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v3

    .line 569
    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 572
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    invoke-static {v1, v2, p1, v3}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 573
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    .line 574
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v3

    .line 573
    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 576
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    invoke-static {v1, v2, p1, v3}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 577
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    .line 578
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v3

    .line 577
    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 579
    return-void
.end method

.method private getIdByView(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 276
    const/4 v0, 0x0

    .line 286
    :cond_0
    :goto_0
    return v0

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 278
    const/4 v0, 0x1

    goto :goto_0

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mCreateFolderButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 280
    const/4 v0, 0x2

    goto :goto_0

    .line 281
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 282
    const/4 v0, 0x3

    goto :goto_0

    .line 283
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 284
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private getViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "view":Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 270
    :goto_0
    return-object v0

    .line 251
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    .line 252
    goto :goto_0

    .line 255
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    .line 256
    goto :goto_0

    .line 259
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mCreateFolderButton:Landroid/widget/TextView;

    .line 260
    goto :goto_0

    .line 263
    :pswitch_3
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    .line 264
    goto :goto_0

    .line 267
    :pswitch_4
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getWeightSumPanel()I
    .locals 3

    .prologue
    .line 534
    const/4 v1, 0x0

    .line 535
    .local v1, "weight":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 536
    invoke-direct {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 537
    add-int/lit8 v1, v1, 0x1

    .line 535
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    :cond_1
    return v1
.end method

.method private onClickMultiSelectPanel(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->onClickMultiSelectPanel(I)V

    .line 141
    :cond_0
    return-void
.end method

.method private setShadowLayer(Landroid/widget/TextView;Z)V
    .locals 9
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 471
    iget-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 472
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v3

    .line 473
    .local v3, "top":Lcom/android/launcher3/common/stage/Stage;
    iget-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/stage/StageManager;->getSecondTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    .line 474
    .local v2, "secondTop":Lcom/android/launcher3/common/stage/Stage;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v6

    if-eq v6, v4, :cond_0

    if-eqz v2, :cond_2

    .line 475
    invoke-virtual {v3}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    .line 476
    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v6

    if-ne v6, v4, :cond_2

    :cond_0
    move v0, v4

    .line 477
    .local v0, "isHome":Z
    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    and-int/2addr p2, v4

    .line 479
    if-eqz p2, :cond_4

    .line 480
    const v4, 0x7f0b0047

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x7f0b0045

    .line 482
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x7f0d002f

    const/4 v7, 0x0

    .line 483
    invoke-virtual {v1, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    .line 480
    invoke-virtual {p1, v4, v8, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 487
    :goto_2
    return-void

    .end local v0    # "isHome":Z
    :cond_2
    move v0, v5

    .line 476
    goto :goto_0

    .restart local v0    # "isHome":Z
    :cond_3
    move v4, v5

    .line 477
    goto :goto_1

    .line 485
    :cond_4
    invoke-virtual {p1, v8, v8, v8, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_2
.end method

.method private updateAddToPersonalButton(Landroid/view/View;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "added"    # Z

    .prologue
    .line 440
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 441
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 442
    .local v1, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v3, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "title":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 444
    iget-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 445
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    instance-of v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v3, :cond_0

    .line 446
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 449
    :cond_0
    if-eqz v0, :cond_1

    .line 450
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isPossibleAddToPersonal(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 451
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addAddToPersonalList(Ljava/lang/String;)V

    .line 464
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getAddToPersonalListSize()I

    move-result v3

    if-lez v3, :cond_2

    .line 465
    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setEnabledButton(IZ)V

    .line 468
    .end local v2    # "title":Ljava/lang/String;
    :cond_2
    return-void

    .line 453
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "title":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addAddToPersonalPendingList(Ljava/lang/String;)V

    goto :goto_0

    .line 457
    .end local v0    # "cn":Landroid/content/ComponentName;
    .restart local v1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->containsAddToPersonalList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 458
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeAddToPersonalList(Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->containsAddToPersonalPendingList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 460
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeAddToPersonalPendingList(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSecureFolderButton(Landroid/view/View;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "added"    # Z

    .prologue
    .line 408
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 409
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 410
    .local v1, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v3, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, "title":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 412
    iget-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 413
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    instance-of v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v3, :cond_0

    .line 414
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 417
    :cond_0
    if-eqz v0, :cond_1

    .line 418
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/launcher3/util/SecureFolderHelper;->canAddAppToSecureFolder(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 419
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addSecureFolderList(Ljava/lang/String;)V

    .line 432
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getSecureFolderListSize()I

    move-result v3

    if-lez v3, :cond_2

    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mDimTypeCreateFolder:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 434
    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setEnabledButton(IZ)V

    .line 437
    .end local v2    # "title":Ljava/lang/String;
    :cond_2
    return-void

    .line 421
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "title":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addSecureFolderPendingList(Ljava/lang/String;)V

    goto :goto_0

    .line 425
    .end local v0    # "cn":Landroid/content/ComponentName;
    .restart local v1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->containsSecureFolderList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 426
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeSecureFolderList(Ljava/lang/String;)V

    goto :goto_0

    .line 427
    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->containsSecureFolderPendingList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 428
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeSecureFolderPendingList(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateTextSize(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "button"    # Landroid/widget/TextView;

    .prologue
    .line 595
    if-eqz p1, :cond_0

    .line 596
    const/4 v0, 0x0

    .line 597
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 596
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 599
    :cond_0
    return-void
.end method

.method private updateUninstallButtonText(Z)V
    .locals 3
    .param p1, "canUninstall"    # Z

    .prologue
    .line 602
    if-eqz p1, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f080062

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    :goto_0
    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f080056

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public acceptDropToFolder()Z
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAcceptDropToFolder:Z

    return v0
.end method

.method public getButtonEnabled(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mEnabledBtn:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public getDimTypeCreateFolder()I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mDimTypeCreateFolder:I

    return v0
.end method

.method public getEnabledButton()Landroid/util/SparseBooleanArray;
    .locals 22

    .prologue
    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppsViewList()Ljava/util/ArrayList;

    move-result-object v2

    .line 314
    .local v2, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 316
    .local v3, "btnEnableList":Landroid/util/SparseBooleanArray;
    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 317
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 318
    const/16 v16, 0x2

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 319
    const/16 v16, 0x3

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 320
    const/16 v16, 0x4

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 322
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAcceptDropToFolder:Z

    .line 323
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mHasFolderItem:Z

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearUninstallPendigList()V

    .line 326
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_f

    .line 327
    const/16 v16, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 328
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_7

    .line 329
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mDimTypeCreateFolder:I

    .line 330
    const/16 v16, 0x2

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 335
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v8, "folderContainerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 337
    .local v4, "canUninstall":Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 338
    .local v15, "view":Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 340
    .local v10, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 341
    instance-of v0, v15, Lcom/android/launcher3/folder/view/FolderIconView;

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 342
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mHasFolderItem:Z

    .line 343
    const/16 v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mDimTypeCreateFolder:I

    .line 344
    const/16 v16, 0x2

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 345
    const/16 v16, 0x3

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 346
    const/16 v16, 0x4

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 352
    :cond_1
    :goto_2
    instance-of v0, v10, Lcom/android/launcher3/common/base/item/IconInfo;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 353
    iget-object v5, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 354
    .local v5, "compName":Landroid/content/ComponentName;
    const/4 v11, 0x0

    .line 355
    .local v11, "pkgName":Ljava/lang/String;
    if-nez v5, :cond_2

    move-object/from16 v16, v10

    .line 356
    check-cast v16, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 358
    :cond_2
    if-eqz v5, :cond_3

    .line 359
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 362
    :cond_3
    if-nez v4, :cond_4

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v11}, Lcom/android/launcher3/Utilities;->canUninstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 363
    const/4 v4, 0x1

    .line 366
    :cond_4
    if-nez v4, :cond_5

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v11}, Lcom/android/launcher3/Utilities;->canDisable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 367
    :cond_5
    const/16 v16, 0x0

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 373
    .end local v5    # "compName":Landroid/content/ComponentName;
    .end local v11    # "pkgName":Ljava/lang/String;
    :cond_6
    :goto_3
    iget-wide v0, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v16, v18, v20

    if-lez v16, :cond_0

    .line 374
    iget-wide v0, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 332
    .end local v4    # "canUninstall":Z
    .end local v8    # "folderContainerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v10    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v15    # "view":Landroid/view/View;
    :cond_7
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mDimTypeCreateFolder:I

    goto/16 :goto_0

    .line 347
    .restart local v4    # "canUninstall":Z
    .restart local v8    # "folderContainerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v10    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v15    # "view":Landroid/view/View;
    :cond_8
    instance-of v0, v15, Lcom/android/launcher3/common/view/IconView;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 348
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAcceptDropToFolder:Z

    goto :goto_2

    .line 369
    .restart local v5    # "compName":Landroid/content/ComponentName;
    .restart local v11    # "pkgName":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v16, v0

    iget-object v0, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addUninstallPendingList(Ljava/lang/String;)V

    goto :goto_3

    .line 378
    .end local v5    # "compName":Landroid/content/ComponentName;
    .end local v10    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v11    # "pkgName":Ljava/lang/String;
    .end local v15    # "view":Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->updateUninstallButtonText(Z)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 381
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 382
    .local v14, "size":I
    if-lez v14, :cond_e

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ne v14, v0, :cond_e

    .line 383
    add-int/lit8 v16, v14, -0x1

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 384
    .local v12, "refContainer":J
    long-to-int v0, v12

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/launcher3/common/model/DataLoader;->getFolderInfo(I)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v9

    .line 385
    .local v9, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    if-eqz v9, :cond_e

    invoke-virtual {v9}, Lcom/android/launcher3/folder/FolderInfo;->getItemCount()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v14, :cond_e

    .line 386
    const/4 v7, 0x0

    .line 387
    .local v7, "enable":Z
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 388
    .local v6, "container":Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v17, v18, v12

    if-eqz v17, :cond_b

    .line 389
    const/4 v7, 0x1

    .line 393
    .end local v6    # "container":Ljava/lang/Long;
    :cond_c
    if-nez v7, :cond_d

    .line 394
    const/16 v16, 0x3

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mDimTypeCreateFolder:I

    .line 396
    :cond_d
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v3, v0, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 404
    .end local v4    # "canUninstall":Z
    .end local v7    # "enable":Z
    .end local v8    # "folderContainerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v9    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v12    # "refContainer":J
    .end local v14    # "size":I
    :cond_e
    :goto_4
    return-object v3

    .line 401
    :cond_f
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mDimTypeCreateFolder:I

    goto :goto_4
.end method

.method public getTextForUninstallButton()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFolderItem()Z
    .locals 1

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mHasFolderItem:Z

    return v0
.end method

.method onConfigurationChangedIfNeeded()V
    .locals 3

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 583
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002d

    .line 584
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 585
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 587
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->updateTextSize(Landroid/widget/TextView;)V

    .line 588
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->updateTextSize(Landroid/widget/TextView;)V

    .line 589
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mCreateFolderButton:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->updateTextSize(Landroid/widget/TextView;)V

    .line 590
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->updateTextSize(Landroid/widget/TextView;)V

    .line 591
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->updateTextSize(Landroid/widget/TextView;)V

    .line 592
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 109
    const v0, 0x7f0f00af

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v0, 0x7f0f00b0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v0, 0x7f0f00b1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mCreateFolderButton:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mCreateFolderButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mCreateFolderButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v0, 0x7f0f00b2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v0, 0x7f0f00b3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setEditTextBg()V

    .line 130
    invoke-virtual {p0, v2, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setEnabledButton(IZ)V

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setEnabledButton(IZ)V

    .line 132
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setEnabledButton(IZ)V

    .line 133
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setEnabledButton(IZ)V

    .line 134
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setEnabledButton(IZ)V

    .line 135
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 12
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/16 v11, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 491
    if-nez p2, :cond_2

    .line 492
    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v6

    .line 493
    .local v6, "top":Lcom/android/launcher3/common/stage/Stage;
    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/common/stage/StageManager;->getSecondTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v5

    .line 494
    .local v5, "secondTop":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v6}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v9

    if-eq v9, v8, :cond_0

    if-eqz v5, :cond_3

    .line 495
    invoke-virtual {v6}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_3

    .line 496
    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v9

    if-ne v9, v8, :cond_3

    :cond_0
    move v0, v8

    .line 497
    .local v0, "isHome":Z
    :goto_0
    const v9, 0x7f0f00ae

    invoke-virtual {p0, v9}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 499
    .local v3, "panel":Landroid/widget/LinearLayout;
    if-eqz v3, :cond_1

    .line 500
    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 501
    .local v4, "res":Landroid/content/res/Resources;
    const v9, 0x7f09010a

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 502
    .local v2, "margin":I
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 503
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v10, v2, 0x2

    sub-int/2addr v9, v10

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 505
    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 506
    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 507
    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 508
    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 518
    :goto_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v9

    if-nez v9, :cond_6

    if-eqz v0, :cond_6

    .line 519
    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 520
    invoke-direct {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getWeightSumPanel()I

    move-result v9

    int-to-float v9, v9

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 527
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "margin":I
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v0, :cond_7

    :goto_3
    invoke-direct {p0, v8}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->changeColorForBg(Z)V

    .line 530
    .end local v0    # "isHome":Z
    .end local v3    # "panel":Landroid/widget/LinearLayout;
    .end local v5    # "secondTop":Lcom/android/launcher3/common/stage/Stage;
    .end local v6    # "top":Lcom/android/launcher3/common/stage/Stage;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 531
    return-void

    .restart local v5    # "secondTop":Lcom/android/launcher3/common/stage/Stage;
    .restart local v6    # "top":Lcom/android/launcher3/common/stage/Stage;
    :cond_3
    move v0, v7

    .line 496
    goto :goto_0

    .line 510
    .restart local v0    # "isHome":Z
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v2    # "margin":I
    .restart local v3    # "panel":Landroid/widget/LinearLayout;
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_4
    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v9}, Lcom/android/launcher3/util/SecureFolderHelper;->isSecureFolderExist(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 511
    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    :goto_4
    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 513
    :cond_5
    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 522
    :cond_6
    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    invoke-direct {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getWeightSumPanel()I

    move-result v9

    int-to-float v9, v9

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "margin":I
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_7
    move v8, v7

    .line 527
    goto :goto_3
.end method

.method public setEditTextBg()V
    .locals 5

    .prologue
    const v4, 0x7f0200d0

    .line 166
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v0

    .line 167
    .local v0, "isEnableBtnBg":Z
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090107

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 168
    .local v1, "padding":I
    if-eqz v0, :cond_0

    .line 169
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 170
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 172
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 173
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 175
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mCreateFolderButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 176
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mCreateFolderButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 178
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 179
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 181
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 182
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 184
    :cond_0
    return-void
.end method

.method public setEnabledButton(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 301
    .local v0, "button":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 302
    if-eqz p2, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 303
    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setShadowLayer(Landroid/widget/TextView;Z)V

    .line 304
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mEnabledBtn:[Z

    aput-boolean p2, v1, p1

    .line 306
    :cond_0
    return-void

    .line 302
    :cond_1
    const v1, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method

.method setFolderSelect(Z)V
    .locals 0
    .param p1, "select"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mHasFolderItem:Z

    .line 188
    return-void
.end method

.method public showMultiSelectPanel(ZZ)V
    .locals 9
    .param p1, "show"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 191
    invoke-direct {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->cancelAnimation()V

    .line 193
    if-eqz p1, :cond_0

    move v0, v2

    .line 194
    .local v0, "alpha":F
    :goto_0
    if-eqz p1, :cond_1

    .line 196
    .local v2, "scale":F
    :goto_1
    if-eqz p2, :cond_2

    .line 197
    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [F

    aput v2, v7, v5

    invoke-static {p0, v6, v7}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 198
    .local v3, "scaleXAnim":Landroid/animation/ObjectAnimator;
    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [F

    aput v2, v7, v5

    invoke-static {p0, v6, v7}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 199
    .local v4, "scaleYAnim":Landroid/animation/ObjectAnimator;
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [F

    aput v0, v7, v5

    invoke-static {p0, v6, v7}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 201
    .local v1, "alphaAnim":Landroid/animation/ObjectAnimator;
    sget-object v6, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 202
    sget-object v6, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 203
    sget-object v6, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 205
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAnimator:Landroid/animation/AnimatorSet;

    .line 206
    iget-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v3, v7, v5

    aput-object v4, v7, v8

    const/4 v5, 0x2

    aput-object v1, v7, v5

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 207
    iget-object v5, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 208
    iget-object v5, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$3;

    invoke-direct {v6, p0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$3;-><init>(Lcom/android/launcher3/common/multiselect/MultiSelectPanel;Z)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 231
    iget-object v5, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 238
    .end local v1    # "alphaAnim":Landroid/animation/ObjectAnimator;
    .end local v3    # "scaleXAnim":Landroid/animation/ObjectAnimator;
    .end local v4    # "scaleYAnim":Landroid/animation/ObjectAnimator;
    :goto_2
    return-void

    .line 193
    .end local v0    # "alpha":F
    .end local v2    # "scale":F
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 194
    .restart local v0    # "alpha":F
    :cond_1
    const v2, 0x3f733333    # 0.95f

    goto :goto_1

    .line 233
    .restart local v2    # "scale":F
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setScaleX(F)V

    .line 234
    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setScaleY(F)V

    .line 235
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setAlpha(F)V

    .line 236
    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/16 v5, 0x8

    goto :goto_3
.end method

.method public updateEnabledButton(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "added"    # Z

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getEnabledButton()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 291
    .local v0, "btnEnableList":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 292
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 293
    .local v2, "key":I
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setEnabledButton(IZ)V

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    .end local v2    # "key":I
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->updateSecureFolderButton(Landroid/view/View;Z)V

    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->updateAddToPersonalButton(Landroid/view/View;Z)V

    .line 297
    return-void
.end method

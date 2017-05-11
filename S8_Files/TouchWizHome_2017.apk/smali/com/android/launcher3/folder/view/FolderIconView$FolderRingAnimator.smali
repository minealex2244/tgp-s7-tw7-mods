.class public Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;
.super Ljava/lang/Object;
.source "FolderIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/view/FolderIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderRingAnimator"
.end annotation


# static fields
.field public static sIconSize:I

.field public static sPreviewSize:I

.field private static sSharedInnerRingDrawable:[Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAcceptAnimator:Landroid/animation/ValueAnimator;

.field public mCellLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field public mCellX:I

.field public mCellY:I

.field public mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

.field public mInnerRingSize:F

.field private mNeutralAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 313
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sSharedInnerRingDrawable:[Landroid/graphics/drawable/Drawable;

    .line 314
    sput v1, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sPreviewSize:I

    .line 316
    sput v1, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sIconSize:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/folder/view/FolderIconView;I)V
    .locals 10
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "folderIconView"    # Lcom/android/launcher3/folder/view/FolderIconView;
    .param p3, "iconSize"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 323
    iput-object p2, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 324
    sput p3, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sPreviewSize:I

    .line 328
    # getter for: Lcom/android/launcher3/folder/view/FolderIconView;->sStaticValuesDirty:Z
    invoke-static {}, Lcom/android/launcher3/folder/view/FolderIconView;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 330
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FolderRingAnimator loading drawables on non-UI thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 331
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :cond_0
    sput p3, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sIconSize:I

    .line 335
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    move-result-object v0

    .line 336
    .local v0, "fs":Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    sput-object v1, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sSharedInnerRingDrawable:[Landroid/graphics/drawable/Drawable;

    .line 338
    if-eqz v0, :cond_1

    .line 339
    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sSharedInnerRingDrawable:[Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget v3, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sIconSize:I

    sget v4, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sIconSize:I

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderBackground(III)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v5

    .line 340
    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sSharedInnerRingDrawable:[Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget v3, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sIconSize:I

    sget v4, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sIconSize:I

    invoke-virtual {v0, v6, v3, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderBackground(III)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v6

    .line 341
    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sSharedInnerRingDrawable:[Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget v3, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sIconSize:I

    sget v4, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sIconSize:I

    invoke-virtual {v0, v7, v3, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderBackground(III)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v7

    .line 342
    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sSharedInnerRingDrawable:[Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget v3, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sIconSize:I

    sget v4, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sIconSize:I

    invoke-virtual {v0, v8, v3, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderBackground(III)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v8

    .line 343
    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sSharedInnerRingDrawable:[Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget v3, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sIconSize:I

    sget v4, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sIconSize:I

    invoke-virtual {v0, v9, v3, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderBackground(III)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v9

    .line 345
    :cond_1
    # setter for: Lcom/android/launcher3/folder/view/FolderIconView;->sStaticValuesDirty:Z
    invoke-static {v5}, Lcom/android/launcher3/folder/view/FolderIconView;->access$102(Z)Z

    .line 347
    .end local v0    # "fs":Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
    :cond_2
    return-void
.end method


# virtual methods
.method public animateToAcceptState()V
    .locals 4

    .prologue
    .line 350
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    .line 354
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 356
    sget v0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sPreviewSize:I

    .line 357
    .local v0, "previewSize":I
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator$1;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator$1;-><init>(Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 366
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 367
    return-void

    .line 353
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateToNaturalState()V
    .locals 4

    .prologue
    .line 370
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    .line 374
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 376
    sget v0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sPreviewSize:I

    .line 377
    .local v0, "previewSize":I
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator$2;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator$2;-><init>(Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 386
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator$3;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator$3;-><init>(Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 394
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 395
    return-void

    .line 373
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getCell([I)V
    .locals 2
    .param p1, "loc"    # [I

    .prologue
    .line 399
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellX:I

    aput v1, p1, v0

    .line 400
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellY:I

    aput v1, p1, v0

    .line 401
    return-void
.end method

.method public getInnerRingDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, "color":I
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 416
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/folder/FolderInfo;->color:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 417
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/folder/FolderInfo;->color:I

    sget-object v2, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sSharedInnerRingDrawable:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 418
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget v0, v1, Lcom/android/launcher3/folder/FolderInfo;->color:I

    .line 420
    :cond_0
    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->sSharedInnerRingDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getInnerRingSize()F
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mInnerRingSize:F

    return v0
.end method

.method public setCell(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 405
    iput p1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellX:I

    .line 406
    iput p2, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellY:I

    .line 407
    return-void
.end method

.method public setCellLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 411
    return-void
.end method

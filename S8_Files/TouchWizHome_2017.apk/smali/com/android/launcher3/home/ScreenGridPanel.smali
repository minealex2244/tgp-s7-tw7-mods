.class public Lcom/android/launcher3/home/ScreenGridPanel;
.super Landroid/widget/LinearLayout;
.source "ScreenGridPanel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenGridPanel"

.field private static mSpanDescriptionFormat:Ljava/lang/String;


# instance fields
.field private mApplyView:Landroid/view/View;

.field private mAppsCellX:I

.field private mAppsCellY:I

.field private mAppsGridButtonMap:[Ljava/lang/String;

.field private mCancelView:Landroid/view/View;

.field private mCancleButtonClickListener:Landroid/view/View$OnClickListener;

.field private mGridBtnLayout:Landroid/widget/LinearLayout;

.field private mGridButtonClickListener:Landroid/view/View$OnClickListener;

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mHomeGridInfoMap:[Ljava/lang/String;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mSaveButtonClickListener:Landroid/view/View$OnClickListener;

.field private mScreenGridButtonMap:[Ljava/lang/String;

.field private mScreenGridExplainView:Landroid/widget/TextView;

.field private mScreenGridTopContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/home/ScreenGridPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/ScreenGridPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeGridInfoMap:[Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsGridButtonMap:[Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    .line 57
    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    .line 254
    new-instance v0, Lcom/android/launcher3/home/ScreenGridPanel$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/ScreenGridPanel$1;-><init>(Lcom/android/launcher3/home/ScreenGridPanel;)V

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridButtonClickListener:Landroid/view/View$OnClickListener;

    .line 329
    new-instance v0, Lcom/android/launcher3/home/ScreenGridPanel$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/ScreenGridPanel$2;-><init>(Lcom/android/launcher3/home/ScreenGridPanel;)V

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mSaveButtonClickListener:Landroid/view/View$OnClickListener;

    .line 353
    new-instance v0, Lcom/android/launcher3/home/ScreenGridPanel$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/ScreenGridPanel$3;-><init>(Lcom/android/launcher3/home/ScreenGridPanel;)V

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancleButtonClickListener:Landroid/view/View$OnClickListener;

    .line 73
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/ScreenGridPanel;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridPanel;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/ScreenGridPanel;->getGridInfoIndex(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/ScreenGridPanel;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridPanel;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsGridButtonMap:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridPanel;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/home/HomeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridPanel;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridPanel;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridPanel;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/home/ScreenGridPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridPanel;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellX:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/launcher3/home/ScreenGridPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridPanel;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellX:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/launcher3/home/ScreenGridPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridPanel;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellY:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/launcher3/home/ScreenGridPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridPanel;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellY:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/launcher3/home/ScreenGridPanel;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridPanel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/ScreenGridPanel;->updateBtnForScreenGrid(Ljava/lang/String;)V

    return-void
.end method

.method private getButtonResId(Ljava/lang/String;)I
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 322
    const-string v1, "drawable/screen_grid_icon_"

    .line 323
    .local v1, "resName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "packageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private getGridInfoIndex(II)I
    .locals 9
    .param p1, "gridX"    # I
    .param p2, "gridY"    # I

    .prologue
    const/4 v4, 0x0

    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, "index":I
    iget-object v6, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeGridInfoMap:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v1, v6, v5

    .line 152
    .local v1, "map":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v2

    .line 153
    .local v2, "x":I
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v3

    .line 154
    .local v3, "y":I
    if-ne v2, p1, :cond_1

    if-ne v3, p2, :cond_1

    .line 155
    iget-object v5, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsGridButtonMap:[Ljava/lang/String;

    array-length v5, v5

    if-lt v0, v5, :cond_0

    move v0, v4

    .line 163
    .end local v0    # "index":I
    .end local v1    # "map":Ljava/lang/String;
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_0
    :goto_1
    return v0

    .line 160
    .restart local v0    # "index":I
    .restart local v1    # "map":Ljava/lang/String;
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 151
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v1    # "map":Ljava/lang/String;
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    move v0, v4

    .line 163
    goto :goto_1
.end method

.method private setSpanDescription(Landroid/view/View;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "setSelected"    # Z

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 383
    .local v1, "res":Landroid/content/res/Resources;
    const v4, 0x7f080092

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, "selected":Ljava/lang/String;
    const v4, 0x7f080068

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "notSelected":Ljava/lang/String;
    if-eqz p2, :cond_0

    move-object v2, v3

    .line 387
    .local v2, "selectTTS":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0801b8

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/launcher3/home/ScreenGridPanel;->mSpanDescriptionFormat:Ljava/lang/String;

    .line 388
    return-void

    .end local v2    # "selectTTS":Ljava/lang/String;
    :cond_0
    move-object v2, v0

    .line 385
    goto :goto_0
.end method

.method private updateBtnForScreenGrid(Ljava/lang/String;)V
    .locals 12
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 301
    if-nez p1, :cond_1

    .line 319
    :cond_0
    return-void

    .line 303
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 306
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 307
    iget-object v6, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 308
    .local v5, "v":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 310
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 311
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 312
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/launcher3/home/ScreenGridPanel;->setSpanDescription(Landroid/view/View;Z)V

    .line 314
    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    .line 315
    .local v1, "gridX":I
    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v2

    .line 316
    .local v2, "gridY":I
    sget-object v6, Lcom/android/launcher3/home/ScreenGridPanel;->mSpanDescriptionFormat:Ljava/lang/String;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 306
    .end local v1    # "gridX":I
    .end local v2    # "gridY":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private updateTextSize(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "button"    # Landroid/widget/TextView;

    .prologue
    .line 448
    if-eqz p1, :cond_0

    .line 449
    const/4 v0, 0x0

    .line 450
    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 449
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 452
    :cond_0
    return-void
.end method


# virtual methods
.method bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/launcher3/common/base/controller/ControllerBase;

    .prologue
    .line 167
    check-cast p1, Lcom/android/launcher3/home/HomeController;

    .end local p1    # "controller":Lcom/android/launcher3/common/base/controller/ControllerBase;
    iput-object p1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 168
    return-void
.end method

.method changeColorForBg(Z)V
    .locals 5
    .param p1, "whiteBg"    # Z

    .prologue
    .line 401
    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 403
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 404
    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 405
    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    .line 406
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    .line 405
    invoke-static {v3, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 407
    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 403
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 412
    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    invoke-static {v2, v3, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 415
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 416
    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancelView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 417
    return-void
.end method

.method public checkMatchGridOption(Ljava/lang/String;)Z
    .locals 4
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    .line 204
    .local v1, "grid":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "currentGrid":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    const/4 v2, 0x1

    .line 211
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkValidGridOption(Ljava/lang/String;)Z
    .locals 10
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 188
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 189
    .local v0, "cellX":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 191
    .local v1, "cellY":I
    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeGridInfoMap:[Ljava/lang/String;

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v4, v7, v6

    .line 192
    .local v4, "map":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 193
    .local v2, "homeX":I
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 195
    .local v3, "homeY":I
    if-ne v0, v2, :cond_1

    if-ne v1, v3, :cond_1

    .line 196
    const/4 v5, 0x1

    .line 199
    .end local v2    # "homeX":I
    .end local v3    # "homeY":I
    .end local v4    # "map":Ljava/lang/String;
    :cond_0
    return v5

    .line 191
    .restart local v2    # "homeX":I
    .restart local v3    # "homeY":I
    .restart local v4    # "map":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public getGriBtnLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method getScreenGridTopConatiner()Landroid/view/View;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    return-object v0
.end method

.method initScreenGridTopContainer()V
    .locals 8

    .prologue
    const v7, 0x7f0200d0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    if-nez v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0f0079

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    .line 218
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellX:I

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellY:I

    .line 221
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0f007d

    .line 222
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080090

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellX:I

    .line 224
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 223
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    invoke-static {v0, v1, v6}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    const v1, 0x7f0f007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    .line 231
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    const v1, 0x7f0f007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancelView:Landroid/view/View;

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mSaveButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancelView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancleButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    sget-object v1, Lcom/android/launcher3/home/HomeFocusHelper;->SCREENGRID_PANEL_TOP_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 236
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancelView:Landroid/view/View;

    sget-object v1, Lcom/android/launcher3/home/HomeFocusHelper;->SCREENGRID_PANEL_TOP_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 237
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 240
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 242
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancelView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    invoke-virtual {p0, v0, v5}, Lcom/android/launcher3/home/ScreenGridPanel;->setApplyDescription(Landroid/view/View;Z)V

    .line 246
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/ScreenGridPanel;->changeColorForBg(Z)V

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 252
    :cond_3
    return-void
.end method

.method onConfigurationChangedIfNeeded()V
    .locals 6

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 425
    .local v3, "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09004c

    .line 426
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 427
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/ScreenGridPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 430
    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 431
    .local v2, "explainViewLp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09004b

    .line 432
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 433
    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    .end local v2    # "explainViewLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const v5, 0x7f0f007a

    .line 437
    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 438
    .local v0, "buttonLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 439
    .local v1, "buttonLayoutLp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09004d

    .line 440
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 441
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    check-cast v4, Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/android/launcher3/home/ScreenGridPanel;->updateTextSize(Landroid/widget/TextView;)V

    .line 444
    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancelView:Landroid/view/View;

    check-cast v4, Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/android/launcher3/home/ScreenGridPanel;->updateTextSize(Landroid/widget/TextView;)V

    .line 445
    return-void
.end method

.method protected onFinishInflate()V
    .locals 21

    .prologue
    .line 78
    invoke-super/range {p0 .. p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 80
    .local v12, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v15}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v7

    .line 81
    .local v7, "grid":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v7, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v7, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "currentGrid":Ljava/lang/String;
    const v15, 0x7f0801b8

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/android/launcher3/home/ScreenGridPanel;->mSpanDescriptionFormat:Ljava/lang/String;

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v8

    .line 86
    .local v8, "isEnableBtnBg":Z
    const v15, 0x7f090119

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 87
    .local v11, "padding":I
    const v15, 0x7f090136

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 89
    .local v10, "margin":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    if-nez v15, :cond_0

    .line 90
    const v15, 0x7f0a0005

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    .line 93
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeGridInfoMap:[Ljava/lang/String;

    if-nez v15, :cond_1

    .line 94
    const v15, 0x7f0a0002

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeGridInfoMap:[Ljava/lang/String;

    .line 97
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsGridButtonMap:[Ljava/lang/String;

    if-nez v15, :cond_2

    .line 98
    const/high16 v15, 0x7f0a0000

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsGridButtonMap:[Ljava/lang/String;

    .line 101
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    array-length v15, v15

    if-lez v15, :cond_6

    .line 102
    const v15, 0x7f0f00c1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher3/home/ScreenGridPanel;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_0
    move/from16 v0, v17

    if-ge v15, v0, :cond_6

    aget-object v4, v16, v15

    .line 104
    .local v4, "buttonName":Ljava/lang/String;
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 105
    .local v14, "screenGridButton":Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/home/ScreenGridPanel;->getButtonResId(Ljava/lang/String;)I

    move-result v13

    .line 107
    .local v13, "resId":I
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 108
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v14, v0, v13, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 109
    const v18, 0x7f10000c

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridButtonClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    sget-object v18, Lcom/android/launcher3/home/HomeFocusHelper;->SCREENGRID_PANEL_OPTION_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 112
    const v18, 0x7f02006f

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 114
    if-eqz v8, :cond_3

    .line 115
    const v18, 0x7f0200d0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 116
    invoke-virtual {v14, v11, v11, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 119
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "currentLanguage":Ljava/lang/String;
    const-string v18, "ar"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, "fa"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 123
    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    .line 125
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v19

    .line 124
    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "arabicButtonName":Ljava/lang/String;
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .end local v3    # "arabicButtonName":Ljava/lang/String;
    :goto_1
    const v18, 0x7f090138

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 131
    const v18, 0x7f09008e

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setHeight(I)V

    .line 132
    const/16 v18, 0x31

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 133
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 134
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 136
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x2

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v9, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 138
    .local v9, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v10, v0, v10, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 140
    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 128
    .end local v9    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 145
    .end local v4    # "buttonName":Ljava/lang/String;
    .end local v6    # "currentLanguage":Ljava/lang/String;
    .end local v13    # "resId":I
    .end local v14    # "screenGridButton":Landroid/widget/TextView;
    :cond_6
    return-void
.end method

.method setApplyDescription(Landroid/view/View;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "setApply"    # Z

    .prologue
    const v5, 0x7f08000a

    .line 369
    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f080026

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "enabled":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "buttonString":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "applyDescriptionFormat":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 379
    return-void

    .line 376
    .end local v0    # "applyDescriptionFormat":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "applyDescriptionFormat":Ljava/lang/String;
    goto :goto_0
.end method

.method public setScreenGridProxy(Ljava/lang/String;)V
    .locals 11
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 171
    const/4 v2, 0x0

    .line 172
    .local v2, "child":I
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 173
    .local v0, "cellX":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 174
    .local v1, "cellY":I
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeGridInfoMap:[Ljava/lang/String;

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v5, v8, v6

    .line 175
    .local v5, "map":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 176
    .local v3, "homeX":I
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 178
    .local v4, "homeY":I
    if-ne v0, v3, :cond_1

    if-ne v1, v4, :cond_1

    .line 179
    iget-object v6, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridButtonClickListener:Landroid/view/View$OnClickListener;

    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 185
    .end local v3    # "homeX":I
    .end local v4    # "homeY":I
    .end local v5    # "map":Ljava/lang/String;
    :cond_0
    return-void

    .line 182
    .restart local v3    # "homeX":I
    .restart local v4    # "homeY":I
    .restart local v5    # "map":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 174
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method updateButtonStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 391
    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    .line 392
    .local v1, "grid":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "currentGrid":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/ScreenGridPanel;->updateBtnForScreenGrid(Ljava/lang/String;)V

    .line 395
    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 396
    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 397
    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/home/ScreenGridPanel;->setApplyDescription(Landroid/view/View;Z)V

    .line 398
    return-void
.end method

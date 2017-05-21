.class public Lcom/sec/android/app/camera/menu/ProColorTuneList;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ProColorTuneList.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;,
        Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_150:I = 0x96

.field private static final TAG:Ljava/lang/String; = "ProColorTuneList"


# instance fields
.field private final COLORTUNE_LIST_CENTER_ITEM_HEIGHT:I

.field private final COLORTUNE_LIST_ITEM_WIDTH:I

.field private final COLORTUNE_LIST_TOP_MARGIN:I

.field private final PRO_ITEM_WIDTH:I

.field private final PRO_LIST_GROUP_WIDTH:I

.field private final PRO_LIST_RIGHT_MARGIN:I

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/samsung/android/glview/GLList;

.field private mMenuAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

.field private mProColorTuneListSelectListener:Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;

.field private mProListGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mShowAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFF)V
    .locals 8
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x96

    .line 62
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 42
    const v0, 0x7f0a0290

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->PRO_ITEM_WIDTH:I

    .line 43
    const v0, 0x7f0a0042

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->PRO_LIST_RIGHT_MARGIN:I

    .line 44
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->PRO_LIST_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->PRO_ITEM_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->PRO_LIST_GROUP_WIDTH:I

    .line 45
    const v0, 0x7f0a00f3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->COLORTUNE_LIST_ITEM_WIDTH:I

    .line 46
    const v0, 0x7f0a02d4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->COLORTUNE_LIST_CENTER_ITEM_HEIGHT:I

    .line 47
    const v0, 0x7f0a02d5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->COLORTUNE_LIST_TOP_MARGIN:I

    .line 52
    iput-object v7, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 53
    new-instance v0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;

    invoke-direct {v0, p0, v7}, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;-><init>(Lcom/sec/android/app/camera/menu/ProColorTuneList;Lcom/sec/android/app/camera/menu/ProColorTuneList$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mMenuAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mItemList:Landroid/util/SparseArray;

    .line 63
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 64
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ColorTuneResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/ColorTuneResourceData;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->initProColorTuneList()V

    .line 68
    new-instance v0, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v6, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mShowAnimation:Landroid/view/animation/Animation;

    .line 69
    new-instance v0, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v6, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mHideAnimation:Landroid/view/animation/Animation;

    .line 70
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/ProColorTuneList;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneList;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/ProColorTuneList;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneList;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/ProColorTuneList;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneList;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/ProColorTuneList;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneList;

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->COLORTUNE_LIST_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/ProColorTuneList;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneList;

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->COLORTUNE_LIST_TOP_MARGIN:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/ProColorTuneList;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneList;

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->COLORTUNE_LIST_CENTER_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/ProColorTuneList;)Lcom/samsung/android/glview/GLList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneList;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mList:Lcom/samsung/android/glview/GLList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/menu/ProColorTuneList;)Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneList;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mProColorTuneListSelectListener:Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;

    return-object v0
.end method

.method private initProColorTuneList()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 115
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->PRO_LIST_GROUP_WIDTH:I

    int-to-float v4, v3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v3

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mProListGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 117
    new-instance v0, Lcom/samsung/android/glview/GLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->COLORTUNE_LIST_ITEM_WIDTH:I

    int-to-float v4, v3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v3

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLList;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mList:Lcom/samsung/android/glview/GLList;

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mList:Lcom/samsung/android/glview/GLList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLList;->setOverScrollEffect(Z)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mList:Lcom/samsung/android/glview/GLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mMenuAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mList:Lcom/samsung/android/glview/GLList;

    const-string v1, "COLORTUNE_EFFECT_LIST"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLList;->setObjectTag(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mProListGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mProListGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 125
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;
    .locals 1
    .param p1, "commandId"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

    return-object v0
.end method

.method public hideList()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mHideAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mHideAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 79
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->startAnimation()V

    .line 81
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setVisibility(I)V

    .line 82
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    .line 88
    return-void
.end method

.method public refreshColorTuneItems()V
    .locals 5

    .prologue
    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    .line 93
    .local v2, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

    .line 95
    .local v1, "item":Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;
    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->refreshItem()V

    .line 91
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;
    .end local v2    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :cond_1
    return-void
.end method

.method public setOnProColorTuneListSelectListener(Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mProColorTuneListSelectListener:Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;

    .line 103
    return-void
.end method

.method public showList()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mShowAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setAnimation(Landroid/view/animation/Animation;)V

    .line 108
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->startAnimation()V

    .line 110
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setVisibility(I)V

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->refreshColorTuneItems()V

    .line 112
    return-void
.end method

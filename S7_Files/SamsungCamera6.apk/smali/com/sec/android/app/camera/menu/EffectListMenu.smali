.class public Lcom/sec/android/app/camera/menu/EffectListMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "EffectListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectListMenu"


# instance fields
.field private final EFFECT_ITEM_HEIGHT:I

.field private final EFFECT_ITEM_WIDTH:I

.field private final EFFECT_LINE_THICKNESS:I

.field private final EFFECT_LIST_MENU_HEIGHT:F

.field private final EFFECT_LIST_MENU_WIDTH:F

.field private final EFFECT_MENU_LIST_BOTTOM_MARGIN:F

.field private final EFFECT_MENU_LIST_PADDING:I

.field private final EFFECT_MENU_LIST_PORTRAIT_TOP_MARGIN:F

.field private final EFFECT_MENU_SCROLLBAR_PADDING:I

.field private final mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

.field protected mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

.field protected mFlingGestureDetector:Landroid/view/GestureDetector;

.field private final mHideAnimation_0:Landroid/view/animation/Animation;

.field private final mHideAnimation_180:Landroid/view/animation/Animation;

.field private final mHideAnimation_270:Landroid/view/animation/Animation;

.field private final mHideAnimation_90:Landroid/view/animation/Animation;

.field private final mItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/EffectListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/samsung/android/glview/GLList;

.field private final mMute:Z

.field private mOrientation:I

.field private final mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private final mShowAnimation_0:Landroid/view/animation/Animation;

.field private final mShowAnimation_180:Landroid/view/animation/Animation;

.field private final mShowAnimation_270:Landroid/view/animation/Animation;

.field private final mShowAnimation_90:Landroid/view/animation/Animation;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 10
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p7, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p8, "zOrder"    # I

    .prologue
    .line 84
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/camera/menu/EffectListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    .line 85
    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V
    .locals 13
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p7, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p8, "zOrder"    # I
    .param p9, "isMuted"    # Z

    .prologue
    .line 89
    const v1, 0x7f0b02e6

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v7, v1

    const v1, 0x7f0b02e7

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v8, v1

    const/4 v11, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;FFLcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    .line 56
    const v1, 0x7f0b02e5

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_ITEM_WIDTH:I

    .line 57
    const v1, 0x7f0b02e4

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_ITEM_HEIGHT:I

    .line 58
    const v1, 0x7f0b02df

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_LINE_THICKNESS:I

    .line 59
    const v1, 0x7f0b02e9

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_SCROLLBAR_PADDING:I

    .line 60
    const v1, 0x7f0b02e1

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_LIST_PADDING:I

    .line 61
    const v1, 0x7f0b02e2

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_LIST_PORTRAIT_TOP_MARGIN:F

    .line 62
    const v1, 0x7f0b02e0

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_LIST_BOTTOM_MARGIN:F

    .line 65
    new-instance v1, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/EffectListMenu;Lcom/sec/android/app/camera/menu/EffectListMenu$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    .line 66
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mItemList:Landroid/util/SparseArray;

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    .line 78
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mOrientation:I

    .line 79
    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_ITEM_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_SCROLLBAR_PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_LIST_MENU_WIDTH:F

    .line 80
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_LIST_MENU_HEIGHT:F

    .line 91
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 92
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mMute:Z

    .line 94
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mOrientation:I

    .line 96
    new-instance v1, Lcom/samsung/android/glview/GLList;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_LIST_PORTRAIT_TOP_MARGIN:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_LIST_MENU_WIDTH:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_LIST_BOTTOM_MARGIN:F

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_LIST_MENU_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_LIST_MENU_HEIGHT:F

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLList;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    .line 97
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V

    .line 98
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLList;->setOverScrollEffect(Z)V

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    const v2, 0x7f0202cf

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLList;->setScrollBarResource(I)V

    .line 100
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLList;->setScrollBarAlpha(F)V

    .line 101
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_SCROLLBAR_PADDING:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLList;->setScrollBarPadding(F)V

    .line 102
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_LIST_MENU_WIDTH:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_LIST_MENU_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLList;->setSize(FF)V

    .line 104
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v1, p0}, Lcom/samsung/android/glview/GLList;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 107
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/EffectListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const v4, 0x7f0e0008

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    new-instance v5, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v5}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mShowAnimation_0:Landroid/view/animation/Animation;

    .line 110
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const v4, 0x7f0e0008

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    new-instance v5, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v5}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mShowAnimation_90:Landroid/view/animation/Animation;

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f0e0008

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    new-instance v5, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v5}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mShowAnimation_180:Landroid/view/animation/Animation;

    .line 112
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const v4, 0x7f0e0008

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    new-instance v5, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v5}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mShowAnimation_270:Landroid/view/animation/Animation;

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mHideAnimation_0:Landroid/view/animation/Animation;

    .line 115
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mHideAnimation_90:Landroid/view/animation/Animation;

    .line 116
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mHideAnimation_180:Landroid/view/animation/Animation;

    .line 117
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mHideAnimation_270:Landroid/view/animation/Animation;

    .line 119
    new-instance v1, Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-direct {v1}, Lcom/sec/android/app/camera/util/CameraGestureListener;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 120
    new-instance v12, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 121
    .local v12, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/sec/android/app/camera/menu/EffectListMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/EffectListMenu$1;-><init>(Lcom/sec/android/app/camera/menu/EffectListMenu;)V

    invoke-virtual {v12, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->registerFlingEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;)V

    .line 130
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/EffectListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectListMenu;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/EffectListMenu;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectListMenu;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/EffectListMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectListMenu;

    .prologue
    .line 53
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/EffectListMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectListMenu;

    .prologue
    .line 53
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/EffectListMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectListMenu;

    .prologue
    .line 53
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_LINE_THICKNESS:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/EffectListMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectListMenu;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mMute:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/EffectListMenu;)Lcom/samsung/android/glview/GLList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectListMenu;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    return-object v0
.end method

.method private refreshItemBG()V
    .locals 5

    .prologue
    .line 304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 305
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    .line 306
    .local v2, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/EffectListItem;

    .line 308
    .local v1, "item":Lcom/sec/android/app/camera/widget/gl/EffectListItem;
    if-nez v1, :cond_1

    .line 317
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/EffectListItem;
    .end local v2    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :cond_0
    return-void

    .line 311
    .restart local v1    # "item":Lcom/sec/android/app/camera/widget/gl/EffectListItem;
    .restart local v2    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->getCommandId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 312
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->setSelectBGVisibility(I)V

    .line 304
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->setSelectBGVisibility(I)V

    goto :goto_1
.end method

.method private refreshItemBG(Lcom/samsung/android/glview/GLView;)V
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 326
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    .line 327
    .local v2, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/EffectListItem;

    .line 329
    .local v1, "item":Lcom/sec/android/app/camera/widget/gl/EffectListItem;
    if-nez v1, :cond_1

    .line 338
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/EffectListItem;
    .end local v2    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :cond_0
    return-void

    .line 332
    .restart local v1    # "item":Lcom/sec/android/app/camera/widget/gl/EffectListItem;
    .restart local v2    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->getCommandId()I

    move-result v4

    move-object v3, p1

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;->getCommandID()I

    move-result v3

    if-ne v4, v3, :cond_2

    .line 333
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->setSelectBGVisibility(I)V

    .line 325
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->setSelectBGVisibility(I)V

    goto :goto_1
.end method

.method private refreshMenuPosition()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 341
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLList;->getContentHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_LIST_MENU_HEIGHT:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_LIST_MENU_HEIGHT:F

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLList;->getContentHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto :goto_0
.end method

.method private setAnimation()V
    .locals 2

    .prologue
    .line 353
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mOrientation:I

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mShowAnimation_0:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mHideAnimation_0:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 366
    :goto_0
    return-void

    .line 356
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mShowAnimation_90:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mHideAnimation_90:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 359
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mShowAnimation_180:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mHideAnimation_180:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mShowAnimation_270:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mHideAnimation_270:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mItemList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->clear()V

    .line 139
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 141
    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    .line 142
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    .line 143
    return-void
.end method

.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return v1

    .line 150
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/EffectListMenu;->refreshItemBG(Lcom/samsung/android/glview/GLView;)V

    .line 151
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->hideMenu()V

    goto :goto_0
.end method

.method public onFlingDirection(II)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 158
    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mOrientation:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 159
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/EffectListMenu;->onOrientationChanged(I)V

    .line 161
    :cond_0
    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 162
    :cond_1
    if-nez p1, :cond_3

    .line 163
    const/4 p1, 0x1

    .line 169
    :cond_2
    :goto_0
    if-nez p1, :cond_4

    .line 170
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->hideMenu()V

    .line 173
    :goto_1
    return v0

    .line 164
    :cond_3
    if-ne p1, v0, :cond_2

    .line 165
    const/4 p1, 0x0

    goto :goto_0

    .line 173
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onHide()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 232
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 233
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startVoiceRecognizer()V

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mHideAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_1

    .line 236
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideBlackOverlay()V

    .line 243
    :goto_0
    const v2, 0x7f0e0001

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 244
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 245
    new-instance v2, Lcom/sec/android/app/camera/menu/EffectListMenu$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/EffectListMenu$2;-><init>(Lcom/sec/android/app/camera/menu/EffectListMenu;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 259
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuAnimation(Landroid/view/animation/Animation;)V

    .line 261
    return-void

    .line 238
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_1
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 239
    .local v1, "backgroundAnimation":Landroid/view/animation/Animation;
    const v2, 0x7f0e0007

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 240
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideBlackOverlayWithAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 266
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 271
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 178
    sparse-switch p1, :sswitch_data_0

    .line 195
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 180
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->hideMenu()V

    goto :goto_1

    .line 183
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->hideMenu()V

    goto :goto_0

    .line 188
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->hideMenu()V

    goto :goto_0

    .line 178
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x1b -> :sswitch_1
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 200
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 201
    iput p1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mOrientation:I

    .line 203
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->setAnimation()V

    .line 205
    :cond_0
    return-void
.end method

.method public onScrollDirection(II)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/menu/EffectListMenu;->onFlingDirection(II)Z

    move-result v0

    return v0
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 275
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mOrientation:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 276
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->onOrientationChanged(I)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-nez v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLList;->refreshList()V

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopVoiceRecognizer()V

    .line 285
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->setAnimation()V

    .line 286
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->refreshMenuPosition()V

    .line 287
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->refreshItemBG()V

    .line 288
    return-void
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLList;->showScrollBar()V

    .line 293
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 298
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x1

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "EffectThumbnailListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;
.implements Lcom/samsung/android/glview/GLView$DragListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/glview/GLAbsList$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;,
        Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;,
        Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;,
        Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;,
        Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;
    }
.end annotation


# static fields
.field private static final ANIMATION_TYPE_NONE:I = 0x0

.field private static final ANIMATION_TYPE_SWIPE:I = 0x2

.field private static final ANIMATION_TYPE_TAP:I = 0x1

.field private static final CATEGORY_FIT_ITEM_MAX_COUNT:I = 0x8

.field private static final EDIT_MODE:I = 0x1

.field private static final EFFECT_COLS:I = 0x2

.field private static final EFFECT_ROWS:I = 0x4

.field private static final KEY_STICKER_RECT_POSITION:Ljava/lang/String; = "pref_sticker_rect_position"

.field private static final NORMAL_MODE:I = 0x0

.field private static final SCROLL_BAR_ALPHA_VALUE:F = 0.6f

.field private static final STICKER_COLS:I = 0x2

.field private static final STICKER_ROWS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "EffectThumbnailListMenu"

.field private static final mCurrentBeautyCategoryResourceListLock:Ljava/lang/Object;

.field private static final mCurrentResourceListLock:Ljava/lang/Object;


# instance fields
.field private final BUTTON_FONT_COLOR:I

.field private final EFFECT_BACK_ICON_MARGIN:I

.field private final EFFECT_BACK_ICON_WIDTH:I

.field private final EFFECT_BUTTON_HEIGHT:I

.field private final EFFECT_CATEGORY_AREA_WIDTH:I

.field private final EFFECT_CATEGORY_BUTTON_WIDTH:I

.field private final EFFECT_CATEGORY_HEIGHT:I

.field private final EFFECT_CATEGORY_LIMIT_SPACING:F

.field private final EFFECT_CATEGORY_SCROLL_MARGIN:I

.field private final EFFECT_DONE_BUTTON_RIGHT_MARGIN:I

.field private final EFFECT_DONE_BUTTON_TEXT_SIZE:I

.field private final EFFECT_DONE_BUTTON_UPPER_MARGIN:I

.field private final EFFECT_DOWNLOAD_BUTTON_SIDE_MARGIN:I

.field private final EFFECT_DOWNLOAD_BUTTON_WIDTH:I

.field private final EFFECT_EDIT_BUTTON_LEFT_MARGIN:I

.field private final EFFECT_EDIT_BUTTON_RIGHT_MARGIN:I

.field private final EFFECT_EDIT_BUTTON_TEXT_SIZE:I

.field private final EFFECT_ITEM_HEIGHT:I

.field private final EFFECT_ITEM_WIDTH:I

.field private final EFFECT_LINE_THICKNESS:I

.field private final EFFECT_MENU_BOTTOM_AREA_WIDTH:I

.field private final EFFECT_MENU_GROUP_HEIGHT:I

.field private final EFFECT_MENU_GROUP_POS_X:I

.field private final EFFECT_MENU_GROUP_WIDTH:I

.field private final EFFECT_MENU_HEIGHT:I

.field private final EFFECT_MENU_POS_X:I

.field private final EFFECT_MENU_POS_Y:I

.field private final EFFECT_MENU_SIDE_MARGIN:I

.field private final EFFECT_MENU_WIDTH:I

.field private final EFFECT_NO_EFFECT_BUTTON_HEIGHT:I

.field private final EFFECT_NO_EFFECT_BUTTON_LANDSCAPE_OFFSET_Y:I

.field private final EFFECT_NO_EFFECT_BUTTON_LEFT_MARGIN:I

.field private final EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

.field private final EFFECT_NO_EFFECT_BUTTON_PORTRAIT_OFFSET_Y:I

.field private final EFFECT_NO_EFFECT_BUTTON_SIZE:I

.field private final EFFECT_STANDARD_UPPER_LINE:I

.field private final LIST_MENU_TRANSLATE_OFFSET:I

.field private final NEW_BADGE_ICON_OFFSET:I

.field private final NEW_BADGE_ICON_WIDTH:I

.field private final NEW_BADGE_TEXT_SIZE:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final STICKER_ITEM_HEIGHT:I

.field private final STICKER_ITEM_WIDTH:I

.field private final STICKER_LANDSCAPE_LIST_HEIGHT:I

.field private final STICKER_LANDSCAPE_LIST_LEFT_MARGIN:I

.field private final STICKER_LANDSCAPE_LIST_TOP_MARGIN:I

.field private final STICKER_LANDSCAPE_LIST_WIDTH:I

.field private final STICKER_LIST_HORIZONTAL_SPACING:I

.field private final STICKER_LIST_VERTICAL_SPACING:I

.field private final STICKER_PORTRAIT_LIST_HEIGHT:I

.field private final STICKER_PORTRAIT_LIST_LEFT_MARGIN:I

.field private final STICKER_PORTRAIT_LIST_TOP_MARGIN:I

.field private final STICKER_PORTRAIT_LIST_WIDTH:I

.field private final mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

.field private mBackButton:Lcom/samsung/android/glview/GLButton;

.field private mBackKeyPressed:Z

.field private final mBeautyAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

.field private mBeautyCategoryResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private final mBeautyDragDropItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;",
            ">;"
        }
    .end annotation
.end field

.field private mBeautyFirstBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

.field private final mBeautyItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/EffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBeautyLastBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

.field private mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

.field private mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

.field private mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mCategoryAdapter:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;

.field private mCategoryBackground:Lcom/samsung/android/glview/GLRectangle;

.field private final mCategoryItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

.field private final mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentMode:I

.field private final mCurrentResourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mDoneButton:Lcom/samsung/android/glview/GLButton;

.field private mDoneText:Lcom/samsung/android/glview/GLText;

.field private mDownloadButton:Lcom/samsung/android/glview/GLButton;

.field private final mDragDropItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;",
            ">;"
        }
    .end annotation
.end field

.field private mDragHelpToast:Landroid/widget/Toast;

.field private mEditButton:Lcom/samsung/android/glview/GLButton;

.field private mEditText:Lcom/samsung/android/glview/GLText;

.field private mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

.field private mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

.field private mFirstBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

.field private final mHideAnimation_0:Landroid/view/animation/Animation;

.field private final mHideAnimation_180:Landroid/view/animation/Animation;

.field private final mHideAnimation_270:Landroid/view/animation/Animation;

.field private final mHideAnimation_90:Landroid/view/animation/Animation;

.field private mIsDownloadEffectSupported:Z

.field private mIsNeedShowBaseMenu:Z

.field private mIsNeedToSetScreenId:Z

.field private final mItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/EffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

.field private mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

.field private final mListMenuGestureEventListener:Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;

.field private mListMenuGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

.field private final mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mNewBadge:Lcom/samsung/android/glview/GLText;

.field private mNormalModeDrag:Z

.field private mOrientation:I

.field private final mPreviousBeautyResourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousResourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousScreenId:Ljava/lang/String;

.field private mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

.field private mRemoveEffectText:Lcom/samsung/android/glview/GLText;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private final mShowAnimation_0:Landroid/view/animation/Animation;

.field private final mShowAnimation_180:Landroid/view/animation/Animation;

.field private final mShowAnimation_270:Landroid/view/animation/Animation;

.field private final mShowAnimation_90:Landroid/view/animation/Animation;

.field private mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/glview/GLGridList;",
            ">;"
        }
    .end annotation
.end field

.field private mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceListLock:Ljava/lang/Object;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceListLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 27
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p7, "zOrder"    # I

    .prologue
    .line 295
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    int-to-float v9, v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    int-to-float v10, v1

    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-direct/range {v1 .. v13}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;FFFFLcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    .line 111
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    .line 112
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    .line 114
    const v1, 0x7f0a02f9

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_SIDE_MARGIN:I

    .line 115
    const v1, 0x7f0a02f8

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_LINE_THICKNESS:I

    .line 116
    const v1, 0x7f0a02fb

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    .line 117
    const v1, 0x7f0a0317

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_STANDARD_UPPER_LINE:I

    .line 118
    const v1, 0x7f0a030d

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    .line 120
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_LINE_THICKNESS:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I

    .line 121
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_SIDE_MARGIN:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_POS_X:I

    .line 122
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_SIDE_MARGIN:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_POS_Y:I

    .line 123
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_LINE_THICKNESS:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    .line 124
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_HEIGHT:I

    .line 125
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    .line 126
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_SIDE_MARGIN:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_LINE_THICKNESS:I

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_WIDTH:I

    .line 127
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    .line 128
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_WIDTH:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    .line 129
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_HEIGHT:I

    .line 131
    const v1, 0x7f0a03a3

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_WIDTH:I

    .line 132
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_WIDTH:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_HEIGHT:I

    .line 133
    const v1, 0x7f0a03a4

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_HORIZONTAL_SPACING:I

    .line 134
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_WIDTH:I

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x6

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_VERTICAL_SPACING:I

    .line 135
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_HORIZONTAL_SPACING:I

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_VERTICAL_SPACING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_WIDTH:I

    .line 136
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_HEIGHT:I

    mul-int/lit8 v1, v1, 0x5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_VERTICAL_SPACING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_HEIGHT:I

    .line 137
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_WIDTH:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_LEFT_MARGIN:I

    .line 138
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_VERTICAL_SPACING:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_TOP_MARGIN:I

    .line 139
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_HEIGHT:I

    mul-int/lit8 v1, v1, 0x5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_VERTICAL_SPACING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_VERTICAL_SPACING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_WIDTH:I

    .line 140
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_HORIZONTAL_SPACING:I

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_HEIGHT:I

    .line 141
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_LEFT_MARGIN:I

    .line 142
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_WIDTH:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_HEIGHT:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_TOP_MARGIN:I

    .line 144
    const v1, 0x7f0d002c

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->BUTTON_FONT_COLOR:I

    .line 145
    const v1, 0x7f0a02fa

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_HEIGHT:I

    .line 146
    const v1, 0x7f0a0305

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_RIGHT_MARGIN:I

    .line 147
    const v1, 0x7f0a0306

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_TEXT_SIZE:I

    .line 148
    const v1, 0x7f0a0305

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_RIGHT_MARGIN:I

    .line 149
    const v1, 0x7f0a0307

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_UPPER_MARGIN:I

    .line 150
    const v1, 0x7f0a02ff

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_TEXT_SIZE:I

    .line 151
    const v1, 0x7f0a0167

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_WIDTH:I

    .line 152
    const v1, 0x7f0a0022

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_MARGIN:I

    .line 153
    const v1, 0x7f0a030e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->NEW_BADGE_ICON_OFFSET:I

    .line 154
    const v1, 0x7f0a0357

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->NEW_BADGE_ICON_WIDTH:I

    .line 155
    const v1, 0x7f0a0358

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->NEW_BADGE_TEXT_SIZE:I

    .line 158
    const v1, 0x7f0a02fe

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_SCROLL_MARGIN:I

    .line 159
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_HEIGHT:I

    .line 160
    const v1, 0x7f0a02fc

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_BUTTON_WIDTH:I

    .line 161
    const v1, 0x7f0a02fd

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_LIMIT_SPACING:F

    .line 163
    const v1, 0x7f0a0313

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    .line 164
    const v1, 0x7f0a0314

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_PORTRAIT_OFFSET_Y:I

    .line 165
    const v1, 0x7f0a0310

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_LANDSCAPE_OFFSET_Y:I

    .line 166
    const v1, 0x7f0a030f

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_HEIGHT:I

    .line 167
    const v1, 0x7f0a0315

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_SIZE:I

    .line 168
    const v1, 0x7f0a0311

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_LEFT_MARGIN:I

    .line 170
    const v1, 0x7f0a0301

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    .line 171
    const v1, 0x7f0a0300

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_SIDE_MARGIN:I

    .line 172
    const v1, 0x7f0a0302

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_LEFT_MARGIN:I

    .line 174
    new-instance v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    .line 175
    new-instance v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    .line 177
    new-instance v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryAdapter:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;

    .line 178
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    .line 179
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyItemList:Landroid/util/SparseArray;

    .line 180
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragDropItemList:Ljava/util/ArrayList;

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyDragDropItemList:Ljava/util/ArrayList;

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousResourceList:Ljava/util/ArrayList;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousBeautyResourceList:Ljava/util/ArrayList;

    .line 213
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 221
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    .line 226
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentMode:I

    .line 227
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_EFFECT:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsDownloadEffectSupported:Z

    .line 228
    new-instance v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGestureEventListener:Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;

    .line 258
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackKeyPressed:Z

    .line 259
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNormalModeDrag:Z

    .line 261
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsNeedShowBaseMenu:Z

    .line 262
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsNeedToSetScreenId:Z

    .line 265
    new-instance v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$2;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    .line 296
    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 298
    new-instance v1, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 299
    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ExternalBasicEffectResourceData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/resourcedata/ExternalBasicEffectResourceData;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 300
    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ExternalBeautyEffectResourceData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/resourcedata/ExternalBeautyEffectResourceData;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyCategoryResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 302
    sget-object v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceListLock:Ljava/lang/Object;

    monitor-enter v2

    .line 303
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    move/from16 v0, v25

    if-ge v0, v1, :cond_0

    .line 304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 306
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    sget-object v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceListLock:Ljava/lang/Object;

    monitor-enter v2

    .line 308
    const/16 v25, 0x0

    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyCategoryResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    move/from16 v0, v25

    if-ge v0, v1, :cond_1

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyCategoryResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 308
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 306
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 311
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 313
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    .line 315
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_EFFECT:Z

    if-eqz v1, :cond_3

    .line 316
    new-instance v1, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    int-to-float v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    int-to-float v6, v6

    const v7, 0x7f020202

    const v8, 0x7f020203

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_SIDE_MARGIN:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 319
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_SIDE_MARGIN:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 320
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_SIDE_MARGIN:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    const v2, 0x7f09002d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    const/16 v2, 0x232a

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 323
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 324
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 326
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v1

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachImageMode()Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsDownloadEffectSupported:Z

    .line 327
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsDownloadEffectSupported:Z

    if-nez v1, :cond_2

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 331
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->NEW_BADGE_ICON_OFFSET:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->NEW_BADGE_ICON_WIDTH:I

    sub-int v26, v1, v2

    .line 332
    .local v26, "newBadgePosX":I
    new-instance v1, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->NEW_BADGE_ICON_WIDTH:I

    int-to-float v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->NEW_BADGE_ICON_WIDTH:I

    int-to-float v6, v6

    const-string v7, "N"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->NEW_BADGE_TEXT_SIZE:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->BUTTON_FONT_COLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    .line 333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    add-int v3, v3, v26

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_SIDE_MARGIN:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->NEW_BADGE_ICON_OFFSET:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->NEW_BADGE_ICON_OFFSET:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_SIDE_MARGIN:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    add-int/2addr v4, v6

    sub-int v4, v4, v26

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    add-int/2addr v3, v4

    sub-int v3, v3, v26

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_SIDE_MARGIN:I

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->NEW_BADGE_ICON_OFFSET:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const v2, 0x7f020286

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setNinePatchBackground(I)Z

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 344
    .end local v26    # "newBadgePosX":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090165

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 345
    .local v7, "editText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_TEXT_SIZE:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_RIGHT_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v5, v1, v2

    .line 346
    .local v5, "editTextWidth":F
    new-instance v1, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_HEIGHT:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_TEXT_SIZE:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->BUTTON_FONT_COLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    .line 347
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setAlpha(F)V

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 349
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    const/16 v2, 0x232e

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTag(I)V

    .line 352
    new-instance v8, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_HEIGHT:I

    int-to-float v13, v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v12, v5

    invoke-direct/range {v8 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/16 v2, 0x232e

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 357
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 358
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_STANDARD_UPPER_LINE:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_LEFT_MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_UPPER_MARGIN:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_MARGIN:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 360
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sub-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_RIGHT_MARGIN:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_UPPER_MARGIN:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_MARGIN:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 368
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090163

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    .line 369
    .local v14, "doneText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_TEXT_SIZE:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v14, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_RIGHT_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v12, v1, v2

    .line 371
    .local v12, "doneTextWidth":F
    new-instance v8, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_HEIGHT:I

    int-to-float v13, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_TEXT_SIZE:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float v15, v1, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->BUTTON_FONT_COLOR:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 373
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    const/16 v2, 0x232e

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTag(I)V

    .line 377
    new-instance v15, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_HEIGHT:I

    int-to-float v0, v1

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v19, v12

    invoke-direct/range {v15 .. v24}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    .line 378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/16 v2, 0x232e

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 383
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_STANDARD_UPPER_LINE:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_LEFT_MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_UPPER_MARGIN:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_MARGIN:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_UPPER_MARGIN:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_UPPER_MARGIN:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_MARGIN:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 395
    :goto_4
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 396
    new-instance v15, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_WIDTH:I

    int-to-float v0, v1

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_WIDTH:I

    int-to-float v0, v1

    move/from16 v20, v0

    const v21, 0x7f020284

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_MARGIN:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_WIDTH:I

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_MARGIN:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 400
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_WIDTH:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_MARGIN:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 407
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0901d0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 409
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 412
    new-instance v15, Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    int-to-float v0, v1

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v0, v1

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_BUTTON_WIDTH:I

    int-to-float v0, v1

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    invoke-direct/range {v15 .. v24}, Lcom/samsung/android/glview/GLGridList;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFI)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    .line 413
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryAdapter:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLGridList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    new-instance v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$3;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLGridList;->setScrollListener(Lcom/samsung/android/glview/GLAbsList$ScrollListener;)V

    .line 426
    new-instance v15, Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_WIDTH:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v0, v1

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v0, v1

    move/from16 v20, v0

    const v1, 0x7f0d0018

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v21

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x1

    invoke-direct/range {v15 .. v23}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setLeftTop(IFF)V

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setLeftTop(IFF)V

    .line 430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setLeftTop(IFF)V

    .line 431
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    .line 432
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    .line 439
    :goto_6
    new-instance v15, Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    int-to-float v0, v1

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v0, v1

    move/from16 v20, v0

    const v1, 0x7f0d0017

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v21

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x1

    invoke-direct/range {v15 .. v23}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryBackground:Lcom/samsung/android/glview/GLRectangle;

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setLeftTop(IFF)V

    .line 442
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setLeftTop(IFF)V

    .line 443
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    .line 444
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    .line 449
    :cond_6
    :goto_7
    new-instance v15, Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    int-to-float v0, v1

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v0, v1

    move/from16 v20, v0

    const v1, 0x7f0d0016

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v21

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x1

    invoke-direct/range {v15 .. v23}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    .line 451
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setLeftTop(IFF)V

    .line 452
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setLeftTop(IFF)V

    .line 453
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setLeftTop(IFF)V

    .line 454
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    .line 455
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    .line 462
    :goto_8
    new-instance v15, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    int-to-float v0, v1

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_WIDTH:I

    int-to-float v0, v1

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v0, v1

    move/from16 v20, v0

    invoke-direct/range {v15 .. v20}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 463
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 464
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 465
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 466
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 469
    new-instance v15, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_POS_X:I

    int-to-float v0, v1

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_POS_Y:I

    int-to-float v0, v1

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    int-to-float v0, v1

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v0, v1

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I

    int-to-float v0, v1

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_LINE_THICKNESS:I

    int-to-float v0, v1

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_LINE_THICKNESS:I

    int-to-float v0, v1

    move/from16 v23, v0

    const/16 v24, 0x2

    invoke-direct/range {v15 .. v24}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFI)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    .line 470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setOverScrollEffect(Z)V

    .line 471
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const v2, 0x7f020287

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setScrollBarResource(I)V

    .line 472
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setScrollBarAlpha(F)V

    .line 473
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setScrollBarAutoHide(Z)V

    .line 474
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setScrollListener(Lcom/samsung/android/glview/GLAbsList$ScrollListener;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setForcedClipping(Z)V

    .line 478
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setVisibility(I)V

    .line 479
    new-instance v15, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_POS_X:I

    int-to-float v0, v1

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_POS_Y:I

    int-to-float v0, v1

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    int-to-float v0, v1

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v0, v1

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I

    int-to-float v0, v1

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_LINE_THICKNESS:I

    int-to-float v0, v1

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_LINE_THICKNESS:I

    int-to-float v0, v1

    move/from16 v23, v0

    const/16 v24, 0x2

    invoke-direct/range {v15 .. v24}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFI)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    .line 480
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setOverScrollEffect(Z)V

    .line 481
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const v2, 0x7f020287

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setScrollBarResource(I)V

    .line 482
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setScrollBarAlpha(F)V

    .line 483
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setScrollBarAutoHide(Z)V

    .line 484
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setScrollListener(Lcom/samsung/android/glview/GLAbsList$ScrollListener;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setForcedClipping(Z)V

    .line 488
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setVisibility(I)V

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 492
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 496
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->makeStickerMenu()V

    .line 498
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 499
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryBackground:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 509
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsDownloadEffectSupported:Z

    if-eqz v1, :cond_8

    .line 510
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 514
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const v4, 0x7f0b000c

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    new-instance v6, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v6}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v1, v2, v3, v4, v6}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mShowAnimation_0:Landroid/view/animation/Animation;

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const v4, 0x7f0b000c

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    new-instance v6, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v6}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v1, v2, v3, v4, v6}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mShowAnimation_90:Landroid/view/animation/Animation;

    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f0b000c

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    new-instance v6, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v6}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v1, v2, v3, v4, v6}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mShowAnimation_180:Landroid/view/animation/Animation;

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const v4, 0x7f0b000c

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    new-instance v6, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v6}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v1, v2, v3, v4, v6}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mShowAnimation_270:Landroid/view/animation/Animation;

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mHideAnimation_0:Landroid/view/animation/Animation;

    .line 520
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mHideAnimation_90:Landroid/view/animation/Animation;

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mHideAnimation_180:Landroid/view/animation/Animation;

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mHideAnimation_270:Landroid/view/animation/Animation;

    .line 524
    new-instance v1, Lcom/sec/android/app/camera/provider/CameraGestureManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/provider/CameraGestureManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    .line 525
    new-instance v1, Lcom/sec/android/app/camera/provider/CameraGestureManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/provider/CameraGestureManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    .line 527
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 528
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-eqz v1, :cond_9

    .line 529
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0xbe

    move-object/from16 v0, p0

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0x232c

    move-object/from16 v0, p0

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 532
    :cond_9
    return-void

    .line 311
    .end local v5    # "editTextWidth":F
    .end local v7    # "editText":Ljava/lang/String;
    .end local v12    # "doneTextWidth":F
    .end local v14    # "doneText":Ljava/lang/String;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 326
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 363
    .restart local v5    # "editTextWidth":F
    .restart local v7    # "editText":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_STANDARD_UPPER_LINE:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_LEFT_MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 364
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sub-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_RIGHT_MARGIN:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_RIGHT_MARGIN:I

    int-to-float v4, v4

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto/16 :goto_3

    .line 389
    .restart local v12    # "doneTextWidth":F
    .restart local v14    # "doneText":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_STANDARD_UPPER_LINE:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_LEFT_MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_UPPER_MARGIN:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sub-float/2addr v4, v12

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_RIGHT_MARGIN:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_UPPER_MARGIN:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 392
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_UPPER_MARGIN:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_RIGHT_MARGIN:I

    int-to-float v4, v4

    add-float/2addr v4, v12

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto/16 :goto_4

    .line 402
    :cond_d
    new-instance v15, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_WIDTH:I

    int-to-float v0, v1

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_WIDTH:I

    int-to-float v0, v1

    move/from16 v20, v0

    const v21, 0x7f020283

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    .line 403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 404
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 405
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto/16 :goto_5

    .line 433
    :cond_e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    .line 434
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    goto/16 :goto_6

    .line 436
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    goto/16 :goto_6

    .line 445
    :cond_10
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 446
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    goto/16 :goto_7

    .line 456
    :cond_11
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 457
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    goto/16 :goto_8

    .line 459
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    goto/16 :goto_8
.end method

.method static synthetic access$1000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceListLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/samsung/android/glview/GLView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    .param p1, "x1"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->refreshNextFocus(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyLastBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    .param p1, "x1"    # Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyLastBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyFirstBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    .param p1, "x1"    # Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyFirstBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyDragDropItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_BUTTON_WIDTH:I

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/samsung/android/glview/GLGridList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsNeedShowBaseMenu:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsNeedToSetScreenId:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->uninstallStickerPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceListLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mLastBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    .param p1, "x1"    # Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mLastBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    .param p1, "x1"    # Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragDropItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$3600(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getCategoryItemIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateCategoryLayout(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragHelpToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragHelpToast:Landroid/widget/Toast;

    return-object p1
.end method

.method private cancelEditMode()V
    .locals 1

    .prologue
    .line 1345
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->changeMode(I)V

    .line 1346
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->restoreCurrentOrder()V

    .line 1347
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1357
    :goto_0
    return-void

    .line 1349
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->invalidate()V

    goto :goto_0

    .line 1352
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->invalidate()V

    goto :goto_0

    .line 1347
    nop

    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private changeMode(I)V
    .locals 9
    .param p1, "toMode"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1360
    if-ne p1, v7, :cond_6

    .line 1361
    iput v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentMode:I

    .line 1363
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1364
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1380
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1381
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLGridList;

    .line 1382
    .local v3, "stickerList":Lcom/samsung/android/glview/GLGridList;
    if-eqz v3, :cond_0

    .line 1383
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1384
    invoke-virtual {v3, v1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/StickerItem;

    .line 1385
    .local v2, "item":Lcom/sec/android/app/camera/widget/gl/StickerItem;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/StickerItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 1383
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1366
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/sec/android/app/camera/widget/gl/StickerItem;
    .end local v3    # "stickerList":Lcom/samsung/android/glview/GLGridList;
    :pswitch_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1367
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v2

    .line 1368
    .local v2, "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 1369
    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->setDeleteButtonVisibility(I)V

    .line 1366
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1373
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    :pswitch_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1374
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v2

    .line 1375
    .restart local v2    # "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 1376
    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->setDeleteButtonVisibility(I)V

    .line 1373
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1392
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1393
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v5, v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;

    .line 1394
    .local v0, "categoryItem":Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;
    if-eqz v0, :cond_1

    .line 1395
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->getCommandId()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 1396
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 1397
    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->setDeleteButtonVisibility(I)V

    .line 1392
    :cond_1
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1399
    :cond_2
    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->setDim(Z)V

    goto :goto_4

    .line 1403
    .end local v0    # "categoryItem":Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1404
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1405
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hidePageNavigators()V

    .line 1407
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->isFilterCategorySelected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1408
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideDragHelpToast()V

    .line 1409
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$6;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$6;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1418
    const-string v4, "503"

    invoke-static {v4}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 1422
    :goto_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->savePreviousOrder()V

    .line 1471
    .end local v1    # "i":I
    :cond_4
    :goto_6
    return-void

    .line 1420
    .restart local v1    # "i":I
    :cond_5
    const-string v4, "502"

    invoke-static {v4}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_5

    .line 1423
    .end local v1    # "i":I
    :cond_6
    if-nez p1, :cond_4

    .line 1424
    iput v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentMode:I

    .line 1425
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1427
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 1443
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1444
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLGridList;

    .line 1445
    .restart local v3    # "stickerList":Lcom/samsung/android/glview/GLGridList;
    if-eqz v3, :cond_7

    .line 1446
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 1447
    invoke-virtual {v3, v1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/StickerItem;

    .line 1448
    .local v2, "item":Lcom/sec/android/app/camera/widget/gl/StickerItem;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/StickerItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 1446
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1429
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/sec/android/app/camera/widget/gl/StickerItem;
    .end local v3    # "stickerList":Lcom/samsung/android/glview/GLGridList;
    :pswitch_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 1430
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v2

    .line 1431
    .local v2, "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 1432
    invoke-virtual {v2, v8}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->setDeleteButtonVisibility(I)V

    .line 1429
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1436
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    :pswitch_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 1437
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v2

    .line 1438
    .restart local v2    # "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 1439
    invoke-virtual {v2, v8}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->setDeleteButtonVisibility(I)V

    .line 1436
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1455
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_a
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v4

    if-ge v1, v4, :cond_a

    .line 1456
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v5, v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;

    .line 1457
    .restart local v0    # "categoryItem":Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;
    if-eqz v0, :cond_8

    .line 1458
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->getCommandId()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v5

    if-ne v4, v5, :cond_9

    .line 1459
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 1460
    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->setDeleteButtonVisibility(I)V

    .line 1455
    :cond_8
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1462
    :cond_9
    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->setDim(Z)V

    goto :goto_b

    .line 1466
    .end local v0    # "categoryItem":Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1467
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1468
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showPageNavigators()V

    .line 1469
    const-string v4, "501"

    invoke-static {v4}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1364
    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1427
    :pswitch_data_1
    .packed-switch 0x1e78
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getCategoryItemIndex()I
    .locals 4

    .prologue
    .line 1475
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1476
    .local v0, "categorySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1477
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1478
    .local v2, "key":I
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1482
    .end local v1    # "i":I
    .end local v2    # "key":I
    :goto_1
    return v1

    .line 1476
    .restart local v1    # "i":I
    .restart local v2    # "key":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1482
    .end local v2    # "key":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getCategoryItemSpacing(I)F
    .locals 3
    .param p1, "categorySize"    # I

    .prologue
    .line 1486
    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_HEIGHT:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_BUTTON_WIDTH:I

    mul-int/2addr v2, p1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-int/lit8 v2, p1, 0x1

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 1487
    .local v0, "spacing":F
    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_LIMIT_SPACING:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 1488
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_LIMIT_SPACING:F

    .line 1490
    :cond_0
    return v0
.end method

.method private getCurrentSelectedIndex()I
    .locals 6

    .prologue
    .line 1494
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1512
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1513
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLGridList;

    .line 1514
    .local v3, "stickerList":Lcom/samsung/android/glview/GLGridList;
    if-eqz v3, :cond_4

    .line 1515
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1516
    invoke-virtual {v3, v1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/StickerItem;

    .line 1517
    .local v2, "stickerItem":Lcom/sec/android/app/camera/widget/gl/StickerItem;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/StickerItem;->getSelected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1525
    .end local v1    # "i":I
    .end local v2    # "stickerItem":Lcom/sec/android/app/camera/widget/gl/StickerItem;
    .end local v3    # "stickerList":Lcom/samsung/android/glview/GLGridList;
    :cond_0
    :goto_1
    return v1

    .line 1496
    :pswitch_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getSize()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1497
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v0

    .line 1498
    .local v0, "effectItem":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getSelected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1496
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1504
    .end local v0    # "effectItem":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    .end local v1    # "i":I
    :pswitch_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getSize()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1505
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v0

    .line 1506
    .restart local v0    # "effectItem":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getSelected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1504
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1515
    .end local v0    # "effectItem":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    .restart local v2    # "stickerItem":Lcom/sec/android/app/camera/widget/gl/StickerItem;
    .restart local v3    # "stickerList":Lcom/samsung/android/glview/GLGridList;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1525
    .end local v1    # "i":I
    .end local v2    # "stickerItem":Lcom/sec/android/app/camera/widget/gl/StickerItem;
    .end local v3    # "stickerList":Lcom/samsung/android/glview/GLGridList;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 1494
    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hideDragHelpToast()V
    .locals 1

    .prologue
    .line 1529
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->isShowingDragHelpToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1530
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragHelpToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragHelpToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragHelpToast:Landroid/widget/Toast;

    .line 1535
    :cond_0
    return-void
.end method

.method private hideRemoveEffectButton()V
    .locals 2

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1541
    :cond_0
    return-void
.end method

.method private hideStickerSoundMuteButton()V
    .locals 2

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 1545
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1547
    :cond_0
    return-void
.end method

.method private isFilterCategorySelected()Z
    .locals 1

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1557
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1553
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1550
    nop

    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isOrderChanged()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1561
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1583
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 1563
    :pswitch_0
    sget-object v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceListLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1564
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1565
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    if-eq v4, v1, :cond_0

    .line 1566
    monitor-exit v3

    move v1, v2

    goto :goto_1

    .line 1564
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1569
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1572
    .end local v0    # "i":I
    :pswitch_1
    sget-object v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceListLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1573
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1574
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousBeautyResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    if-eq v4, v1, :cond_2

    .line 1575
    monitor-exit v3

    move v1, v2

    goto :goto_1

    .line 1573
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1578
    :cond_3
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 1561
    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isShowingDragHelpToast()Z
    .locals 1

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragHelpToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragHelpToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragHelpToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeStickerMenu()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    .line 1591
    const-string v1, "EffectThumbnailListMenu"

    const-string v2, "makeStickerMenu"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1593
    const-string v1, "EffectThumbnailListMenu"

    const-string v2, "return because Sticker List is not empty"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    :cond_0
    return-void

    .line 1597
    :cond_1
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-ge v11, v1, :cond_0

    .line 1598
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1, v11}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v12

    .line 1599
    .local v12, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v12}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0x1e78

    if-eq v1, v2, :cond_2

    invoke-virtual {v12}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0x1e79

    if-ne v1, v2, :cond_3

    .line 1597
    :cond_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1603
    :cond_3
    :try_start_0
    invoke-virtual {v12}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerPackage(I)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    move-result-object v13

    .line 1604
    .local v13, "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    new-instance v0, Lcom/samsung/android/glview/GLGridList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_WIDTH:I

    int-to-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_5

    move v9, v14

    :goto_2
    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLGridList;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFI)V

    .line 1605
    .local v0, "stickerList":Lcom/samsung/android/glview/GLGridList;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setOverScrollEffect(Z)V

    .line 1606
    const v1, 0x7f020287

    const v2, 0x7f0d004c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->setScrollBarResource(II)V

    .line 1607
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setScrollBarAutoHide(Z)V

    .line 1608
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    if-ne v1, v14, :cond_6

    .line 1610
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_HORIZONTAL_SPACING:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_VERTICAL_SPACING:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    .line 1611
    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    .line 1612
    new-instance v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v13, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    .line 1613
    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_LEFT_MARGIN:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_TOP_MARGIN:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    .line 1620
    :goto_3
    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLGridList;->setScrollListener(Lcom/samsung/android/glview/GLAbsList$ScrollListener;)V

    .line 1621
    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLGridList;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 1622
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    .line 1623
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1624
    .end local v0    # "stickerList":Lcom/samsung/android/glview/GLGridList;
    .end local v13    # "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    :catch_0
    move-exception v10

    .line 1625
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "EffectThumbnailListMenu"

    const-string v2, "PlugInStickerStorage isn\'t ready yet."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1604
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v13    # "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    :cond_5
    const/4 v9, 0x5

    goto :goto_2

    .line 1615
    .restart local v0    # "stickerList":Lcom/samsung/android/glview/GLGridList;
    :cond_6
    :try_start_1
    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_VERTICAL_SPACING:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_HORIZONTAL_SPACING:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    .line 1616
    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    .line 1617
    new-instance v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v13, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    .line 1618
    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_LEFT_MARGIN:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_TOP_MARGIN:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private refreshNextFocus(Lcom/samsung/android/glview/GLView;)V
    .locals 3
    .param p1, "listFirstView"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 1631
    move-object v0, p1

    .line 1632
    .local v0, "firstView":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->resetNextFocusId()V

    .line 1634
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->resetNextFocusId()V

    .line 1635
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->resetNextFocusId()V

    .line 1637
    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 1653
    :goto_0
    :pswitch_0
    return-void

    .line 1639
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    .line 1640
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    .line 1641
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    .line 1642
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    goto :goto_0

    .line 1645
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 1646
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    .line 1647
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 1648
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    goto :goto_0

    .line 1637
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private restoreCurrentOrder()V
    .locals 4

    .prologue
    .line 1656
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1676
    :goto_0
    return-void

    .line 1658
    :pswitch_0
    sget-object v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceListLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1659
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1660
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1661
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousResourceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1660
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1663
    :cond_0
    monitor-exit v2

    goto :goto_0

    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1666
    :pswitch_1
    sget-object v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceListLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1667
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1668
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousBeautyResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1669
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousBeautyResourceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1668
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1671
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "i":I
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 1656
    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private saveCurrentOrder()V
    .locals 11

    .prologue
    .line 1679
    const/4 v1, 0x0

    .line 1680
    .local v1, "firstItem":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1681
    .local v0, "commandIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1683
    .local v7, "resourceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;>;"
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1707
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 1708
    const-string v8, "EffectThumbnailListMenu"

    const-string v9, "Cannot find the first item in the list. Return."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :goto_1
    return-void

    .line 1685
    :pswitch_0
    sget-object v9, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceListLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1686
    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1687
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1688
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    .line 1689
    .local v3, "item":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getPrevious()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v9

    if-nez v9, :cond_1

    .line 1690
    move-object v1, v3

    .line 1691
    goto :goto_0

    .line 1687
    .end local v3    # "item":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 1696
    :pswitch_1
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    .line 1697
    .restart local v3    # "item":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getPrevious()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v9

    if-nez v9, :cond_2

    .line 1698
    move-object v1, v3

    .line 1699
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getCommandId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1712
    .end local v3    # "item":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    .line 1714
    .local v6, "nextItem":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    :goto_2
    if-eqz v6, :cond_4

    .line 1715
    invoke-virtual {v6}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getCommandId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1716
    invoke-virtual {v6}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v6

    .end local v6    # "nextItem":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    check-cast v6, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    .restart local v6    # "nextItem":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    goto :goto_2

    .line 1719
    :cond_4
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v8

    packed-switch v8, :pswitch_data_1

    goto :goto_1

    .line 1721
    :pswitch_2
    sget-object v9, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceListLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1722
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_7

    .line 1723
    const/4 v5, 0x1

    .local v5, "k":I
    :goto_4
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_5

    .line 1724
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v8

    if-ne v10, v8, :cond_6

    .line 1725
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1722
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1723
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1730
    .end local v5    # "k":I
    :cond_7
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1731
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_8

    .line 1732
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1731
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1734
    :cond_8
    monitor-exit v9

    goto/16 :goto_1

    .end local v4    # "j":I
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .line 1737
    .end local v2    # "i":I
    :pswitch_3
    sget-object v9, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceListLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1738
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_b

    .line 1739
    const/4 v5, 0x0

    .restart local v5    # "k":I
    :goto_7
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_9

    .line 1740
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v8

    if-ne v10, v8, :cond_a

    .line 1741
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1738
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1739
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1746
    .end local v5    # "k":I
    :cond_b
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1747
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_c

    .line 1748
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1747
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1750
    :cond_c
    monitor-exit v9

    goto/16 :goto_1

    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v8

    .line 1683
    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1719
    :pswitch_data_1
    .packed-switch 0x1e78
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private savePreviousOrder()V
    .locals 4

    .prologue
    .line 1758
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1778
    :goto_0
    return-void

    .line 1760
    :pswitch_0
    sget-object v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceListLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1761
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1762
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1763
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousResourceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1762
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1765
    :cond_0
    monitor-exit v2

    goto :goto_0

    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1768
    :pswitch_1
    sget-object v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceListLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1769
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousBeautyResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1770
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1771
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousBeautyResourceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1770
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1773
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "i":I
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 1758
    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private saveToDB()V
    .locals 9

    .prologue
    .line 1782
    const/4 v1, 0x0

    .line 1783
    .local v1, "firstItem":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1784
    .local v0, "currentCommandIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1785
    .local v6, "previousCommandIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1826
    :cond_0
    if-nez v1, :cond_8

    .line 1831
    :cond_1
    :goto_0
    return-void

    .line 1787
    :pswitch_0
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    .line 1788
    .local v3, "item":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getPrevious()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v8

    if-nez v8, :cond_2

    .line 1789
    move-object v1, v3

    .line 1793
    .end local v3    # "item":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    :cond_3
    if-eqz v1, :cond_1

    .line 1797
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    .line 1798
    .local v5, "nextItem":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    :goto_1
    if-eqz v5, :cond_4

    .line 1799
    invoke-virtual {v5}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getCommandId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1800
    invoke-virtual {v5}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v5

    .end local v5    # "nextItem":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    check-cast v5, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    .restart local v5    # "nextItem":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    goto :goto_1

    .line 1802
    :cond_4
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_2
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousResourceList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 1803
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousResourceList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1802
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1807
    .end local v2    # "i":I
    .end local v5    # "nextItem":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    :pswitch_1
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    .line 1808
    .restart local v3    # "item":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getPrevious()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v8

    if-nez v8, :cond_5

    .line 1809
    move-object v1, v3

    .line 1813
    .end local v3    # "item":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    :cond_6
    move-object v4, v1

    .line 1814
    .local v4, "nextBeautyItem":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    :goto_3
    if-eqz v4, :cond_7

    .line 1815
    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getCommandId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1816
    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v4

    .end local v4    # "nextBeautyItem":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    check-cast v4, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    .restart local v4    # "nextBeautyItem":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    goto :goto_3

    .line 1818
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousBeautyResourceList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 1819
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousBeautyResourceList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1818
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1830
    .end local v2    # "i":I
    .end local v4    # "nextBeautyItem":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    :cond_8
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v7}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v7

    invoke-virtual {v7, v0, v6}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->saveOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1785
    nop

    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setAnimation()V
    .locals 2

    .prologue
    .line 1834
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    if-nez v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mShowAnimation_0:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 1836
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mHideAnimation_0:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 1847
    :goto_0
    return-void

    .line 1837
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1838
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mShowAnimation_90:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 1839
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mHideAnimation_90:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1840
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1841
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mShowAnimation_180:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 1842
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mHideAnimation_180:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1844
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mShowAnimation_270:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 1845
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mHideAnimation_270:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private showRemoveEffectButton()V
    .locals 15

    .prologue
    .line 1850
    const v0, 0x7f0901fe

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_SIZE:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v4

    .line 1851
    .local v4, "removeEffectTextWidth":F
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectText:Lcom/samsung/android/glview/GLText;

    if-nez v0, :cond_0

    .line 1852
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_LEFT_MARGIN:I

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0901fe

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_SIZE:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->BUTTON_FONT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectText:Lcom/samsung/android/glview/GLText;

    .line 1853
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1854
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 1855
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    const v2, 0x4efe1600

    const v3, 0x7f0d0031

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1857
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    if-nez v0, :cond_1

    .line 1858
    new-instance v5, Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_LEFT_MARGIN:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float v9, v4, v0

    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_HEIGHT:I

    int-to-float v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    .line 1859
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_PORTRAIT_OFFSET_Y:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 1860
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_LEFT_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_LANDSCAPE_OFFSET_Y:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_HEIGHT:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 1861
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_LEFT_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_LANDSCAPE_OFFSET_Y:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_HEIGHT:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 1862
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1863
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 1864
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1865
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f0901fe

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1866
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 1867
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setNinePatchBackground(I)Z

    .line 1868
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1870
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1871
    return-void
.end method

.method private showStickerSoundMuteButton()V
    .locals 9

    .prologue
    const v7, 0x7f02027d

    const v6, 0x7f02027a

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 1874
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    if-nez v0, :cond_0

    .line 1875
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    .line 1876
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f090232

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1877
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1878
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 1879
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 1880
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_SIDE_MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 1881
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 1882
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1883
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1885
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    invoke-virtual {v0, v6, v7, v8, v8}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    .line 1886
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f09004c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    .line 1887
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1888
    return-void

    .line 1885
    :cond_1
    const v6, 0x7f02027b

    goto :goto_0

    :cond_2
    const v7, 0x7f02027c

    goto :goto_1

    .line 1886
    :cond_3
    const v0, 0x7f09004b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private startAnimationForChangingCategory(ILcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;I)V
    .locals 7
    .param p1, "category"    # I
    .param p2, "outList"    # Lcom/samsung/android/glview/GLGridList;
    .param p3, "inList"    # Lcom/samsung/android/glview/GLGridList;
    .param p4, "animationType"    # I

    .prologue
    const v4, 0x7f0b0005

    const v6, 0x7f0b0004

    const/4 v5, 0x0

    .line 1891
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1959
    :cond_0
    :goto_0
    return-void

    .line 1898
    :cond_1
    packed-switch p4, :pswitch_data_0

    goto :goto_0

    .line 1900
    :pswitch_0
    invoke-virtual {p3, v5}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    goto :goto_0

    .line 1903
    :pswitch_1
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    new-instance v4, Lcom/samsung/android/view/animation/SineOut60;

    invoke-direct {v4}, Lcom/samsung/android/view/animation/SineOut60;-><init>()V

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1904
    .local v0, "showInAnim":Landroid/view/animation/Animation;
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1905
    .local v1, "showOutAnim":Landroid/view/animation/Animation;
    new-instance v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$7;

    invoke-direct {v3, p0, p2, p3, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$7;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1922
    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLGridList;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1923
    invoke-virtual {p2}, Lcom/samsung/android/glview/GLGridList;->startAnimation()V

    .line 1924
    invoke-virtual {p2, v5}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    goto :goto_0

    .line 1928
    .end local v0    # "showInAnim":Landroid/view/animation/Animation;
    .end local v1    # "showOutAnim":Landroid/view/animation/Animation;
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v3

    if-le v3, p1, :cond_2

    .line 1929
    const/4 v2, 0x0

    .line 1933
    .local v2, "slideDirection":I
    :goto_1
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    new-instance v4, Lcom/samsung/android/view/animation/SineOut60;

    invoke-direct {v4}, Lcom/samsung/android/view/animation/SineOut60;-><init>()V

    invoke-static {p3, v2, v5, v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1934
    .restart local v0    # "showInAnim":Landroid/view/animation/Animation;
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1935
    .restart local v1    # "showOutAnim":Landroid/view/animation/Animation;
    new-instance v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$8;

    invoke-direct {v3, p0, p2, p3, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$8;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1952
    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLGridList;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1953
    invoke-virtual {p2}, Lcom/samsung/android/glview/GLGridList;->startAnimation()V

    .line 1954
    invoke-virtual {p2, v5}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    goto :goto_0

    .line 1931
    .end local v0    # "showInAnim":Landroid/view/animation/Animation;
    .end local v1    # "showOutAnim":Landroid/view/animation/Animation;
    .end local v2    # "slideDirection":I
    :cond_2
    const/4 v2, 0x1

    .restart local v2    # "slideDirection":I
    goto :goto_1

    .line 1898
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private uninstallStickerPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1962
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1963
    .local v1, "uninstallPackageIntent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1964
    const-string v2, "android.intent.extra.RETURN_RESULT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1966
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x7ed

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1970
    :goto_0
    return-void

    .line 1967
    :catch_0
    move-exception v0

    .line 1968
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "EffectThumbnailListMenu"

    const-string v3, "uninstallStickerPackage - activity not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCategoryLayout(II)V
    .locals 9
    .param p1, "category"    # I
    .param p2, "animationType"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 1973
    const-string v3, "EffectThumbnailListMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCategoryLayout : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", animationType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentMode:I

    if-ne v3, v8, :cond_0

    .line 2058
    :goto_0
    return-void

    .line 1978
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v3, v7, v6}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setVisibility(IZ)V

    .line 1979
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->cancelAnimation()V

    .line 1980
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v3, v7, v6}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setVisibility(IZ)V

    .line 1981
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->cancelAnimation()V

    .line 1982
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLGridList;

    .line 1983
    .local v2, "stickerList":Lcom/samsung/android/glview/GLGridList;
    invoke-virtual {v2, v7, v6}, Lcom/samsung/android/glview/GLGridList;->setVisibility(IZ)V

    .line 1984
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->cancelAnimation()V

    goto :goto_1

    .line 1987
    .end local v2    # "stickerList":Lcom/samsung/android/glview/GLGridList;
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2055
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateStickerCategoryLayout(II)V

    goto :goto_0

    .line 1989
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1997
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1998
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLGridList;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0, p1, v3, v4, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->startAnimationForChangingCategory(ILcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;I)V

    .line 2002
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isFilterLoaded()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2003
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-static {v6}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->setEffectCategory(I)V

    .line 2004
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEffectCategory(I)V

    .line 2005
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getCurrentSelectedIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v1

    .line 2006
    .local v1, "lastSelectedItem":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    if-eqz v1, :cond_3

    .line 2007
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->scrollToVisible(Lcom/samsung/android/glview/GLView;)V

    .line 2009
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->showScrollBar()V

    .line 2011
    .end local v1    # "lastSelectedItem":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    :cond_4
    iget-boolean v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsDownloadEffectSupported:Z

    if-eqz v3, :cond_5

    .line 2012
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 2013
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isNewFilterUploaded()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2014
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2019
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto/16 :goto_0

    .line 1991
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0, p1, v3, v4, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->startAnimationForChangingCategory(ILcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;I)V

    goto :goto_2

    .line 1994
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0, p1, v3, v4, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->startAnimationForChangingCategory(ILcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;I)V

    goto :goto_2

    .line 2016
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_3

    .line 2022
    :pswitch_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v3

    packed-switch v3, :pswitch_data_2

    .line 2030
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 2031
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLGridList;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0, p1, v3, v4, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->startAnimationForChangingCategory(ILcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;I)V

    .line 2035
    :cond_7
    :goto_4
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isFilterLoaded()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2036
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-static {v8}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->setEffectCategory(I)V

    .line 2037
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEffectCategory(I)V

    .line 2038
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getCurrentSelectedIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v0

    .line 2039
    .local v0, "lastSelectedBeautyItem":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    if-eqz v0, :cond_8

    .line 2040
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->scrollToVisible(Lcom/samsung/android/glview/GLView;)V

    .line 2042
    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->showScrollBar()V

    .line 2044
    .end local v0    # "lastSelectedBeautyItem":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    :cond_9
    iget-boolean v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsDownloadEffectSupported:Z

    if-eqz v3, :cond_a

    .line 2045
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 2046
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isNewFilterUploaded()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2047
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2052
    :cond_a
    :goto_5
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto/16 :goto_0

    .line 2024
    :pswitch_4
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0, p1, v3, v4, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->startAnimationForChangingCategory(ILcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;I)V

    goto :goto_4

    .line 2027
    :pswitch_5
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0, p1, v3, v4, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->startAnimationForChangingCategory(ILcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;I)V

    goto :goto_4

    .line 2049
    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_5

    .line 1987
    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1989
    :pswitch_data_1
    .packed-switch 0x1e78
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2022
    :pswitch_data_2
    .packed-switch 0x1e78
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateStickerCategoryLayout(II)V
    .locals 11
    .param p1, "category"    # I
    .param p2, "animationType"    # I

    .prologue
    const/4 v10, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2061
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2062
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 2070
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/glview/GLGridList;

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/glview/GLGridList;

    invoke-direct {p0, p1, v5, v6, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->startAnimationForChangingCategory(ILcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;I)V

    .line 2073
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEffectCategory(I)V

    .line 2074
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLGridList;

    .line 2075
    .local v2, "stickerList":Lcom/samsung/android/glview/GLGridList;
    if-eqz v2, :cond_1

    .line 2076
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getCurrentSelectedIndex()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/StickerItem;

    .line 2077
    .local v1, "lastSelectedStickerItem":Lcom/sec/android/app/camera/widget/gl/StickerItem;
    if-eqz v1, :cond_0

    .line 2078
    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLGridList;->scrollToVisible(Lcom/samsung/android/glview/GLView;)V

    .line 2080
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->showScrollBar()V

    .line 2083
    .end local v1    # "lastSelectedStickerItem":Lcom/sec/android/app/camera/widget/gl/StickerItem;
    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerPackage(I)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    move-result-object v3

    .line 2084
    .local v3, "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    iget-object v5, v3, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerType(Ljava/lang/String;)I

    move-result v4

    .line 2085
    .local v4, "stickerType":I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 2086
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v6, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->WATERMARK_NETWORK_PERMISSION_DLG:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    .line 2087
    iget-boolean v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsDownloadEffectSupported:Z

    if-eqz v5, :cond_2

    .line 2088
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v5, v7}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 2089
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v5, v10}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2100
    .end local v2    # "stickerList":Lcom/samsung/android/glview/GLGridList;
    .end local v3    # "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    .end local v4    # "stickerType":I
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;

    .line 2101
    .local v0, "categoryItem":Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;
    if-eqz v0, :cond_3

    .line 2102
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->isDownloaded()Z

    move-result v5

    if-nez v5, :cond_6

    move v5, v7

    :goto_2
    invoke-virtual {v6, v5}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 2104
    :cond_3
    return-void

    .line 2064
    .end local v0    # "categoryItem":Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;
    :pswitch_0
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/glview/GLGridList;

    invoke-direct {p0, p1, v6, v5, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->startAnimationForChangingCategory(ILcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;I)V

    goto :goto_0

    .line 2067
    :pswitch_1
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/glview/GLGridList;

    invoke-direct {p0, p1, v6, v5, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->startAnimationForChangingCategory(ILcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;I)V

    goto/16 :goto_0

    .line 2091
    .restart local v2    # "stickerList":Lcom/samsung/android/glview/GLGridList;
    .restart local v3    # "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    .restart local v4    # "stickerType":I
    :cond_4
    iget-boolean v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsDownloadEffectSupported:Z

    if-eqz v5, :cond_2

    .line 2092
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v5, v8}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 2093
    invoke-static {v4}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->isNewStickerUploaded(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2094
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v5, v8}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_1

    .line 2096
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v5, v10}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_1

    .end local v2    # "stickerList":Lcom/samsung/android/glview/GLGridList;
    .end local v3    # "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    .end local v4    # "stickerType":I
    .restart local v0    # "categoryItem":Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;
    :cond_6
    move v5, v8

    .line 2102
    goto :goto_2

    .line 2062
    nop

    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 536
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->unregisterGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    .line 541
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGestureEventListener:Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->unregisterGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    .line 545
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 548
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0xbe

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x232c

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 552
    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    .line 553
    return-void
.end method

.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 1156
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1174
    :goto_0
    return v1

    .line 1160
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 1161
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1162
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1164
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_sticker_rect_position"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1165
    .local v0, "stickerRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1166
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showSticker(Z)V

    .line 1169
    .end local v0    # "stickerRect":Landroid/graphics/Rect;
    :cond_2
    const-string v2, "5004"

    invoke-static {v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideMenu()V

    goto :goto_0

    .line 1174
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onCameraSettingChanged(II)V
    .locals 5
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v4, 0x0

    .line 557
    sparse-switch p1, :sswitch_data_0

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 559
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateRemoveEffectButton()V

    goto :goto_0

    .line 562
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateRemoveEffectButton()V

    .line 563
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 564
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v1

    const/16 v2, 0x232d

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRandomStickerId()I

    move-result v0

    .line 565
    .local v0, "stickerId":I
    :goto_1
    const/16 v1, 0x2710

    if-eq v0, v1, :cond_0

    .line 566
    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->isSoundFaceARSticker(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 567
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->showStickerSoundMuteButton()V

    goto :goto_0

    .line 564
    .end local v0    # "stickerId":I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v0

    goto :goto_1

    .line 569
    .restart local v0    # "stickerId":I
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideStickerSoundMuteButton()V

    goto :goto_0

    .line 573
    .end local v0    # "stickerId":I
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideStickerSoundMuteButton()V

    goto :goto_0

    .line 577
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_0

    .line 578
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v1

    if-nez v1, :cond_4

    const v1, 0x7f02027a

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v2

    if-nez v2, :cond_5

    const v2, 0x7f02027d

    :goto_3
    invoke-virtual {v3, v1, v2, v4, v4}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    .line 579
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v1

    if-nez v1, :cond_6

    const v1, 0x7f09004c

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :cond_4
    const v1, 0x7f02027b

    goto :goto_2

    :cond_5
    const v2, 0x7f02027c

    goto :goto_3

    .line 579
    :cond_6
    const v1, 0x7f09004b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 557
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xbe -> :sswitch_1
        0x232c -> :sswitch_2
    .end sparse-switch
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 8
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 589
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v6, :cond_0

    move v4, v5

    .line 656
    :goto_0
    return v4

    .line 593
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move v4, v5

    .line 594
    goto :goto_0

    .line 597
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 598
    iput-boolean v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsNeedToSetScreenId:Z

    .line 599
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->isFilterCategorySelected()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 600
    const/16 v6, 0x232a

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v1

    .line 601
    .local v1, "effectCommand":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v1, :cond_d

    .line 602
    invoke-virtual {v1}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 603
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLText;->isVisible()I

    move-result v5

    if-nez v5, :cond_3

    .line 604
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->syncUploadedFilterListDBWithServer(Landroid/content/Context;)V

    .line 607
    :cond_3
    const-string v5, "5001"

    invoke-static {v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 608
    const-string v5, "G014"

    const v6, 0x7f09002d

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 609
    .local v0, "cv_effect_menu":Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 613
    .end local v0    # "cv_effect_menu":Landroid/content/ContentValues;
    .end local v1    # "effectCommand":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_4
    const/16 v6, 0x232b

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v2

    .line 614
    .local v2, "stickerCommand":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v2, :cond_d

    .line 615
    invoke-virtual {v2}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 616
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLText;->isVisible()I

    move-result v5

    if-nez v5, :cond_5

    .line 617
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerPackage(I)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    move-result-object v3

    .line 618
    .local v3, "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v3, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerType(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->syncUploadedStickerListDBWithServer(Landroid/content/Context;I)V

    .line 621
    .end local v3    # "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    :cond_5
    const-string v5, "5031"

    invoke-static {v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 625
    .end local v2    # "stickerCommand":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 626
    const-string v5, "5002"

    invoke-static {v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 627
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->changeMode(I)V

    .line 628
    const-string v5, "G014"

    const v6, 0x7f090165

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 629
    .restart local v0    # "cv_effect_menu":Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 631
    .end local v0    # "cv_effect_menu":Landroid/content/ContentValues;
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 632
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->isFilterCategorySelected()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 633
    const-string v6, "5051"

    invoke-static {v6}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 637
    :goto_1
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->changeMode(I)V

    .line 638
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->saveToDB()V

    goto/16 :goto_0

    .line 635
    :cond_8
    const-string v6, "5041"

    invoke-static {v6}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_1

    .line 640
    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 641
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->cancelEditMode()V

    goto/16 :goto_0

    .line 643
    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 644
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 645
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onSingleEffectMenuSelect(I)Z

    .line 649
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideRemoveEffectButton()V

    .line 650
    const-string v5, "5003"

    invoke-static {v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 647
    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v5

    const/16 v6, 0x2710

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onStickerMenuSelect(I)Z

    goto :goto_2

    .line 652
    :cond_c
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 653
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v7

    if-nez v7, :cond_e

    :goto_3
    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStickerSoundMute(I)V

    .line 654
    const-string v4, "5054"

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v6

    if-nez v6, :cond_f

    const-wide/16 v6, 0x1

    :goto_4
    invoke-static {v4, v6, v7}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    :cond_d
    move v4, v5

    .line 656
    goto/16 :goto_0

    :cond_e
    move v4, v5

    .line 653
    goto :goto_3

    .line 654
    :cond_f
    const-wide/16 v6, 0x0

    goto :goto_4
.end method

.method public onDrag(Lcom/samsung/android/glview/GLView;FFFF)V
    .locals 7
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40400000    # 3.0f

    .line 661
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    if-eqz v2, :cond_1

    .line 662
    const/4 v1, 0x0

    .line 664
    .local v1, "translateY":F
    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 740
    :cond_0
    :goto_0
    cmpl-float v2, v1, v6

    if-nez v2, :cond_9

    .line 755
    .end local v1    # "translateY":F
    :cond_1
    :goto_1
    return-void

    .line 666
    .restart local v1    # "translateY":F
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_HEIGHT:I

    .line 667
    .local v0, "itemHeight":I
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 669
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getBottom()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    cmpl-float v2, p3, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getBottom()F

    move-result v2

    cmpg-float v2, p3, v2

    if-gez v2, :cond_2

    .line 670
    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    neg-int v2, v2

    int-to-float v1, v2

    goto :goto_0

    .line 671
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    cmpg-float v2, p3, v2

    if-gez v2, :cond_0

    .line 672
    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    int-to-float v1, v2

    goto :goto_0

    .line 676
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getBottom()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    cmpl-float v2, p3, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getBottom()F

    move-result v2

    cmpg-float v2, p3, v2

    if-gez v2, :cond_3

    .line 677
    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    neg-int v2, v2

    int-to-float v1, v2

    goto :goto_0

    .line 678
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    cmpg-float v2, p3, v2

    if-gez v2, :cond_0

    .line 679
    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    int-to-float v1, v2

    goto :goto_0

    .line 687
    .end local v0    # "itemHeight":I
    :pswitch_3
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_HEIGHT:I

    .line 688
    .restart local v0    # "itemHeight":I
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_0

    .line 690
    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getBottom()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    cmpl-float v2, p3, v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getBottom()F

    move-result v2

    cmpg-float v2, p3, v2

    if-gez v2, :cond_4

    .line 691
    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    int-to-float v1, v2

    goto/16 :goto_0

    .line 692
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    cmpg-float v2, p3, v2

    if-gez v2, :cond_0

    .line 693
    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    neg-int v2, v2

    int-to-float v1, v2

    goto/16 :goto_0

    .line 697
    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getBottom()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    cmpl-float v2, p3, v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getBottom()F

    move-result v2

    cmpg-float v2, p3, v2

    if-gez v2, :cond_5

    .line 698
    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    int-to-float v1, v2

    goto/16 :goto_0

    .line 699
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    cmpg-float v2, p3, v2

    if-gez v2, :cond_0

    .line 700
    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    neg-int v2, v2

    int-to-float v1, v2

    goto/16 :goto_0

    .line 708
    .end local v0    # "itemHeight":I
    :pswitch_6
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I

    .line 709
    .restart local v0    # "itemHeight":I
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v2

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_0

    .line 711
    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getBottom()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-lez v2, :cond_6

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_6

    .line 712
    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    int-to-float v1, v2

    goto/16 :goto_0

    .line 713
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    .line 714
    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    neg-int v2, v2

    int-to-float v1, v2

    goto/16 :goto_0

    .line 718
    :pswitch_8
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getBottom()F

    move-result v2

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-lez v2, :cond_7

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_7

    .line 719
    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    int-to-float v1, v2

    goto/16 :goto_0

    .line 720
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    .line 721
    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    neg-int v2, v2

    int-to-float v1, v2

    goto/16 :goto_0

    .line 729
    .end local v0    # "itemHeight":I
    :pswitch_9
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I

    .line 730
    .restart local v0    # "itemHeight":I
    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    add-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x2

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_8

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_8

    .line 731
    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    neg-int v2, v2

    int-to-float v1, v2

    goto/16 :goto_0

    .line 732
    :cond_8
    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    mul-int/lit8 v3, v0, 0x2

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    cmpl-float v2, p2, v6

    if-lez v2, :cond_0

    .line 733
    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    int-to-float v1, v2

    goto/16 :goto_0

    .line 744
    .end local v0    # "itemHeight":I
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v2

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_1

    .line 746
    :pswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2, v6, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->scrollList(FF)Z

    goto/16 :goto_1

    .line 749
    :pswitch_b
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2, v6, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->scrollList(FF)Z

    goto/16 :goto_1

    .line 664
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_9
    .end packed-switch

    .line 667
    :pswitch_data_1
    .packed-switch 0x1e78
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 688
    :pswitch_data_2
    .packed-switch 0x1e78
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 709
    :pswitch_data_3
    .packed-switch 0x1e78
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 744
    :pswitch_data_4
    .packed-switch 0x1e78
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public onDragEnd(Lcom/samsung/android/glview/GLView;FF)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 759
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->saveCurrentOrder()V

    .line 760
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNormalModeDrag:Z

    if-eqz v0, :cond_1

    .line 761
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->isOrderChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->changeMode(I)V

    .line 763
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->saveToDB()V

    .line 765
    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNormalModeDrag:Z

    .line 767
    :cond_1
    return-void
.end method

.method public onDragStart(Lcom/samsung/android/glview/GLView;FF)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v2, 0x1

    .line 771
    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentMode:I

    if-nez v1, :cond_0

    .line 772
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNormalModeDrag:Z

    .line 773
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->changeMode(I)V

    .line 775
    const-string v1, "G013"

    const-string v2, "Longpress"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 776
    .local v0, "cv_effect_reorder":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 784
    :goto_0
    const-string v1, "5052"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 785
    return-void

    .line 779
    .end local v0    # "cv_effect_reorder":Landroid/content/ContentValues;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNormalModeDrag:Z

    .line 781
    const-string v1, "G013"

    const-string v2, "Edit"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 782
    .restart local v0    # "cv_effect_reorder":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method public onFlingDirection(II)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 789
    if-eq p2, v0, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 790
    :cond_0
    if-nez p1, :cond_3

    .line 791
    const/4 p1, 0x1

    .line 797
    :cond_1
    :goto_0
    if-nez p1, :cond_4

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentMode:I

    if-eq v1, v0, :cond_4

    .line 798
    const-string v1, "5005"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideMenu()V

    .line 804
    :cond_2
    :goto_1
    return v0

    .line 792
    :cond_3
    if-ne p1, v0, :cond_1

    .line 793
    const/4 p1, 0x0

    goto :goto_0

    .line 801
    :cond_4
    if-eq p1, v0, :cond_2

    .line 804
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onHide()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1179
    const-string v0, "EffectThumbnailListMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->unregisterGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    .line 1182
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGestureEventListener:Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->unregisterGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    .line 1184
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideDragHelpToast()V

    .line 1185
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startVoiceRecognizer()V

    .line 1188
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentMode:I

    if-ne v0, v2, :cond_1

    .line 1189
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->cancelEditMode()V

    .line 1191
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsNeedToSetScreenId:Z

    if-eqz v0, :cond_2

    .line 1192
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousScreenId:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 1194
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_WATERMARK:Z

    if-eqz v0, :cond_3

    .line 1195
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V

    .line 1197
    :cond_3
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1201
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsNeedShowBaseMenu:Z

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1206
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    const/16 v1, 0x400

    if-eq v0, v1, :cond_2

    .line 1207
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showEffectEditButton()V

    .line 1214
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->updateAutoFilterPinButton()V

    .line 1216
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isVisible()I

    move-result v0

    if-nez v0, :cond_1

    .line 1217
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showStickerSoundMuteButton()V

    .line 1219
    :cond_1
    return-void

    .line 1209
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideEffectEditButton()V

    goto :goto_0

    .line 1212
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideEffectEditButton()V

    goto :goto_0
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1224
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 809
    sparse-switch p1, :sswitch_data_0

    .line 822
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :sswitch_0
    return v0

    .line 811
    :sswitch_1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackKeyPressed:Z

    goto :goto_0

    .line 809
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 827
    sparse-switch p1, :sswitch_data_0

    .line 851
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 829
    :sswitch_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackKeyPressed:Z

    if-eqz v1, :cond_0

    .line 832
    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentMode:I

    if-ne v1, v0, :cond_1

    .line 833
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->cancelEditMode()V

    goto :goto_0

    .line 836
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideMenu()V

    .line 837
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackKeyPressed:Z

    goto :goto_0

    .line 846
    :sswitch_2
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackKeyPressed:Z

    goto :goto_0

    .line 827
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x52 -> :sswitch_2
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOrientationChanged(I)V
    .locals 12
    .param p1, "orientation"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 856
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isFilterLoaded()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 857
    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    if-eq v4, p1, :cond_0

    .line 858
    iput p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    .line 860
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setAnimation()V

    .line 863
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 871
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 872
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLGridList;

    .line 873
    .local v3, "stickerList":Lcom/samsung/android/glview/GLGridList;
    if-eqz v3, :cond_1

    .line 874
    invoke-virtual {v3, v11}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    .line 880
    .end local v3    # "stickerList":Lcom/samsung/android/glview/GLGridList;
    :cond_1
    :goto_0
    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    if-ne v4, v9, :cond_4

    .line 881
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 883
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLGridList;->setScrollOrientation(I)V

    .line 884
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getCategoryItemSpacing(I)F

    move-result v5

    invoke-virtual {v4, v10, v5, v7}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    .line 885
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    .line 886
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_POS_X:I

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5, v10}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    .line 887
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    .line 888
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/16 v5, 0x8

    if-le v4, v5, :cond_3

    .line 889
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_SCROLL_MARGIN:I

    int-to-float v5, v5

    invoke-virtual {v4, v5, v8}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    .line 890
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_SCROLL_MARGIN:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLGridList;->updateEndOffset(F)V

    .line 895
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v9, v7}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setNumColumns(IZ)V

    .line 896
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6, v8}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setSize(FFZ)V

    .line 897
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v9, v7}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setNumColumns(IZ)V

    .line 898
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6, v8}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setSize(FFZ)V

    .line 900
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLGridList;

    .line 901
    .restart local v3    # "stickerList":Lcom/samsung/android/glview/GLGridList;
    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_HORIZONTAL_SPACING:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_VERTICAL_SPACING:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    .line 902
    invoke-virtual {v3, v9, v7}, Lcom/samsung/android/glview/GLGridList;->setNumColumns(IZ)V

    .line 903
    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_HEIGHT:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6, v8}, Lcom/samsung/android/glview/GLGridList;->setSize(FFZ)V

    .line 904
    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_LEFT_MARGIN:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_TOP_MARGIN:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    goto :goto_2

    .line 865
    .end local v3    # "stickerList":Lcom/samsung/android/glview/GLGridList;
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setVisibility(I)V

    goto/16 :goto_0

    .line 868
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setVisibility(I)V

    goto/16 :goto_0

    .line 892
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v4, v10, v9}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    goto :goto_1

    .line 907
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_WIDTH:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 909
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v4, v9}, Lcom/samsung/android/glview/GLGridList;->setScrollOrientation(I)V

    .line 910
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getCategoryItemSpacing(I)F

    move-result v5

    invoke-virtual {v4, v5, v10, v7}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    .line 911
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    .line 912
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_POS_X:I

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v10, v5}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    .line 913
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    .line 914
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/16 v5, 0x8

    if-le v4, v5, :cond_5

    .line 915
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_SCROLL_MARGIN:I

    int-to-float v5, v5

    invoke-virtual {v4, v5, v8}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    .line 916
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_SCROLL_MARGIN:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLGridList;->updateEndOffset(F)V

    .line 921
    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v11, v7}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setNumColumns(IZ)V

    .line 922
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6, v8}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setSize(FFZ)V

    .line 923
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v11, v7}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setNumColumns(IZ)V

    .line 924
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6, v8}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setSize(FFZ)V

    .line 926
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLGridList;

    .line 927
    .restart local v3    # "stickerList":Lcom/samsung/android/glview/GLGridList;
    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_VERTICAL_SPACING:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_HORIZONTAL_SPACING:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    .line 928
    const/4 v5, 0x5

    invoke-virtual {v3, v5, v7}, Lcom/samsung/android/glview/GLGridList;->setNumColumns(IZ)V

    .line 929
    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_HEIGHT:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6, v8}, Lcom/samsung/android/glview/GLGridList;->setSize(FFZ)V

    .line 930
    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_LEFT_MARGIN:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_TOP_MARGIN:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    goto :goto_4

    .line 918
    .end local v3    # "stickerList":Lcom/samsung/android/glview/GLGridList;
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v4, v10, v9}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    goto :goto_3

    .line 934
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 950
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 951
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLGridList;

    .line 952
    .restart local v3    # "stickerList":Lcom/samsung/android/glview/GLGridList;
    if-eqz v3, :cond_7

    .line 953
    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    .line 954
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getCurrentSelectedIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/StickerItem;

    .line 955
    .local v2, "lastSelectedStickerItem":Lcom/sec/android/app/camera/widget/gl/StickerItem;
    if-eqz v2, :cond_7

    .line 956
    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLGridList;->scrollToVisible(Lcom/samsung/android/glview/GLView;)V

    .line 963
    .end local v2    # "lastSelectedStickerItem":Lcom/sec/android/app/camera/widget/gl/StickerItem;
    .end local v3    # "stickerList":Lcom/samsung/android/glview/GLGridList;
    :cond_7
    :goto_5
    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    packed-switch v4, :pswitch_data_2

    .line 986
    :cond_8
    :goto_6
    return-void

    .line 936
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setVisibility(I)V

    .line 937
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getCurrentSelectedIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v1

    .line 938
    .local v1, "lastSelectedItem":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    if-eqz v1, :cond_7

    .line 939
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->scrollToVisible(Lcom/samsung/android/glview/GLView;)V

    goto :goto_5

    .line 943
    .end local v1    # "lastSelectedItem":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setVisibility(I)V

    .line 944
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getCurrentSelectedIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v0

    .line 945
    .local v0, "lastSelectedBeautyItem":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    if-eqz v0, :cond_7

    .line 946
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->scrollToVisible(Lcom/samsung/android/glview/GLView;)V

    goto :goto_5

    .line 966
    .end local v0    # "lastSelectedBeautyItem":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    :pswitch_4
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v7}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    .line 967
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v7}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    .line 968
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 969
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v7}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    goto :goto_6

    .line 972
    :pswitch_5
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    .line 973
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 974
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    goto :goto_6

    .line 977
    :pswitch_6
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v9}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    .line 978
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v9}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    .line 979
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 980
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v9}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    goto/16 :goto_6

    .line 863
    nop

    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 934
    :pswitch_data_1
    .packed-switch 0x1e78
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 963
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public onScrollDirection(II)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 990
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->onFlingDirection(II)Z

    move-result v0

    return v0
.end method

.method public onScrollEnd()V
    .locals 1

    .prologue
    .line 995
    const-string v0, "5012"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 996
    return-void
.end method

.method public onScrollStart()V
    .locals 0

    .prologue
    .line 1000
    return-void
.end method

.method protected onShow()V
    .locals 7

    .prologue
    const v4, 0x7f0b000d

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1228
    iput-boolean v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsNeedToSetScreenId:Z

    .line 1229
    invoke-static {}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->getSAScreenId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousScreenId:Ljava/lang/String;

    .line 1230
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setAnimation()V

    .line 1232
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->registerGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    .line 1233
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGestureEventListener:Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->registerGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    .line 1235
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1236
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopVoiceRecognizer()V

    .line 1239
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getSecEffectThumbnailProcessor()Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->setFrontCamera(Z)V

    .line 1240
    invoke-static {}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getSecEffectThumbnailProcessor()Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isFilterLoaded()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1241
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$5;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)V

    invoke-virtual {v2, v3}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1271
    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v3

    if-eq v2, v3, :cond_8

    .line 1272
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->onOrientationChanged(I)V

    .line 1285
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateCategoryLayout(I)V

    .line 1286
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateRemoveEffectButton()V

    .line 1287
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v2

    if-ne v2, v5, :cond_b

    .line 1288
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v2

    const/16 v3, 0x232d

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRandomStickerId()I

    move-result v1

    .line 1289
    .local v1, "stickerId":I
    :goto_2
    const/16 v2, 0x2710

    if-eq v1, v2, :cond_2

    .line 1290
    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->isSoundFaceARSticker(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1291
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->showStickerSoundMuteButton()V

    .line 1300
    .end local v1    # "stickerId":I
    :cond_2
    :goto_3
    iput-boolean v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsNeedShowBaseMenu:Z

    .line 1302
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1303
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0900ca

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v6, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1306
    :cond_3
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_WATERMARK:Z

    if-eqz v2, :cond_4

    .line 1307
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V

    .line 1308
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isNetworkPermissionEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1309
    invoke-static {}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->getInstance()Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v4}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->loadWatermarkText(Landroid/content/Context;Landroid/location/Location;)V

    .line 1313
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 1314
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerRectHandler(Z)V

    .line 1316
    :cond_6
    const-string v2, "501"

    invoke-static {v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 1317
    return-void

    .line 1267
    :cond_7
    const-string v2, "EffectThumbnailListMenu"

    const-string v3, "SecEffectThumbnailProcessor is already initialized, so pass"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1274
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1275
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1276
    .local v0, "menuBarAnimation":Landroid/view/animation/Animation;
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1277
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1278
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1279
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1280
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 1281
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 1288
    .end local v0    # "menuBarAnimation":Landroid/view/animation/Animation;
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v1

    goto/16 :goto_2

    .line 1293
    .restart local v1    # "stickerId":I
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideStickerSoundMuteButton()V

    goto/16 :goto_3

    .line 1297
    .end local v1    # "stickerId":I
    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideStickerSoundMuteButton()V

    goto/16 :goto_3
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1321
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1337
    :cond_0
    :goto_0
    return-void

    .line 1323
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getCurrentSelectedIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v0

    .line 1324
    .local v0, "lastSelectedView":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    if-eqz v0, :cond_0

    .line 1325
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->requestFocus()Z

    goto :goto_0

    .line 1329
    .end local v0    # "lastSelectedView":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getCurrentSelectedIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v1

    .line 1330
    .local v1, "lastSelectedView_beautyCategory":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    if-eqz v1, :cond_0

    .line 1331
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->requestFocus()Z

    goto :goto_0

    .line 1321
    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1342
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1004
    instance-of v1, p1, Lcom/samsung/android/glview/GLGridList;

    if-eqz v1, :cond_4

    .line 1006
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->isAnimationFinished()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1007
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1008
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    if-eqz v1, :cond_0

    .line 1009
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->resetDrag()V

    .line 1007
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1012
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1013
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    if-eqz v1, :cond_2

    .line 1014
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->resetDrag()V

    .line 1012
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1018
    .end local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1020
    :goto_2
    return v1

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_2
.end method

.method public refreshEffectListMenu(Z)V
    .locals 4
    .param p1, "isInstall"    # Z

    .prologue
    .line 1030
    const-string v1, "EffectThumbnailListMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshEffectListMenu : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    .line 1032
    if-eqz p1, :cond_0

    .line 1033
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$4;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)V

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1043
    :cond_0
    sget-object v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceListLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1044
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1045
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ExternalBasicEffectResourceData;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/ExternalBasicEffectResourceData;->resetEffectResourceData()V

    .line 1047
    sget-object v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceListLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1048
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1049
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1048
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1045
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1051
    .restart local v0    # "i":I
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1052
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->invalidate()V

    .line 1053
    return-void

    .line 1051
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public refreshStickerMenu()V
    .locals 3

    .prologue
    .line 1056
    const-string v0, "EffectThumbnailListMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshStickerMenu, StickerList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->makeStickerMenu()V

    .line 1059
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateCategoryLayout(I)V

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;->refreshMenuResource()V

    .line 1064
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    .line 1065
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_SCROLL_MARGIN:I

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    .line 1067
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_SCROLL_MARGIN:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->updateEndOffset(F)V

    .line 1071
    :goto_0
    return-void

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    goto :goto_0
.end method

.method public resetFilterList()V
    .locals 2

    .prologue
    .line 1074
    const-string v0, "EffectThumbnailListMenu"

    const-string v1, "resetFilterList"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->invalidate()V

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    if-eqz v0, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->invalidate()V

    .line 1081
    :cond_1
    return-void
.end method

.method public updateCategoryLayout(I)V
    .locals 1
    .param p1, "category"    # I

    .prologue
    .line 1084
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateCategoryLayout(II)V

    .line 1085
    return-void
.end method

.method public updateNewBadgeButton()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 1088
    const-string v2, "EffectThumbnailListMenu"

    const-string v3, "updateNewBadgeButton"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-boolean v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsDownloadEffectSupported:Z

    if-nez v2, :cond_0

    .line 1112
    :goto_0
    return-void

    .line 1094
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->isFilterCategorySelected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1095
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isNewFilterUploaded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1096
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 1098
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 1101
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerPackage(I)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    move-result-object v0

    .line 1102
    .local v0, "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    iget-object v2, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerType(Ljava/lang/String;)I

    move-result v1

    .line 1103
    .local v1, "stickerType":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 1104
    const-string v2, "EffectThumbnailListMenu"

    const-string v3, "not support watermark download"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_3
    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->isNewStickerUploaded(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1107
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 1109
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateRemoveEffectButton()V
    .locals 4

    .prologue
    .line 1115
    const-string v2, "EffectThumbnailListMenu"

    const-string v3, "updateRemoveEffectButton"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    const/4 v0, 0x0

    .line 1118
    .local v0, "effectName":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1119
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1120
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectsTitle(I)Ljava/lang/String;

    move-result-object v0

    .line 1147
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 1148
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->showRemoveEffectButton()V

    .line 1152
    :goto_1
    return-void

    .line 1122
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    const/16 v3, 0x400

    if-ne v2, v3, :cond_2

    .line 1123
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090114

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1125
    :cond_2
    const-string v2, "EffectThumbnailListMenu"

    const-string v3, "undefined effect"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1128
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1130
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1141
    const/4 v1, -0x1

    .line 1144
    .local v1, "titleResId":I
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1132
    .end local v1    # "titleResId":I
    :pswitch_0
    const v1, 0x7f090168

    .line 1133
    .restart local v1    # "titleResId":I
    goto :goto_2

    .line 1135
    .end local v1    # "titleResId":I
    :pswitch_1
    const v1, 0x7f090038

    .line 1136
    .restart local v1    # "titleResId":I
    goto :goto_2

    .line 1138
    .end local v1    # "titleResId":I
    :pswitch_2
    const v1, 0x7f09022c

    .line 1139
    .restart local v1    # "titleResId":I
    goto :goto_2

    .line 1150
    .end local v1    # "titleResId":I
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideRemoveEffectButton()V

    goto :goto_1

    .line 1130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
.class public Lcom/sec/android/app/camera/menu/ModeListMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "ModeListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$ScrollListener;
.implements Lcom/samsung/android/glview/GLView$DragListener;
.implements Lcom/sec/android/app/camera/widget/gl/DragDropBox$DropListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;,
        Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;
    }
.end annotation


# static fields
.field private static final EDIT_MODE:I = 0x1

.field private static final NORMAL_MODE:I = 0x0

.field private static final SHORT_CUT_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ModeListMenu"


# instance fields
.field private final BUTTON_FONT_COLOR:I

.field private final BUTTON_TEXT_FONT_SIZE:F

.field private final BUTTON_TEXT_MARGIN:F

.field private final DOWNLOAD_BUTTON_SIZE:F

.field private final LANDSCAPE_LIST_HORIZONTAL_SPACING:F

.field private final LANDSCAPE_LIST_VERTICAL_SPACING:F

.field private final LIST_LANDSCAPE_BOTTOM_MARGIN:F

.field private final LIST_LANDSCAPE_TOP_MARGIN:F

.field private final LIST_LANDSCAPE_WIDTH:F

.field private final LIST_MENU_BOTTOM_MARGIN:F

.field private final LIST_MENU_TRANSLATE_OFFSET:F

.field private final LIST_PORTRAIT_TOP_MARGIN:F

.field private final LIST_SCROLL_MARGIN_BOTTOM:F

.field private final MENU_BAR_BUTTON_HEIGHT:F

.field private final MENU_BAR_GROUP_MARGIN:F

.field private final MODE_BACK_ICON_MARGIN:F

.field private final MODE_BACK_ICON_WIDTH:F

.field private final MODE_EDIT_AREA_MARK_WIDTH:F

.field private final MODE_MENU_COLS_WIDTH:F

.field private final MODE_MENU_ITEM_HEIGHT:F

.field private final MODE_MENU_ITEM_WIDTH:F

.field private final MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

.field private final MODE_MENU_PORTRAIT_NUM_OF_COLUMNS:I

.field private final MODE_TITLE_FONT_COLOR:I

.field private final MODE_TITLE_SELECTED_FONT_COLOR:I

.field private final MORE_BUTTON_LEFT_MARGIN:F

.field private final MORE_BUTTON_RIGHT_MARGIN:F

.field private final MORE_BUTTON_WIDTH:F

.field private final NEW_BADGE_ICON_OFFSET:I

.field private final NEW_BADGE_ICON_WIDTH:I

.field private final NEW_BADGE_TEXT_SIZE:I

.field private final OPTION_BUTTON_FONT_COLOR:I

.field private final OPTION_BUTTON_TEXT_FONT_SIZE:F

.field private final OPTION_BUTTON_TEXT_HEIGHT:F

.field private final OPTION_BUTTON_TEXT_MARGIN:F

.field private final OPTION_BUTTON_TEXT_MIN_HEIGHT:F

.field private final OPTION_GROUP_MARGIN:F

.field private final OPTION_MIN_WIDTH:F

.field private final PORTRAIT_LIST_HORIZONTAL_SPACING:F

.field private final PORTRAIT_LIST_VERTICAL_SPACING:F

.field private final SCREEN_HEIGHT:F

.field private final SCREEN_WIDTH:F

.field private mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

.field private final mBackButton:Lcom/samsung/android/glview/GLButton;

.field private mBackKeyPressed:Z

.field private mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

.field private mCurrentMode:I

.field private mCurrentModeOrderString:Ljava/lang/String;

.field private final mDoneButton:Lcom/samsung/android/glview/GLButton;

.field private final mDoneText:Lcom/samsung/android/glview/GLText;

.field private mDownLoadButton:Lcom/samsung/android/glview/GLButton;

.field private mDragHelpToast:Landroid/widget/Toast;

.field private mEditAreaMarkList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private final mEditButton:Lcom/samsung/android/glview/GLButton;

.field private mEditPossible:Z

.field private final mEditText:Lcom/samsung/android/glview/GLText;

.field private mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

.field private final mHideAnimation_0:Landroid/view/animation/Animation;

.field private final mHideAnimation_180:Landroid/view/animation/Animation;

.field private final mHideAnimation_270:Landroid/view/animation/Animation;

.field private final mHideAnimation_90:Landroid/view/animation/Animation;

.field private final mInfoButton:Lcom/samsung/android/glview/GLButton;

.field private final mInfoText:Lcom/samsung/android/glview/GLText;

.field private mInitialModeOrderString:Ljava/lang/String;

.field private mIsInfoMenuShowing:Z

.field private mIsNeedShowBaseMenu:Z

.field private mLastBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

.field private mList:Lcom/samsung/android/glview/GLGridList;

.field private final mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private final mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

.field private mModeIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMoreButton:Lcom/samsung/android/glview/GLButton;

.field private mNewBadge:Lcom/samsung/android/glview/GLText;

.field private mNormalModeDrag:Z

.field private final mOneTimeHideAnimation:Landroid/view/animation/Animation;

.field private final mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mOrientation:I

.field private mPreviousScreenId:Ljava/lang/String;

.field private mShortCutButton:Lcom/samsung/android/glview/GLButton;

.field private mShortCutCheckedList:Landroid/util/SparseBooleanArray;

.field private final mShortCutText:Lcom/samsung/android/glview/GLText;

.field private mShowAnimationListener:Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;

.field private final mShowAnimation_0:Landroid/view/animation/Animation;

.field private final mShowAnimation_180:Landroid/view/animation/Animation;

.field private final mShowAnimation_270:Landroid/view/animation/Animation;

.field private final mShowAnimation_90:Landroid/view/animation/Animation;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 53
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p7, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p8, "zOrder"    # I

    .prologue
    .line 181
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v10, v2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    int-to-float v11, v2

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-direct/range {v2 .. v14}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;FFFFLcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    .line 87
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    .line 88
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    .line 89
    const v2, 0x7f0a0158

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_HORIZONTAL_SPACING:F

    .line 90
    const v2, 0x7f0a0185

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_HORIZONTAL_SPACING:F

    .line 91
    const v2, 0x7f0a0159

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_VERTICAL_SPACING:F

    .line 92
    const v2, 0x7f0a0186

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_VERTICAL_SPACING:F

    .line 93
    const v2, 0x7f0a017d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_SCROLL_MARGIN_BOTTOM:F

    .line 94
    const v2, 0x7f0a002f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_PORTRAIT_TOP_MARGIN:F

    .line 95
    const v2, 0x7f0a002e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_WIDTH:F

    .line 96
    const v2, 0x7f0a002d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_TOP_MARGIN:F

    .line 97
    const v2, 0x7f0a002c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_BOTTOM_MARGIN:F

    .line 98
    const v2, 0x7f0a0035

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_WIDTH:F

    .line 99
    const v2, 0x7f0a0034

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    .line 100
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_COLS_WIDTH:F

    .line 101
    const v2, 0x7f0b0033

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    .line 102
    const v2, 0x7f0b0034

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_PORTRAIT_NUM_OF_COLUMNS:I

    .line 103
    const v2, 0x7f0d002c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_TITLE_FONT_COLOR:I

    .line 104
    const v2, 0x7f0d002e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_TITLE_SELECTED_FONT_COLOR:I

    .line 105
    const v2, 0x7f0a0030

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    .line 106
    const v2, 0x7f0a002b

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_BOTTOM_MARGIN:F

    .line 107
    const v2, 0x7f0a0033

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_MARGIN:F

    .line 108
    const v2, 0x7f0a0355

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_FONT_SIZE:F

    .line 109
    const v2, 0x7f0d002c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_FONT_COLOR:I

    .line 110
    const v2, 0x7f0a003b

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    .line 111
    const v2, 0x7f0a003a

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_HEIGHT:F

    .line 112
    const v2, 0x7f0a003c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MIN_HEIGHT:F

    .line 113
    const v2, 0x7f0a0357

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    .line 114
    const v2, 0x7f0d0029

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_FONT_COLOR:I

    .line 115
    const v2, 0x7f0a0038

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    .line 116
    const v2, 0x7f0a0039

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_MIN_WIDTH:F

    .line 117
    const v2, 0x7f0a0352

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_EDIT_AREA_MARK_WIDTH:F

    .line 118
    const v2, 0x7f0a016a

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    .line 119
    const v2, 0x7f0a0024

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    .line 120
    const v2, 0x7f0a0356

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_WIDTH:F

    .line 121
    const v2, 0x7f0a0036

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_LEFT_MARGIN:F

    .line 122
    const v2, 0x7f0a0037

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    .line 123
    const v2, 0x7f0a0351

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->DOWNLOAD_BUTTON_SIZE:F

    .line 124
    const v2, 0x7f0a0032

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    .line 125
    const v2, 0x7f0a0031

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    .line 126
    const v2, 0x7f0a0311

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_OFFSET:I

    .line 127
    const v2, 0x7f0a035a

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_WIDTH:I

    .line 128
    const v2, 0x7f0a035b

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_TEXT_SIZE:I

    .line 151
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    .line 153
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    .line 156
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    .line 157
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 158
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mLastBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 160
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    .line 161
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsInfoMenuShowing:Z

    .line 162
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditPossible:Z

    .line 164
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    .line 165
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutCheckedList:Landroid/util/SparseBooleanArray;

    .line 166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    .line 168
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackKeyPressed:Z

    .line 169
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    .line 170
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInitialModeOrderString:Ljava/lang/String;

    .line 171
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentModeOrderString:Ljava/lang/String;

    .line 172
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsNeedShowBaseMenu:Z

    .line 183
    check-cast p6, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    .end local p6    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    .line 184
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isAddToHomeIntentSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isDocomoUx(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isAFWMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v47, 0x1

    .line 188
    .local v47, "isAddToHomeIntentSupported":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0901d0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 192
    .local v50, "moreText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->DOWNLOAD_BUTTON_SIZE:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_LEFT_MARGIN:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_WIDTH:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    add-float v49, v2, v3

    .line 193
    .local v49, "menuBarWidth":F
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v2, :cond_0

    .line 194
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 195
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_LEFT_MARGIN:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_WIDTH:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    add-float/2addr v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->DOWNLOAD_BUTTON_SIZE:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    const v8, 0x7f020145

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    .line 199
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09002d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setButtonShapeVisibility(Z)V

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 204
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 205
    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_LEFT_MARGIN:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_WIDTH:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->DOWNLOAD_BUTTON_SIZE:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_OFFSET:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_OFFSET:I

    neg-int v5, v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_WIDTH:I

    int-to-float v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_WIDTH:I

    int-to-float v7, v9

    const-string v8, "N"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_TEXT_SIZE:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_FONT_COLOR:I

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    .line 209
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const v3, 0x7f020286

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setNinePatchBackground(I)Z

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 216
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 217
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    const v8, 0x7f020285

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    .line 221
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, v50

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setButtonShapeVisibility(Z)V

    .line 227
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sub-float v48, v2, v49

    .line 228
    .local v48, "menuBarPosX":F
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 231
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 242
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 243
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isAFWMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 247
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090165

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, "editText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v8, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v45

    .line 252
    .local v45, "editTextWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09010b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 253
    .local v20, "shortCutText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v52

    .line 255
    .local v52, "shortCutTextWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0901a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 256
    .local v27, "infoText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v46

    .line 258
    .local v46, "infoWidth":F
    const/4 v6, 0x0

    .line 260
    .local v6, "optionTextWidth":F
    if-eqz v47, :cond_e

    .line 261
    move/from16 v0, v46

    move/from16 v1, v52

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move/from16 v0, v45

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 266
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float v51, v2, v3

    .line 267
    .local v51, "optionTextMaxWidth":F
    cmpl-float v2, v6, v51

    if-lez v2, :cond_2

    .line 268
    move/from16 v6, v51

    .line 270
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_MIN_WIDTH:F

    cmpg-float v2, v6, v2

    if-gez v2, :cond_3

    .line 271
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_MIN_WIDTH:F

    .line 274
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v7, v2, v3

    .line 275
    .local v7, "optionTextHeight":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MIN_HEIGHT:F

    cmpg-float v2, v7, v2

    if-gez v2, :cond_4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MIN_HEIGHT:F

    .line 277
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float v13, v6, v2

    .line 279
    .local v13, "optionMenuWidth":F
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const v3, 0x7f02015d

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setNinePatchBackground(I)Z

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v2, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    if-eqz v47, :cond_f

    const/4 v2, 0x3

    :goto_6
    int-to-float v2, v2

    mul-float/2addr v2, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 282
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    .line 281
    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setInternalFocus(Z)V

    .line 285
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v5, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v5, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 296
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 299
    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v10

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_FONT_COLOR:I

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 301
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 306
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v8}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 309
    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v11, v2

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v2, 0x7f0d002d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v18

    sget-object v19, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move v14, v7

    invoke-direct/range {v9 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v8}, Lcom/samsung/android/glview/GLButton;->setContentDescription(Ljava/lang/String;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setHighlightVisibility(Z)V

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setButtonShapeVisibility(Z)V

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 318
    new-instance v14, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v21, v2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_FONT_COLOR:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v18, v6

    move/from16 v19, v7

    invoke-direct/range {v14 .. v23}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 320
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 325
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 327
    if-eqz v47, :cond_5

    .line 328
    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v11, v2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v2, 0x7f0d002d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v18

    sget-object v19, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move v12, v7

    move v14, v7

    invoke-direct/range {v9 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09010c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setContentDescription(Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setHighlightVisibility(Z)V

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setButtonShapeVisibility(Z)V

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 339
    :cond_5
    new-instance v21, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v28, v2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_FONT_COLOR:I

    move/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v25, v6

    move/from16 v26, v7

    invoke-direct/range {v21 .. v30}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 341
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 346
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 349
    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v11, v2

    if-eqz v47, :cond_14

    const/4 v2, 0x2

    :goto_b
    int-to-float v2, v2

    mul-float v12, v7, v2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v2, 0x7f0d002d

    .line 350
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v18

    sget-object v19, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move v14, v7

    invoke-direct/range {v9 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0901a3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setContentDescription(Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setHighlightVisibility(Z)V

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setButtonShapeVisibility(Z)V

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 360
    if-eqz v47, :cond_6

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 363
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090163

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v34

    .line 366
    .local v34, "doneText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_MARGIN:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float v32, v2, v3

    .line 368
    .local v32, "doneTextWidth":F
    new-instance v28, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v35, v2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_FONT_COLOR:I

    move/from16 v36, v0

    const/16 v37, 0x0

    invoke-direct/range {v28 .. v37}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 374
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 375
    new-instance v35, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v36

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sub-float v2, v2, v32

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    sub-float v37, v2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    move/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move/from16 v39, v32

    invoke-direct/range {v35 .. v44}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    sub-float v5, v5, v32

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    sub-float/2addr v5, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v5, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 387
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 393
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 394
    new-instance v35, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v36

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    sub-float v37, v2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    move/from16 v40, v0

    const v41, 0x7f020284

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-direct/range {v35 .. v44}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    sub-float/2addr v5, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    add-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 406
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0901d3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 411
    new-instance v2, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/menu/ModeListMenu$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    .line 413
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 420
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    .line 421
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 426
    :goto_e
    new-instance v35, Lcom/samsung/android/glview/GLGridList;

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v36

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_WIDTH:F

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_COLS_WIDTH:F

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_HORIZONTAL_SPACING:F

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_VERTICAL_SPACING:F

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    move/from16 v44, v0

    invoke-direct/range {v35 .. v44}, Lcom/samsung/android/glview/GLGridList;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFI)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const v3, 0x7f020287

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLGridList;->setScrollBarResource(I)V

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLGridList;->setScrollBarAlpha(F)V

    .line 431
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    .line 432
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_HORIZONTAL_SPACING:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_VERTICAL_SPACING:F

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLGridList;->setNumColumns(IZ)V

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_TOP_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_SCROLL_MARGIN_BOTTOM:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_BOTTOM_MARGIN:F

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLGridList;->setSize(FFZ)V

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLGridList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getListLeftPosition(F)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_TOP_MARGIN:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    .line 446
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLGridList;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLGridList;->setScrollListener(Lcom/samsung/android/glview/GLAbsList$ScrollListener;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const-string v3, "MODE_MENU_LIST"

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLGridList;->setObjectTag(Ljava/lang/String;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7f0b000c

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v5

    new-instance v9, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v9}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v2, v3, v4, v5, v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_0:Landroid/view/animation/Animation;

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const v5, 0x7f0b000c

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v5

    new-instance v9, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v9}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v2, v3, v4, v5, v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_90:Landroid/view/animation/Animation;

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const v5, 0x7f0b000c

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v5

    new-instance v9, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v9}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v2, v3, v4, v5, v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_180:Landroid/view/animation/Animation;

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const v5, 0x7f0b000c

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v5

    new-instance v9, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v9}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v2, v3, v4, v5, v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_270:Landroid/view/animation/Animation;

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation_0:Landroid/view/animation/Animation;

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation_90:Landroid/view/animation/Animation;

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation_180:Landroid/view/animation/Animation;

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation_270:Landroid/view/animation/Animation;

    .line 466
    const v2, 0x7f0b000b

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    .line 468
    new-instance v2, Lcom/sec/android/app/camera/provider/CameraGestureManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/provider/CameraGestureManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    .line 469
    return-void

    .line 186
    .end local v6    # "optionTextWidth":F
    .end local v7    # "optionTextHeight":F
    .end local v8    # "editText":Ljava/lang/String;
    .end local v13    # "optionMenuWidth":F
    .end local v20    # "shortCutText":Ljava/lang/String;
    .end local v27    # "infoText":Ljava/lang/String;
    .end local v32    # "doneTextWidth":F
    .end local v34    # "doneText":Ljava/lang/String;
    .end local v45    # "editTextWidth":F
    .end local v46    # "infoWidth":F
    .end local v47    # "isAddToHomeIntentSupported":Z
    .end local v48    # "menuBarPosX":F
    .end local v49    # "menuBarWidth":F
    .end local v50    # "moreText":Ljava/lang/String;
    .end local v51    # "optionTextMaxWidth":F
    .end local v52    # "shortCutTextWidth":F
    :cond_9
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 197
    .restart local v47    # "isAddToHomeIntentSupported":Z
    .restart local v49    # "menuBarWidth":F
    .restart local v50    # "moreText":Ljava/lang/String;
    :cond_a
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->DOWNLOAD_BUTTON_SIZE:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    const v8, 0x7f020145

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_1

    .line 207
    :cond_b
    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->DOWNLOAD_BUTTON_SIZE:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_OFFSET:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_OFFSET:I

    neg-int v5, v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_WIDTH:I

    int-to-float v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_WIDTH:I

    int-to-float v7, v9

    const-string v8, "N"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_TEXT_SIZE:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_FONT_COLOR:I

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    goto/16 :goto_2

    .line 219
    :cond_c
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->DOWNLOAD_BUTTON_SIZE:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_LEFT_MARGIN:F

    add-float/2addr v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    const v8, 0x7f020285

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_3

    .line 237
    .restart local v48    # "menuBarPosX":F
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    move/from16 v0, v48

    invoke-virtual {v2, v3, v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    sub-float v5, v5, v49

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    sub-float/2addr v4, v5

    move/from16 v0, v49

    invoke-virtual {v2, v3, v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    move/from16 v0, v49

    invoke-virtual {v2, v3, v4, v0}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_4

    .line 263
    .restart local v6    # "optionTextWidth":F
    .restart local v8    # "editText":Ljava/lang/String;
    .restart local v20    # "shortCutText":Ljava/lang/String;
    .restart local v27    # "infoText":Ljava/lang/String;
    .restart local v45    # "editTextWidth":F
    .restart local v46    # "infoWidth":F
    .restart local v52    # "shortCutTextWidth":F
    :cond_e
    move/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto/16 :goto_5

    .line 281
    .restart local v7    # "optionTextHeight":F
    .restart local v13    # "optionMenuWidth":F
    .restart local v51    # "optionTextMaxWidth":F
    :cond_f
    const/4 v2, 0x2

    goto/16 :goto_6

    .line 291
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sub-float/2addr v4, v13

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    sub-float/2addr v5, v13

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v5, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    add-float/2addr v4, v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v5, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    add-float/2addr v5, v13

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    add-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_7

    .line 304
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_8

    .line 323
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_9

    .line 344
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_a

    .line 349
    :cond_14
    const/4 v2, 0x1

    goto/16 :goto_b

    .line 381
    .restart local v32    # "doneTextWidth":F
    .restart local v34    # "doneText":Ljava/lang/String;
    :cond_15
    new-instance v35, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v36

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sub-float v37, v2, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    move/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move/from16 v39, v32

    invoke-direct/range {v35 .. v44}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sub-float v4, v4, v32

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    sub-float v5, v5, v32

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    add-float v4, v4, v32

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    add-float v5, v5, v32

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto/16 :goto_c

    .line 400
    :cond_16
    new-instance v35, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    move/from16 v40, v0

    const v41, 0x7f020283

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-direct/range {v35 .. v44}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto/16 :goto_d

    .line 423
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    goto/16 :goto_e

    .line 439
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_HORIZONTAL_SPACING:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_VERTICAL_SPACING:F

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_PORTRAIT_NUM_OF_COLUMNS:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLGridList;->setNumColumns(IZ)V

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_PORTRAIT_TOP_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_SCROLL_MARGIN_BOTTOM:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_BOTTOM_MARGIN:F

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLGridList;->setSize(FFZ)V

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLGridList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_PORTRAIT_TOP_MARGIN:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    goto/16 :goto_f
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/samsung/android/glview/GLView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;
    .param p1, "x1"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->refreshNextFocus(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;)Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;
    .param p1, "x1"    # Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mLastBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;
    .param p1, "x1"    # Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mLastBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;
    .param p1, "x1"    # Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/ModeListMenu;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/ModeListMenu;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_WIDTH:F

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/ModeListMenu;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/samsung/android/glview/GLGridList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/ModeListMenu;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/menu/ModeListMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsNeedShowBaseMenu:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/menu/ModeListMenu;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutCheckedList:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/menu/ModeListMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    return v0
.end method

.method private changeMode(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 1042
    if-ne p1, v5, :cond_5

    .line 1043
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1044
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1045
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hidePageNavigators()V

    .line 1047
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1048
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->getOrderString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInitialModeOrderString:Ljava/lang/String;

    .line 1053
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1054
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v1

    .line 1055
    .local v1, "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-eqz v1, :cond_0

    .line 1056
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 1057
    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDeleteButtonVisibility(I)V

    .line 1053
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1050
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->getOrderString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInitialModeOrderString:Ljava/lang/String;

    goto :goto_0

    .line 1061
    .restart local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1062
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1063
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeAreaMark()V

    .line 1064
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideDragHelpToast()V

    .line 1065
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v3, 0x7f0901cb

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    .line 1066
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    if-eqz v2, :cond_3

    .line 1067
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1070
    :cond_3
    iput v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    .line 1071
    iget-boolean v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    if-nez v2, :cond_4

    .line 1072
    const-string v2, "122"

    invoke-static {v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 1128
    .end local v0    # "i":I
    :cond_4
    :goto_2
    return-void

    .line 1074
    :cond_5
    if-ne p1, v6, :cond_8

    .line 1075
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1076
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1077
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hidePageNavigators()V

    .line 1079
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 1080
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v1

    .line 1081
    .restart local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-eqz v1, :cond_6

    .line 1082
    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDraggable(Z)V

    .line 1083
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 1084
    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setShortCutCheckBoxVisibility(I)V

    .line 1079
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1088
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1089
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1090
    iput v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    .line 1092
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->refreshNextFocus(Lcom/samsung/android/glview/GLView;)V

    .line 1093
    const-string v2, "123"

    invoke-static {v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_2

    .line 1095
    .end local v0    # "i":I
    :cond_8
    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v2, v5, :cond_a

    .line 1096
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1097
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideModeAreaMark()V

    .line 1099
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 1100
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v1

    .line 1101
    .restart local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-eqz v1, :cond_9

    .line 1102
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 1103
    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDeleteButtonVisibility(I)V

    .line 1099
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1106
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_a
    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v2, v6, :cond_d

    .line 1107
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 1108
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v1

    .line 1109
    .restart local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-eqz v1, :cond_c

    .line 1110
    iget-boolean v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditPossible:Z

    if-eqz v2, :cond_b

    .line 1111
    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDraggable(Z)V

    .line 1113
    :cond_b
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 1114
    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setShortCutCheckBoxVisibility(I)V

    .line 1107
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1118
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1119
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1120
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1121
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showPageNavigators()V

    .line 1122
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutCheckedList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1123
    iput v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    .line 1124
    iget-boolean v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    if-nez v2, :cond_4

    .line 1125
    const-string v2, "121"

    invoke-static {v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private compareModeOrder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "modeOrder1"    # Ljava/lang/String;
    .param p2, "modeOrder2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1131
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1132
    .local v1, "st1":[Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1134
    .local v2, "st2":[Ljava/lang/String;
    array-length v4, v1

    array-length v5, v2

    if-eq v4, v5, :cond_1

    .line 1141
    :cond_0
    :goto_0
    return v3

    .line 1137
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 1138
    aget-object v4, v1, v0

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    aget-object v5, v2, v0

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1141
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/ModeItem;
    .locals 3

    .prologue
    .line 1145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1146
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v1

    .line 1147
    .local v1, "modeItem":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedAndPreloadedShootingMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1145
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1150
    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1155
    .end local v1    # "modeItem":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getListLeftPosition(F)F
    .locals 4
    .param p1, "listWidth"    # F

    .prologue
    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    .line 1160
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 1161
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-ne v1, v2, :cond_0

    .line 1162
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    sub-float v0, v1, v2

    .line 1173
    .local v0, "position":F
    :goto_0
    return v0

    .line 1164
    .end local v0    # "position":F
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    int-to-float v0, v1

    .restart local v0    # "position":F
    goto :goto_0

    .line 1167
    .end local v0    # "position":F
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-ne v1, v2, :cond_2

    .line 1168
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    add-float v0, v1, v2

    .restart local v0    # "position":F
    goto :goto_0

    .line 1170
    .end local v0    # "position":F
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-float v0, v1

    .restart local v0    # "position":F
    goto :goto_0
.end method

.method private getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 1177
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    if-nez v1, :cond_1

    .line 1187
    :cond_0
    :goto_0
    return-object v0

    .line 1180
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    if-eqz v1, :cond_2

    .line 1181
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .line 1182
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    goto :goto_0

    .line 1183
    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    if-eqz v1, :cond_0

    .line 1184
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 1185
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getModeItem()Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v0

    goto :goto_0
.end method

.method private getShortCutImageId(I)I
    .locals 1
    .param p1, "commandId"    # I

    .prologue
    const v0, 0x7f02021e

    .line 1193
    packed-switch p1, :pswitch_data_0

    .line 1253
    :goto_0
    :pswitch_0
    return v0

    .line 1196
    :pswitch_1
    const v0, 0x7f02022a

    goto :goto_0

    .line 1199
    :pswitch_2
    const v0, 0x7f02022b

    goto :goto_0

    .line 1203
    :pswitch_3
    const v0, 0x7f02022c

    goto :goto_0

    .line 1205
    :pswitch_4
    const v0, 0x7f02021f

    goto :goto_0

    .line 1207
    :pswitch_5
    const v0, 0x7f020220

    goto :goto_0

    .line 1209
    :pswitch_6
    const v0, 0x7f02022d

    goto :goto_0

    .line 1211
    :pswitch_7
    const v0, 0x7f020222

    goto :goto_0

    .line 1213
    :pswitch_8
    const v0, 0x7f02022e

    goto :goto_0

    .line 1215
    :pswitch_9
    const v0, 0x7f020223

    goto :goto_0

    .line 1217
    :pswitch_a
    const v0, 0x7f020224

    goto :goto_0

    .line 1219
    :pswitch_b
    const v0, 0x7f020230

    goto :goto_0

    .line 1221
    :pswitch_c
    const v0, 0x7f020226

    goto :goto_0

    .line 1223
    :pswitch_d
    const v0, 0x7f020232

    goto :goto_0

    .line 1225
    :pswitch_e
    const v0, 0x7f020227

    goto :goto_0

    .line 1227
    :pswitch_f
    const v0, 0x7f020228

    goto :goto_0

    .line 1231
    :pswitch_10
    const v0, 0x7f020237

    goto :goto_0

    .line 1233
    :pswitch_11
    const v0, 0x7f02021c

    goto :goto_0

    .line 1236
    :pswitch_12
    const v0, 0x7f020221

    goto :goto_0

    .line 1239
    :pswitch_13
    const v0, 0x7f020229

    goto :goto_0

    .line 1241
    :pswitch_14
    const v0, 0x7f020225

    goto :goto_0

    .line 1243
    :pswitch_15
    const v0, 0x7f020231

    goto :goto_0

    .line 1245
    :pswitch_16
    const v0, 0x7f02021d

    goto :goto_0

    .line 1247
    :pswitch_17
    const v0, 0x7f020234

    goto :goto_0

    .line 1249
    :pswitch_18
    const v0, 0x7f02022f

    goto :goto_0

    .line 1251
    :pswitch_19
    const v0, 0x7f020236

    goto :goto_0

    .line 1193
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_12
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_d
        :pswitch_16
        :pswitch_7
        :pswitch_8
        :pswitch_18
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_10
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_b
        :pswitch_e
        :pswitch_0
        :pswitch_a
        :pswitch_11
        :pswitch_17
        :pswitch_5
        :pswitch_9
        :pswitch_1
        :pswitch_c
        :pswitch_2
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_19
    .end packed-switch
.end method

.method private getShortCutImageId(Ljava/lang/String;)I
    .locals 2
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 1259
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1265
    const v0, 0x7f02021e

    :goto_1
    return v0

    .line 1259
    :sswitch_0
    const-string v1, "com.sec.android.app.camera.shootingmode.panorama3d.ActivityStub"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "com.sec.android.app.camera.shootingmode.virtualtour.VirtualTourActivity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1261
    :pswitch_0
    const v0, 0x7f020233

    goto :goto_1

    .line 1263
    :pswitch_1
    const v0, 0x7f020235

    goto :goto_1

    .line 1259
    nop

    :sswitch_data_0
    .sparse-switch
        0x32536910 -> :sswitch_0
        0x410cbdf2 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hideDragHelpToast()V
    .locals 1

    .prologue
    .line 1270
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->isShowingDragHelpToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    .line 1276
    :cond_0
    return-void
.end method

.method private hideModeAreaMark()V
    .locals 3

    .prologue
    .line 1279
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gt v0, v2, :cond_1

    .line 1280
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    .line 1281
    .local v1, "image":Lcom/samsung/android/glview/GLImage;
    if-eqz v1, :cond_0

    .line 1282
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLGridList;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1283
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 1279
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1286
    .end local v1    # "image":Lcom/samsung/android/glview/GLImage;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1287
    return-void
.end method

.method private isShowingDragHelpToast()Z
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

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

.method private refreshNextFocus(Lcom/samsung/android/glview/GLView;)V
    .locals 3
    .param p1, "listFirstView"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 1294
    if-nez p1, :cond_0

    .line 1295
    const-string v1, "ModeListMenu"

    const-string v2, "listFirstView is null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    .end local p1    # "listFirstView":Lcom/samsung/android/glview/GLView;
    :goto_0
    return-void

    .line 1299
    .restart local p1    # "listFirstView":Lcom/samsung/android/glview/GLView;
    :cond_0
    move-object v0, p1

    .line 1300
    .local v0, "firstView":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->resetNextFocusId()V

    .line 1301
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1302
    check-cast p1, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .end local p1    # "listFirstView":Lcom/samsung/android/glview/GLView;
    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getShortCutButton()Lcom/samsung/android/glview/GLView;

    move-result-object v0

    .line 1304
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->resetNextFocusId()V

    .line 1305
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v1, :cond_2

    .line 1306
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->resetNextFocusId()V

    .line 1308
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->resetNextFocusId()V

    .line 1309
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->resetNextFocusId()V

    .line 1311
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1313
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    .line 1314
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    .line 1315
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v1, :cond_3

    .line 1316
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    .line 1318
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    .line 1319
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    .line 1320
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    .line 1321
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    goto :goto_0

    .line 1324
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    .line 1325
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 1326
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v1, :cond_4

    .line 1327
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    .line 1329
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    .line 1330
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    .line 1331
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    .line 1332
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_0

    .line 1335
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    .line 1336
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    .line 1337
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v1, :cond_5

    .line 1338
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    .line 1340
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    .line 1341
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 1342
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    .line 1343
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_0

    .line 1346
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 1347
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    .line 1348
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v1, :cond_6

    .line 1349
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 1351
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 1352
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    .line 1353
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 1354
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_0

    .line 1311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private requestShootingModeShortcut(Lcom/sec/android/app/camera/widget/gl/ModeItem;)V
    .locals 6
    .param p1, "item"    # Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .prologue
    .line 1362
    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v0

    .line 1363
    .local v0, "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1364
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    iget-object v5, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getShortCutImageId(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->installShootingModeShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1370
    :goto_0
    return-void

    .line 1365
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedAndPreloadedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1366
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getShortCutImageId(I)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->installShootingModeShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1368
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getShortCutImageId(I)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->installShootingModeShortcut(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private resetOrder(Z)V
    .locals 13
    .param p1, "isSave"    # Z

    .prologue
    .line 1373
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 1375
    .local v4, "firstBox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    if-eqz v4, :cond_1

    .line 1376
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1378
    sget-boolean v11, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v11, :cond_2

    .line 1379
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .line 1380
    .local v5, "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    invoke-virtual {v5}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    .line 1381
    .local v1, "bundle":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1387
    .end local v1    # "bundle":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :goto_0
    const/4 v8, 0x0

    .line 1388
    .local v8, "lastDragDropBoxId":I
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->moveEmptyToLast(Lcom/samsung/android/glview/GLView;)Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 1389
    .local v7, "lastBox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    invoke-virtual {v7}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1390
    invoke-virtual {v7}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getModeItem()Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    .line 1391
    .local v2, "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    sget-boolean v11, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v11, :cond_3

    .line 1392
    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getId()I

    move-result v8

    .line 1398
    .end local v2    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :cond_0
    :goto_1
    move-object v3, v4

    .line 1399
    .local v3, "dropbox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1401
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v11

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1402
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    instance-of v11, v11, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    if-nez v11, :cond_4

    .line 1403
    const-string v11, "ModeListMenu"

    const-string v12, "Invalid menu data was provided"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "dropbox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .end local v5    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    .end local v7    # "lastBox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .end local v8    # "lastDragDropBoxId":I
    :cond_1
    :goto_2
    return-void

    .line 1383
    :cond_2
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .line 1384
    .restart local v5    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1394
    .restart local v2    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .restart local v7    # "lastBox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .restart local v8    # "lastDragDropBoxId":I
    :cond_3
    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v8

    goto :goto_1

    .line 1407
    .end local v2    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "dropbox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    :cond_4
    sget-boolean v11, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELFIE:Z

    if-eqz v11, :cond_5

    .line 1408
    const/16 v11, 0x154

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x2c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1413
    :goto_3
    if-eqz v3, :cond_9

    .line 1414
    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getItem()Lcom/samsung/android/glview/GLView;

    move-result-object v6

    .line 1416
    .local v6, "itemView":Lcom/samsung/android/glview/GLView;
    instance-of v11, v6, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    if-nez v11, :cond_6

    .line 1417
    instance-of v11, v6, Lcom/sec/android/app/camera/widget/gl/EmptyItem;

    if-eqz v11, :cond_1

    .line 1418
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1410
    .end local v6    # "itemView":Lcom/samsung/android/glview/GLView;
    :cond_5
    const/16 v11, 0x12c

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x2c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .restart local v6    # "itemView":Lcom/samsung/android/glview/GLView;
    :cond_6
    move-object v10, v6

    .line 1423
    check-cast v10, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .line 1424
    .local v10, "view":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    invoke-virtual {v10}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v11

    const/16 v12, 0x63

    if-eq v11, v12, :cond_7

    .line 1425
    invoke-virtual {v10}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    .line 1427
    .restart local v2    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->appendItemString(Ljava/lang/StringBuilder;Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)V

    .line 1428
    const/16 v11, 0x2c

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1430
    sget-boolean v11, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v11, :cond_8

    .line 1431
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1437
    .end local v2    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :cond_7
    :goto_4
    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v3

    .end local v3    # "dropbox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    check-cast v3, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 1438
    .restart local v3    # "dropbox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    goto :goto_3

    .line 1433
    .restart local v2    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :cond_8
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1440
    .end local v2    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .end local v6    # "itemView":Lcom/samsung/android/glview/GLView;
    .end local v10    # "view":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentModeOrderString:Ljava/lang/String;

    .line 1441
    if-eqz p1, :cond_1

    .line 1442
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    check-cast v9, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    .line 1444
    .local v9, "menuRes":Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->saveOrder()V

    .line 1447
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-static {v11, v12}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->updateShootingModeFrontOrder(Landroid/content/Context;Ljava/util/ArrayList;)Z

    goto/16 :goto_2

    .line 1450
    .end local v9    # "menuRes":Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;
    :cond_a
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    instance-of v11, v11, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    if-nez v11, :cond_b

    .line 1451
    const-string v11, "ModeListMenu"

    const-string v12, "Invalid menu data was provided"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1455
    :cond_b
    const/16 v11, 0x12c

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x2c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1457
    :goto_5
    if-eqz v3, :cond_f

    .line 1458
    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getItem()Lcom/samsung/android/glview/GLView;

    move-result-object v6

    .line 1460
    .restart local v6    # "itemView":Lcom/samsung/android/glview/GLView;
    instance-of v11, v6, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    if-nez v11, :cond_c

    .line 1461
    instance-of v11, v6, Lcom/sec/android/app/camera/widget/gl/EmptyItem;

    if-eqz v11, :cond_1

    .line 1462
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_c
    move-object v10, v6

    .line 1467
    check-cast v10, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .line 1468
    .restart local v10    # "view":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    invoke-virtual {v10}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v11

    const/16 v12, 0x63

    if-eq v11, v12, :cond_d

    .line 1469
    invoke-virtual {v10}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    .line 1470
    .restart local v2    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->appendItemString(Ljava/lang/StringBuilder;Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)V

    .line 1471
    const/16 v11, 0x2c

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1473
    sget-boolean v11, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v11, :cond_e

    .line 1474
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1480
    .end local v2    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :cond_d
    :goto_6
    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v3

    .end local v3    # "dropbox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    check-cast v3, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 1481
    .restart local v3    # "dropbox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    goto :goto_5

    .line 1476
    .restart local v2    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :cond_e
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1483
    .end local v2    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .end local v6    # "itemView":Lcom/samsung/android/glview/GLView;
    .end local v10    # "view":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentModeOrderString:Ljava/lang/String;

    .line 1484
    if-eqz p1, :cond_1

    .line 1485
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    check-cast v9, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    .line 1487
    .local v9, "menuRes":Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    .line 1488
    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->saveOrder()V

    .line 1490
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-static {v11, v12}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->updateShootingModeOrder(Landroid/content/Context;Ljava/util/ArrayList;)Z

    goto/16 :goto_2
.end method

.method private setAnimation()V
    .locals 2

    .prologue
    .line 1497
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-nez v0, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_0:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 1499
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation_0:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 1510
    :goto_0
    return-void

    .line 1500
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1501
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_90:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 1502
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation_90:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1503
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1504
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_180:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 1505
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation_180:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1507
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_270:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 1508
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation_270:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private showModeAreaMark()V
    .locals 15

    .prologue
    const v14, 0x7f02013b

    const/4 v10, 0x2

    const/4 v13, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    .line 1513
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v9

    if-gtz v9, :cond_1

    .line 1514
    const-string v9, "ModeListMenu"

    const-string v10, "Mode List size is 0 or less."

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_0
    return-void

    .line 1519
    :cond_1
    iget v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-ne v9, v10, :cond_4

    .line 1520
    :cond_2
    iget v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    .line 1526
    .local v6, "numColumns":I
    :goto_0
    iget v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-ne v9, v10, :cond_5

    .line 1527
    :cond_3
    iget v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_HORIZONTAL_SPACING:F

    .line 1528
    .local v7, "spaceX":F
    iget v8, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_VERTICAL_SPACING:F

    .line 1534
    .local v8, "spaceY":F
    :goto_1
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v6

    div-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v4, v10

    .line 1536
    .local v4, "lowNum":I
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1537
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v9, v13}, Lcom/samsung/android/glview/GLGridList;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLGridList;->getLeft()F

    move-result v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_EDIT_AREA_MARK_WIDTH:F

    div-float/2addr v10, v12

    sub-float/2addr v9, v10

    div-float v10, v7, v12

    add-float v1, v9, v10

    .line 1541
    .local v1, "initPosX":F
    :goto_2
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v9, v13}, Lcom/samsung/android/glview/GLGridList;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_EDIT_AREA_MARK_WIDTH:F

    div-float/2addr v10, v12

    sub-float/2addr v9, v10

    div-float v10, v8, v12

    add-float v2, v9, v10

    .line 1542
    .local v2, "initPosY":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    add-int/lit8 v9, v4, -0x1

    if-ge v0, v9, :cond_0

    .line 1543
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4
    add-int/lit8 v9, v6, -0x1

    if-ge v3, v9, :cond_8

    .line 1545
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1546
    new-instance v5, Lcom/samsung/android/glview/GLImage;

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v9

    int-to-float v10, v3

    iget v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_WIDTH:F

    add-float/2addr v11, v7

    mul-float/2addr v10, v11

    sub-float v10, v1, v10

    int-to-float v11, v0

    iget v12, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    add-float/2addr v12, v8

    mul-float/2addr v11, v12

    add-float/2addr v11, v2

    invoke-direct {v5, v9, v10, v11, v14}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    .line 1550
    .local v5, "mark":Lcom/samsung/android/glview/GLImage;
    :goto_5
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v9, v13}, Lcom/samsung/android/glview/GLGridList;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLView;->getTranslateX()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v10, v13}, Lcom/samsung/android/glview/GLGridList;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLView;->getTranslateY()F

    move-result v10

    invoke-virtual {v5, v9, v10}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1551
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    iget-object v10, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1552
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v9, v5}, Lcom/samsung/android/glview/GLGridList;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1543
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1522
    .end local v0    # "i":I
    .end local v1    # "initPosX":F
    .end local v2    # "initPosY":F
    .end local v3    # "j":I
    .end local v4    # "lowNum":I
    .end local v5    # "mark":Lcom/samsung/android/glview/GLImage;
    .end local v6    # "numColumns":I
    .end local v7    # "spaceX":F
    .end local v8    # "spaceY":F
    :cond_4
    iget v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_PORTRAIT_NUM_OF_COLUMNS:I

    .restart local v6    # "numColumns":I
    goto/16 :goto_0

    .line 1530
    :cond_5
    iget v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_HORIZONTAL_SPACING:F

    .line 1531
    .restart local v7    # "spaceX":F
    iget v8, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_VERTICAL_SPACING:F

    .restart local v8    # "spaceY":F
    goto/16 :goto_1

    .line 1539
    .restart local v4    # "lowNum":I
    :cond_6
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v9, v13}, Lcom/samsung/android/glview/GLGridList;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLGridList;->getLeft()F

    move-result v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_EDIT_AREA_MARK_WIDTH:F

    div-float/2addr v10, v12

    sub-float/2addr v9, v10

    div-float v10, v7, v12

    add-float v1, v9, v10

    .restart local v1    # "initPosX":F
    goto/16 :goto_2

    .line 1548
    .restart local v0    # "i":I
    .restart local v2    # "initPosY":F
    .restart local v3    # "j":I
    :cond_7
    new-instance v5, Lcom/samsung/android/glview/GLImage;

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v9

    int-to-float v10, v3

    iget v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_WIDTH:F

    add-float/2addr v11, v7

    mul-float/2addr v10, v11

    add-float/2addr v10, v1

    int-to-float v11, v0

    iget v12, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    add-float/2addr v12, v8

    mul-float/2addr v11, v12

    add-float/2addr v11, v2

    invoke-direct {v5, v9, v10, v11, v14}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    .restart local v5    # "mark":Lcom/samsung/android/glview/GLImage;
    goto :goto_5

    .line 1542
    .end local v5    # "mark":Lcom/samsung/android/glview/GLImage;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 473
    const-string v0, "ModeListMenu"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->reset()V

    .line 475
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->unregisterGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    .line 479
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutCheckedList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 483
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    .line 484
    return-void
.end method

.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 891
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 892
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 893
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 898
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 12
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0xbe0

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 488
    const-string v7, "ModeListMenu"

    const-string v8, "onClick"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v7

    if-nez v7, :cond_1

    .line 583
    :cond_0
    :goto_0
    return v5

    .line 494
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 495
    iput-boolean v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsInfoMenuShowing:Z

    .line 496
    const-string v7, "1214"

    invoke-static {v7}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->isAnimationFinished()Z

    move-result v7

    if-nez v7, :cond_2

    .line 498
    const-string v6, "ModeListMenu"

    const-string v7, "return.. Mode menu animation is running.."

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 502
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V

    .line 505
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 506
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v7, 0xbe1

    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    .line 510
    .local v4, "modeInfoListMenu":Lcom/sec/android/app/camera/menu/ModeInfoListMenu;
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mPreviousScreenId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->setPreviousScreenId(Ljava/lang/String;)V

    .line 511
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5, v10, v11}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    move v5, v6

    .line 512
    goto :goto_0

    .line 508
    .end local v4    # "modeInfoListMenu":Lcom/sec/android/app/camera/menu/ModeInfoListMenu;
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v5, v10}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    .restart local v4    # "modeInfoListMenu":Lcom/sec/android/app/camera/menu/ModeInfoListMenu;
    goto :goto_1

    .line 513
    .end local v4    # "modeInfoListMenu":Lcom/sec/android/app/camera/menu/ModeInfoListMenu;
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 514
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->isAnimationFinished()Z

    move-result v7

    if-nez v7, :cond_5

    .line 515
    const-string v6, "ModeListMenu"

    const-string v7, "return.. Mode menu animation is running.."

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 519
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v7

    if-nez v7, :cond_7

    .line 520
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :cond_6
    :goto_2
    move v5, v6

    .line 527
    goto :goto_0

    .line 522
    :cond_7
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 523
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v5

    if-nez v5, :cond_6

    .line 524
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->requestFocus()Z

    goto :goto_2

    .line 528
    :cond_8
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 529
    const-string v5, "1212"

    invoke-static {v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 530
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    move v5, v6

    .line 531
    goto/16 :goto_0

    .line 532
    :cond_9
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 533
    const-string v5, "1213"

    invoke-static {v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 534
    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    move v5, v6

    .line 535
    goto/16 :goto_0

    .line 536
    :cond_a
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 537
    iget v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v7, v6, :cond_b

    .line 538
    const-string v7, "1252"

    invoke-static {v7}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 539
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 540
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/menu/ModeListMenu;->resetOrder(Z)V

    .line 541
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v7, 0x1c2c

    invoke-interface {v5, v7, v11}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    move v5, v6

    .line 542
    goto/16 :goto_0

    .line 543
    :cond_b
    iget v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v7, v9, :cond_0

    .line 544
    const-string v7, "1261"

    invoke-static {v7}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 546
    .local v1, "commandIdStringForLogging":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v7

    if-ge v2, v7, :cond_e

    .line 547
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v3

    .line 548
    .local v3, "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-nez v3, :cond_d

    .line 546
    :cond_c
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 551
    :cond_d
    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getShortCutCheckBoxSelected()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 552
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->requestShootingModeShortcut(Lcom/sec/android/app/camera/widget/gl/ModeItem;)V

    .line 553
    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 557
    .end local v3    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_e
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 558
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v7, 0x1c2b

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    move v5, v6

    .line 559
    goto/16 :goto_0

    .line 561
    .end local v1    # "commandIdStringForLogging":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :cond_f
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 562
    const-string v7, "1251"

    invoke-static {v7}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 563
    iget v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v7, v9, :cond_10

    .line 564
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    move v5, v6

    .line 565
    goto/16 :goto_0

    .line 566
    :cond_10
    iget v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v7, v6, :cond_0

    .line 567
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 568
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->refreshModeMenu()V

    move v5, v6

    .line 569
    goto/16 :goto_0

    .line 571
    :cond_11
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 572
    const/16 v7, 0x74

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 573
    .local v0, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 575
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLText;->isVisible()I

    move-result v5

    if-nez v5, :cond_12

    .line 576
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->syncUploadedShootingModeListDBWithServer(Landroid/content/Context;)V

    .line 579
    :cond_12
    const-string v5, "1201"

    invoke-static {v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    move v5, v6

    .line 580
    goto/16 :goto_0
.end method

.method public onDrag(Lcom/samsung/android/glview/GLView;FFFF)V
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    .line 588
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    if-eqz v1, :cond_2

    .line 589
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    float-to-int v2, p2

    float-to-int v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 590
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->resetOrder(Z)V

    .line 593
    :cond_0
    const/4 v0, 0x0

    .line 595
    .local v0, "translateY":F
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 628
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/glview/GLGridList;->scrollList(FF)Z

    .line 630
    .end local v0    # "translateY":F
    :cond_2
    return-void

    .line 597
    .restart local v0    # "translateY":F
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    cmpl-float v1, p3, v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_3

    .line 598
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    neg-float v0, v1

    goto :goto_0

    .line 599
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    .line 600
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    goto :goto_0

    .line 604
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    cmpl-float v1, p3, v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_4

    .line 605
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    goto :goto_0

    .line 606
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    .line 607
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    neg-float v0, v1

    goto :goto_0

    .line 611
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    cmpl-float v1, p2, v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_5

    .line 612
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    goto/16 :goto_0

    .line 613
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 614
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    neg-float v0, v1

    goto/16 :goto_0

    .line 618
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    cmpl-float v1, p2, v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_6

    .line 619
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    neg-float v0, v1

    goto/16 :goto_0

    .line 620
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 621
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    goto/16 :goto_0

    .line 595
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onDragEnd(Lcom/samsung/android/glview/GLView;FF)V
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 634
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->resetOrder(Z)V

    .line 635
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    if-eqz v0, :cond_1

    .line 636
    const-string v0, "1205"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInitialModeOrderString:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentModeOrderString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->compareModeOrder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->resetOrder(Z)V

    .line 639
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1c2c

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    .line 641
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    .line 648
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 649
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v1, 0xbe1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->removeMenu(I)V

    .line 653
    :goto_1
    return-void

    .line 643
    :cond_0
    const-string v0, "122"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_0

    .line 646
    :cond_1
    const-string v0, "1253"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_0

    .line 651
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v1, 0xbe0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->removeMenu(I)V

    goto :goto_1
.end method

.method public onDragStart(Lcom/samsung/android/glview/GLView;FF)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v1, 0x1

    .line 657
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-nez v0, :cond_0

    .line 658
    const-string v0, "1203"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 659
    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    .line 660
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 664
    :goto_0
    return-void

    .line 662
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    goto :goto_0
.end method

.method public onDrop(Lcom/samsung/android/glview/GLView;)V
    .locals 0
    .param p1, "v"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 668
    return-void
.end method

.method public onFlingDirection(II)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 672
    if-eq p2, v0, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 673
    :cond_0
    if-nez p1, :cond_2

    .line 674
    const/4 p1, 0x1

    .line 680
    :cond_1
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-nez v1, :cond_3

    if-ne p1, v0, :cond_3

    .line 681
    const-string v1, "1211"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideMenu()V

    .line 685
    :goto_1
    return v0

    .line 675
    :cond_2
    if-ne p1, v0, :cond_1

    .line 676
    const/4 p1, 0x0

    goto :goto_0

    .line 685
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onHide()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 903
    const-string v2, "ModeListMenu"

    const-string v3, "onHide"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 906
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    if-eqz v2, :cond_0

    .line 907
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getModeItem()Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDraggable(Z)V

    .line 905
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 910
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->unregisterGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    .line 911
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideDragHelpToast()V

    .line 912
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 913
    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-eqz v2, :cond_2

    .line 914
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 917
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsInfoMenuShowing:Z

    if-nez v2, :cond_3

    .line 918
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_5

    .line 919
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideBlackOverlay()V

    .line 925
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mPreviousScreenId:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 928
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 929
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startVoiceRecognizer()V

    .line 931
    :cond_4
    return-void

    .line 921
    :cond_5
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 922
    .local v0, "backgroundAnimation":Landroid/view/animation/Animation;
    const v2, 0x7f0b000b

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 923
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideBlackOverlayWithAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 935
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsNeedShowBaseMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsInfoMenuShowing:Z

    if-nez v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 938
    :cond_0
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 943
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 690
    sparse-switch p1, :sswitch_data_0

    .line 703
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :sswitch_0
    return v0

    .line 692
    :sswitch_1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackKeyPressed:Z

    goto :goto_0

    .line 690
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
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 708
    sparse-switch p1, :sswitch_data_0

    .line 747
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 710
    :sswitch_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackKeyPressed:Z

    if-eqz v1, :cond_0

    .line 714
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v1, v0, :cond_1

    .line 715
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 716
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->refreshModeMenu()V

    goto :goto_0

    .line 718
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 719
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    goto :goto_0

    .line 722
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 723
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 727
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideMenu()V

    .line 728
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackKeyPressed:Z

    goto :goto_0

    .line 737
    :sswitch_2
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-nez v1, :cond_4

    .line 738
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 739
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 744
    :cond_4
    :goto_1
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackKeyPressed:Z

    goto :goto_0

    .line 741
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 708
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
    .locals 9
    .param p1, "orientation"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 752
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eq v1, p1, :cond_4

    .line 753
    const-string v1, "ModeListMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOrientationChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iput p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    .line 756
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setAnimation()V

    .line 758
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 759
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v1, v8, :cond_0

    .line 760
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideModeAreaMark()V

    .line 763
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-ne v1, v7, :cond_5

    .line 764
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 765
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_HORIZONTAL_SPACING:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_VERTICAL_SPACING:F

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    .line 766
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    invoke-virtual {v1, v2, v5}, Lcom/samsung/android/glview/GLGridList;->setNumColumns(IZ)V

    .line 767
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_WIDTH:F

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getListLeftPosition(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_TOP_MARGIN:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    .line 768
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_WIDTH:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_TOP_MARGIN:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_SCROLL_MARGIN_BOTTOM:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_BOTTOM_MARGIN:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/glview/GLGridList;->setSize(FFZ)V

    .line 769
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    .line 770
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    .line 781
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->isScrollable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 782
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->showScrollBar()V

    .line 785
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v1, v8, :cond_3

    .line 786
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeAreaMark()V

    .line 789
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 791
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v0

    .line 792
    .local v0, "lastSelectedView":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-eqz v0, :cond_4

    .line 793
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v1, v7, :cond_6

    .line 794
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getShortCutButton()Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->requestFocus()Z

    .line 800
    .end local v0    # "lastSelectedView":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_4
    :goto_1
    return-void

    .line 772
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 773
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_HORIZONTAL_SPACING:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_VERTICAL_SPACING:F

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    .line 774
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_PORTRAIT_NUM_OF_COLUMNS:I

    invoke-virtual {v1, v2, v5}, Lcom/samsung/android/glview/GLGridList;->setNumColumns(IZ)V

    .line 775
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_PORTRAIT_TOP_MARGIN:F

    invoke-virtual {v1, v6, v2}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    .line 776
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_PORTRAIT_TOP_MARGIN:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_SCROLL_MARGIN_BOTTOM:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_BOTTOM_MARGIN:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/glview/GLGridList;->setSize(FFZ)V

    .line 777
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    .line 778
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v2, 0x3

    invoke-virtual {v1, v6, v2}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    goto :goto_0

    .line 796
    .restart local v0    # "lastSelectedView":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->requestFocus()Z

    goto :goto_1
.end method

.method public onScrollDirection(II)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 804
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->onFlingDirection(II)Z

    move-result v0

    return v0
.end method

.method public onScrollEnd()V
    .locals 1

    .prologue
    .line 809
    const-string v0, "1206"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method public onScrollStart()V
    .locals 0

    .prologue
    .line 814
    return-void
.end method

.method protected onShow()V
    .locals 10

    .prologue
    const v9, 0x7f0b000d

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 947
    const-string v3, "ModeListMenu"

    const-string v4, "onShow"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    invoke-static {}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->getSAScreenId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mPreviousScreenId:Ljava/lang/String;

    .line 949
    const-string v3, "121"

    invoke-static {v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 951
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 952
    const-string v3, "ModeListMenu"

    const-string v4, "adapter size is 0"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->refreshModeMenu()V

    .line 956
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->registerGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    .line 958
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setAnimation()V

    .line 959
    iput-boolean v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsInfoMenuShowing:Z

    .line 961
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 962
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 963
    .local v1, "menuBarAnimation":Landroid/view/animation/Animation;
    invoke-static {v9}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 964
    invoke-static {v9}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 965
    invoke-virtual {v1, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 966
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3, v1}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 967
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 970
    .end local v1    # "menuBarAnimation":Landroid/view/animation/Animation;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->isScrollable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 971
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->showScrollBar()V

    .line 974
    :cond_2
    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    .line 975
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_WIDTH:F

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getListLeftPosition(F)F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_TOP_MARGIN:F

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    .line 980
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 981
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopVoiceRecognizer()V

    .line 984
    :cond_4
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-nez v3, :cond_5

    .line 985
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_a

    .line 986
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 987
    iput-boolean v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditPossible:Z

    .line 994
    :cond_5
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v3

    if-ge v0, v3, :cond_c

    .line 995
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v2

    .line 996
    .local v2, "modeItem":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-eqz v2, :cond_6

    .line 997
    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 998
    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_TITLE_SELECTED_FONT_COLOR:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setFontColor(I)V

    .line 1003
    :cond_6
    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedAndPreloadedShootingMode(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1004
    :cond_7
    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setSelect(Z)V

    .line 994
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 977
    .end local v0    # "i":I
    .end local v2    # "modeItem":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_PORTRAIT_TOP_MARGIN:F

    invoke-virtual {v3, v8, v4}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    goto :goto_0

    .line 989
    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 990
    iput-boolean v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditPossible:Z

    goto :goto_1

    .line 1000
    .restart local v0    # "i":I
    .restart local v2    # "modeItem":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_b
    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_TITLE_FONT_COLOR:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setFontColor(I)V

    goto :goto_3

    .line 1008
    .end local v2    # "modeItem":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->updateNewBadgeButton()V

    .line 1009
    iput-boolean v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsNeedShowBaseMenu:Z

    .line 1011
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1012
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090046

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1014
    :cond_d
    return-void
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1018
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v1

    .line 1019
    .local v1, "lastSelectedView":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-eqz v1, :cond_0

    .line 1020
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->requestFocus()Z

    .line 1023
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimationListener:Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;

    if-eqz v2, :cond_1

    .line 1024
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimationListener:Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;

    invoke-interface {v2}, Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;->onShowAnimationComplete()V

    .line 1025
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimationListener:Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;

    .line 1028
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1030
    iget-boolean v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditPossible:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    if-eqz v2, :cond_2

    .line 1031
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getModeItem()Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDraggable(Z)V

    .line 1028
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1034
    :cond_3
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1039
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 818
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 819
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 820
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 825
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public refreshModeMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 829
    const-string v0, "ModeListMenu"

    const-string v1, "refreshModeMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 832
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    if-eqz v0, :cond_3

    .line 833
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v0, :cond_2

    .line 834
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getBackCameraShootingModeOrder(Lcom/sec/android/app/camera/interfaces/CameraContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    .line 846
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    .line 847
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-ne v0, v4, :cond_5

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    .line 852
    :goto_1
    return-void

    .line 836
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackCameraShootingModeOrder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    goto :goto_0

    .line 838
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    if-eqz v0, :cond_0

    .line 839
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v0, :cond_4

    .line 840
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getFrontCameraShootingModeOrder(Lcom/sec/android/app/camera/interfaces/CameraContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    goto :goto_0

    .line 842
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontCameraShootingModeOrder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    goto :goto_0

    .line 850
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    goto :goto_1
.end method

.method public setOnShowAnimationListener(Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;

    .prologue
    .line 855
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimationListener:Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;

    .line 856
    return-void
.end method

.method public showModeInfoMenu()V
    .locals 3

    .prologue
    const/16 v2, 0xbe0

    .line 859
    const-string v0, "ModeListMenu"

    const-string v1, "showModeInfoMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsInfoMenuShowing:Z

    .line 861
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V

    .line 863
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v1, 0xbe1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    .line 868
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    .line 869
    return-void

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto :goto_0
.end method

.method public showModeShortcutMenu()V
    .locals 1

    .prologue
    .line 872
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 873
    return-void
.end method

.method public updateNewBadgeButton()V
    .locals 2

    .prologue
    .line 876
    const-string v0, "ModeListMenu"

    const-string v1, "updateNewBadgeButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-nez v0, :cond_0

    .line 887
    :goto_0
    return-void

    .line 882
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isNewShootingModesUploaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 883
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 885
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

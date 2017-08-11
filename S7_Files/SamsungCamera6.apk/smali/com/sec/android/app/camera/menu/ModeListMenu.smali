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
.implements Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;
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

.field private final DOWNLOAD_BUTTON_MARGIN:F

.field private final LANDSCAPE_LIST_HORIZONTAL_SPACING:F

.field private final LANDSCAPE_LIST_VERTICAL_SPACING:F

.field private final LIST_LANDSCAPE_BOTTOM_MARGIN:F

.field private final LIST_LANDSCAPE_TOP_MARGIN:F

.field private final LIST_LANDSCAPE_WIDTH:F

.field private final LIST_MENU_BOTTOM_MARGIN:F

.field private final LIST_MENU_TRANSLATE_OFFSET:F

.field private final LIST_PORTRAIT_TOP_MARGIN:F

.field private final LIST_SCROLL_MARGIN_BOTTOM:F

.field private final LIST_SCROLL_POSITION_GAP:F

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

.field private mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

.field private mCheckedCount:I

.field private mCurrentMode:I

.field private mCurrentModeOrderString:Ljava/lang/String;

.field private final mDoneButton:Lcom/samsung/android/glview/GLButton;

.field private final mDoneText:Lcom/samsung/android/glview/GLText;

.field private mDownLoadButton:Lcom/samsung/android/glview/GLButton;

.field private mDownLoadText:Lcom/samsung/android/glview/GLText;

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

.field private mFlingGestureDetector:Landroid/view/GestureDetector;

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

.field private mNormalModeDrag:Z

.field private final mOneTimeHideAnimation:Landroid/view/animation/Animation;

.field private final mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mOrientation:I

.field private mShortCutButton:Lcom/samsung/android/glview/GLButton;

.field private mShortCutCheckedList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortCutText:Lcom/samsung/android/glview/GLText;

.field private final mShowAnimation_0:Landroid/view/animation/Animation;

.field private final mShowAnimation_180:Landroid/view/animation/Animation;

.field private final mShowAnimation_270:Landroid/view/animation/Animation;

.field private final mShowAnimation_90:Landroid/view/animation/Animation;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 60
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p7, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p8, "zOrder"    # I

    .prologue
    .line 176
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

    .line 85
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    .line 86
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    .line 87
    const v2, 0x7f0b001d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_HORIZONTAL_SPACING:F

    .line 88
    const v2, 0x7f0b0026

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_HORIZONTAL_SPACING:F

    .line 89
    const v2, 0x7f0b0107

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_VERTICAL_SPACING:F

    .line 90
    const v2, 0x7f0b0154

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_VERTICAL_SPACING:F

    .line 91
    const v2, 0x7f0b001f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_WIDTH:F

    .line 92
    const v2, 0x7f0b013c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    .line 93
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_COLS_WIDTH:F

    .line 94
    const v2, 0x7f0e0026

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    .line 95
    const v2, 0x7f0e0027

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_PORTRAIT_NUM_OF_COLUMNS:I

    .line 96
    const v2, 0x7f0b0136

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_SCROLL_MARGIN_BOTTOM:F

    .line 97
    const v2, 0x7f0b0316

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_SCROLL_POSITION_GAP:F

    .line 98
    const v2, 0x7f0b0137

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_PORTRAIT_TOP_MARGIN:F

    .line 99
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_HORIZONTAL_SPACING:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_SCROLL_POSITION_GAP:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_WIDTH:F

    .line 100
    const v2, 0x7f0b0134

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_TOP_MARGIN:F

    .line 101
    const v2, 0x7f0b0133

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_BOTTOM_MARGIN:F

    .line 102
    const v2, 0x7f0d0025

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_TITLE_FONT_COLOR:I

    .line 103
    const v2, 0x7f0d0027

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_TITLE_SELECTED_FONT_COLOR:I

    .line 104
    const v2, 0x7f0b0138

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    .line 105
    const v2, 0x7f0b0132

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_BOTTOM_MARGIN:F

    .line 106
    const v2, 0x7f0b013b

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_MARGIN:F

    .line 107
    const v2, 0x7f0b0314

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_FONT_SIZE:F

    .line 108
    const v2, 0x7f0d0025

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_FONT_COLOR:I

    .line 109
    const v2, 0x7f0b0143

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    .line 110
    const v2, 0x7f0b0142

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_HEIGHT:F

    .line 111
    const v2, 0x7f0b0144

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MIN_HEIGHT:F

    .line 112
    const v2, 0x7f0b0315

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    .line 113
    const v2, 0x7f0d000d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_FONT_COLOR:I

    .line 114
    const v2, 0x7f0b0140

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    .line 115
    const v2, 0x7f0b0141

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_MIN_WIDTH:F

    .line 116
    const v2, 0x7f0b030e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_EDIT_AREA_MARK_WIDTH:F

    .line 117
    const v2, 0x7f0b0119

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    .line 118
    const v2, 0x7f0b0118

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    .line 119
    const v2, 0x7f0b013f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_WIDTH:F

    .line 120
    const v2, 0x7f0b013d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_LEFT_MARGIN:F

    .line 121
    const v2, 0x7f0b013e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    .line 122
    const v2, 0x7f0b011a

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->DOWNLOAD_BUTTON_MARGIN:F

    .line 123
    const v2, 0x7f0b013a

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    .line 124
    const v2, 0x7f0b0139

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    .line 147
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadText:Lcom/samsung/android/glview/GLText;

    .line 148
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    .line 149
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    .line 152
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    .line 153
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 154
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mLastBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 155
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 156
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    .line 157
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    .line 158
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsInfoMenuShowing:Z

    .line 159
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditPossible:Z

    .line 161
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    .line 162
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutCheckedList:Landroid/util/SparseArray;

    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    .line 165
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCheckedCount:I

    .line 166
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackKeyPressed:Z

    .line 167
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    .line 168
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInitialModeOrderString:Ljava/lang/String;

    .line 169
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentModeOrderString:Ljava/lang/String;

    .line 170
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsNeedShowBaseMenu:Z

    .line 178
    check-cast p6, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    .end local p6    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    .line 179
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    .line 181
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

    const/16 v54, 0x1

    .line 183
    .local v54, "isAddToHomeIntentSupported":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a002b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 186
    .local v8, "downloadText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a01ca

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 188
    .local v57, "moreText":Ljava/lang/String;
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

    invoke-static {v8, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->DOWNLOAD_BUTTON_MARGIN:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float v6, v2, v3

    .line 190
    .local v6, "downloadTextWidth":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_LEFT_MARGIN:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_WIDTH:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    add-float v56, v2, v3

    .line 191
    .local v56, "menuBarWidth":F
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-eqz v2, :cond_0

    .line 192
    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v10

    .line 193
    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v10

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_FONT_COLOR:I

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadText:Lcom/samsung/android/glview/GLText;

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadText:Lcom/samsung/android/glview/GLText;

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setAlpha(F)V

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v8}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 200
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 201
    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_LEFT_MARGIN:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_WIDTH:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    add-float v11, v2, v3

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move v13, v6

    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    .line 205
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v8}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setButtonShapeVisibility(Z)V

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 210
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v2

    if-nez v2, :cond_0

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 215
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 216
    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    const v15, 0x7f0202ce

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    .line 220
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, v57

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setButtonShapeVisibility(Z)V

    .line 226
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sub-float v55, v2, v56

    .line 227
    .local v55, "menuBarPosX":F
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

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 229
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 231
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

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 240
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 241
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isAFWMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 244
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0165

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 247
    .local v15, "editText":Ljava/lang/String;
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

    invoke-static {v15, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v52

    .line 249
    .local v52, "editTextWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a010c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 250
    .local v27, "shortCutText":Ljava/lang/String;
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

    move-result v59

    .line 252
    .local v59, "shortCutTextWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a01a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 253
    .local v34, "infoText":Ljava/lang/String;
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

    move-object/from16 v0, v34

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v53

    .line 255
    .local v53, "infoWidth":F
    const/4 v13, 0x0

    .line 257
    .local v13, "optionTextWidth":F
    if-eqz v54, :cond_d

    .line 258
    move/from16 v0, v53

    move/from16 v1, v59

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move/from16 v0, v52

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 263
    :goto_4
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

    sub-float v58, v2, v3

    .line 264
    .local v58, "optionTextMaxWidth":F
    cmpl-float v2, v13, v58

    if-lez v2, :cond_2

    .line 265
    move/from16 v13, v58

    .line 267
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_MIN_WIDTH:F

    cmpg-float v2, v13, v2

    if-gez v2, :cond_3

    .line 268
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_MIN_WIDTH:F

    .line 271
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v14, v2, v3

    .line 272
    .local v14, "optionTextHeight":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MIN_HEIGHT:F

    cmpg-float v2, v14, v2

    if-gez v2, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MIN_HEIGHT:F

    .line 274
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float v20, v13, v2

    .line 276
    .local v20, "optionMenuWidth":F
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

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const v3, 0x7f020143

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setNinePatchBackground(I)Z

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float v2, v2, v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    if-eqz v54, :cond_e

    const/4 v2, 0x3

    :goto_5
    int-to-float v2, v2

    mul-float/2addr v2, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 279
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

    .line 278
    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setInternalFocus(Z)V

    .line 282
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 283
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

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 284
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

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 285
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

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 286
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

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 293
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 296
    new-instance v9, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v16, v2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_FONT_COLOR:I

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 298
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 303
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v15}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 306
    new-instance v16, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v2

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v2, 0x7f0d0026

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v25

    sget-object v26, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v21, v14

    invoke-direct/range {v16 .. v26}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v15}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setHighlightVisibility(Z)V

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setButtonShapeVisibility(Z)V

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 315
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

    move/from16 v25, v13

    move/from16 v26, v14

    invoke-direct/range {v21 .. v30}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 317
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 322
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 325
    if-eqz v54, :cond_5

    .line 326
    new-instance v16, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v2

    move/from16 v18, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v2, 0x7f0d0026

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v25

    sget-object v26, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v19, v14

    move/from16 v21, v14

    invoke-direct/range {v16 .. v26}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a010d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setContentDescription(Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setHighlightVisibility(Z)V

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setButtonShapeVisibility(Z)V

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 338
    :cond_5
    new-instance v28, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    move/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v35, v2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_FONT_COLOR:I

    move/from16 v36, v0

    const/16 v37, 0x0

    move/from16 v32, v13

    move/from16 v33, v14

    invoke-direct/range {v28 .. v37}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 340
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 345
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 348
    new-instance v16, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v2

    move/from16 v18, v0

    if-eqz v54, :cond_13

    const/4 v2, 0x2

    :goto_a
    int-to-float v2, v2

    mul-float v19, v14, v2

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v2, 0x7f0d0026

    .line 349
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v25

    sget-object v26, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v21, v14

    invoke-direct/range {v16 .. v26}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

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
    if-eqz v54, :cond_6

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

    const v3, 0x7f0a0163

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v41

    .line 366
    .local v41, "doneText":Ljava/lang/String;
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

    move-object/from16 v0, v41

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_MARGIN:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float v39, v2, v3

    .line 368
    .local v39, "doneTextWidth":F
    new-instance v35, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v36

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v42, v2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_FONT_COLOR:I

    move/from16 v43, v0

    const/16 v44, 0x0

    invoke-direct/range {v35 .. v44}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v35

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

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 374
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 375
    new-instance v42, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v43

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    move/from16 v47, v0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    move/from16 v46, v39

    invoke-direct/range {v42 .. v51}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

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

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    sub-float/2addr v5, v7

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

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 387
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, v41

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

    if-eqz v2, :cond_15

    .line 394
    new-instance v42, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v43

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    sub-float v44, v2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    move/from16 v47, v0

    const v48, 0x7f0202cd

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    invoke-direct/range {v42 .. v51}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, v42

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

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v5, v7

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

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v5, v7

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

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 406
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a01ce

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

    if-ne v2, v3, :cond_16

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
    :goto_d
    new-instance v42, Lcom/samsung/android/glview/GLGridList;

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v43

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_WIDTH:F

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_COLS_WIDTH:F

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_HORIZONTAL_SPACING:F

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_VERTICAL_SPACING:F

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    move/from16 v51, v0

    invoke-direct/range {v42 .. v51}, Lcom/samsung/android/glview/GLGridList;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFI)V

    move-object/from16 v0, v42

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

    const v3, 0x7f0202cf

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

    if-ne v2, v3, :cond_17

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
    :goto_e
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

    const v5, 0x7f0e0008

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v5

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v2, v3, v4, v5, v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_0:Landroid/view/animation/Animation;

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const v5, 0x7f0e0008

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v5

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v2, v3, v4, v5, v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_90:Landroid/view/animation/Animation;

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const v5, 0x7f0e0008

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v5

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v2, v3, v4, v5, v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_180:Landroid/view/animation/Animation;

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const v5, 0x7f0e0008

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v5

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v2, v3, v4, v5, v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

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
    const v2, 0x7f0e0007

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    .line 468
    new-instance v2, Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraGestureListener;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 469
    new-instance v2, Landroid/view/GestureDetector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->registerFlingEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;)V

    .line 471
    return-void

    .line 181
    .end local v6    # "downloadTextWidth":F
    .end local v8    # "downloadText":Ljava/lang/String;
    .end local v13    # "optionTextWidth":F
    .end local v14    # "optionTextHeight":F
    .end local v15    # "editText":Ljava/lang/String;
    .end local v20    # "optionMenuWidth":F
    .end local v27    # "shortCutText":Ljava/lang/String;
    .end local v34    # "infoText":Ljava/lang/String;
    .end local v39    # "doneTextWidth":F
    .end local v41    # "doneText":Ljava/lang/String;
    .end local v52    # "editTextWidth":F
    .end local v53    # "infoWidth":F
    .end local v54    # "isAddToHomeIntentSupported":Z
    .end local v55    # "menuBarPosX":F
    .end local v56    # "menuBarWidth":F
    .end local v57    # "moreText":Ljava/lang/String;
    .end local v58    # "optionTextMaxWidth":F
    .end local v59    # "shortCutTextWidth":F
    :cond_9
    const/16 v54, 0x0

    goto/16 :goto_0

    .line 203
    .restart local v6    # "downloadTextWidth":F
    .restart local v8    # "downloadText":Ljava/lang/String;
    .restart local v54    # "isAddToHomeIntentSupported":Z
    .restart local v56    # "menuBarWidth":F
    .restart local v57    # "moreText":Ljava/lang/String;
    :cond_a
    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move v13, v6

    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_1

    .line 218
    :cond_b
    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_LEFT_MARGIN:F

    add-float v11, v6, v2

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    const v15, 0x7f0202ce

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_2

    .line 235
    .restart local v55    # "menuBarPosX":F
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    move/from16 v0, v55

    invoke-virtual {v2, v3, v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 236
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

    sub-float v5, v5, v56

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    sub-float/2addr v4, v5

    move/from16 v0, v56

    invoke-virtual {v2, v3, v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    move/from16 v0, v56

    invoke-virtual {v2, v3, v4, v0}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_3

    .line 260
    .restart local v13    # "optionTextWidth":F
    .restart local v15    # "editText":Ljava/lang/String;
    .restart local v27    # "shortCutText":Ljava/lang/String;
    .restart local v34    # "infoText":Ljava/lang/String;
    .restart local v52    # "editTextWidth":F
    .restart local v53    # "infoWidth":F
    .restart local v59    # "shortCutTextWidth":F
    :cond_d
    move/from16 v0, v53

    move/from16 v1, v52

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v13

    goto/16 :goto_4

    .line 278
    .restart local v14    # "optionTextHeight":F
    .restart local v20    # "optionMenuWidth":F
    .restart local v58    # "optionTextMaxWidth":F
    :cond_e
    const/4 v2, 0x2

    goto/16 :goto_5

    .line 288
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sub-float v4, v4, v20

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

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 289
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

    sub-float v5, v5, v20

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    add-float v4, v4, v20

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

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 291
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

    add-float v5, v5, v20

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_6

    .line 301
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_7

    .line 320
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_8

    .line 343
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_9

    .line 348
    :cond_13
    const/4 v2, 0x1

    goto/16 :goto_a

    .line 381
    .restart local v39    # "doneTextWidth":F
    .restart local v41    # "doneText":Ljava/lang/String;
    :cond_14
    new-instance v42, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v43

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sub-float v44, v2, v39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    move/from16 v47, v0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    move/from16 v46, v39

    invoke-direct/range {v42 .. v51}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sub-float v4, v4, v39

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

    sub-float v5, v5, v39

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    add-float v4, v4, v39

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    add-float v5, v5, v39

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto/16 :goto_b

    .line 400
    :cond_15
    new-instance v42, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    move/from16 v47, v0

    const v48, 0x7f0202cc

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    invoke-direct/range {v42 .. v51}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, v42

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

    goto/16 :goto_c

    .line 423
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    goto/16 :goto_d

    .line 439
    :cond_17
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

    goto/16 :goto_e
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/menu/ModeListMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;)Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;
    .param p1, "x1"    # Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/samsung/android/glview/GLView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;
    .param p1, "x1"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->refreshNextFocus(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mLastBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;
    .param p1, "x1"    # Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mLastBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;
    .param p1, "x1"    # Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/ModeListMenu;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/ModeListMenu;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_WIDTH:F

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/ModeListMenu;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/samsung/android/glview/GLGridList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/ModeListMenu;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/menu/ModeListMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsNeedShowBaseMenu:Z

    return p1
.end method

.method static synthetic access$808(Lcom/sec/android/app/camera/menu/ModeListMenu;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCheckedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCheckedCount:I

    return v0
.end method

.method static synthetic access$810(Lcom/sec/android/app/camera/menu/ModeListMenu;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCheckedCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCheckedCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/menu/ModeListMenu;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutCheckedList:Landroid/util/SparseArray;

    return-object v0
.end method

.method private changeMode(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 996
    if-ne p1, v5, :cond_4

    .line 997
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 998
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 999
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hidePageNavigators()V

    .line 1001
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1002
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->getOrderString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInitialModeOrderString:Ljava/lang/String;

    .line 1007
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1008
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v1

    .line 1009
    .local v1, "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-eqz v1, :cond_0

    .line 1010
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 1011
    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDeleteButtonVisibility(I)V

    .line 1007
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1004
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->getOrderString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInitialModeOrderString:Ljava/lang/String;

    goto :goto_0

    .line 1015
    .restart local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1016
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1017
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeAreaMark()V

    .line 1018
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideDragHelpToast()V

    .line 1019
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v3, 0x7f0a01c4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    .line 1020
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    if-eqz v2, :cond_3

    .line 1021
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1024
    :cond_3
    iput v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    .line 1074
    .end local v0    # "i":I
    :goto_2
    return-void

    .line 1025
    :cond_4
    if-ne p1, v6, :cond_7

    .line 1026
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1027
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1028
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hidePageNavigators()V

    .line 1030
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 1031
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v1

    .line 1032
    .restart local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-eqz v1, :cond_5

    .line 1033
    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDraggable(Z)V

    .line 1034
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 1035
    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setShortCutCheckBoxVisibility(I)V

    .line 1030
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1039
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1040
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1041
    iput v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    .line 1043
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->refreshNextFocus(Lcom/samsung/android/glview/GLView;)V

    goto :goto_2

    .line 1045
    .end local v0    # "i":I
    :cond_7
    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v2, v5, :cond_9

    .line 1046
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1047
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideModeAreaMark()V

    .line 1049
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 1050
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v1

    .line 1051
    .restart local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-eqz v1, :cond_8

    .line 1052
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 1053
    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDeleteButtonVisibility(I)V

    .line 1049
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1056
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_9
    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v2, v6, :cond_d

    .line 1057
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 1058
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v1

    .line 1059
    .restart local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-eqz v1, :cond_c

    .line 1060
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-lt v2, v3, :cond_b

    .line 1061
    :cond_a
    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDraggable(Z)V

    .line 1062
    :cond_b
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 1063
    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setShortCutCheckBoxVisibility(I)V

    .line 1057
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1067
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1068
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1069
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1070
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showPageNavigators()V

    .line 1071
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutCheckedList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1072
    iput v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    goto/16 :goto_2
.end method

.method private compareModeOrder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "modeOrder1"    # Ljava/lang/String;
    .param p2, "modeOrder2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1077
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1078
    .local v1, "st1":[Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1080
    .local v2, "st2":[Ljava/lang/String;
    array-length v4, v1

    array-length v5, v2

    if-eq v4, v5, :cond_1

    .line 1087
    :cond_0
    :goto_0
    return v3

    .line 1083
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 1084
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

    .line 1083
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1087
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/ModeItem;
    .locals 3

    .prologue
    .line 1091
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1092
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v1

    .line 1093
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

    .line 1091
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1096
    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1101
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

    .line 1106
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 1107
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-ne v1, v2, :cond_0

    .line 1108
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

    .line 1119
    .local v0, "position":F
    :goto_0
    return v0

    .line 1110
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

    .line 1113
    .end local v0    # "position":F
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-ne v1, v2, :cond_2

    .line 1114
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

    .line 1116
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

    .line 1123
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    if-nez v1, :cond_1

    .line 1133
    :cond_0
    :goto_0
    return-object v0

    .line 1126
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    if-eqz v1, :cond_2

    .line 1127
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .line 1128
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    goto :goto_0

    .line 1129
    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    if-eqz v1, :cond_0

    .line 1130
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 1131
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getModeItem()Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v0

    goto :goto_0
.end method

.method private getShortCutImageId(I)I
    .locals 1
    .param p1, "commandId"    # I

    .prologue
    const v0, 0x7f020202

    .line 1139
    packed-switch p1, :pswitch_data_0

    .line 1203
    :goto_0
    :pswitch_0
    return v0

    .line 1142
    :pswitch_1
    const v0, 0x7f02020f

    goto :goto_0

    .line 1145
    :pswitch_2
    const v0, 0x7f020210

    goto :goto_0

    .line 1149
    :pswitch_3
    const v0, 0x7f020212

    goto :goto_0

    .line 1151
    :pswitch_4
    const v0, 0x7f020203

    goto :goto_0

    .line 1153
    :pswitch_5
    const v0, 0x7f020204

    goto :goto_0

    .line 1155
    :pswitch_6
    const v0, 0x7f020213

    goto :goto_0

    .line 1157
    :pswitch_7
    const v0, 0x7f020206

    goto :goto_0

    .line 1159
    :pswitch_8
    const v0, 0x7f020214

    goto :goto_0

    .line 1161
    :pswitch_9
    const v0, 0x7f020208

    goto :goto_0

    .line 1163
    :pswitch_a
    const v0, 0x7f020209

    goto :goto_0

    .line 1165
    :pswitch_b
    const v0, 0x7f020216

    goto :goto_0

    .line 1167
    :pswitch_c
    const v0, 0x7f020207

    goto :goto_0

    .line 1169
    :pswitch_d
    const v0, 0x7f02020b

    goto :goto_0

    .line 1171
    :pswitch_e
    const v0, 0x7f020219

    goto :goto_0

    .line 1173
    :pswitch_f
    const v0, 0x7f02020c

    goto :goto_0

    .line 1175
    :pswitch_10
    const v0, 0x7f02020d

    goto :goto_0

    .line 1179
    :pswitch_11
    const v0, 0x7f02021d

    goto :goto_0

    .line 1181
    :pswitch_12
    const v0, 0x7f020200

    goto :goto_0

    .line 1184
    :pswitch_13
    const v0, 0x7f020205

    goto :goto_0

    .line 1187
    :pswitch_14
    const v0, 0x7f02020e

    goto :goto_0

    .line 1189
    :pswitch_15
    const v0, 0x7f02020a

    goto :goto_0

    .line 1191
    :pswitch_16
    const v0, 0x7f020218

    goto :goto_0

    .line 1193
    :pswitch_17
    const v0, 0x7f020211

    goto :goto_0

    .line 1195
    :pswitch_18
    const v0, 0x7f020201

    goto :goto_0

    .line 1197
    :pswitch_19
    const v0, 0x7f02021b

    goto :goto_0

    .line 1199
    :pswitch_1a
    const v0, 0x7f020215

    goto :goto_0

    .line 1201
    :pswitch_1b
    const v0, 0x7f020217

    goto :goto_0

    .line 1139
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_13
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
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_e
        :pswitch_18
        :pswitch_7
        :pswitch_8
        :pswitch_1a
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_11
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_b
        :pswitch_f
        :pswitch_c
        :pswitch_a
        :pswitch_12
        :pswitch_19
        :pswitch_5
        :pswitch_9
        :pswitch_1
        :pswitch_d
        :pswitch_2
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_17
        :pswitch_1b
    .end packed-switch
.end method

.method private getShortCutImageId(Ljava/lang/String;)I
    .locals 2
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 1209
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1215
    const v0, 0x7f020202

    :goto_1
    return v0

    .line 1209
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

    .line 1211
    :pswitch_0
    const v0, 0x7f02021a

    goto :goto_1

    .line 1213
    :pswitch_1
    const v0, 0x7f02021c

    goto :goto_1

    .line 1209
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
    .line 1220
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->isShowingDragHelpToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    .line 1226
    :cond_0
    return-void
.end method

.method private hideModeAreaMark()V
    .locals 3

    .prologue
    .line 1229
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gt v0, v2, :cond_1

    .line 1230
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    .line 1231
    .local v1, "image":Lcom/samsung/android/glview/GLImage;
    if-eqz v1, :cond_0

    .line 1232
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLGridList;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1233
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 1229
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1236
    .end local v1    # "image":Lcom/samsung/android/glview/GLImage;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1237
    return-void
.end method

.method private isShowingDragHelpToast()Z
    .locals 1

    .prologue
    .line 1240
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
    .line 1244
    if-nez p1, :cond_0

    .line 1245
    const-string v1, "ModeListMenu"

    const-string v2, "listFirstView is null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    .end local p1    # "listFirstView":Lcom/samsung/android/glview/GLView;
    :goto_0
    return-void

    .line 1249
    .restart local p1    # "listFirstView":Lcom/samsung/android/glview/GLView;
    :cond_0
    move-object v0, p1

    .line 1250
    .local v0, "firstView":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->resetNextFocusId()V

    .line 1251
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1252
    check-cast p1, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .end local p1    # "listFirstView":Lcom/samsung/android/glview/GLView;
    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getShortCutButton()Lcom/samsung/android/glview/GLView;

    move-result-object v0

    .line 1254
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->resetNextFocusId()V

    .line 1255
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-eqz v1, :cond_2

    .line 1256
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->resetNextFocusId()V

    .line 1258
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->resetNextFocusId()V

    .line 1259
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->resetNextFocusId()V

    .line 1261
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1263
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    .line 1264
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    .line 1265
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-eqz v1, :cond_3

    .line 1266
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    .line 1268
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    .line 1269
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    .line 1270
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    .line 1271
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    goto :goto_0

    .line 1274
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    .line 1275
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 1276
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-eqz v1, :cond_4

    .line 1277
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    .line 1279
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    .line 1280
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    .line 1281
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    .line 1282
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_0

    .line 1285
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    .line 1286
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    .line 1287
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-eqz v1, :cond_5

    .line 1288
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    .line 1290
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    .line 1291
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 1292
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    .line 1293
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_0

    .line 1296
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 1297
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    .line 1298
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-eqz v1, :cond_6

    .line 1299
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 1301
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 1302
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    .line 1303
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 1304
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_0

    .line 1261
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
    .line 1312
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

    .line 1313
    .local v0, "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1314
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    iget-object v5, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getShortCutImageId(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->installShootingModeShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1320
    :goto_0
    return-void

    .line 1315
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedAndPreloadedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1316
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

    .line 1318
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
    .line 1323
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 1325
    .local v4, "firstBox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    if-eqz v4, :cond_1

    .line 1326
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1328
    sget-boolean v11, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-eqz v11, :cond_2

    .line 1329
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .line 1330
    .local v5, "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    invoke-virtual {v5}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    .line 1331
    .local v1, "bundle":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1337
    .end local v1    # "bundle":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :goto_0
    const/4 v8, 0x0

    .line 1338
    .local v8, "lastDragDropBoxId":I
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->moveEmptyToLast(Lcom/samsung/android/glview/GLView;)Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 1339
    .local v7, "lastBox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    invoke-virtual {v7}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1340
    invoke-virtual {v7}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getModeItem()Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    .line 1341
    .local v2, "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    sget-boolean v11, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-eqz v11, :cond_3

    .line 1342
    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getId()I

    move-result v8

    .line 1348
    .end local v2    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :cond_0
    :goto_1
    move-object v3, v4

    .line 1349
    .local v3, "dropbox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1351
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v11

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1352
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    instance-of v11, v11, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    if-nez v11, :cond_4

    .line 1353
    const-string v11, "ModeListMenu"

    const-string v12, "Invalid menu data was provided"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "dropbox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .end local v5    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    .end local v7    # "lastBox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .end local v8    # "lastDragDropBoxId":I
    :cond_1
    :goto_2
    return-void

    .line 1333
    :cond_2
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .line 1334
    .restart local v5    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1344
    .restart local v2    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .restart local v7    # "lastBox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .restart local v8    # "lastDragDropBoxId":I
    :cond_3
    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v8

    goto :goto_1

    .line 1357
    .end local v2    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "dropbox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    :cond_4
    sget-boolean v11, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELFIE:Z

    if-eqz v11, :cond_5

    .line 1358
    const/16 v11, 0x154

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x2c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1363
    :goto_3
    if-eqz v3, :cond_9

    .line 1364
    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getItem()Lcom/samsung/android/glview/GLView;

    move-result-object v6

    .line 1366
    .local v6, "itemView":Lcom/samsung/android/glview/GLView;
    instance-of v11, v6, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    if-nez v11, :cond_6

    .line 1367
    instance-of v11, v6, Lcom/sec/android/app/camera/widget/gl/EmptyItem;

    if-eqz v11, :cond_1

    .line 1368
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1360
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

    .line 1373
    check-cast v10, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .line 1374
    .local v10, "view":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    invoke-virtual {v10}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v11

    const/16 v12, 0x63

    if-eq v11, v12, :cond_7

    .line 1375
    invoke-virtual {v10}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    .line 1377
    .restart local v2    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->appendItemString(Ljava/lang/StringBuilder;Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)V

    .line 1378
    const/16 v11, 0x2c

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1380
    sget-boolean v11, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-eqz v11, :cond_8

    .line 1381
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1387
    .end local v2    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :cond_7
    :goto_4
    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v3

    .end local v3    # "dropbox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    check-cast v3, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 1388
    .restart local v3    # "dropbox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    goto :goto_3

    .line 1383
    .restart local v2    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :cond_8
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1390
    .end local v2    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .end local v6    # "itemView":Lcom/samsung/android/glview/GLView;
    .end local v10    # "view":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentModeOrderString:Ljava/lang/String;

    .line 1391
    if-eqz p1, :cond_1

    .line 1392
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    check-cast v9, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    .line 1394
    .local v9, "menuRes":Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    .line 1395
    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->saveOrder()V

    .line 1397
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-static {v11, v12}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->updateShootingModeFrontOrder(Landroid/content/Context;Ljava/util/ArrayList;)Z

    goto/16 :goto_2

    .line 1400
    .end local v9    # "menuRes":Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;
    :cond_a
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    instance-of v11, v11, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    if-nez v11, :cond_b

    .line 1401
    const-string v11, "ModeListMenu"

    const-string v12, "Invalid menu data was provided"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1405
    :cond_b
    const/16 v11, 0x12c

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x2c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1407
    :goto_5
    if-eqz v3, :cond_f

    .line 1408
    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getItem()Lcom/samsung/android/glview/GLView;

    move-result-object v6

    .line 1410
    .restart local v6    # "itemView":Lcom/samsung/android/glview/GLView;
    instance-of v11, v6, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    if-nez v11, :cond_c

    .line 1411
    instance-of v11, v6, Lcom/sec/android/app/camera/widget/gl/EmptyItem;

    if-eqz v11, :cond_1

    .line 1412
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_c
    move-object v10, v6

    .line 1417
    check-cast v10, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .line 1418
    .restart local v10    # "view":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    invoke-virtual {v10}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v11

    const/16 v12, 0x63

    if-eq v11, v12, :cond_d

    .line 1419
    invoke-virtual {v10}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    .line 1420
    .restart local v2    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->appendItemString(Ljava/lang/StringBuilder;Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)V

    .line 1421
    const/16 v11, 0x2c

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1423
    sget-boolean v11, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-eqz v11, :cond_e

    .line 1424
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1430
    .end local v2    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :cond_d
    :goto_6
    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v3

    .end local v3    # "dropbox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    check-cast v3, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 1431
    .restart local v3    # "dropbox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    goto :goto_5

    .line 1426
    .restart local v2    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :cond_e
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1433
    .end local v2    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .end local v6    # "itemView":Lcom/samsung/android/glview/GLView;
    .end local v10    # "view":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentModeOrderString:Ljava/lang/String;

    .line 1434
    if-eqz p1, :cond_1

    .line 1435
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    check-cast v9, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    .line 1437
    .local v9, "menuRes":Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    .line 1438
    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->saveOrder()V

    .line 1440
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
    .line 1447
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-nez v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_0:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 1449
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation_0:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 1460
    :goto_0
    return-void

    .line 1450
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1451
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_90:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 1452
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation_90:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1453
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1454
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_180:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 1455
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation_180:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1457
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_270:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 1458
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation_270:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private showModeAreaMark()V
    .locals 15

    .prologue
    const v14, 0x7f020108

    const/4 v10, 0x2

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v13, 0x0

    .line 1463
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v9

    if-gtz v9, :cond_1

    .line 1464
    const-string v9, "ModeListMenu"

    const-string v10, "Mode List size is 0 or less."

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :cond_0
    return-void

    .line 1469
    :cond_1
    iget v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-ne v9, v10, :cond_4

    .line 1470
    :cond_2
    iget v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    .line 1476
    .local v6, "numColumns":I
    :goto_0
    iget v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-ne v9, v10, :cond_5

    .line 1477
    :cond_3
    iget v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_HORIZONTAL_SPACING:F

    .line 1478
    .local v7, "spaceX":F
    iget v8, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_VERTICAL_SPACING:F

    .line 1484
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

    .line 1485
    .local v4, "lowNum":I
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

    .line 1486
    .local v1, "initPosX":F
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

    .line 1487
    .local v2, "initPosY":F
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1488
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    add-int/lit8 v9, v4, -0x1

    if-ge v0, v9, :cond_0

    .line 1489
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    add-int/lit8 v9, v6, -0x1

    if-ge v3, v9, :cond_6

    .line 1490
    new-instance v5, Lcom/samsung/android/glview/GLImage;

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    int-to-float v10, v10

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

    .line 1491
    .local v5, "mark":Lcom/samsung/android/glview/GLImage;
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

    .line 1492
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    iget-object v10, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1493
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v9, v5}, Lcom/samsung/android/glview/GLGridList;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1489
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1472
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

    .line 1480
    :cond_5
    iget v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_HORIZONTAL_SPACING:F

    .line 1481
    .restart local v7    # "spaceX":F
    iget v8, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_VERTICAL_SPACING:F

    .restart local v8    # "spaceY":F
    goto/16 :goto_1

    .line 1488
    .restart local v0    # "i":I
    .restart local v1    # "initPosX":F
    .restart local v2    # "initPosY":F
    .restart local v3    # "j":I
    .restart local v4    # "lowNum":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1497
    .end local v0    # "i":I
    .end local v3    # "j":I
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    add-int/lit8 v9, v4, -0x1

    if-ge v0, v9, :cond_0

    .line 1498
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_5
    add-int/lit8 v9, v6, -0x1

    if-ge v3, v9, :cond_8

    .line 1499
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

    .line 1500
    .restart local v5    # "mark":Lcom/samsung/android/glview/GLImage;
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

    .line 1501
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    iget-object v10, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1502
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v9, v5}, Lcom/samsung/android/glview/GLGridList;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1498
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1497
    .end local v5    # "mark":Lcom/samsung/android/glview/GLImage;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 475
    const-string v0, "ModeListMenu"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->reset()V

    .line 477
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->unregisterFlingEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;)V

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->clear()V

    .line 482
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 484
    :cond_0
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutCheckedList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 488
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    .line 489
    return-void
.end method

.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 841
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 842
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 843
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 850
    :goto_0
    return v0

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 850
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 11
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0xbe0

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 493
    const-string v6, "ModeListMenu"

    const-string v7, "onClick"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v6

    if-nez v6, :cond_1

    .line 576
    :cond_0
    :goto_0
    return v4

    .line 499
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 500
    iput-boolean v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsInfoMenuShowing:Z

    .line 501
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->isAnimationFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 502
    const-string v5, "ModeListMenu"

    const-string v6, "return.. Mode menu animation is running.."

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 506
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V

    .line 508
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 509
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v6, 0xbe1

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    .line 513
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4, v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    move v4, v5

    .line 514
    goto :goto_0

    .line 511
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v4, v9}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto :goto_1

    .line 515
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 516
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->isAnimationFinished()Z

    move-result v6

    if-nez v6, :cond_5

    .line 517
    const-string v5, "ModeListMenu"

    const-string v6, "return.. Mode menu animation is running.."

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 521
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7

    .line 522
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :cond_6
    :goto_2
    move v4, v5

    .line 529
    goto :goto_0

    .line 524
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 525
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 526
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->requestFocus()Z

    goto :goto_2

    .line 530
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 531
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    move v4, v5

    .line 532
    goto/16 :goto_0

    .line 533
    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 534
    iput v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCheckedCount:I

    .line 535
    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    move v4, v5

    .line 536
    goto/16 :goto_0

    .line 537
    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 538
    iget v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v6, v5, :cond_b

    .line 539
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 540
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->resetOrder(Z)V

    .line 541
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v6, 0x1c2c

    invoke-interface {v4, v6, v10}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    move v4, v5

    .line 542
    goto/16 :goto_0

    .line 543
    :cond_b
    iget v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v6, v8, :cond_0

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    .local v1, "commandIdStringForLogging":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v6

    if-ge v2, v6, :cond_e

    .line 546
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v3

    .line 547
    .local v3, "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-nez v3, :cond_d

    .line 545
    :cond_c
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 550
    :cond_d
    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getShortCutCheckBoxSelected()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 551
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->requestShootingModeShortcut(Lcom/sec/android/app/camera/widget/gl/ModeItem;)V

    .line 552
    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 556
    .end local v3    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_e
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 557
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v6, 0x1c2b

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    move v4, v5

    .line 558
    goto/16 :goto_0

    .line 560
    .end local v1    # "commandIdStringForLogging":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :cond_f
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 561
    iget v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v6, v8, :cond_10

    .line 562
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    move v4, v5

    .line 563
    goto/16 :goto_0

    .line 564
    :cond_10
    iget v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v6, v5, :cond_0

    .line 565
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 566
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->refreshModeMenu()V

    move v4, v5

    .line 567
    goto/16 :goto_0

    .line 569
    :cond_11
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 570
    const/16 v6, 0x74

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 571
    .local v0, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    move v4, v5

    .line 573
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

    .line 581
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    if-eqz v1, :cond_2

    .line 582
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    float-to-int v2, p2

    float-to-int v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 583
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->resetOrder(Z)V

    .line 586
    :cond_0
    const/4 v0, 0x0

    .line 588
    .local v0, "translateY":F
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 621
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/glview/GLGridList;->scrollList(FF)Z

    .line 623
    .end local v0    # "translateY":F
    :cond_2
    return-void

    .line 590
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

    .line 591
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    neg-float v0, v1

    goto :goto_0

    .line 592
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

    .line 593
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    goto :goto_0

    .line 597
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

    .line 598
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    goto :goto_0

    .line 599
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

    .line 600
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    neg-float v0, v1

    goto :goto_0

    .line 604
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

    .line 605
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    goto/16 :goto_0

    .line 606
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

    .line 607
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    neg-float v0, v1

    goto/16 :goto_0

    .line 611
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

    .line 612
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    neg-float v0, v1

    goto/16 :goto_0

    .line 613
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

    .line 614
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    goto/16 :goto_0

    .line 588
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

    .line 627
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->resetOrder(Z)V

    .line 628
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInitialModeOrderString:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentModeOrderString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->compareModeOrder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->resetOrder(Z)V

    .line 630
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1c2c

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    .line 632
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v1, 0xbe1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->removeMenu(I)V

    .line 639
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v1, 0xbe0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->removeMenu(I)V

    goto :goto_0
.end method

.method public onDragStart(Lcom/samsung/android/glview/GLView;FF)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v1, 0x1

    .line 643
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-nez v0, :cond_0

    .line 644
    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    .line 645
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 649
    :goto_0
    return-void

    .line 647
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    goto :goto_0
.end method

.method public onDrop(Lcom/samsung/android/glview/GLView;)V
    .locals 0
    .param p1, "v"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 653
    return-void
.end method

.method public onFlingDirection(II)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 657
    if-eq p2, v0, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 658
    :cond_0
    if-nez p1, :cond_2

    .line 659
    const/4 p1, 0x1

    .line 665
    :cond_1
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-nez v1, :cond_3

    if-ne p1, v0, :cond_3

    .line 666
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideMenu()V

    .line 669
    :goto_1
    return v0

    .line 660
    :cond_2
    if-ne p1, v0, :cond_1

    .line 661
    const/4 p1, 0x0

    goto :goto_0

    .line 669
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onHide()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 855
    const-string v3, "ModeListMenu"

    const-string v4, "onHide"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 858
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    if-eqz v3, :cond_0

    .line 859
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getModeItem()Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDraggable(Z)V

    .line 857
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 862
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideDragHelpToast()V

    .line 863
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 864
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 866
    iget-boolean v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsInfoMenuShowing:Z

    if-nez v3, :cond_2

    .line 867
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_4

    .line 868
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideBlackOverlay()V

    .line 875
    :goto_1
    const v3, 0x7f0e0001

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 876
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 877
    new-instance v3, Lcom/sec/android/app/camera/menu/ModeListMenu$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/menu/ModeListMenu$1;-><init>(Lcom/sec/android/app/camera/menu/ModeListMenu;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 891
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuAnimation(Landroid/view/animation/Animation;)V

    .line 894
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 895
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startVoiceRecognizer()V

    .line 897
    :cond_3
    return-void

    .line 870
    :cond_4
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 871
    .local v1, "backgroundAnimation":Landroid/view/animation/Animation;
    const v3, 0x7f0e0007

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 872
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideBlackOverlayWithAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 901
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsNeedShowBaseMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsInfoMenuShowing:Z

    if-nez v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 904
    :cond_0
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 909
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 674
    sparse-switch p1, :sswitch_data_0

    .line 687
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :sswitch_0
    return v0

    .line 676
    :sswitch_1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackKeyPressed:Z

    goto :goto_0

    .line 674
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

    .line 692
    sparse-switch p1, :sswitch_data_0

    .line 731
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 694
    :sswitch_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackKeyPressed:Z

    if-eqz v1, :cond_0

    .line 698
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v1, v0, :cond_1

    .line 699
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 700
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->refreshModeMenu()V

    goto :goto_0

    .line 702
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 703
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    goto :goto_0

    .line 706
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 707
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 711
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideMenu()V

    .line 712
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackKeyPressed:Z

    goto :goto_0

    .line 721
    :sswitch_2
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-nez v1, :cond_4

    .line 722
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 723
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 728
    :cond_4
    :goto_1
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackKeyPressed:Z

    goto :goto_0

    .line 725
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 692
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

    .line 736
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eq v1, p1, :cond_4

    .line 737
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

    .line 738
    iput p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    .line 740
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setAnimation()V

    .line 742
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 743
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v1, v8, :cond_0

    .line 744
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideModeAreaMark()V

    .line 747
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-ne v1, v7, :cond_5

    .line 748
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 749
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_HORIZONTAL_SPACING:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_VERTICAL_SPACING:F

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    .line 750
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    invoke-virtual {v1, v2, v5}, Lcom/samsung/android/glview/GLGridList;->setNumColumns(IZ)V

    .line 751
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_WIDTH:F

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getListLeftPosition(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_TOP_MARGIN:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    .line 752
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

    .line 753
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    .line 754
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    .line 765
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->isScrollable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 766
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->showScrollBar()V

    .line 769
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v1, v8, :cond_3

    .line 770
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeAreaMark()V

    .line 773
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 775
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v0

    .line 776
    .local v0, "lastSelectedView":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-eqz v0, :cond_4

    .line 777
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v1, v7, :cond_6

    .line 778
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getShortCutButton()Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->requestFocus()Z

    .line 784
    .end local v0    # "lastSelectedView":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_4
    :goto_1
    return-void

    .line 756
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 757
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_HORIZONTAL_SPACING:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_VERTICAL_SPACING:F

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    .line 758
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_PORTRAIT_NUM_OF_COLUMNS:I

    invoke-virtual {v1, v2, v5}, Lcom/samsung/android/glview/GLGridList;->setNumColumns(IZ)V

    .line 759
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_PORTRAIT_TOP_MARGIN:F

    invoke-virtual {v1, v6, v2}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    .line 760
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

    .line 761
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    .line 762
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v2, 0x3

    invoke-virtual {v1, v6, v2}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    goto :goto_0

    .line 780
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
    .line 788
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->onFlingDirection(II)Z

    move-result v0

    return v0
.end method

.method public onScrollEnd()V
    .locals 0

    .prologue
    .line 793
    return-void
.end method

.method public onScrollStart()V
    .locals 0

    .prologue
    .line 797
    return-void
.end method

.method protected onShow()V
    .locals 10

    .prologue
    const v9, 0x7f0e0009

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 913
    const-string v3, "ModeListMenu"

    const-string v4, "onShow"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 916
    const-string v3, "ModeListMenu"

    const-string v4, "adapter size is 0"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->refreshModeMenu()V

    .line 920
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setAnimation()V

    .line 921
    iput-boolean v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsInfoMenuShowing:Z

    .line 923
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 924
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 925
    .local v1, "menuBarAnimation":Landroid/view/animation/Animation;
    invoke-static {v9}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 926
    invoke-static {v9}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 927
    invoke-virtual {v1, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 928
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3, v1}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 929
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 932
    .end local v1    # "menuBarAnimation":Landroid/view/animation/Animation;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->isScrollable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 933
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->showScrollBar()V

    .line 936
    :cond_2
    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    .line 937
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_WIDTH:F

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getListLeftPosition(F)F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_TOP_MARGIN:F

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    .line 942
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 943
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopVoiceRecognizer()V

    .line 946
    :cond_4
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-nez v3, :cond_5

    .line 947
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_b

    .line 948
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 949
    iput-boolean v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditPossible:Z

    .line 956
    :cond_5
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 959
    iget-boolean v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditPossible:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3, v0}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    if-eqz v3, :cond_6

    .line 960
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3, v0}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getModeItem()Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDraggable(Z)V

    .line 962
    :cond_6
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v2

    .line 963
    .local v2, "modeItem":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-eqz v2, :cond_7

    .line 964
    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 965
    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_TITLE_SELECTED_FONT_COLOR:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setFontColor(I)V

    .line 970
    :cond_7
    :goto_3
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedAndPreloadedShootingMode(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 971
    :cond_8
    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setSelect(Z)V

    .line 956
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 939
    .end local v0    # "i":I
    .end local v2    # "modeItem":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_PORTRAIT_TOP_MARGIN:F

    invoke-virtual {v3, v8, v4}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    goto :goto_0

    .line 951
    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 952
    iput-boolean v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditPossible:Z

    goto :goto_1

    .line 967
    .restart local v0    # "i":I
    .restart local v2    # "modeItem":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_c
    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_TITLE_FONT_COLOR:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setFontColor(I)V

    goto :goto_3

    .line 975
    .end local v2    # "modeItem":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_d
    iput-boolean v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsNeedShowBaseMenu:Z

    .line 977
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 978
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0046

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v7, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 980
    :cond_e
    return-void
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 984
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v0

    .line 985
    .local v0, "lastSelectedView":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-eqz v0, :cond_0

    .line 986
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->requestFocus()Z

    .line 988
    :cond_0
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 993
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 801
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 802
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 803
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 810
    :goto_0
    return v0

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 810
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshModeMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 814
    const-string v0, "ModeListMenu"

    const-string v1, "refreshModeMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 817
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    if-eqz v0, :cond_3

    .line 818
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-eqz v0, :cond_2

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getBackCameraShootingModeOrder(Lcom/sec/android/app/camera/interfaces/CameraContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    .line 831
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    .line 832
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-ne v0, v4, :cond_5

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    .line 837
    :goto_1
    return-void

    .line 821
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

    .line 823
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    if-eqz v0, :cond_0

    .line 824
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-eqz v0, :cond_4

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getFrontCameraShootingModeOrder(Lcom/sec/android/app/camera/interfaces/CameraContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    goto :goto_0

    .line 827
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

    .line 835
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    goto :goto_1
.end method

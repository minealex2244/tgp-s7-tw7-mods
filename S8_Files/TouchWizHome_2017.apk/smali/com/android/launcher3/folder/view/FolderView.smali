.class public Lcom/android/launcher3/folder/view/FolderView;
.super Landroid/widget/FrameLayout;
.source "FolderView.java"

# interfaces
.implements Lcom/android/launcher3/common/drag/DragSource;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/common/drag/DropTarget;
.implements Lcom/android/launcher3/folder/FolderEventListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/launcher3/Stats$LaunchSourceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/view/FolderView$OnScrollFinishedListener;,
        Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;,
        Lcom/android/launcher3/folder/view/FolderView$DropItem;,
        Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    }
.end annotation


# static fields
.field private static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field private static final FOLDER_NAME_BAR_COLOR_ALPHA_MASK:I = 0x4dffffff

.field private static final FOLDER_NAME_HINT_COLOR_ALPHA_MASK:I = -0x70000001

.field private static final ICON_OVERSCROLL_WIDTH_FACTOR:F = 0.45f

.field private static final ICON_PRESS_ALPHA_VALUE:F = 0.5f

.field private static final MIN_CONTENT_DIMEN:I = 0x5

.field private static final ON_EXIT_CLOSE_DELAY:I = 0x190

.field private static final REORDER_DELAY:I = 0xfa

.field public static final SCROLL_HINT_DURATION:I = 0x1f4

.field static final STATE_ANIMATING:I = 0x1

.field static final STATE_NONE:I = -0x1

.field static final STATE_OPEN:I = 0x2

.field static final STATE_SMALL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Launcher.Folder"

.field private static sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

.field private static sColorPickerImages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultFolderName:Ljava/lang/String;

.field private static sHintText:Ljava/lang/String;

.field private static sOptionButtonImage:Landroid/graphics/Bitmap;


# instance fields
.field private mAddButton:Landroid/view/View;

.field private mAscComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;"
        }
    .end annotation
.end field

.field private mBorder:Landroid/widget/ImageView;

.field private mBorderHeight:I

.field private mBorderMargin:I

.field private mBorderWidth:I

.field private mColorPickerItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/folder/view/FolderView$FolderColor;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mColorPickerView:Landroid/view/View;

.field private mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

.field private mContentContainer:Landroid/view/View;

.field private mContentMinHeight:I

.field private mContentMinMargin:I

.field private mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

.field private mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

.field private mCurrentDragView:Landroid/view/View;

.field private mCurrentScrollDir:I

.field private mDeleteFolderOnDropCompleted:Z

.field private mDescComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;"
        }
    .end annotation
.end field

.field private mDestroyed:Z

.field private mDragInProgress:Z

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mEmptyCellRank:I

.field private mFadeInOutDuration:I

.field private mFolderColor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/folder/view/FolderView$FolderColor;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderContainer:Landroid/view/View;

.field private mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

.field private mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

.field private mFolderOptionButton:Landroid/widget/ImageView;

.field private mFooter:Landroid/view/View;

.field private mFooterHeight:I

.field private mHeader:Landroid/view/View;

.field private mHeaderBottomLine:Landroid/view/View;

.field private mHeaderHeight:I

.field private mHoverPointClosesFolder:Z

.field private mInfo:Lcom/android/launcher3/folder/FolderInfo;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsEditingName:Z

.field private mItemAddedBackToSelfViaIcon:Z

.field private final mItemsInReadingOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsInvalidated:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

.field private mNeedToShowCursor:Z

.field private final mOnExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field mOnExitAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

.field private final mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private mOuterAddButtonContainer:Landroid/view/View;

.field private mOuterAddButtonContainerHeight:I

.field private mOuterAddButtonContainerMargin:I

.field private mPageSpacingOnDrag:I

.field private mPrevTargetRank:I

.field private mRearrangeOnClose:Z

.field private final mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

.field private mRestorePositionOnDrop:Z

.field private mScrollAreaOffset:I

.field private mScrollHintDir:I

.field private final mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private mSuppressFolderClose:Z

.field private mSuppressFolderDeletion:Z

.field private mSuppressOnAdd:Z

.field private mSuppressOnRemove:Z

.field private mTargetRank:I

.field private mTargetRankForRestore:I

.field private mViewState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 284
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    new-instance v2, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v2}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 164
    new-instance v2, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v2}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 165
    new-instance v2, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v2}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 166
    new-instance v2, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v2}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInReadingOrder:Ljava/util/ArrayList;

    .line 214
    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    .line 215
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mRearrangeOnClose:Z

    .line 216
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 220
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mRestorePositionOnDrop:Z

    .line 221
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    .line 222
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnRemove:Z

    .line 223
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    .line 224
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mDeleteFolderOnDropCompleted:Z

    .line 225
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderDeletion:Z

    .line 226
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemAddedBackToSelfViaIcon:Z

    .line 227
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mIsEditingName:Z

    .line 235
    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    .line 236
    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentScrollDir:I

    .line 240
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mHoverPointClosesFolder:Z

    .line 242
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderClose:Z

    .line 246
    new-instance v2, Lcom/android/launcher3/folder/view/FolderView$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/view/FolderView$1;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mAscComparator:Ljava/util/Comparator;

    .line 261
    new-instance v2, Lcom/android/launcher3/folder/view/FolderView$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/view/FolderView$2;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mDescComparator:Ljava/util/Comparator;

    .line 1448
    new-instance v2, Lcom/android/launcher3/folder/view/FolderView$16;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/view/FolderView$16;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    .line 1484
    new-instance v2, Lcom/android/launcher3/folder/view/FolderView$17;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/view/FolderView$17;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    .line 285
    invoke-virtual {p0, v4}, Lcom/android/launcher3/folder/view/FolderView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 287
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 289
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 291
    .local v1, "res":Landroid/content/res/Resources;
    sget-object v2, Lcom/android/launcher3/folder/view/FolderView;->sDefaultFolderName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 292
    const v2, 0x7f080164

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/folder/view/FolderView;->sDefaultFolderName:Ljava/lang/String;

    .line 294
    :cond_0
    sget-object v2, Lcom/android/launcher3/folder/view/FolderView;->sHintText:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 295
    const v2, 0x7f080030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/folder/view/FolderView;->sHintText:Ljava/lang/String;

    .line 298
    :cond_1
    sget-object v2, Lcom/android/launcher3/folder/view/FolderView;->sColorPickerImages:Landroid/util/SparseArray;

    if-nez v2, :cond_2

    .line 299
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/android/launcher3/folder/view/FolderView;->sColorPickerImages:Landroid/util/SparseArray;

    .line 302
    :cond_2
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 308
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    .line 309
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    move-result-object v0

    .line 310
    .local v0, "fs":Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
    if-eqz v0, :cond_3

    .line 311
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_2:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_3:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_4:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 319
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    .line 321
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFadeInOutDuration:I

    .line 322
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090114

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mPageSpacingOnDrag:I

    .line 323
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderNameEditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/folder/view/FolderView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 117
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/folder/view/FolderView;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/view/FolderView;->sendCustomAccessibilityEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/launcher3/folder/view/FolderView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p1, "x1"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/launcher3/folder/view/FolderView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p1, "x1"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/launcher3/folder/view/FolderView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 117
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/launcher3/folder/view/FolderView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p1, "x1"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/launcher3/folder/view/FolderView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 117
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/common/base/controller/ControllerBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher3/folder/view/FolderView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInReadingOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher3/folder/view/FolderView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 117
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentScrollDir:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/launcher3/folder/view/FolderView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p1, "x1"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentScrollDir:I

    return p1
.end method

.method static synthetic access$1902(Lcom/android/launcher3/folder/view/FolderView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p1, "x1"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/folder/view/FolderView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mNeedToShowCursor:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/util/alarm/Alarm;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/folder/view/FolderView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p1, "x1"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mNeedToShowCursor:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p1, "x1"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "x2"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/view/FolderView;->onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/folder/view/FolderView;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/folder/view/FolderView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p1, "x1"    # Z

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->doneEditingFolderName(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/FolderInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/folder/view/FolderView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderView$FolderColor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p1, "x1"    # Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    .param p2, "x2"    # Z

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/view/FolderView;->setFolderColor(Lcom/android/launcher3/folder/view/FolderView$FolderColor;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->replaceFolderWithFinalItem()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderPagedView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    return-object v0
.end method

.method private animateAppear(Landroid/view/View;)V
    .locals 4
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2341
    if-eqz p1, :cond_3

    .line 2342
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2343
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->dismissEditingName()V

    .line 2344
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderNameEditText;->clearFocus()V

    .line 2348
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2349
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x7f040000

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2350
    .local v0, "ani":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2351
    .local v1, "colorView":Landroid/widget/ImageView;
    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->appearColorPickerItems(Landroid/view/View;)V

    goto :goto_0

    .line 2354
    .end local v0    # "ani":Landroid/view/animation/Animation;
    .end local v1    # "colorView":Landroid/widget/ImageView;
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2355
    .restart local v0    # "ani":Landroid/view/animation/Animation;
    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFadeInOutDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2358
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2359
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2361
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_3
    return-void

    :cond_4
    move v2, v3

    .line 2354
    goto :goto_1
.end method

.method private animateDismiss(Landroid/view/View;Z)V
    .locals 4
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "keepLayout"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2371
    if-eqz p1, :cond_2

    .line 2373
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2374
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2375
    .local v0, "ani":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2376
    .local v1, "colorView":Landroid/widget/ImageView;
    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->dismissColorPickerItems(Landroid/view/View;)V

    goto :goto_0

    .line 2379
    .end local v0    # "ani":Landroid/view/animation/Animation;
    .end local v1    # "colorView":Landroid/widget/ImageView;
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2380
    .restart local v0    # "ani":Landroid/view/animation/Animation;
    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFadeInOutDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2383
    :cond_1
    new-instance v2, Lcom/android/launcher3/folder/view/FolderView$21;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher3/folder/view/FolderView$21;-><init>(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/View;Z)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2400
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2402
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_2
    return-void

    :cond_3
    move v2, v3

    .line 2379
    goto :goto_1
.end method

.method private appearColorPickerItems(Landroid/view/View;)V
    .locals 3
    .param p1, "colorView"    # Landroid/view/View;

    .prologue
    .line 2364
    if-eqz p1, :cond_0

    .line 2365
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2366
    .local v0, "ani":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2368
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private beginDrag(Landroid/view/View;Z)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "allowQuickOption"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 596
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 597
    .local v1, "tag":Ljava/lang/Object;
    instance-of v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_1

    move-object v0, v1

    .line 598
    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 599
    .local v0, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 623
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :goto_0
    return v2

    .line 603
    .restart local v0    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 604
    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iput v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    .line 605
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    .line 606
    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iput v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRankForRestore:I

    .line 607
    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mRestorePositionOnDrop:Z

    .line 609
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/folder/controller/FolderController;->updateCheckBox(Z)V

    .line 610
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, p1, p0, p2, v2}, Lcom/android/launcher3/Launcher;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;ZZ)V

    .line 612
    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iput v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    .line 613
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->removeItem(Landroid/view/View;)V

    .line 614
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 615
    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    .line 616
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemAddedBackToSelfViaIcon:Z

    .line 619
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v2, :cond_2

    .line 620
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/controller/FolderController;->enterDragState(Z)V

    :cond_2
    move v2, v3

    .line 623
    goto :goto_0
.end method

.method private calculateBorderWidth()I
    .locals 3

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContentAreaWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContentMinMargin:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private calculateFolderHeight()I
    .locals 1

    .prologue
    .line 1841
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContentAreaHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->calculateFolderHeight(I)I

    move-result v0

    return v0
.end method

.method private calculateFolderHeight(I)I
    .locals 2
    .param p1, "contentAreaHeight"    # I

    .prologue
    .line 1845
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFooterHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method private calculateFolderWidth()I
    .locals 3

    .prologue
    .line 1831
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1832
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/launcher3/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 1833
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 1837
    .local v1, "folderWidth":I
    return v1
.end method

.method private centerAboutIcon()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1782
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1783
    .local v2, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/android/launcher3/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 1786
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    .line 1787
    .local v6, "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->calculateFolderWidth()I

    move-result v8

    .line 1788
    .local v8, "width":I
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->calculateFolderHeight()I

    move-result v4

    .line 1789
    .local v4, "height":I
    iget v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFooterHeight:I

    .line 1790
    .local v3, "exceptArea":I
    iget v9, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v8

    div-int/lit8 v5, v9, 0x2

    .line 1791
    .local v5, "left":I
    iget v9, v2, Landroid/graphics/Point;->y:I

    sub-int v10, v4, v3

    sub-int/2addr v9, v10

    div-int/lit8 v7, v9, 0x2

    .line 1792
    .local v7, "top":I
    iput v8, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    .line 1793
    iput v4, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    .line 1794
    iput v5, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->x:I

    .line 1795
    iput v7, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->y:I

    .line 1799
    iget-object v9, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1800
    .local v0, "addButtonLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 1801
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->calculateBorderWidth()I

    move-result v1

    .line 1802
    .local v1, "borderWidth":I
    const/16 v9, 0x33

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1803
    iget v9, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    iget v10, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerHeight:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerMargin:I

    add-int/2addr v9, v10

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1804
    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1805
    sub-int v9, v8, v1

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v1

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1813
    .end local v1    # "borderWidth":I
    :goto_0
    return-void

    .line 1807
    :cond_0
    const/16 v9, 0x51

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1808
    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1809
    iget v9, p0, Lcom/android/launcher3/folder/view/FolderView;->mFooterHeight:I

    iget v10, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerMargin:I

    add-int/2addr v9, v10

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1810
    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method private clearDragInfo()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1516
    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1517
    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    .line 1518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    .line 1519
    return-void
.end method

.method private createAddButton()Landroid/view/View;
    .locals 3

    .prologue
    .line 2427
    const v2, 0x7f0f0068

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 2428
    .local v1, "stub":Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 2430
    .local v0, "buttonView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2431
    const v2, 0x7f0200d0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2440
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2441
    return-object v0
.end method

.method private dismissColorPickerItems(Landroid/view/View;)V
    .locals 3
    .param p1, "colorView"    # Landroid/view/View;

    .prologue
    .line 2405
    if-eqz p1, :cond_0

    .line 2406
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2407
    .local v0, "ani":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2409
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private doneEditingFolderName(Z)V
    .locals 14
    .param p1, "commit"    # Z

    .prologue
    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const/4 v11, 0x0

    .line 651
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    sget-object v2, Lcom/android/launcher3/folder/view/FolderView;->sHintText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 655
    .local v9, "tempTitle":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 656
    .local v8, "newTitle":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 659
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 660
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/folder/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 661
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 662
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-interface {v1, v2}, Lcom/android/launcher3/common/base/controller/ControllerBase;->onUpdateAlphabetList(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 663
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-interface {v1, v2}, Lcom/android/launcher3/common/base/controller/ControllerBase;->getLocationInfoFromDB(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    .line 664
    .local v0, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    new-instance v7, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {v7}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    .line 665
    .local v7, "newFolderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v7, v0}, Lcom/android/launcher3/folder/FolderInfo;->copyFrom(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 666
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    invoke-interface {v1, v7}, Lcom/android/launcher3/common/base/controller/ControllerBase;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 671
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v7    # "newFolderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/logging/GSIMLogging;->getFolderNameValue(J)I

    move-result v10

    .line 672
    .local v10, "value":I
    const/4 v1, -0x1

    if-eq v10, v1, :cond_1

    .line 673
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v12, -0x64

    cmp-long v1, v2, v12

    if-nez v1, :cond_5

    .line 674
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HOFN"

    .line 675
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 674
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 682
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 690
    .end local v10    # "value":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->requestFocus()Z

    .line 692
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v1, v11}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setCursorVisible(Z)V

    .line 693
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v11, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 694
    iput-boolean v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mIsEditingName:Z

    .line 696
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    invoke-interface {v1, v11}, Lcom/android/launcher3/common/base/controller/ControllerBase;->notifyCapture(Z)V

    .line 698
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 699
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->applyFolderNameChanged()V

    .line 701
    :cond_3
    return-void

    .line 668
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-interface {v1, v2}, Lcom/android/launcher3/common/base/controller/ControllerBase;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    .line 676
    .restart local v10    # "value":I
    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v12, -0x66

    cmp-long v1, v2, v12

    if-nez v1, :cond_1

    .line 677
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "APFN"

    .line 678
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 677
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_1
.end method

.method public static fromXml(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/view/FolderView;
    .locals 3
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/view/FolderView;

    return-object v0
.end method

.method private getContentAreaHeight()I
    .locals 5

    .prologue
    .line 1816
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContentMinHeight:I

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCellLayoutChildrenHeight()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContentMinMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContentMinMargin:I

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerHeight:I

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerMargin:I

    add-int/2addr v3, v4

    .line 1817
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 1816
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getContentAreaWidth()I
    .locals 2

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCellLayoutChildrenWidth()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method private getTargetRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;[F)I
    .locals 4
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "recycle"    # [F

    .prologue
    .line 1456
    invoke-virtual {p1, p2}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object p2

    .line 1459
    const/4 v2, 0x0

    aget v2, p2, v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getPaddingLeft()I

    move-result v3

    sub-int v0, v2, v3

    .line 1460
    .local v0, "pixelX":I
    const/4 v2, 0x1

    aget v2, p2, v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    sub-int v1, v2, v3

    .line 1462
    .local v1, "pixelY":I
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->findNearestArea(II)I

    move-result v2

    return v2
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;Z)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "intercept"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2599
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    if-eqz v3, :cond_2

    .line 2600
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isEditingName()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2601
    invoke-direct {p0, p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->isEventOverFolderTextRegion(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2602
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->dismissEditingName()V

    .line 2603
    invoke-direct {p0, p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->isEventOverFolderHeaderRegion(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2604
    .local v0, "needToHandleByOtherView":Z
    if-nez v0, :cond_0

    .line 2612
    .end local v0    # "needToHandleByOtherView":Z
    :goto_0
    return v1

    .restart local v0    # "needToHandleByOtherView":Z
    :cond_0
    move v1, v2

    .line 2604
    goto :goto_0

    .line 2607
    .end local v0    # "needToHandleByOtherView":Z
    :cond_1
    iget v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-direct {p0, p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->isEventOverFolder(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2608
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 2612
    goto :goto_0
.end method

.method private isEventOverFolder(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "folder"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2640
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    .line 2641
    .local v0, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    if-eqz v0, :cond_0

    .line 2642
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2643
    .local v1, "r":Landroid/graphics/Rect;
    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 2644
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2645
    const/4 v2, 0x1

    .line 2649
    .end local v1    # "r":Landroid/graphics/Rect;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isEventOverFolderHeaderRegion(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "folder"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2628
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    .line 2629
    .local v0, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2630
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 2631
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getHeader()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 2632
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2633
    const/4 v2, 0x1

    .line 2636
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isEventOverFolderTextRegion(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "folder"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2616
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    .line 2617
    .local v0, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2618
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 2619
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getEditTextRegion()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 2620
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2621
    const/4 v2, 0x1

    .line 2624
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNeedToMakeClone(Landroid/view/View;)Z
    .locals 12
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2657
    const/4 v2, 0x0

    .line 2658
    .local v2, "needToMakeClone":Z
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2659
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v8, v8, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v10, -0x66

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    move v0, v6

    .line 2660
    .local v0, "isSourceApps":Z
    :goto_0
    const/4 v1, 0x0

    .line 2661
    .local v1, "isTargetHome":Z
    instance-of v8, p1, Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v8, :cond_5

    move-object v3, p1

    .line 2662
    check-cast v3, Lcom/android/launcher3/folder/view/FolderView;

    .line 2663
    .local v3, "targetFolder":Lcom/android/launcher3/folder/view/FolderView;
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v8

    iget-wide v4, v8, Lcom/android/launcher3/folder/FolderInfo;->container:J

    .line 2664
    .local v4, "targetContainer":J
    const-wide/16 v8, -0x64

    cmp-long v8, v4, v8

    if-eqz v8, :cond_0

    const-wide/16 v8, -0x65

    cmp-long v8, v4, v8

    if-nez v8, :cond_4

    :cond_0
    move v1, v6

    .line 2669
    .end local v3    # "targetFolder":Lcom/android/launcher3/folder/view/FolderView;
    .end local v4    # "targetContainer":J
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 2670
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    .line 2673
    .end local v0    # "isSourceApps":Z
    .end local v1    # "isTargetHome":Z
    :cond_2
    return v2

    :cond_3
    move v0, v7

    .line 2659
    goto :goto_0

    .restart local v0    # "isSourceApps":Z
    .restart local v1    # "isTargetHome":Z
    .restart local v3    # "targetFolder":Lcom/android/launcher3/folder/view/FolderView;
    .restart local v4    # "targetContainer":J
    :cond_4
    move v1, v7

    .line 2664
    goto :goto_1

    .line 2666
    .end local v3    # "targetFolder":Lcom/android/launcher3/folder/view/FolderView;
    .end local v4    # "targetContainer":J
    :cond_5
    instance-of v6, p1, Lcom/android/launcher3/home/Workspace;

    if-nez v6, :cond_6

    instance-of v6, p1, Lcom/android/launcher3/home/Hotseat;

    if-nez v6, :cond_6

    instance-of v6, p1, Lcom/android/launcher3/home/CancelDropTarget;

    if-nez v6, :cond_6

    instance-of v6, p1, Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v6, :cond_1

    .line 2667
    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)V
    .locals 23
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "reorderDelay"    # I

    .prologue
    .line 1068
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 1140
    :cond_0
    :goto_0
    return-void

    .line 1072
    :cond_1
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v20, v0

    .line 1073
    .local v20, "r":[F
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderView;->getTargetRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;[F)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    .line 1075
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 1077
    .local v15, "dragView":Lcom/android/launcher3/common/drag/DragView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1078
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    .line 1107
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1111
    const/4 v4, 0x0

    aget v22, v20, v4

    .line 1112
    .local v22, "x":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v14

    .line 1113
    .local v14, "currentPageIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v13

    .line 1114
    .local v13, "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v13, :cond_3

    .line 1115
    invoke-virtual {v13}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3ee66666    # 0.45f

    mul-float v12, v4, v5

    .line 1117
    .local v12, "cellOverlap":F
    cmpg-float v4, v22, v12

    if-gez v4, :cond_9

    const/16 v16, 0x1

    .line 1118
    .local v16, "isOutsideLeftEdge":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v12

    cmpl-float v4, v22, v4

    if-lez v4, :cond_a

    const/16 v17, 0x1

    .line 1120
    .local v17, "isOutsideRightEdge":Z
    :goto_3
    if-lez v14, :cond_c

    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_b

    if-eqz v17, :cond_c

    .line 1121
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/launcher3/folder/view/FolderView;->showScrollHint(ILcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 1134
    .end local v12    # "cellOverlap":F
    .end local v16    # "isOutsideLeftEdge":Z
    .end local v17    # "isOutsideRightEdge":Z
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderClose:Z

    if-eqz v4, :cond_0

    .line 1135
    invoke-virtual {v15}, Lcom/android/launcher3/common/drag/DragView;->getTranslationY()F

    move-result v4

    invoke-virtual {v15}, Lcom/android/launcher3/common/drag/DragView;->getRegistrationY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v15}, Lcom/android/launcher3/common/drag/DragView;->getOffsetY()F

    move-result v5

    sub-float v21, v4, v5

    .line 1136
    .local v21, "touchY":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v21, v4

    if-ltz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, v21, v4

    if-gtz v4, :cond_0

    .line 1137
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderClose:Z

    goto/16 :goto_0

    .line 1080
    .end local v13    # "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v14    # "currentPageIndex":I
    .end local v21    # "touchY":F
    .end local v22    # "x":F
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mPrevTargetRank:I

    if-eq v4, v5, :cond_5

    .line 1081
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1082
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    move/from16 v0, p2

    int-to-long v10, v0

    invoke-virtual {v4, v10, v11}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 1084
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mPrevTargetRank:I

    .line 1087
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mRestorePositionOnDrop:Z

    if-eqz v4, :cond_6

    .line 1088
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v4, :cond_8

    .line 1089
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mRestorePositionOnDrop:Z

    .line 1095
    :cond_6
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v18

    .line 1096
    .local v18, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v18

    if-eq v0, v4, :cond_7

    .line 1097
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1100
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v5

    rem-int v19, v4, v5

    .line 1101
    .local v19, "pagePos":I
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v4

    rem-int v7, v19, v4

    .line 1102
    .local v7, "cellX":I
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v4

    div-int v8, v19, v4

    .line 1103
    .local v8, "cellY":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v15}, Lcom/android/launcher3/common/drag/DragView;->getDragOutline()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher3/common/base/view/CellLayout;->visualizeDropLocation(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;IIIIZ)V

    goto/16 :goto_1

    .line 1090
    .end local v7    # "cellX":I
    .end local v8    # "cellY":I
    .end local v18    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v19    # "pagePos":I
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRankForRestore:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    if-eq v4, v5, :cond_6

    .line 1091
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mRestorePositionOnDrop:Z

    goto :goto_5

    .line 1117
    .restart local v12    # "cellOverlap":F
    .restart local v13    # "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v14    # "currentPageIndex":I
    .restart local v22    # "x":F
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1118
    .restart local v16    # "isOutsideLeftEdge":Z
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 1120
    .restart local v17    # "isOutsideRightEdge":Z
    :cond_b
    if-nez v16, :cond_2

    .line 1122
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v14, v4, :cond_f

    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_e

    if-eqz v16, :cond_f

    .line 1124
    :cond_d
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/launcher3/folder/view/FolderView;->showScrollHint(ILcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto/16 :goto_4

    .line 1122
    :cond_e
    if-nez v17, :cond_d

    .line 1126
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1127
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 1128
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->clearScrollHint()V

    .line 1129
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    goto/16 :goto_4
.end method

.method private onDropExtraObjects(Ljava/util/ArrayList;ZZ)V
    .locals 30
    .param p2, "clone"    # Z
    .param p3, "isFolderDrop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1316
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    const/16 v24, 0x0

    .line 1318
    .local v24, "needRankUpdate":Z
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1319
    .local v23, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1320
    .local v21, "dropItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/view/FolderView$DropItem;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1321
    .local v26, "urgentItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/view/FolderView$DropItem;>;"
    const/16 v17, 0x0

    .line 1322
    .local v17, "addItemFromApps":Z
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    .line 1323
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 1324
    .local v19, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_0

    .line 1325
    const/4 v2, 0x1

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    .line 1326
    const/4 v2, 0x1

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    .line 1327
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    goto :goto_0

    .line 1330
    :cond_0
    if-eqz p3, :cond_1

    if-eqz v24, :cond_2

    .line 1331
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    .line 1332
    const/16 v24, 0x1

    .line 1334
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->completePendingPageChanges()V

    .line 1337
    if-eqz p2, :cond_6

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v3

    .line 1338
    .local v3, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :goto_1
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1339
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v27

    .line 1344
    .local v27, "view":Landroid/view/View;
    :goto_2
    iget-wide v14, v3, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v28, -0x66

    cmp-long v2, v14, v28

    if-nez v2, :cond_3

    .line 1345
    const/16 v17, 0x1

    .line 1348
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v3, v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->insertViewBeforeArrangeChildren(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;I)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v4, v5, Lcom/android/launcher3/folder/FolderInfo;->id:J

    const-wide/16 v6, 0x0

    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v9, v3, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    const/4 v10, -0x1

    invoke-interface/range {v2 .. v10}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 1351
    new-instance v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Lcom/android/launcher3/folder/view/FolderView$DropItem;-><init>(Lcom/android/launcher3/folder/view/FolderView$1;)V

    .line 1352
    .local v7, "dropItem":Lcom/android/launcher3/folder/view/FolderView$DropItem;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iput-object v2, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 1353
    move-object/from16 v0, v27

    iput-object v0, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->iconView:Landroid/view/View;

    .line 1354
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v5

    div-int/2addr v2, v5

    iput v2, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->targetPageIndex:I

    .line 1356
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1357
    move/from16 v0, v17

    iput-boolean v0, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->fromApps:Z

    .line 1359
    :cond_4
    iget v2, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->targetPageIndex:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPage()I

    move-result v5

    if-ne v2, v5, :cond_5

    .line 1360
    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1362
    :cond_5
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1337
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v7    # "dropItem":Lcom/android/launcher3/folder/view/FolderView$DropItem;
    .end local v27    # "view":Landroid/view/View;
    :cond_6
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v3, v2

    goto/16 :goto_1

    .line 1341
    .restart local v3    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->isInActiveRange(I)Z

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->createNewView(Lcom/android/launcher3/common/base/item/IconInfo;Z)Landroid/view/View;

    move-result-object v27

    .restart local v27    # "view":Landroid/view/View;
    goto/16 :goto_2

    .line 1366
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v19    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v27    # "view":Landroid/view/View;
    :cond_8
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/FolderInfo;->add(Ljava/util/ArrayList;)V

    .line 1370
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    .line 1371
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    .line 1373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v20

    .line 1374
    .local v20, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v18

    .line 1376
    .local v18, "currentPageIndex":I
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;

    .line 1377
    .restart local v7    # "dropItem":Lcom/android/launcher3/folder/view/FolderView$DropItem;
    const/4 v4, 0x0

    .line 1378
    .local v4, "onFinishAnimationRunnable":Ljava/lang/Runnable;
    iget-object v8, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->iconView:Landroid/view/View;

    .line 1379
    .local v8, "iconView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget v6, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->targetPageIndex:I

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v9

    .line 1381
    .local v9, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v9, :cond_b

    .line 1382
    iget v5, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->targetPageIndex:I

    sub-int v5, v5, v18

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->getDesiredWidth()I

    move-result v6

    mul-int v22, v5, v6

    .line 1383
    .local v22, "expectedX":I
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    .line 1384
    .local v25, "pageRect":Landroid/graphics/Rect;
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v9, v1}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1385
    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int v16, v22, v5

    .line 1390
    .end local v22    # "expectedX":I
    .end local v25    # "pageRect":Landroid/graphics/Rect;
    .local v16, "translatedX":I
    :goto_4
    new-instance v4, Lcom/android/launcher3/folder/view/FolderView$15;

    .end local v4    # "onFinishAnimationRunnable":Ljava/lang/Runnable;
    move-object/from16 v5, p0

    move-object/from16 v6, v26

    move-object/from16 v10, v23

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher3/folder/view/FolderView$15;-><init>(Lcom/android/launcher3/folder/view/FolderView;Ljava/util/ArrayList;Lcom/android/launcher3/folder/view/FolderView$DropItem;Landroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Ljava/util/ArrayList;)V

    .line 1417
    .restart local v4    # "onFinishAnimationRunnable":Ljava/lang/Runnable;
    iget-object v5, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v5, :cond_a

    iget-object v5, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->iconView:Landroid/view/View;

    if-eqz v5, :cond_a

    .line 1418
    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v13, 0x12c

    .line 1419
    .local v13, "duration":I
    :goto_5
    iget-object v11, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-object v12, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->iconView:Landroid/view/View;

    const/4 v15, 0x0

    move-object/from16 v10, v20

    move-object v14, v4

    invoke-virtual/range {v10 .. v16}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;I)V

    goto :goto_3

    .line 1387
    .end local v13    # "duration":I
    .end local v16    # "translatedX":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->getDesiredWidth()I

    move-result v16

    .restart local v16    # "translatedX":I
    goto :goto_4

    .line 1418
    :cond_c
    const/4 v13, -0x1

    goto :goto_5

    .line 1423
    .end local v4    # "onFinishAnimationRunnable":Ljava/lang/Runnable;
    .end local v7    # "dropItem":Lcom/android/launcher3/folder/view/FolderView$DropItem;
    .end local v8    # "iconView":Landroid/view/View;
    .end local v9    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v16    # "translatedX":I
    :cond_d
    return-void
.end method

.method private prepareReveal(Z)V
    .locals 2
    .param p1, "resetPositionImmediately"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 855
    if-eqz p1, :cond_0

    .line 856
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->setTranslationX(F)V

    .line 857
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->setTranslationY(F)V

    .line 858
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->setScaleX(F)V

    .line 859
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->setScaleY(F)V

    .line 862
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    .line 863
    return-void
.end method

.method private replaceFolderWithFinalItem()V
    .locals 3

    .prologue
    .line 1967
    iget-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mDestroyed:Z

    if-eqz v2, :cond_0

    .line 1989
    :goto_0
    return-void

    .line 1972
    :cond_0
    new-instance v1, Lcom/android/launcher3/folder/view/FolderView$18;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/view/FolderView$18;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 1978
    .local v1, "onCompleteRunnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v0

    .line 1979
    .local v0, "finalChild":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1980
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1981
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1988
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mDestroyed:Z

    goto :goto_0

    .line 1983
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->performDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1986
    :cond_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private restoreDragObjectsPosition(Ljava/util/ArrayList;Z)V
    .locals 22
    .param p2, "animate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1715
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    if-eqz p1, :cond_4

    .line 1716
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1717
    .local v20, "sortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mAscComparator:Ljava/util/Comparator;

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1719
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1720
    .local v16, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1721
    .local v12, "dropItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/view/FolderView$DropItem;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move/from16 v19, v0

    .line 1725
    .local v19, "rankToKeepPosition":I
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    .line 1726
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 1727
    .local v10, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v15, v10, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v15, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1728
    .local v15, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v4, v10, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v14

    .line 1729
    .local v14, "icon":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget v5, v15, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move/from16 v0, v19

    invoke-virtual {v4, v14, v15, v5, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->insertViewBeforeArrangeChildren(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;II)V

    .line 1731
    new-instance v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;

    const/4 v4, 0x0

    invoke-direct {v11, v4}, Lcom/android/launcher3/folder/view/FolderView$DropItem;-><init>(Lcom/android/launcher3/folder/view/FolderView$1;)V

    .line 1732
    .local v11, "dropItem":Lcom/android/launcher3/folder/view/FolderView$DropItem;
    iget-object v4, v10, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iput-object v4, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 1733
    iput-object v14, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->iconView:Landroid/view/View;

    .line 1734
    iget v4, v15, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v5

    div-int/2addr v4, v5

    iput v4, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->targetPageIndex:I

    .line 1735
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1737
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1739
    .end local v10    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v11    # "dropItem":Lcom/android/launcher3/folder/view/FolderView$DropItem;
    .end local v14    # "icon":Landroid/view/View;
    .end local v15    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1740
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/launcher3/folder/FolderInfo;->add(Ljava/util/ArrayList;)V

    .line 1743
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    .line 1744
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    .line 1746
    if-eqz p2, :cond_4

    .line 1747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    .line 1748
    .local v2, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v9

    .line 1750
    .local v9, "currentPageIndex":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_2
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;

    .line 1751
    .restart local v11    # "dropItem":Lcom/android/launcher3/folder/view/FolderView$DropItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget v4, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->targetPageIndex:I

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v17

    .line 1753
    .local v17, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v17, :cond_3

    .line 1754
    iget v3, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->targetPageIndex:I

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->getDesiredWidth()I

    move-result v4

    mul-int v13, v3, v4

    .line 1755
    .local v13, "expectedX":I
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 1756
    .local v18, "pageRect":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1757
    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v8, v13, v3

    .line 1762
    .end local v13    # "expectedX":I
    .end local v18    # "pageRect":Landroid/graphics/Rect;
    .local v8, "translatedX":I
    :goto_2
    iget-object v3, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v3, :cond_2

    iget-object v3, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->iconView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1763
    iget-object v3, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-object v4, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->iconView:Landroid/view/View;

    const/16 v5, 0x12c

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;I)V

    goto :goto_1

    .line 1759
    .end local v8    # "translatedX":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->getDesiredWidth()I

    move-result v8

    .restart local v8    # "translatedX":I
    goto :goto_2

    .line 1769
    .end local v2    # "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    .end local v8    # "translatedX":I
    .end local v9    # "currentPageIndex":I
    .end local v11    # "dropItem":Lcom/android/launcher3/folder/view/FolderView$DropItem;
    .end local v12    # "dropItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/view/FolderView$DropItem;>;"
    .end local v16    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v17    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v19    # "rankToKeepPosition":I
    .end local v20    # "sortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    :cond_4
    return-void
.end method

.method private sendCustomAccessibilityEvent(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 991
    .line 992
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 993
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 994
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 995
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 996
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 997
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 999
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private sendTapOutsideFolderAccessibilityEvent(Z)V
    .locals 5
    .param p1, "isEditingName"    # Z

    .prologue
    .line 2576
    .line 2577
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2578
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2579
    if-eqz p1, :cond_1

    const v2, 0x7f080168

    .line 2580
    .local v2, "stringId":I
    :goto_0
    const/16 v3, 0x8

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 2582
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2583
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2584
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2586
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v2    # "stringId":I
    :cond_0
    return-void

    .line 2579
    :cond_1
    const v2, 0x7f080167

    goto :goto_0
.end method

.method private setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragExit()V

    .line 1030
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1031
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragEnter()V

    .line 1034
    :cond_1
    return-void
.end method

.method private setFolderColor(IZ)V
    .locals 2
    .param p1, "intColor"    # I
    .param p2, "bUpdateItem"    # Z

    .prologue
    .line 2230
    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_2:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 2231
    sget-object v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_2:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    .line 2242
    .local v0, "color":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/folder/view/FolderView;->setFolderColor(Lcom/android/launcher3/folder/view/FolderView$FolderColor;Z)V

    .line 2243
    return-void

    .line 2232
    .end local v0    # "color":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    :cond_0
    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_3:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 2233
    sget-object v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_3:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    .restart local v0    # "color":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    goto :goto_0

    .line 2234
    .end local v0    # "color":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    :cond_1
    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_4:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 2235
    sget-object v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_4:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    .restart local v0    # "color":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    goto :goto_0

    .line 2236
    .end local v0    # "color":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    :cond_2
    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 2237
    sget-object v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    .restart local v0    # "color":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    goto :goto_0

    .line 2239
    .end local v0    # "color":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    :cond_3
    sget-object v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    .restart local v0    # "color":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    goto :goto_0
.end method

.method private setFolderColor(Lcom/android/launcher3/folder/view/FolderView$FolderColor;Z)V
    .locals 23
    .param p1, "color"    # Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    .param p2, "bUpdateItem"    # Z

    .prologue
    .line 2266
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v8

    .line 2268
    .local v8, "isDefaultTheme":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/folder/view/FolderView;->setFolderColorTalkback(Lcom/android/launcher3/folder/view/FolderView$FolderColor;)V

    .line 2269
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 2270
    .local v13, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->values()[Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    aget-object v5, v18, v17

    .line 2271
    .local v5, "folderColor":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 2272
    .local v4, "colorView":Landroid/widget/ImageView;
    if-eqz v4, :cond_1

    .line 2273
    move-object/from16 v0, p1

    if-ne v0, v5, :cond_2

    .line 2274
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f020097

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2275
    .local v3, "checkedImage":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_0

    sget-object v20, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 2276
    const v20, 0x7f0d0003

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v12

    .line 2277
    .local v12, "pickerBlackColor":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    sget-object v21, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2279
    .end local v12    # "pickerBlackColor":I
    :cond_0
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2270
    .end local v3    # "checkedImage":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 2281
    :cond_2
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2286
    .end local v4    # "colorView":Landroid/widget/ImageView;
    .end local v5    # "folderColor":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->isWhiteBg()Z

    move-result v17

    if-nez v17, :cond_5

    .line 2287
    const v17, 0x7f0d0015

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v16

    .line 2288
    .local v16, "titleColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setTextColor(I)V

    .line 2289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    move-object/from16 v17, v0

    const v18, -0x70000001

    and-int v18, v18, v16

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setHintTextColor(I)V

    .line 2290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderBottomLine:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x4dffffff    # 5.3687088E8f

    and-int v18, v18, v16

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2293
    .local v11, "openFolderColor":I
    sget-object v17, Lcom/android/launcher3/folder/view/FolderView;->sOptionButtonImage:Landroid/graphics/Bitmap;

    if-nez v17, :cond_4

    .line 2294
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x7f020096

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v11}, Lcom/android/launcher3/util/BitmapUtils;->getBitmapWithColor(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v17

    sput-object v17, Lcom/android/launcher3/folder/view/FolderView;->sOptionButtonImage:Landroid/graphics/Bitmap;

    .line 2296
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/launcher3/folder/view/FolderView;->sOptionButtonImage:Landroid/graphics/Bitmap;

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2300
    .end local v11    # "openFolderColor":I
    .end local v16    # "titleColor":I
    :cond_5
    if-nez v8, :cond_6

    .line 2301
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    move-result-object v6

    .line 2302
    .local v6, "fs":Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getFolderType()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 2303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2333
    .end local v6    # "fs":Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
    :cond_6
    if-eqz p2, :cond_7

    .line 2334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->ordinal()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/launcher3/folder/FolderInfo;->color:I

    .line 2335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher3/folder/FolderInfo;->color:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher3/folder/view/FolderIconView;->setIconBackgroundColor(I)V

    .line 2336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/android/launcher3/common/base/controller/ControllerBase;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2338
    :cond_7
    return-void

    .line 2305
    .restart local v6    # "fs":Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
    :cond_8
    const v17, 0x7f090039

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 2306
    .local v7, "iconSize":I
    const v17, 0x7f090115

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    sub-int v14, v7, v17

    .line 2308
    .local v14, "roundSize":I
    invoke-static {}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->values()[Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v17, 0x0

    move/from16 v18, v17

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    aget-object v5, v19, v18

    .line 2309
    .restart local v5    # "folderColor":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 2310
    .restart local v4    # "colorView":Landroid/widget/ImageView;
    if-eqz v4, :cond_a

    .line 2311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2312
    .local v9, "itemColor":I
    sget-object v17, Lcom/android/launcher3/folder/view/FolderView;->sColorPickerImages:Landroid/util/SparseArray;

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/Drawable;

    .line 2313
    .local v10, "itemImage":Landroid/graphics/drawable/Drawable;
    if-nez v10, :cond_9

    .line 2314
    const v17, 0x7f02007a

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 2315
    .local v15, "strokebase":Landroid/graphics/drawable/Drawable;
    div-int/lit8 v17, v14, 0x2

    move/from16 v0, v17

    invoke-static {v9, v7, v7, v0, v15}, Lcom/android/launcher3/theme/ThemeUtils;->roundBitmap(IIIILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2316
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_b

    .line 2317
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    .end local v10    # "itemImage":Landroid/graphics/drawable/Drawable;
    invoke-direct {v10, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2318
    .restart local v10    # "itemImage":Landroid/graphics/drawable/Drawable;
    sget-object v17, Lcom/android/launcher3/folder/view/FolderView;->sColorPickerImages:Landroid/util/SparseArray;

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2324
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v15    # "strokebase":Landroid/graphics/drawable/Drawable;
    :cond_9
    :goto_3
    if-eqz v10, :cond_a

    .line 2325
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2308
    .end local v9    # "itemColor":I
    .end local v10    # "itemImage":Landroid/graphics/drawable/Drawable;
    :cond_a
    add-int/lit8 v17, v18, 0x1

    move/from16 v18, v17

    goto :goto_2

    .line 2320
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "itemColor":I
    .restart local v10    # "itemImage":Landroid/graphics/drawable/Drawable;
    .restart local v15    # "strokebase":Landroid/graphics/drawable/Drawable;
    :cond_b
    const-string v17, "Launcher.Folder"

    const-string v21, "setFolderColor : can\'t create color picker image"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private setFolderColorTalkback(Lcom/android/launcher3/folder/view/FolderView$FolderColor;)V
    .locals 3
    .param p1, "color"    # Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    .prologue
    .line 2246
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 2248
    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_2:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    if-ne p1, v1, :cond_1

    .line 2249
    const v0, 0x7f08002b

    .line 2260
    .local v0, "talkbackId":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2262
    .end local v0    # "talkbackId":I
    :cond_0
    return-void

    .line 2250
    :cond_1
    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_3:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    if-ne p1, v1, :cond_2

    .line 2251
    const v0, 0x7f08002d

    .restart local v0    # "talkbackId":I
    goto :goto_0

    .line 2252
    .end local v0    # "talkbackId":I
    :cond_2
    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_4:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    if-ne p1, v1, :cond_3

    .line 2253
    const v0, 0x7f08002e

    .restart local v0    # "talkbackId":I
    goto :goto_0

    .line 2254
    .end local v0    # "talkbackId":I
    :cond_3
    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    if-ne p1, v1, :cond_4

    .line 2255
    const v0, 0x7f08002f

    .restart local v0    # "talkbackId":I
    goto :goto_0

    .line 2257
    .end local v0    # "talkbackId":I
    :cond_4
    const v0, 0x7f08002a

    .restart local v0    # "talkbackId":I
    goto :goto_0
.end method

.method private setupFolderLayout()V
    .locals 5

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09010d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderMargin:I

    .line 512
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mContentMinHeight:I

    .line 513
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mContentMinMargin:I

    .line 515
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 516
    .local v2, "screenSize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/launcher3/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 517
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderMargin:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .line 518
    .local v1, "minBorderWidth":I
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorder:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 519
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeader:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, "measureSpec":I
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeader:Landroid/view/View;

    invoke-virtual {v3, v0, v0}, Landroid/view/View;->measure(II)V

    .line 525
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    .line 526
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFooter:Landroid/view/View;

    invoke-virtual {v3, v0, v0}, Landroid/view/View;->measure(II)V

    .line 527
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFooter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFooterHeight:I

    .line 529
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainer:Landroid/view/View;

    invoke-virtual {v3, v0, v0}, Landroid/view/View;->measure(II)V

    .line 530
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerHeight:I

    .line 531
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerMargin:I

    .line 536
    return-void
.end method

.method private showScrollHint(ILcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 4
    .param p1, "direction"    # I
    .param p2, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 1467
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    if-eq v0, p1, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->showScrollHint(I)V

    .line 1469
    iput p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    .line 1473
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentScrollDir:I

    if-eq v0, p1, :cond_2

    .line 1474
    :cond_1
    iput p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentScrollDir:I

    .line 1475
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1476
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    new-instance v1, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;-><init>(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 1477
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 1479
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1480
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    .line 1482
    :cond_2
    return-void
.end method

.method private startBounceAnimationForSearchedApp(Landroid/view/View;)V
    .locals 1
    .param p1, "bounceView"    # Landroid/view/View;

    .prologue
    .line 2721
    if-nez p1, :cond_1

    .line 2728
    :cond_0
    :goto_0
    return-void

    .line 2724
    :cond_1
    new-instance v0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;-><init>(Landroid/view/View;)V

    sput-object v0, Lcom/android/launcher3/folder/view/FolderView;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    .line 2725
    sget-object v0, Lcom/android/launcher3/folder/view/FolderView;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    if-eqz v0, :cond_0

    .line 2726
    sget-object v0, Lcom/android/launcher3/folder/view/FolderView;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->animate()V

    goto :goto_0
.end method

.method private updateItemLocationsInDatabaseBatch()V
    .locals 9

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v3

    .line 1702
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1703
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 1704
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1705
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v5, :cond_0

    .line 1706
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1707
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iput v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 1708
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1703
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1711
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v6, v6, Lcom/android/launcher3/folder/FolderInfo;->id:J

    const/4 v8, 0x0

    invoke-interface {v5, v2, v6, v7, v8}, Lcom/android/launcher3/common/base/controller/ControllerBase;->modifyItemsInDb(Ljava/util/ArrayList;JI)V

    .line 1712
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 4
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    const/4 v2, 0x1

    .line 1183
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1184
    .local v0, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v1, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    .line 1185
    .local v1, "itemType":I
    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1187
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->acceptDropToFolder()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1188
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isFull()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mRestorePositionOnDrop:Z

    if-nez v3, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bind(Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;)V
    .locals 10
    .param p1, "info"    # Lcom/android/launcher3/folder/FolderInfo;
    .param p2, "controller"    # Lcom/android/launcher3/common/base/controller/ControllerBase;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 780
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    .line 781
    iput-object p2, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    .line 782
    const/4 v3, 0x0

    .line 784
    .local v3, "needToUpdateDb":Z
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 785
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v8, v5}, Lcom/android/launcher3/folder/FolderInfo;->setAlphabeticalOrder(ZLandroid/content/Context;)V

    .line 798
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v6, p1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->bindItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 799
    .local v4, "overflow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const-string v5, "Launcher.Folder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bind : items="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderInfo;->getItemCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , overflow="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", info="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 805
    .local v1, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v6, v1}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 806
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    invoke-interface {v6, v1}, Lcom/android/launcher3/common/base/controller/ControllerBase;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 786
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v4    # "overflow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderInfo;->getItemCount()I

    move-result v5

    if-le v5, v8, :cond_0

    .line 787
    const/4 v0, 0x0

    .line 788
    .local v0, "count":I
    iget-object v5, p1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 789
    .restart local v1    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    iget v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    if-eq v6, v0, :cond_2

    .line 790
    const/4 v3, 0x1

    .line 791
    goto :goto_0

    .line 793
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 795
    goto :goto_2

    .line 809
    .end local v0    # "count":I
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v4    # "overflow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    .line 810
    .local v2, "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    if-nez v2, :cond_4

    .line 811
    new-instance v2, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    .end local v2    # "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    invoke-direct {v2, v9, v9}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(II)V

    .line 812
    .restart local v2    # "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    iput-boolean v8, v2, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->customPosition:Z

    .line 813
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/view/FolderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 815
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->centerAboutIcon()V

    .line 817
    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 818
    if-eqz v3, :cond_5

    .line 819
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateItemLocationsInDatabaseBatch()V

    .line 822
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateContentFocus()V

    .line 823
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v5, p0}, Lcom/android/launcher3/folder/FolderInfo;->addListener(Lcom/android/launcher3/folder/FolderEventListener;)V

    .line 825
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v5, v5, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/launcher3/folder/view/FolderView;->sDefaultFolderName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v6, v6, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 826
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v6, v6, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 831
    :goto_3
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget v5, v5, Lcom/android/launcher3/folder/FolderInfo;->color:I

    invoke-direct {p0, v5, v9}, Lcom/android/launcher3/folder/view/FolderView;->setFolderColor(IZ)V

    .line 834
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    new-instance v6, Lcom/android/launcher3/folder/view/FolderView$12;

    invoke-direct {v6, p0}, Lcom/android/launcher3/folder/view/FolderView$12;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderIconView;->post(Ljava/lang/Runnable;)Z

    .line 841
    return-void

    .line 828
    :cond_6
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public bindController(Lcom/android/launcher3/folder/controller/FolderController;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/launcher3/folder/controller/FolderController;

    .prologue
    .line 2698
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    .line 2699
    return-void
.end method

.method public completeDragExit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1491
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-boolean v1, v1, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v1, :cond_3

    .line 1492
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMoveToHomeAppsByDragging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1493
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1494
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1495
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    instance-of v1, v1, Lcom/android/launcher3/allapps/controller/AppsController;

    if-eqz v1, :cond_1

    .line 1496
    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 1500
    :goto_0
    const-string v1, "KEY_SUPPRESS_CHANGE_STAGE_ONCE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1502
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 1506
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :goto_1
    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mRearrangeOnClose:Z

    .line 1513
    :goto_2
    return-void

    .line 1498
    .restart local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    goto :goto_0

    .line 1504
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->closeFolder()V

    goto :goto_1

    .line 1507
    :cond_3
    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    if-ne v1, v3, :cond_4

    .line 1508
    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mRearrangeOnClose:Z

    goto :goto_2

    .line 1510
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    .line 1511
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->clearDragInfo()V

    goto :goto_2
.end method

.method public dismissEditingName()V
    .locals 3

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 647
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->doneEditingFolderName(Z)V

    .line 648
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 761
    const/4 v0, 0x1

    return v0
.end method

.method public fillInLaunchSourceData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "sourceData"    # Landroid/os/Bundle;

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-static {v0, p1}, Lcom/android/launcher3/Stats$LaunchSourceUtils;->populateSourceDataFromAncestorProvider(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2213
    const-string v0, "sub_container"

    const-string v1, "folder"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    const-string v0, "sub_container_page"

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2215
    return-void
.end method

.method public getBaseController()Lcom/android/launcher3/common/base/controller/ControllerBase;
    .locals 1

    .prologue
    .line 2653
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    return-object v0
.end method

.method public getBorder()Landroid/view/View;
    .locals 1

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorder:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBorderHeight()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1925
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderHeight:I

    if-nez v0, :cond_0

    .line 1926
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/folder/view/FolderView;->measure(II)V

    .line 1928
    :cond_0
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderHeight:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1918
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderWidth:I

    if-nez v0, :cond_0

    .line 1919
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/folder/view/FolderView;->measure(II)V

    .line 1921
    :cond_0
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderWidth:I

    return v0
.end method

.method public getContent()Lcom/android/launcher3/folder/view/FolderPagedView;
    .locals 1

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    return-object v0
.end method

.method public getContentBorderHeight()I
    .locals 2

    .prologue
    .line 1936
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getBorderHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getContentBorderWidth()I
    .locals 1

    .prologue
    .line 1932
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getBorderWidth()I

    move-result v0

    return v0
.end method

.method public getController()Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    .prologue
    .line 2750
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    return-object v0
.end method

.method public getDragSourceType()I
    .locals 4

    .prologue
    .line 2732
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v0, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v2, -0x66

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2733
    const/4 v0, 0x4

    .line 2735
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getEditTextRegion()Landroid/view/View;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    return-object v0
.end method

.method getFolderColorByView(Landroid/view/View;)Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2219
    invoke-static {}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->values()[Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 2220
    .local v0, "color":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2221
    .local v1, "colorView":Landroid/widget/ImageView;
    if-ne v1, p1, :cond_0

    .line 2225
    .end local v0    # "color":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    .end local v1    # "colorView":Landroid/widget/ImageView;
    :goto_1
    return-object v0

    .line 2219
    .restart local v0    # "color":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    .restart local v1    # "colorView":Landroid/widget/ImageView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2225
    .end local v0    # "color":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    .end local v1    # "colorView":Landroid/widget/ImageView;
    :cond_1
    sget-object v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    goto :goto_1
.end method

.method public getFolderState()I
    .locals 2

    .prologue
    .line 772
    const/4 v0, 0x0

    .line 773
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v1, :cond_0

    .line 774
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getState()I

    move-result v0

    .line 776
    :cond_0
    return v0
.end method

.method public getHeader()Landroid/view/View;
    .locals 1

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1432
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->getHitRect(Landroid/graphics/Rect;)V

    .line 1437
    iget-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderClose:Z

    if-eqz v1, :cond_1

    .line 1438
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v0

    .line 1439
    .local v0, "screenHeight":I
    const/4 v1, 0x0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 1440
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v0, :cond_0

    .line 1441
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1446
    .end local v0    # "screenHeight":I
    :cond_0
    :goto_0
    return-void

    .line 1444
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method public getInfo()Lcom/android/launcher3/folder/FolderInfo;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    return-object v0
.end method

.method public getIntrinsicIconSize()I
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemsInReadingOrder()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2184
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    if-eqz v0, :cond_0

    .line 2185
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2186
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    new-instance v1, Lcom/android/launcher3/folder/view/FolderView$20;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/view/FolderView$20;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->iterateOverItems(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;

    .line 2194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 2206
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInReadingOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOutlineColor()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2741
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2742
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 2744
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    invoke-interface {v0, p1}, Lcom/android/launcher3/common/base/controller/ControllerBase;->getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v0

    return v0
.end method

.method public getQuickOptionFlags(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 5
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    const/4 v0, 0x0

    .line 1615
    if-nez p1, :cond_0

    .line 1636
    :goto_0
    return v0

    .line 1617
    :cond_0
    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v3}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .line 1618
    .local v0, "isHomeFolder":Z
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    .line 1619
    .local v1, "isHomeOnlyMode":Z
    const/4 v2, 0x0

    .line 1621
    .local v2, "optionFlags":I
    or-int/lit8 v2, v2, 0x1

    .line 1622
    if-eqz v0, :cond_2

    or-int/lit8 v2, v2, 0x2

    .line 1623
    :cond_2
    or-int/lit8 v2, v2, 0x20

    .line 1624
    or-int/lit8 v2, v2, 0x40

    .line 1625
    or-int/lit16 v2, v2, 0x80

    .line 1626
    or-int/lit16 v2, v2, 0x100

    .line 1627
    or-int/lit16 v2, v2, 0x200

    .line 1628
    or-int/lit16 v2, v2, 0x400

    .line 1629
    or-int/lit16 v2, v2, 0x4000

    .line 1630
    const v3, 0x8000

    or-int/2addr v2, v3

    .line 1631
    or-int/lit8 v2, v2, 0x10

    .line 1632
    if-nez v0, :cond_3

    or-int/lit8 v2, v2, 0x4

    .line 1633
    :cond_3
    if-nez v1, :cond_4

    if-nez v0, :cond_5

    :cond_4
    or-int/lit16 v2, v2, 0x1000

    .line 1634
    :cond_5
    if-nez v1, :cond_6

    if-nez v0, :cond_7

    :cond_6
    or-int/lit16 v2, v2, 0x2000

    :cond_7
    move v0, v2

    .line 1636
    goto :goto_0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 0

    .prologue
    .line 1427
    return-object p0
.end method

.method public getViewForInfo(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 2159
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    new-instance v1, Lcom/android/launcher3/folder/view/FolderView$19;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/folder/view/FolderView$19;-><init>(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->iterateOverItems(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hideAddButton(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 2460
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2461
    if-eqz p1, :cond_1

    .line 2462
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->animateDismiss(Landroid/view/View;Z)V

    .line 2470
    :cond_0
    :goto_0
    return-void

    .line 2464
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideHintPages()V
    .locals 1

    .prologue
    .line 2478
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->hideHintPages()V

    .line 2479
    return-void
.end method

.method public hideItem(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 2026
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->getViewForInfo(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v0

    .line 2027
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2028
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2030
    :cond_0
    return-void
.end method

.method public initBounceAnimation()V
    .locals 1

    .prologue
    .line 2714
    sget-object v0, Lcom/android/launcher3/folder/view/FolderView;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    if-eqz v0, :cond_0

    .line 2715
    sget-object v0, Lcom/android/launcher3/folder/view/FolderView;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->stop()V

    .line 2716
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/folder/view/FolderView;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    .line 2718
    :cond_0
    return-void
.end method

.method public isAppsAlphabeticViewType()Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2677
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v6, v5, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v8, -0x66

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    move v1, v3

    .line 2678
    .local v1, "isInApps":Z
    :goto_0
    const/4 v0, 0x0

    .line 2679
    .local v0, "isAlphabeticViewType":Z
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewTypeFromSharedPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v2

    .line 2680
    .local v2, "mViewType":Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    sget-object v5, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v2, v5, :cond_0

    .line 2681
    const/4 v0, 0x1

    .line 2683
    :cond_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_1
    return v3

    .end local v0    # "isAlphabeticViewType":Z
    .end local v1    # "isInApps":Z
    .end local v2    # "mViewType":Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    :cond_1
    move v1, v4

    .line 2677
    goto :goto_0

    .restart local v0    # "isAlphabeticViewType":Z
    .restart local v1    # "isInApps":Z
    .restart local v2    # "mViewType":Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    :cond_2
    move v3, v4

    .line 2683
    goto :goto_1
.end method

.method public isDeleteFolderOnDropCompleted()Z
    .locals 1

    .prologue
    .line 2706
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDeleteFolderOnDropCompleted:Z

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 1992
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDestroyed:Z

    return v0
.end method

.method public isDropEnabled(Z)Z
    .locals 1
    .param p1, "isDrop"    # Z

    .prologue
    .line 1038
    const/4 v0, 0x1

    return v0
.end method

.method public isEditingName()Z
    .locals 1

    .prologue
    .line 631
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mIsEditingName:Z

    return v0
.end method

.method public isFull()Z
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->isFull()Z

    move-result v0

    return v0
.end method

.method public isWhiteBg()Z
    .locals 2

    .prologue
    .line 2754
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundImageAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDrop()V
    .locals 1

    .prologue
    .line 1772
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    if-eqz v0, :cond_0

    .line 1773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemAddedBackToSelfViaIcon:Z

    .line 1775
    :cond_0
    return-void
.end method

.method public notifyFolderItemsChanged()V
    .locals 1

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2693
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    invoke-interface {v0}, Lcom/android/launcher3/common/base/controller/ControllerBase;->notifyControllerItemsChanged()V

    .line 2695
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 539
    iget v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 568
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 542
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->initBounceAnimation()V

    .line 544
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 545
    .local v5, "tag":Ljava/lang/Object;
    instance-of v6, v5, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_4

    .line 546
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v7, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 547
    .local v0, "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->isReorderAnimating()Z

    move-result v6

    if-nez v6, :cond_0

    .line 551
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v6}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 552
    check-cast p1, Lcom/android/launcher3/common/view/IconView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher3/common/view/IconView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0

    .line 554
    .restart local p1    # "v":Landroid/view/View;
    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6, p1}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    goto :goto_0

    .line 556
    .end local v0    # "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0f0069

    if-ne v6, v7, :cond_0

    .line 557
    new-instance v1, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v1}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 558
    .local v1, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const-string v6, "KEY_PICKER_MODE"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 559
    const-string v6, "KEY_FOLDER_ICON_VIEW"

    iget-object v7, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1, v6, v7}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 560
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v1}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 562
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 563
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v6

    if-eqz v6, :cond_5

    const v6, 0x7f080179

    .line 564
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 565
    .local v4, "screenID":Ljava/lang/String;
    :goto_1
    const v6, 0x7f080100

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 566
    .local v2, "eventID":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v6

    invoke-virtual {v6, v4, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 564
    .end local v2    # "eventID":Ljava/lang/String;
    .end local v4    # "screenID":Ljava/lang/String;
    :cond_5
    const v6, 0x7f080185

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public onClose(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "closeFolderAnim"    # Landroid/animation/Animator;

    .prologue
    .line 931
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/common/view/DragLayer;

    if-nez v0, :cond_0

    .line 959
    :goto_0
    return-void

    .line 935
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isEditingName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 936
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->dismissEditingName()V

    .line 939
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->initBounceAnimation()V

    .line 940
    if-eqz p1, :cond_2

    .line 941
    new-instance v0, Lcom/android/launcher3/folder/view/FolderView$14;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/view/FolderView$14;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 956
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    .line 957
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->onCloseComplete()V

    goto :goto_0
.end method

.method onCloseComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1944
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->clearFocus()V

    .line 1945
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->requestFocus()Z

    .line 1947
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->setCrosshairsVisibility(Z)V

    .line 1949
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mRearrangeOnClose:Z

    if-eqz v0, :cond_0

    .line 1950
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    .line 1951
    iput-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mRearrangeOnClose:Z

    .line 1953
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 1954
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderDeletion:Z

    if-nez v0, :cond_2

    .line 1955
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->replaceFolderWithFinalItem()V

    .line 1960
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mRestorePositionOnDrop:Z

    .line 1961
    iput-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderDeletion:Z

    .line 1962
    iput-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderClose:Z

    .line 1963
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->clearDragInfo()V

    .line 1964
    return-void

    .line 1956
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    if-eqz v0, :cond_1

    .line 1957
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mDeleteFolderOnDropCompleted:Z

    goto :goto_0
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->updateCellDimensions()V

    .line 591
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->setupFolderLayout()V

    .line 592
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->centerAboutIcon()V

    .line 593
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 3
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "dropTargetChanged"    # Z

    .prologue
    .line 1043
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mPrevTargetRank:I

    .line 1044
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1047
    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragView;->getDragRegionWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->xOffset:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollAreaOffset:I

    .line 1049
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v1, :cond_0

    .line 1051
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->allocateRankForNewItem(Z)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    .line 1054
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 1055
    .local v0, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1057
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getFolderBgView()Lcom/android/launcher3/folder/view/FolderBgView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1058
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getFolderBgView()Lcom/android/launcher3/folder/view/FolderBgView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderBgView;->onMoveInFolder()V

    .line 1060
    :cond_1
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 9
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "dropTargetChanged"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v4, -0x1

    .line 1146
    iget-boolean v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    if-ne v1, v6, :cond_0

    .line 1147
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 1148
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 1150
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1152
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1153
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1154
    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    if-eq v1, v4, :cond_1

    .line 1155
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->clearScrollHint()V

    .line 1156
    iput v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    .line 1159
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1161
    if-eqz p2, :cond_3

    iget-boolean v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v1, :cond_3

    .line 1162
    const/4 v5, 0x0

    .line 1163
    .local v5, "direction":I
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 1164
    .local v0, "dragView":Lcom/android/launcher3/common/drag/DragView;
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getFolderBgView()Lcom/android/launcher3/folder/view/FolderBgView;

    move-result-object v7

    .line 1165
    .local v7, "folderBgView":Lcom/android/launcher3/folder/view/FolderBgView;
    if-eqz v0, :cond_2

    if-eqz v7, :cond_2

    .line 1166
    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->getTranslationY()F

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->getRegistrationY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->getOffsetY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v8, v1

    .line 1167
    .local v8, "touchY":I
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v8, v1, :cond_4

    .line 1168
    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderBgView;->onMoveFromFolderTop()V

    .line 1169
    const/4 v5, 0x0

    .line 1176
    .end local v8    # "touchY":I
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_1
    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/SALogging;->insertMoveFromFolderLog(JZILcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 1179
    .end local v0    # "dragView":Lcom/android/launcher3/common/drag/DragView;
    .end local v5    # "direction":I
    .end local v7    # "folderBgView":Lcom/android/launcher3/folder/view/FolderBgView;
    :cond_3
    return-void

    .line 1171
    .restart local v0    # "dragView":Lcom/android/launcher3/common/drag/DragView;
    .restart local v5    # "direction":I
    .restart local v7    # "folderBgView":Lcom/android/launcher3/folder/view/FolderBgView;
    .restart local v8    # "touchY":I
    :cond_4
    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderBgView;->onMoveFromFolderBottom()V

    .line 1172
    const/4 v5, 0x1

    goto :goto_0

    .line 1176
    .end local v8    # "touchY":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 1
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 1064
    const/16 v0, 0xfa

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/view/FolderView;->onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)V

    .line 1065
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 23
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->rankOnCurrentPage(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1197
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderView;->getTargetRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;[F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    .line 1200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-interface {v2, v3}, Lcom/android/launcher3/util/alarm/OnAlarmListener;->onAlarm(Lcom/android/launcher3/util/alarm/Alarm;)V

    .line 1202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1205
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->completePendingPageChanges()V

    .line 1210
    const/16 v20, 0x0

    .line 1211
    .local v20, "needClone":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v2, :cond_e

    .line 1212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    const/16 v19, 0x1

    .line 1213
    .local v19, "isInApps":Z
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_4

    .line 1215
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    .line 1216
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    .line 1217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 1218
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1219
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1, v3}, Lcom/android/launcher3/folder/view/FolderView;->onDropExtraObjects(Ljava/util/ArrayList;ZZ)V

    .line 1221
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v2, :cond_2

    .line 1222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    .line 1304
    .end local v19    # "isInApps":Z
    :cond_2
    :goto_1
    return-void

    .line 1212
    :cond_3
    const/16 v19, 0x0

    goto :goto_0

    .line 1227
    .restart local v19    # "isInApps":Z
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1228
    .local v17, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v2}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v15

    .line 1229
    .local v15, "dragSourceType":I
    if-eqz v19, :cond_5

    if-eqz v15, :cond_6

    const/4 v2, 0x2

    if-eq v15, v2, :cond_6

    :cond_5
    if-nez v19, :cond_7

    const/4 v2, 0x1

    if-eq v15, v2, :cond_6

    const/4 v2, 0x4

    if-ne v15, v2, :cond_7

    :cond_6
    const/16 v20, 0x1

    .line 1232
    :goto_2
    if-eqz v20, :cond_8

    .line 1233
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 1241
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not supported item type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1229
    :cond_7
    const/16 v20, 0x0

    goto :goto_2

    .line 1235
    :pswitch_0
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v17

    .line 1244
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->createNewView(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v4

    .line 1245
    .local v4, "currentDragView":Landroid/view/View;
    const/16 v16, 0x1

    .line 1255
    .end local v15    # "dragSourceType":I
    .end local v19    # "isInApps":Z
    .local v16, "hasMovedLayout":Z
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    move-object/from16 v0, v17

    invoke-virtual {v2, v4, v0, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;I)V

    .line 1257
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->hasDrawn()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1259
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getScaleX()F

    move-result v21

    .line 1260
    .local v21, "scaleX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getScaleY()F

    move-result v22

    .line 1261
    .local v22, "scaleY":F
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->setScaleX(F)V

    .line 1262
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->setScaleY(F)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v5, 0x12c

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    .line 1265
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->setScaleX(F)V

    .line 1266
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->setScaleY(F)V

    .line 1272
    .end local v21    # "scaleX":F
    .end local v22    # "scaleY":F
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v2, :cond_a

    .line 1273
    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0800a9

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    .line 1276
    :cond_a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 1277
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    .line 1280
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1282
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    .line 1284
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1285
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    .line 1287
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    .line 1288
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1, v3}, Lcom/android/launcher3/folder/view/FolderView;->onDropExtraObjects(Ljava/util/ArrayList;ZZ)V

    .line 1291
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_c

    .line 1293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    const/4 v3, 0x4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/launcher3/folder/FolderInfo;->setOption(IZLandroid/content/Context;)V

    .line 1296
    :cond_c
    if-eqz v16, :cond_d

    .line 1297
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v8, v2, Lcom/android/launcher3/folder/FolderInfo;->id:J

    const-wide/16 v10, 0x0

    move-object/from16 v0, v17

    iget v12, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    move-object/from16 v0, v17

    iget v13, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object/from16 v7, v17

    invoke-interface/range {v6 .. v14}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 1298
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->updateItemLocationsInDatabaseBatch()V

    .line 1301
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v2, :cond_2

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    goto/16 :goto_1

    .line 1238
    .end local v4    # "currentDragView":Landroid/view/View;
    .end local v16    # "hasMovedLayout":Z
    .restart local v15    # "dragSourceType":I
    .restart local v19    # "isInApps":Z
    :pswitch_1
    new-instance v18, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;)V

    .end local v17    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .local v18, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v17, v18

    .line 1239
    .end local v18    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v17    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    goto/16 :goto_3

    .line 1247
    .end local v15    # "dragSourceType":I
    .end local v17    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v19    # "isInApps":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v17, v0

    .line 1248
    .restart local v17    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    .line 1249
    .restart local v4    # "currentDragView":Landroid/view/View;
    const/16 v16, 0x0

    .line 1251
    .restart local v16    # "hasMovedLayout":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget v2, v2, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v3

    div-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v5

    div-int/2addr v3, v5

    if-eq v2, v3, :cond_9

    .line 1252
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v3, v5, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertFolderMoveAppLogs(Lcom/android/launcher3/Launcher;Z)V

    goto/16 :goto_4

    :cond_f
    const/4 v2, 0x0

    goto :goto_6

    .line 1268
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1269
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 1233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 12
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p3, "success"    # Z

    .prologue
    .line 1528
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v8, :cond_0

    .line 1529
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    .line 1532
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->isNeedToMakeClone(Landroid/view/View;)Z

    move-result v4

    .line 1533
    .local v4, "needToMakeClone":Z
    if-eqz p3, :cond_9

    if-nez v4, :cond_9

    .line 1534
    iget-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mDeleteFolderOnDropCompleted:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemAddedBackToSelfViaIcon:Z

    if-nez v8, :cond_1

    if-eq p1, p0, :cond_1

    .line 1535
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->replaceFolderWithFinalItem()V

    .line 1566
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1567
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragManager;->enableQuickOptionView()V

    .line 1568
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->startBounceAnimation()V

    .line 1571
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    .line 1573
    if-eq p1, p0, :cond_5

    .line 1574
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v8}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-boolean v8, v8, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v8, :cond_5

    .line 1575
    :cond_3
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v8}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1576
    if-nez p3, :cond_4

    .line 1577
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderDeletion:Z

    .line 1579
    :cond_4
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v8}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1580
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->completeDragExit()V

    .line 1584
    :cond_5
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mDeleteFolderOnDropCompleted:Z

    .line 1585
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemAddedBackToSelfViaIcon:Z

    .line 1586
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1587
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    .line 1588
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    .line 1592
    iget-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mDestroyed:Z

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/FolderInfo;->isAlphabeticalOrder()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1593
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateItemLocationsInDatabaseBatch()V

    .line 1597
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v8

    iget-object v9, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v9}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v9

    if-gt v8, v9, :cond_7

    .line 1599
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    const/4 v9, 0x4

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/launcher3/folder/FolderInfo;->setOption(IZLandroid/content/Context;)V

    .line 1602
    :cond_7
    if-eqz p3, :cond_8

    .line 1603
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v8, :cond_8

    .line 1604
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/folderlock/FolderLock;->applyFolderNameChanged()V

    .line 1605
    iget-object v8, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    check-cast v8, Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    .line 1606
    .local v1, "folder":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v8, v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v8, :cond_8

    if-eq p1, p0, :cond_8

    .line 1607
    iget-object v9, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    iget-object v8, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v9, v8}, Lcom/android/launcher3/folder/folderlock/FolderLock;->showItemDropedConfirmDialog(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1611
    .end local v1    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    :cond_8
    return-void

    .line 1539
    :cond_9
    iget-object v3, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1540
    .local v3, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_c

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    .line 1542
    .local v2, "icon":Landroid/view/View;
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v7

    .line 1544
    .local v7, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v8, v9, :cond_a

    .line 1545
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    iput v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 1548
    :cond_a
    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    invoke-virtual {v7, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1549
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v7, v9}, Lcom/android/launcher3/folder/view/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;I)V

    .line 1550
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 1552
    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iput v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    .line 1554
    if-nez v4, :cond_b

    .line 1555
    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iget-object v9, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v9}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v9

    div-int v6, v8, v9

    .line 1556
    .local v6, "targetPageIndex":I
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v8, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v5

    .line 1557
    .local v5, "page":Landroid/view/View;
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    .line 1558
    .local v0, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    iget-object v8, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v2, v9, v5}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    .line 1562
    .end local v0    # "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    .end local v5    # "page":Landroid/view/View;
    .end local v6    # "targetPageIndex":I
    :cond_b
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    .line 1563
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v8, v3}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1564
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    goto/16 :goto_0

    .line 1540
    .end local v2    # "icon":Landroid/view/View;
    .end local v7    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_c
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    .line 1541
    invoke-virtual {v8, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->createNewView(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v2

    goto :goto_1
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 704
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 705
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->dismissEditingName()V

    .line 706
    const/4 v0, 0x1

    .line 708
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onExtraObjectDragged(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1641
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    if-eqz p1, :cond_4

    .line 1642
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1643
    .local v7, "sortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mDescComparator:Ljava/util/Comparator;

    invoke-static {v7, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1645
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnRemove:Z

    .line 1646
    const/4 v1, 0x0

    .line 1647
    .local v1, "count":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 1648
    .local v2, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v12, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v12}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v8

    .line 1649
    .local v8, "sourceView":Landroid/view/View;
    iget-object v3, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1650
    .local v3, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v8, :cond_0

    .line 1651
    iget v5, v3, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 1652
    .local v5, "removedAppRank":I
    iget-object v12, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v12}, Lcom/android/launcher3/folder/FolderInfo;->getItemCount()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    .line 1653
    .local v4, "lastRank":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v1, v12, :cond_1

    const/4 v6, 0x1

    .line 1654
    .local v6, "reorderImmediately":Z
    :goto_1
    iget-object v12, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v12, v8}, Lcom/android/launcher3/folder/view/FolderPagedView;->removeItem(Landroid/view/View;)V

    .line 1655
    iget-object v12, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v12, v3}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1656
    iget-object v12, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v12, v5, v4, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->realTimeReorder(IIZ)V

    .line 1658
    .end local v4    # "lastRank":I
    .end local v5    # "removedAppRank":I
    .end local v6    # "reorderImmediately":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1659
    goto :goto_0

    .line 1653
    .restart local v4    # "lastRank":I
    .restart local v5    # "removedAppRank":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 1660
    .end local v2    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v4    # "lastRank":I
    .end local v5    # "removedAppRank":I
    .end local v8    # "sourceView":Landroid/view/View;
    :cond_2
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnRemove:Z

    .line 1662
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v10

    .line 1663
    .local v10, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget v11, v11, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iget v12, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    if-eq v11, v12, :cond_3

    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget v11, v11, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 1664
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_3

    .line 1665
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v4, v11, -0x1

    .line 1666
    .restart local v4    # "lastRank":I
    iget v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    if-le v11, v4, :cond_5

    move v0, v4

    .line 1667
    .local v0, "adjustedRank":I
    :goto_2
    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget v11, v11, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1668
    .local v9, "targetView":Landroid/view/View;
    invoke-virtual {v10, v0, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1669
    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v12, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget v12, v12, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v0, v13}, Lcom/android/launcher3/folder/view/FolderPagedView;->realTimeReorder(IIZ)V

    .line 1671
    .end local v0    # "adjustedRank":I
    .end local v4    # "lastRank":I
    .end local v9    # "targetView":Landroid/view/View;
    :cond_3
    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v10, v12}, Lcom/android/launcher3/folder/view/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;I)V

    .line 1673
    .end local v1    # "count":I
    .end local v7    # "sortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v10    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4
    return-void

    .line 1666
    .restart local v1    # "count":I
    .restart local v4    # "lastRank":I
    .restart local v7    # "sortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .restart local v10    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_5
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    goto :goto_2
.end method

.method public onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "target"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "succeedDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .local p3, "failedDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    const/4 v2, 0x1

    .line 1678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1679
    .local v0, "dragObjectsToRestore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->isNeedToMakeClone(Landroid/view/View;)Z

    move-result v1

    .line 1680
    .local v1, "needToMakeClone":Z
    if-eqz p2, :cond_0

    .line 1681
    if-eqz v1, :cond_2

    .line 1682
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1689
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 1690
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1692
    :cond_1
    if-nez v1, :cond_3

    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->restoreDragObjectsPosition(Ljava/util/ArrayList;Z)V

    .line 1693
    return-void

    .line 1684
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 1685
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->replaceFolderWithFinalItem()V

    goto :goto_0

    .line 1692
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 327
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 329
    const v3, 0x7f0f005a

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderContainer:Landroid/view/View;

    .line 330
    const v3, 0x7f0f0063

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mContentContainer:Landroid/view/View;

    .line 331
    const v3, 0x7f0f0060

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/view/FolderPagedView;

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    .line 332
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->setFolder(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 334
    const v3, 0x7f0f005d

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/view/FolderNameEditText;

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    .line 335
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    new-instance v4, Lcom/android/launcher3/folder/view/FolderView$3;

    invoke-direct {v4, p0}, Lcom/android/launcher3/folder/view/FolderView$3;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 351
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    new-instance v4, Lcom/android/launcher3/folder/view/FolderView$4;

    invoke-direct {v4, p0}, Lcom/android/launcher3/folder/view/FolderView$4;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 359
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    new-instance v4, Lcom/android/launcher3/folder/view/FolderView$5;

    invoke-direct {v4, p0}, Lcom/android/launcher3/folder/view/FolderView$5;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    new-instance v4, Lcom/android/launcher3/folder/view/FolderView$6;

    invoke-direct {v4, p0}, Lcom/android/launcher3/folder/view/FolderView$6;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 388
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    new-instance v4, Lcom/android/launcher3/folder/view/FolderView$7;

    invoke-direct {v4, p0}, Lcom/android/launcher3/folder/view/FolderView$7;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setOnEventListener(Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;)V

    .line 415
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 416
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v3, v6}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setSelectAllOnFocus(Z)V

    .line 417
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v3, v6}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setCursorVisible(Z)V

    .line 418
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setFocusableInTouchMode(Z)V

    .line 419
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->getInputType()I

    move-result v4

    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    or-int/lit16 v4, v4, 0x2000

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setInputType(I)V

    .line 421
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x1e

    invoke-static {v4, v5}, Lcom/android/launcher3/Utilities;->getEditTextMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 424
    const v3, 0x7f0f005e

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    .line 425
    const v3, 0x7f0f0061

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    .line 427
    new-instance v1, Lcom/android/launcher3/folder/view/FolderView$8;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/view/FolderView$8;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 442
    .local v1, "optionClickListener":Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    new-instance v2, Lcom/android/launcher3/folder/view/FolderView$9;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/view/FolderView$9;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 460
    .local v2, "optionTouchListener":Landroid/view/View$OnTouchListener;
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 463
    const v3, 0x7f0f005b

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeader:Landroid/view/View;

    .line 464
    const v3, 0x7f0f0062

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderBottomLine:Landroid/view/View;

    .line 465
    const v3, 0x7f0f0065

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFooter:Landroid/view/View;

    .line 466
    const v3, 0x7f0f0067

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainer:Landroid/view/View;

    .line 467
    const v3, 0x7f0f0066

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorder:Landroid/widget/ImageView;

    .line 472
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->setupFolderLayout()V

    .line 474
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->createAddButton()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    .line 475
    invoke-virtual {p0, v6}, Lcom/android/launcher3/folder/view/FolderView;->showAddButton(Z)V

    .line 478
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    .line 479
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    sget-object v5, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const v3, 0x7f0f006c

    .line 480
    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 479
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    sget-object v5, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_2:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const v3, 0x7f0f006d

    .line 482
    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 481
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    sget-object v5, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_3:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const v3, 0x7f0f006e

    .line 484
    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 483
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    sget-object v5, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_4:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const v3, 0x7f0f006f

    .line 486
    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 485
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    sget-object v5, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const v3, 0x7f0f0070

    .line 488
    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 487
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 490
    .local v0, "colorView":Landroid/widget/ImageView;
    new-instance v4, Lcom/android/launcher3/folder/view/FolderView$10;

    invoke-direct {v4, p0}, Lcom/android/launcher3/folder/view/FolderView$10;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 508
    .end local v0    # "colorView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1004
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    .line 1008
    :goto_0
    return-void

    .line 1007
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2536
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    if-nez v4, :cond_1

    .line 2572
    :cond_0
    :goto_0
    return v2

    .line 2540
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v4, :cond_0

    .line 2541
    sget-object v4, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v4}, Lcom/android/launcher3/util/Talk;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    if-eqz v4, :cond_0

    .line 2543
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2545
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2558
    :pswitch_1
    invoke-direct {p0, p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->isEventOverFolder(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2560
    .local v1, "isOverFolderOrDropBar":Z
    if-nez v1, :cond_3

    iget-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mHoverPointClosesFolder:Z

    if-nez v4, :cond_3

    .line 2561
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isEditingName()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/view/FolderView;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 2562
    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHoverPointClosesFolder:Z

    move v2, v3

    .line 2563
    goto :goto_0

    .line 2547
    .end local v1    # "isOverFolderOrDropBar":Z
    :pswitch_2
    invoke-direct {p0, p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->isEventOverFolder(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2549
    .restart local v1    # "isOverFolderOrDropBar":Z
    if-nez v1, :cond_2

    .line 2550
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isEditingName()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/view/FolderView;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 2551
    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHoverPointClosesFolder:Z

    move v2, v3

    .line 2552
    goto :goto_0

    .line 2554
    :cond_2
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mHoverPointClosesFolder:Z

    goto :goto_0

    .line 2564
    :cond_3
    if-nez v1, :cond_4

    move v2, v3

    .line 2565
    goto :goto_0

    .line 2567
    :cond_4
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mHoverPointClosesFolder:Z

    goto :goto_0

    .line 2545
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 2590
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2591
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/view/FolderView;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2595
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onItemAdded(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 10
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v9, 0x1

    .line 2043
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    if-eqz v0, :cond_0

    .line 2059
    :goto_0
    return-void

    .line 2047
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderInfo;->isAlphabeticalOrder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2048
    const/4 v0, -0x1

    iput v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 2049
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    iget v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v7, p1, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iget v8, p1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object v1, p1

    invoke-interface/range {v0 .. v8}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 2050
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderInfo;->sortContents()V

    .line 2051
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->rebindItems(Ljava/util/ArrayList;)V

    .line 2056
    :goto_1
    iput-boolean v9, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 2058
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateContentFocus()V

    goto :goto_0

    .line 2053
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v1, v9}, Lcom/android/launcher3/folder/view/FolderPagedView;->allocateRankForNewItem(Z)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->createAndAddViewForRank(Lcom/android/launcher3/common/base/item/IconInfo;I)Landroid/view/View;

    .line 2054
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    iget v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v7, p1, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iget v8, p1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object v1, p1

    invoke-interface/range {v0 .. v8}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    goto :goto_1
.end method

.method public onItemRemoved(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    const/4 v2, 0x1

    .line 2088
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 2091
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-eq p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnRemove:Z

    if-eqz v1, :cond_1

    .line 2118
    :cond_0
    :goto_0
    return-void

    .line 2095
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->getViewForInfo(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v0

    .line 2096
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->removeItem(Landroid/view/View;)V

    .line 2097
    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    if-ne v1, v2, :cond_5

    .line 2098
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mRearrangeOnClose:Z

    .line 2102
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v1

    if-gt v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 2103
    invoke-virtual {v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2104
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-boolean v1, v1, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v1, :cond_6

    .line 2105
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->closeFolderIfLackItem()V

    .line 2111
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 2112
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, p1}, Lcom/android/launcher3/Utilities;->isAppEnabled(Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2113
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeCheckedApp(Landroid/view/View;)V

    .line 2117
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateContentFocus()V

    goto :goto_0

    .line 2100
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    goto :goto_1

    .line 2107
    :cond_6
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->replaceFolderWithFinalItem()V

    goto :goto_2
.end method

.method public onItemsAdded(Ljava/util/ArrayList;)V
    .locals 9
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
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    .line 2063
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    if-eqz v0, :cond_0

    .line 2084
    :goto_0
    return-void

    .line 2067
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderInfo;->isAlphabeticalOrder()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2068
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2069
    .local v7, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    const/4 v1, -0x1

    iput v1, v7, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    goto :goto_1

    .line 2071
    .end local v7    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItems(Ljava/util/ArrayList;JJ)V

    .line 2072
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderInfo;->sortContents()V

    .line 2073
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->rebindItems(Ljava/util/ArrayList;)V

    .line 2074
    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 2083
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateContentFocus()V

    goto :goto_0

    .line 2076
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2077
    .local v6, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2, v8}, Lcom/android/launcher3/folder/view/FolderPagedView;->allocateRankForNewItem(Z)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->createAndAddViewForRank(Lcom/android/launcher3/common/base/item/IconInfo;I)Landroid/view/View;

    .line 2078
    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    goto :goto_3

    .line 2080
    .end local v6    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItems(Ljava/util/ArrayList;JJ)V

    goto :goto_2
.end method

.method public onItemsRemoved(Ljava/util/ArrayList;)V
    .locals 6
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
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const/4 v5, 0x1

    .line 2124
    iget-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnRemove:Z

    if-eqz v3, :cond_0

    .line 2156
    :goto_0
    return-void

    .line 2128
    :cond_0
    const/4 v1, 0x0

    .line 2129
    .local v1, "rearrange":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2130
    .local v0, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-eq v0, v4, :cond_1

    .line 2133
    iput-boolean v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 2134
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->getViewForInfo(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v2

    .line 2135
    .local v2, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->removeItem(Landroid/view/View;)V

    .line 2136
    const/4 v1, 0x1

    .line 2137
    goto :goto_1

    .line 2139
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    if-eqz v1, :cond_4

    .line 2140
    iget v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    if-ne v3, v5, :cond_5

    .line 2141
    iput-boolean v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mRearrangeOnClose:Z

    .line 2145
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v3

    if-gt v3, v5, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 2146
    invoke-virtual {v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2147
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-boolean v3, v3, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v3, :cond_6

    .line 2148
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/controller/FolderController;->closeFolderIfLackItem()V

    .line 2155
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateContentFocus()V

    goto :goto_0

    .line 2143
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    goto :goto_2

    .line 2150
    :cond_6
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->replaceFolderWithFinalItem()V

    goto :goto_3
.end method

.method public onLockedFolderOpenStateUpdated(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "opened"    # Ljava/lang/Boolean;

    .prologue
    .line 2180
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateContentFocus()V

    .line 2181
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 571
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 586
    :cond_0
    :goto_0
    return v1

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderNameEditText;->clearFocus()V

    .line 576
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    instance-of v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;

    if-eqz v0, :cond_4

    .line 577
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    check-cast v0, Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewBinder()Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->isAppsLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v0, v1

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/view/FolderView;->beginDrag(Landroid/view/View;Z)Z

    move-result v1

    goto :goto_0

    .line 581
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 586
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1850
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getContentAreaWidth()I

    move-result v7

    .line 1851
    .local v7, "contentWidth":I
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getContentAreaHeight()I

    move-result v6

    .line 1852
    .local v6, "contentHeight":I
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->calculateBorderWidth()I

    move-result v2

    .line 1853
    .local v2, "borderWidth":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    add-int v4, v14, v6

    .line 1854
    .local v4, "broderHeight":I
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->calculateFolderWidth()I

    move-result v12

    .line 1855
    .local v12, "maxWidth":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/launcher3/folder/view/FolderView;->calculateFolderHeight(I)I

    move-result v10

    .line 1862
    .local v10, "maxHeight":I
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v6, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1863
    .local v5, "contentAreaHeightSpec":I
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v2, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1864
    .local v3, "borderWidthSpec":I
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1865
    .local v1, "borderHeightSpec":I
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v12, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1866
    .local v13, "maxWidthSpec":I
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1868
    .local v11, "maxHeightSpec":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderContainer:Landroid/view/View;

    invoke-virtual {v14, v13, v11}, Landroid/view/View;->measure(II)V

    .line 1869
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v14, v12, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->setFixedSize(II)V

    .line 1870
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mContentContainer:Landroid/view/View;

    invoke-virtual {v14, v13, v5}, Landroid/view/View;->measure(II)V

    .line 1872
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mBorder:Landroid/widget/ImageView;

    invoke-virtual {v14, v3, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 1873
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mHeader:Landroid/view/View;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v14, v3, v15}, Landroid/view/View;->measure(II)V

    .line 1874
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mFooter:Landroid/view/View;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/folder/view/FolderView;->mFooterHeight:I

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v14, v3, v15}, Landroid/view/View;->measure(II)V

    .line 1875
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainer:Landroid/view/View;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerHeight:I

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/view/View;->measure(II)V

    .line 1877
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->calculateFolderWidth()I

    move-result v9

    .line 1878
    .local v9, "folderWidth":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/launcher3/folder/view/FolderView;->calculateFolderHeight(I)I

    move-result v8

    .line 1879
    .local v8, "folderHeight":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8}, Lcom/android/launcher3/folder/view/FolderView;->setMeasuredDimension(II)V

    .line 1881
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mBorderWidth:I

    .line 1882
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mBorderHeight:I

    .line 1883
    return-void
.end method

.method public onOpen(Landroid/animation/Animator;)V
    .locals 10
    .param p1, "openFolderAnim"    # Landroid/animation/Animator;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 866
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/common/view/DragLayer;

    if-nez v5, :cond_0

    .line 928
    :goto_0
    return-void

    .line 870
    :cond_0
    const-string v5, "Launcher.Folder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onOpen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPage()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/launcher3/folder/view/FolderPagedView;->setActiveMarker(I)V

    .line 872
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->completePendingPageChanges()V

    .line 873
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->updateCellDimensions()V

    .line 874
    iget-boolean v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    if-nez v5, :cond_1

    .line 876
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/folder/view/FolderPagedView;->snapToPageImmediately(I)V

    .line 879
    :cond_1
    if-nez p1, :cond_5

    move v5, v6

    :goto_1
    invoke-direct {p0, v5}, Lcom/android/launcher3/folder/view/FolderView;->prepareReveal(Z)V

    .line 880
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->setupFolderLayout()V

    .line 881
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->centerAboutIcon()V

    .line 883
    if-eqz p1, :cond_6

    .line 884
    new-instance v5, Lcom/android/launcher3/folder/view/FolderView$13;

    invoke-direct {v5, p0}, Lcom/android/launcher3/folder/view/FolderView$13;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {p1, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 904
    :goto_2
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 905
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragManager;->forceTouchMove()V

    .line 908
    :cond_2
    iput-boolean v7, p0, Lcom/android/launcher3/folder/view/FolderView;->mNeedToShowCursor:Z

    .line 909
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 910
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setEnabled(Z)V

    .line 911
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setVisibility(I)V

    .line 912
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 914
    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->verifyVisibleHighResIcons(I)V

    .line 915
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/controller/FolderController;->getSearchedAppInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v2

    .line 916
    .local v2, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v2, :cond_4

    .line 917
    invoke-virtual {p0, v7}, Lcom/android/launcher3/folder/view/FolderView;->hideAddButton(Z)V

    .line 918
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->initBounceAnimation()V

    .line 919
    iget v5, v2, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v6

    div-int v3, v5, v6

    .line 920
    .local v3, "page":I
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->snapToPageImmediately(I)V

    .line 921
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    .line 922
    .local v1, "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    .line 923
    .local v0, "container":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    iget v5, v2, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->getGridCountX()I

    move-result v6

    rem-int/2addr v5, v6

    iget v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iget-object v7, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v7

    mul-int/2addr v7, v3

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderPagedView;->getGridCountX()I

    move-result v7

    div-int/2addr v6, v7

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    .line 924
    .local v4, "view":Landroid/view/View;
    invoke-direct {p0, v4}, Lcom/android/launcher3/folder/view/FolderView;->startBounceAnimationForSearchedApp(Landroid/view/View;)V

    .line 925
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/controller/FolderController;->setSearchedAppInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 927
    .end local v0    # "container":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v1    # "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v3    # "page":I
    .end local v4    # "view":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->setFolderContentColor()V

    goto/16 :goto_0

    .end local v2    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_5
    move v5, v7

    .line 879
    goto/16 :goto_1

    .line 899
    :cond_6
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    .line 900
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->setFocusOnFirstChild()V

    goto/16 :goto_2
.end method

.method public onOrderingChanged(Z)V
    .locals 2
    .param p1, "alphabeticalOrder"    # Z

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->rebindItems(Ljava/util/ArrayList;)V

    .line 2175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 2176
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1013
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    .line 1015
    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->sendAccessibilityEvent(I)V

    .line 1020
    :goto_0
    return-void

    .line 1019
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 2170
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 738
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 739
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/view/FolderView;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    :cond_0
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 717
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 719
    if-eqz p1, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    new-instance v1, Lcom/android/launcher3/folder/view/FolderView$11;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/view/FolderView$11;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->post(Ljava/lang/Runnable;)Z

    .line 730
    :cond_0
    return-void
.end method

.method public rearrangeChildren()V
    .locals 1

    .prologue
    .line 1889
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren(I)V

    .line 1890
    return-void
.end method

.method public rearrangeChildren(I)V
    .locals 3
    .param p1, "itemCount"    # I

    .prologue
    .line 1899
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    .line 1900
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;I)V

    .line 1901
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 1902
    return-void
.end method

.method public setBorderAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 2710
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorder:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2711
    return-void
.end method

.method public setCrosshairsVisibility(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 2482
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->setCrosshairsVisibilityChilds(I)V

    .line 2483
    return-void

    .line 2482
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setDragInProgress(Z)V
    .locals 0
    .param p1, "drag"    # Z

    .prologue
    .line 2702
    iput-boolean p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    .line 2703
    return-void
.end method

.method public setDragMgr(Lcom/android/launcher3/common/drag/DragManager;)V
    .locals 0
    .param p1, "dragMgr"    # Lcom/android/launcher3/common/drag/DragManager;

    .prologue
    .line 751
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 752
    return-void
.end method

.method public setFolderContentColor()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 962
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getOutlineColor()I

    move-result v1

    .line 963
    .local v1, "bgColor":I
    new-instance v2, Landroid/graphics/LightingColorFilter;

    invoke-direct {v2, v1, v5}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 964
    .local v2, "filter":Landroid/graphics/ColorFilter;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isWhiteBg()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 965
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorder:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 966
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 971
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setTextColor(I)V

    .line 972
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    const v4, -0x70000001

    and-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setHintTextColor(I)V

    .line 973
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderBottomLine:Landroid/view/View;

    const v4, 0x4dffffff    # 5.3687088E8f

    and-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 974
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->onChangeFolderIconTextColor()V

    .line 975
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 976
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    const v4, 0x7f0f0077

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 977
    .local v0, "addButtonText":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 979
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v5

    if-eqz v3, :cond_0

    .line 980
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isWhiteBg()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 981
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 988
    .end local v0    # "addButtonText":Landroid/widget/TextView;
    :cond_0
    :goto_1
    return-void

    .line 968
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorder:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 969
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0

    .line 983
    .restart local v0    # "addButtonText":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1
.end method

.method public setFolderIcon(Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 0
    .param p1, "icon"    # Lcom/android/launcher3/folder/view/FolderIconView;

    .prologue
    .line 755
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 756
    return-void
.end method

.method public setMultiSelectManager(Lcom/android/launcher3/common/multiselect/MultiSelectManager;)V
    .locals 0
    .param p1, "multiSelectManager"    # Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 748
    return-void
.end method

.method public setSuppressFolderCloseOnce()V
    .locals 2

    .prologue
    .line 2687
    const-string v0, "Launcher.Folder"

    const-string v1, "setSuppressFolderCloseOnce"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderClose:Z

    .line 2689
    return-void
.end method

.method public setSuppressOnAdd(Z)V
    .locals 0
    .param p1, "supressOnAdd"    # Z

    .prologue
    .line 2758
    iput-boolean p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    .line 2759
    return-void
.end method

.method public showAddButton(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 2446
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2447
    if-eqz p1, :cond_1

    .line 2448
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->animateAppear(Landroid/view/View;)V

    .line 2456
    :cond_0
    :goto_0
    return-void

    .line 2450
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showHintPages()V
    .locals 3

    .prologue
    .line 2473
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mPageSpacingOnDrag:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->setHintPageWidth(I)V

    .line 2474
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->showHintPages()V

    .line 2475
    return-void
.end method

.method public showItem(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 2033
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->getViewForInfo(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v0

    .line 2034
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2035
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2037
    :cond_0
    return-void
.end method

.method public startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;Z)V
    .locals 1
    .param p1, "cellInfo"    # Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    .param p2, "allowQuickOption"    # Z

    .prologue
    .line 627
    iget-object v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/folder/view/FolderView;->beginDrag(Landroid/view/View;Z)Z

    .line 628
    return-void
.end method

.method public startEditingFolderName()V
    .locals 5

    .prologue
    .line 635
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 636
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mIsEditingName:Z

    .line 638
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 639
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f080179

    .line 640
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 641
    .local v2, "screenID":Ljava/lang/String;
    :goto_0
    const v3, 0x7f080109

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "eventID":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    return-void

    .line 640
    .end local v0    # "eventID":Ljava/lang/String;
    .end local v2    # "screenID":Ljava/lang/String;
    :cond_0
    const v3, 0x7f080185

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public toggleColorPicker()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2412
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mNeedToShowCursor:Z

    .line 2413
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2414
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setEnabled(Z)V

    .line 2415
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->animateAppear(Landroid/view/View;)V

    .line 2416
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->animateDismiss(Landroid/view/View;Z)V

    .line 2422
    :goto_0
    return-void

    .line 2418
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setEnabled(Z)V

    .line 2419
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->animateDismiss(Landroid/view/View;Z)V

    .line 2420
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->animateAppear(Landroid/view/View;)V

    goto :goto_0
.end method

.method public updateContentFocus()V
    .locals 4

    .prologue
    .line 1998
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->getFirstItem()Landroid/view/View;

    move-result-object v0

    .line 1999
    .local v0, "firstChild":Landroid/view/View;
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v1

    .line 2000
    .local v1, "lastChild":Landroid/view/View;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 2001
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setNextFocusDownId(I)V

    .line 2002
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setNextFocusDownId(I)V

    .line 2003
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_1

    .line 2004
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setNextFocusLeftId(I)V

    .line 2008
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2009
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 2010
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 2011
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 2020
    :cond_0
    :goto_1
    return-void

    .line 2006
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setNextFocusRightId(I)V

    goto :goto_0

    .line 2014
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2015
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setNextFocusDownId(I)V

    .line 2016
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setNextFocusDownId(I)V

    .line 2017
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderNameEditText;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusDownId(I)V

    goto :goto_1
.end method

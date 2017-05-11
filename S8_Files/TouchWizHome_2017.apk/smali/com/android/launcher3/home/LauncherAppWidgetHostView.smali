.class public Lcom/android/launcher3/home/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;,
        Lcom/android/launcher3/home/LauncherAppWidgetHostView$WeatherCityAddObserver;,
        Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;
    }
.end annotation


# static fields
.field private static final ACCU_WEATHERINFO_URI:Landroid/net/Uri;

.field private static final ALPHA_DURATION:I = 0xfa

.field private static final EASY_CONTACTS_APPWIDGET_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.widgetapp.easymodecontactswidget"

.field public static final GOOGLE_SEARCH_APP_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field public static final PRV_HOSTVIEW:Ljava/lang/String; = "previous_hostView"

.field private static final SWIPE_MIN_DISTANCE:I = 0x3c

.field private static final TAG:Ljava/lang/String;

.field private static final TRANSLATION_DURATION:I = 0xfa

.field public static final WEATHER_APPWIDGET_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.daemonapp"

.field public static final WETHER_SETTING_INFO_URI:Landroid/net/Uri;


# instance fields
.field private mAnimationSet:Landroid/animation/AnimatorSet;

.field private mContext:Landroid/content/Context;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mHasScrollView:Z

.field private mHierarchyChangeListener:Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;

.field private mIndicatorHeight:I

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsAllowSwipe:Z

.field public mIsGSB:Z

.field private mIsScrollingDown:Z

.field private mIsScrollingUp:Z

.field public mIsSetFlingOption:Z

.field private mIsWeatherCityOneMore:Z

.field private mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

.field private mPreviousOrientation:I

.field mPrvHostView:Landroid/widget/FrameLayout;

.field private mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private final mSineInOut80:Landroid/view/animation/Interpolator;

.field private mSlop:F

.field private mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

.field private mWeatherCityAddObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    .line 93
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->ACCU_WEATHERINFO_URI:Landroid/net/Uri;

    .line 94
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->WETHER_SETTING_INFO_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 86
    iput-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 87
    iput v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIndicatorHeight:I

    .line 91
    const/16 v0, 0x22

    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mSineInOut80:Landroid/view/animation/Interpolator;

    .line 92
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mSineInOut33:Landroid/view/animation/Interpolator;

    .line 99
    iput-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mPrvHostView:Landroid/widget/FrameLayout;

    .line 100
    iput-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 102
    iput-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mWeatherCityAddObserver:Landroid/database/ContentObserver;

    .line 103
    iput-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mHierarchyChangeListener:Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;

    .line 104
    iput-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsWeatherCityOneMore:Z

    .line 106
    iput-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsSetFlingOption:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsGSB:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsAllowSwipe:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsScrollingUp:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsScrollingDown:Z

    .line 356
    new-instance v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView$1;-><init>(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 121
    iput-object p1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    .line 122
    new-instance v0, Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    .line 123
    new-instance v0, Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/event/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    .line 124
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 125
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 128
    new-instance v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    invoke-direct {v0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    iput-boolean v1, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->forceToResize:Z

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->width:I

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->height:I

    .line 134
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsGSB:Z

    .line 141
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    .prologue
    .line 72
    iget v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIndicatorHeight:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsScrollingUp:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/home/LauncherAppWidgetHostView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsScrollingUp:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/launcher3/home/LauncherAppWidgetHostView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsScrollingDown:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/LauncherAppWidgetHostView;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->initWidgetAnimation(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mHasScrollView:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/launcher3/home/LauncherAppWidgetHostView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mHasScrollView:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/LauncherAppWidgetHostView;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->findScrollView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->checkWeatherCount()V

    return-void
.end method

.method public static calculateWidgetSize(IIII)Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;
    .locals 11
    .param p0, "spanX"    # I
    .param p1, "spanY"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 616
    new-instance v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    invoke-direct {v5}, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;-><init>()V

    .line 617
    .local v5, "result":Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;
    const/4 v9, 0x0

    iput-boolean v9, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->forceToResize:Z

    .line 618
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    .line 619
    iput p2, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->width:I

    .line 620
    iput p3, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->height:I

    .line 621
    iput p2, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->visibleWidth:I

    .line 622
    iput p3, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->visibleHeight:I

    .line 624
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    .line 625
    .local v2, "profile":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v9, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellGap()I

    move-result v1

    .line 626
    .local v1, "cellSpacingWidth":I
    iget-object v9, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellGap()I

    move-result v0

    .line 628
    .local v0, "cellSpacingHeight":I
    iget v9, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultCellWidth:I

    mul-int v10, p0, v9

    const/4 v9, 0x2

    if-lt p0, v9, :cond_5

    add-int/lit8 v9, p0, -0x1

    mul-int/2addr v9, v1

    :goto_0
    add-int v4, v10, v9

    .line 632
    .local v4, "requiredWidth":I
    const/high16 v6, 0x3f800000    # 1.0f

    .line 633
    .local v6, "scaleForMobileKeyboard":F
    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 634
    const v6, 0x3f333333    # 0.7f

    .line 637
    :cond_0
    iget v9, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultCellHeight:I

    mul-int v10, p1, v9

    const/4 v9, 0x2

    if-lt p1, v9, :cond_6

    add-int/lit8 v9, p1, -0x1

    mul-int/2addr v9, v0

    :goto_1
    add-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v9, v6

    float-to-int v3, v9

    .line 640
    .local v3, "requiredHeight":I
    if-ge p2, v4, :cond_1

    .line 641
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->forceToResize:Z

    .line 642
    iput v4, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->width:I

    .line 644
    :cond_1
    if-ge p3, v3, :cond_2

    .line 645
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->forceToResize:Z

    .line 646
    iput v3, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->height:I

    .line 649
    :cond_2
    iget-boolean v9, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->forceToResize:Z

    if-eqz v9, :cond_4

    .line 650
    int-to-float v9, p2

    iget v10, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->width:I

    int-to-float v10, v10

    div-float v7, v9, v10

    .line 651
    .local v7, "sx":F
    int-to-float v9, p3

    iget v10, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->height:I

    int-to-float v10, v10

    div-float v8, v9, v10

    .line 656
    .local v8, "sy":F
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v7, v9

    if-nez v9, :cond_3

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v8, v9

    if-eqz v9, :cond_4

    .line 657
    :cond_3
    cmpg-float v9, v7, v8

    if-gez v9, :cond_7

    .line 658
    iput v7, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    .line 662
    :goto_2
    int-to-float v9, p2

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    iget v10, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    div-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->width:I

    .line 663
    int-to-float v9, p3

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    iget v10, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    div-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->height:I

    .line 667
    .end local v7    # "sx":F
    .end local v8    # "sy":F
    :cond_4
    return-object v5

    .line 628
    .end local v3    # "requiredHeight":I
    .end local v4    # "requiredWidth":I
    .end local v6    # "scaleForMobileKeyboard":F
    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    .line 637
    .restart local v4    # "requiredWidth":I
    .restart local v6    # "scaleForMobileKeyboard":F
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 660
    .restart local v3    # "requiredHeight":I
    .restart local v7    # "sx":F
    .restart local v8    # "sy":F
    :cond_7
    iput v8, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    goto :goto_2
.end method

.method private checkWeatherCount()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 540
    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->ACCU_WEATHERINFO_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 541
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 542
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsWeatherCityOneMore:Z

    iput-boolean v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mHasScrollView:Z

    .line 546
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 547
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 548
    :cond_1
    return-void

    .line 544
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsWeatherCityOneMore:Z

    iput-boolean v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mHasScrollView:Z

    goto :goto_0
.end method

.method private createPrvView(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 7
    .param p1, "origView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 395
    if-nez p1, :cond_0

    .line 413
    :goto_0
    return-object v1

    .line 399
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 400
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 401
    .local v0, "cacheBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 402
    :cond_1
    sget-object v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    const-string v6, "startFlickAnimation getDrawingCache fail or cacheBitmap is isRecycled"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    :cond_2
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 406
    .local v1, "fl":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 407
    .local v4, "prvHostView":Landroid/widget/ImageView;
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 408
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 409
    .local v3, "parent":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 410
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, v1, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 412
    const-string v5, "previous_hostView"

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private doWidgetAnimation(Landroid/appwidget/AppWidgetHostView;Z)Z
    .locals 5
    .param p1, "origView"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "isUp"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 483
    iput-boolean v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsScrollingUp:Z

    .line 484
    iput-boolean v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsScrollingDown:Z

    .line 485
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mPrvHostView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 502
    :cond_0
    :goto_0
    return v2

    .line 489
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->createPrvView(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mPrvHostView:Landroid/widget/FrameLayout;

    .line 490
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mPrvHostView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 493
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 494
    .local v0, "opts":Landroid/os/Bundle;
    const-string v4, "fling"

    if-eqz p2, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 495
    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 497
    iget-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsWeatherCityOneMore:Z

    if-eqz v1, :cond_3

    .line 498
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mPrvHostView:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->startWidgetAnimation(Landroid/appwidget/AppWidgetHostView;Landroid/widget/FrameLayout;Z)V

    move v2, v3

    .line 499
    goto :goto_0

    :cond_2
    move v1, v3

    .line 494
    goto :goto_1

    .line 501
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mPrvHostView:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->initWidgetAnimation(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method private findScrollView(Landroid/view/View;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 324
    iget-boolean v4, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsAllowSwipe:Z

    if-eqz v4, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v2

    .line 328
    :cond_1
    if-eqz p1, :cond_0

    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 331
    instance-of v4, p1, Landroid/widget/StackView;

    if-nez v4, :cond_2

    instance-of v4, p1, Landroid/widget/ListView;

    if-nez v4, :cond_2

    instance-of v4, p1, Landroid/widget/GridView;

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    .line 332
    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 334
    check-cast v1, Landroid/view/ViewGroup;

    .line 335
    .local v1, "vg":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 336
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->findScrollView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 337
    goto :goto_0

    .line 335
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private initWidgetAnimation(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "origView"    # Landroid/view/View;
    .param p2, "prvView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 472
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 473
    .local v0, "parent":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 476
    :cond_0
    iput-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mPrvHostView:Landroid/widget/FrameLayout;

    .line 477
    iput-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    move-object v1, p1

    .line 478
    check-cast v1, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 479
    check-cast p1, Landroid/appwidget/AppWidgetHostView;

    .end local p1    # "origView":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 480
    :cond_1
    return-void
.end method

.method private isAvailableChangeCity()Z
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 675
    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 676
    .local v0, "cp":Landroid/content/ContentResolver;
    new-array v2, v9, [Ljava/lang/String;

    const-string v1, "COL_SETTING_PINNED_LOCATION"

    aput-object v1, v2, v10

    .line 679
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->WETHER_SETTING_INFO_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 680
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 681
    .local v8, "value":I
    if-eqz v6, :cond_1

    .line 683
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 691
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 694
    :cond_1
    :goto_0
    if-eq v8, v9, :cond_2

    move v1, v9

    :goto_1
    return v1

    .line 688
    :catch_0
    move-exception v7

    .line 689
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailableChangeCity Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 691
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    move v1, v10

    .line 694
    goto :goto_1
.end method

.method private resetTouchStateOfTopContainer()V
    .locals 3

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "isFind":Z
    move-object v1, p0

    .line 169
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v1, :cond_0

    .line 170
    instance-of v2, v1, Lcom/android/launcher3/home/HomeContainer;

    if-eqz v2, :cond_2

    .line 171
    const/4 v0, 0x1

    .line 176
    :cond_0
    if-eqz v0, :cond_1

    .line 177
    check-cast v1, Lcom/android/launcher3/home/HomeContainer;

    .end local v1    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeContainer;->resetTouchState()V

    .line 179
    :cond_1
    return-void

    .line 174
    .restart local v1    # "parent":Landroid/view/ViewParent;
    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0
.end method

.method private startWidgetAnimation(Landroid/appwidget/AppWidgetHostView;Landroid/widget/FrameLayout;Z)V
    .locals 13
    .param p1, "origView"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "prvView"    # Landroid/widget/FrameLayout;
    .param p3, "isUp"    # Z

    .prologue
    .line 419
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getScaleY()F

    move-result v1

    .line 420
    .local v1, "currentScaleY":F
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v0, v6, v1

    .line 422
    .local v0, "currentHeight":F
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 423
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 424
    iget-object v6, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    iget v6, v6, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 425
    iget-object v6, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    iget v6, v6, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 427
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v6, 0x1

    new-array v8, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v9, 0x0

    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v11, v6, [F

    const/4 v6, 0x0

    const/4 v12, 0x0

    aput v12, v11, v6

    const/4 v12, 0x1

    if-eqz p3, :cond_0

    neg-float v6, v0

    :goto_0
    aput v6, v11, v12

    .line 428
    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v8, v9

    .line 427
    invoke-static {v7, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xfa

    .line 429
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 430
    .local v5, "prvTransAni":Landroid/animation/Animator;
    iget-object v6, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 432
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    if-eqz p3, :cond_1

    .end local v0    # "currentHeight":F
    :goto_1
    aput v0, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 433
    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    aput-object v9, v7, v8

    .line 432
    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xfa

    .line 434
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 435
    .local v3, "origTransAni":Landroid/animation/Animator;
    iget-object v6, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 437
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    .line 438
    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    aput-object v9, v7, v8

    .line 437
    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xfa

    .line 438
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 439
    .local v4, "prvAlphaAni":Landroid/animation/Animator;
    iget-object v6, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 441
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    .line 442
    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    aput-object v9, v7, v8

    .line 441
    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xfa

    .line 442
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 443
    .local v2, "origAlphaAni":Landroid/animation/Animator;
    iget-object v6, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 445
    new-instance v6, Lcom/android/launcher3/home/LauncherAppWidgetHostView$2;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/launcher3/home/LauncherAppWidgetHostView$2;-><init>(Lcom/android/launcher3/home/LauncherAppWidgetHostView;Landroid/appwidget/AppWidgetHostView;Landroid/widget/FrameLayout;)V

    invoke-virtual {v3, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 464
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 466
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 467
    iget-object v6, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    const/4 v8, 0x3

    aput-object v2, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 468
    return-void

    .end local v2    # "origAlphaAni":Landroid/animation/Animator;
    .end local v3    # "origTransAni":Landroid/animation/Animator;
    .end local v4    # "prvAlphaAni":Landroid/animation/Animator;
    .end local v5    # "prvTransAni":Landroid/animation/Animator;
    .restart local v0    # "currentHeight":F
    :cond_0
    move v6, v0

    .line 427
    goto/16 :goto_0

    .line 432
    .restart local v5    # "prvTransAni":Landroid/animation/Animator;
    :cond_1
    neg-float v0, v0

    goto/16 :goto_1

    .line 437
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 441
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 560
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    .line 561
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    .line 562
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 279
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetHostView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 3

    .prologue
    .line 566
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 567
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    if-nez v1, :cond_0

    .line 568
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Launcher widget must have LauncherAppWidgetProviderInfo"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 571
    :cond_0
    return-object v0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 589
    const/high16 v0, 0x60000

    return v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030017

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getIsGSB()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsGSB:Z

    return v0
.end method

.method public getIsSetFlingOption()Z
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsSetFlingOption:Z

    return v0
.end method

.method public getLauncherAppWidgetProviderInfo()Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    return-object v0
.end method

.method public getResizeResult()Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    return-object v0
.end method

.method isReinflateRequired()Z
    .locals 2

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 162
    .local v0, "orientation":I
    iget v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mPreviousOrientation:I

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 284
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->onAttachedToWindow()V

    .line 285
    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mSlop:F

    .line 286
    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 287
    .local v1, "item":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    if-eqz v1, :cond_1

    const-string v2, "com.sec.android.daemonapp"

    iget-object v3, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v2, :cond_1

    .line 289
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 290
    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mWeatherCityAddObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_0

    .line 291
    new-instance v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView$WeatherCityAddObserver;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView$WeatherCityAddObserver;-><init>(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)V

    iput-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mWeatherCityAddObserver:Landroid/database/ContentObserver;

    .line 292
    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->ACCU_WEATHERINFO_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mWeatherCityAddObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->checkWeatherCount()V

    .line 295
    iput-boolean v5, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsSetFlingOption:Z

    .line 299
    :cond_1
    if-eqz v1, :cond_2

    const-string v2, "com.sec.android.widgetapp.easymodecontactswidget"

    iget-object v3, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    iput-boolean v5, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsAllowSwipe:Z

    .line 303
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 304
    if-eqz v1, :cond_3

    const-string v2, "com.google.android.googlequicksearchbox"

    iget-object v3, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 305
    iput-boolean v5, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsGSB:Z

    .line 310
    :cond_3
    if-eqz v1, :cond_4

    .line 311
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsWeatherCityOneMore:Z

    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mHasScrollView:Z

    .line 312
    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsAllowSwipe:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mHierarchyChangeListener:Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;

    if-nez v2, :cond_4

    .line 313
    new-instance v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;

    invoke-direct {v2, p0, p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;-><init>(Lcom/android/launcher3/home/LauncherAppWidgetHostView;Lcom/android/launcher3/home/LauncherAppWidgetHostView;)V

    iput-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mHierarchyChangeListener:Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;

    .line 314
    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mHierarchyChangeListener:Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 315
    sget-object v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOnHierarchyChangeListener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_4
    :goto_1
    return-void

    .line 311
    :cond_5
    invoke-direct {p0, p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->findScrollView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 345
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->onDetachedFromWindow()V

    .line 347
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 348
    iput-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 349
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mWeatherCityAddObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mWeatherCityAddObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 351
    iput-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mWeatherCityAddObserver:Landroid/database/ContentObserver;

    .line 354
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 183
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v7

    .line 184
    .local v7, "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_1

    move v6, v2

    .line 254
    :cond_0
    :goto_0
    return v6

    .line 189
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 195
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    move v6, v2

    .line 196
    goto :goto_0

    .line 201
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/event/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 202
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    move v6, v2

    .line 203
    goto :goto_0

    .line 206
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v1, :cond_5

    .line 207
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 210
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 212
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/StylusEventHelper;->inStylusButtonPressed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 213
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->postCheckForLongPress()V

    .line 215
    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/view/DragLayer;->setTouchCompleteListener(Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;)V

    .line 216
    iget-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mHasScrollView:Z

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->isAvailableChangeCity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    :cond_7
    invoke-direct {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->resetTouchStateOfTopContainer()V

    goto :goto_0

    .line 226
    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertItemLaunchLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 229
    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v1, :cond_8

    .line 230
    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 231
    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 232
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "GSWS"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 236
    :cond_8
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    .line 237
    iget-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsScrollingUp:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsScrollingDown:Z

    if-eqz v1, :cond_0

    .line 238
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 239
    .local v0, "item":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v8, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 240
    .local v8, "origView":Landroid/appwidget/AppWidgetHostView;
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 241
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 243
    :cond_a
    iget-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsScrollingUp:Z

    invoke-direct {p0, v8, v1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->doWidgetAnimation(Landroid/appwidget/AppWidgetHostView;Z)Z

    move-result v6

    goto/16 :goto_0

    .line 247
    .end local v0    # "item":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    .end local v8    # "origView":Landroid/appwidget/AppWidgetHostView;
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mSlop:F

    invoke-static {p0, v1, v2, v3}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto/16 :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchComplete()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    .line 585
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 271
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 263
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 266
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mSlop:F

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setResizeScaleResult(Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;)V
    .locals 4
    .param p1, "result"    # Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    .prologue
    const/4 v3, 0x0

    .line 603
    iput-object p1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    .line 604
    sget-object v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResizeScaleResult() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    iget v2, v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    iget v2, v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scaleToResize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    iget v2, v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(widget id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 607
    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 604
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->setPivotX(F)V

    .line 610
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->setPivotY(F)V

    .line 611
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    iget v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->setScaleX(F)V

    .line 612
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    iget v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->setScaleY(F)V

    .line 613
    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->updateLastInflationOrientation()V

    .line 156
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 157
    return-void
.end method

.method public updateLastInflationOrientation()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mPreviousOrientation:I

    .line 150
    return-void
.end method

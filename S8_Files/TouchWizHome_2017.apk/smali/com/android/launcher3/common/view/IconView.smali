.class public Lcom/android/launcher3/common/view/IconView;
.super Landroid/widget/FrameLayout;
.source "IconView.java"


# static fields
.field private static final CHECKBOX_ANIM_DURATION:I = 0x64

.field public static final DISPLAY_APPS:I = 0x2

.field public static final DISPLAY_FOLDER_ITEM:I = 0x3

.field public static final DISPLAY_HOTSEAT:I = 0x1

.field public static final DISPLAY_WORKSPACE:I = 0x0

.field public static final EXTRA_SHORTCUT_LIVE_ICON_COMPONENT:Ljava/lang/String; = "liveicon_cmpname"

.field public static final EXTRA_SHORTCUT_USER_ID:Ljava/lang/String; = "userid"

.field private static final INVALID_DATA:I = -0x1

.field public static final KNOX_SHORTCUT_PACKAGE:Ljava/lang/String; = "com.samsung.knox.rcp.components"

.field private static final SCALE_ANIMATION_DURATION:I = 0x12c

.field private static final SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

.field private static mBadgePositionFactor:F

.field protected static mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;


# instance fields
.field private mBadgeCount:Ljava/lang/String;

.field protected mBadgeView:Landroid/widget/TextView;

.field private mCheckBox:Landroid/widget/CheckBox;

.field protected mCountBadgeView:Landroid/widget/TextView;

.field private mDisableAlphaOnPress:Z

.field private mDisableRelayout:Z

.field protected mDrawablePadding:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconDisplay:I

.field private mIconLoadRequest:Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

.field protected mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

.field protected mIconSize:I

.field protected mIconTextBackground:Landroid/graphics/drawable/Drawable;

.field protected mIconView:Landroid/widget/ImageView;

.field protected mIsSetThemeBadgeBg:Z

.field private mIsShortcutIconShownWithTitle:Z

.field protected final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

.field private mMarkToRemove:Z

.field protected mShadow:Landroid/widget/ImageView;

.field private mSlop:F

.field private final mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

.field protected mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0x22

    .line 91
    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/view/IconView;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    .line 125
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/android/launcher3/common/view/IconView;->mBadgePositionFactor:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/common/view/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/view/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 146
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    iput-boolean v4, p0, Lcom/android/launcher3/common/view/IconView;->mDisableRelayout:Z

    .line 106
    iput-boolean v4, p0, Lcom/android/launcher3/common/view/IconView;->mDisableAlphaOnPress:Z

    .line 108
    iput-boolean v4, p0, Lcom/android/launcher3/common/view/IconView;->mIsShortcutIconShownWithTitle:Z

    .line 129
    iput-boolean v4, p0, Lcom/android/launcher3/common/view/IconView;->mMarkToRemove:Z

    .line 130
    iput-boolean v4, p0, Lcom/android/launcher3/common/view/IconView;->mIsSetThemeBadgeBg:Z

    move-object v2, p1

    .line 147
    check-cast v2, Lcom/android/launcher3/Launcher;

    iput-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 149
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    .line 151
    .local v1, "grid":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->IconView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 152
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/common/view/IconView;->mIconDisplay:I

    .line 153
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    .line 154
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    new-instance v2, Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-direct {v2, p0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    .line 157
    new-instance v2, Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-direct {v2, p0}, Lcom/android/launcher3/util/event/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    .line 159
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->SHADOW:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v3}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/theme/OpenThemeManager;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->SHADOW:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v3}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 162
    :cond_0
    return-void
.end method

.method private animateEachScale(Landroid/view/View;ZIJZ)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visible"    # Z
    .param p3, "duration"    # I
    .param p4, "delay"    # J
    .param p6, "animated"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 954
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/IconView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 990
    :cond_0
    :goto_0
    return-void

    .line 958
    :cond_1
    if-eqz p6, :cond_4

    .line 959
    if-eqz p2, :cond_2

    move v2, v3

    .line 960
    .local v2, "start":F
    :goto_1
    if-eqz p2, :cond_3

    .line 962
    .local v1, "end":F
    :goto_2
    new-array v3, v8, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v8, [F

    aput v2, v6, v5

    aput v1, v6, v7

    .line 963
    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v8, [F

    aput v2, v6, v5

    aput v1, v6, v7

    .line 964
    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v7

    .line 962
    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 966
    .local v0, "animator":Landroid/animation/Animator;
    int-to-long v4, p3

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 967
    sget-object v3, Lcom/android/launcher3/common/view/IconView;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 968
    new-instance v3, Lcom/android/launcher3/common/view/IconView$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/android/launcher3/common/view/IconView$2;-><init>(Lcom/android/launcher3/common/view/IconView;ZLandroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 983
    invoke-virtual {v0, p4, p5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 984
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v1    # "end":F
    .end local v2    # "start":F
    :cond_2
    move v2, v1

    .line 959
    goto :goto_1

    .restart local v2    # "start":F
    :cond_3
    move v1, v3

    .line 960
    goto :goto_2

    .line 986
    .end local v2    # "start":F
    :cond_4
    if-eqz p2, :cond_5

    move v4, v1

    :goto_3
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 987
    if-eqz p2, :cond_6

    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 988
    if-eqz p2, :cond_7

    move v3, v5

    :goto_5
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    move v4, v3

    .line 986
    goto :goto_3

    :cond_6
    move v1, v3

    .line 987
    goto :goto_4

    .line 988
    :cond_7
    const/4 v3, 0x4

    goto :goto_5
.end method

.method public static isKnoxShortcut(Landroid/content/ComponentName;)Z
    .locals 2
    .param p0, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 949
    if-eqz p0, :cond_0

    const-string v0, "com.samsung.knox.rcp.components"

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKnoxShortcut(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "launchIntent"    # Landroid/content/Intent;

    .prologue
    .line 945
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/common/view/IconView;->isKnoxShortcut(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setIcon(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->setShadow()V

    .line 696
    iget-object v3, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 697
    const/4 v2, 0x0

    .line 698
    .local v2, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    instance-of v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 699
    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 701
    :cond_0
    instance-of v3, p2, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    iget v3, v2, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 704
    invoke-static {v3}, Lcom/android/launcher3/common/view/LiveIconManager;->isKnoxLiveIcon(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 705
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v4

    move-object v3, p2

    check-cast v3, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    .line 706
    invoke-virtual {v3}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget v5, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/launcher3/theme/OpenThemeManager;->getIconWithTrayIfNeeded(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 707
    .local v1, "iconImage":Landroid/graphics/Bitmap;
    iget v3, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    invoke-static {v1, v3}, Lcom/android/launcher3/util/BitmapUtils;->createIconDrawable(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v0

    .line 708
    .local v0, "iconDrawable":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 712
    .end local v0    # "iconDrawable":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    .end local v1    # "iconImage":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 714
    .end local v2    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    return-object p2

    .line 710
    .restart local v2    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_2
    iput-object p2, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public animateBadge(ZIJZ)V
    .locals 7
    .param p1, "visible"    # Z
    .param p2, "duration"    # I
    .param p3, "delay"    # J
    .param p5, "animated"    # Z

    .prologue
    .line 872
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/view/IconView;->animateEachScale(Landroid/view/View;ZIJZ)V

    .line 873
    return-void
.end method

.method public animateChildScale(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;)V
    .locals 1
    .param p1, "prevGridIconInfo"    # Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    .prologue
    .line 993
    if-nez p1, :cond_0

    .line 998
    :goto_0
    return-void

    .line 997
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/view/IconView;->animateChildScale(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method protected animateChildScale(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;Landroid/animation/Animator;)V
    .locals 17
    .param p1, "prevGridIconInfo"    # Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    .param p2, "addedAnimator"    # Landroid/animation/Animator;

    .prologue
    .line 1001
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v7

    .line 1002
    .local v7, "preIconSize":I
    int-to-float v10, v7

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    int-to-float v11, v11

    div-float v4, v10, v11

    .line 1003
    .local v4, "iconScale":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getTextSize()I

    move-result v10

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getTextSize()F

    move-result v11

    div-float v8, v10, v11

    .line 1004
    .local v8, "titleScale":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1005
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v10

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    sub-int v11, v7, v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v5, v10

    .line 1007
    .local v5, "iconTransitionY":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v10

    add-int/2addr v10, v7

    .line 1008
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getDrawablePadding()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/common/view/IconView;->mDrawablePadding:I

    sub-int/2addr v10, v11

    int-to-float v9, v10

    .line 1010
    .local v9, "titleTransitionY":F
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1011
    .local v3, "animatorSet":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v4, v14, v15

    const/4 v15, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    .line 1012
    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v4, v14, v15

    const/4 v15, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    .line 1013
    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v5, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 1014
    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1011
    invoke-static {v10, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1015
    .local v2, "animator":Landroid/animation/Animator;
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1017
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v8, v14, v15

    const/4 v15, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    .line 1018
    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v8, v14, v15

    const/4 v15, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    .line 1019
    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v9, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 1020
    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1017
    invoke-static {v10, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1021
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1023
    if-eqz p2, :cond_0

    .line 1024
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1027
    :cond_0
    const-wide/16 v10, 0x12c

    invoke-virtual {v3, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1028
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1029
    return-void
.end method

.method public animateTitleView(ZIJZ)V
    .locals 7
    .param p1, "visible"    # Z
    .param p2, "duration"    # I
    .param p3, "delay"    # J
    .param p5, "animated"    # Z

    .prologue
    .line 877
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/view/IconView;->animateEachScale(Landroid/view/View;ZIJZ)V

    .line 878
    return-void
.end method

.method public applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 413
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;Z)V

    .line 414
    return-void
.end method

.method public applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;Z)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "promiseStateChanged"    # Z

    .prologue
    .line 417
    invoke-static {p1}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 419
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 418
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 422
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 423
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 426
    :cond_1
    iget-object v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/common/view/IconView;->refreshIcon(Lcom/android/launcher3/common/base/item/IconInfo;ZLandroid/graphics/Bitmap;)V

    .line 428
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->changeTextColorForBg(Z)V

    .line 430
    invoke-static {}, Lcom/android/launcher3/Utilities;->isNeededToTestLauncherResume()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    const-string v0, "apps"

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->printCallStack(Ljava/lang/String;)V

    .line 433
    :cond_2
    return-void
.end method

.method public applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;Z)V

    .line 378
    return-void
.end method

.method public applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;Z)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;
    .param p3, "promiseStateChanged"    # Z

    .prologue
    .line 383
    iget-boolean v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-eqz v2, :cond_4

    .line 384
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager;->getThemeAppIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 389
    .local v0, "b":Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {p1}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v2, v1, v3}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 394
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, p1}, Lcom/android/launcher3/common/view/LiveIconManager;->applyKnoxLiveIcon(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    iget-object v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 398
    :cond_1
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/launcher3/common/view/IconView;->refreshIcon(Lcom/android/launcher3/common/base/item/IconInfo;ZLandroid/graphics/Bitmap;)V

    .line 400
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/view/IconView;->changeTextColorForBg(Z)V

    .line 402
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 404
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->enableShortcutIconToTitle()V

    .line 407
    :cond_2
    invoke-static {}, Lcom/android/launcher3/Utilities;->isNeededToTestLauncherResume()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 408
    const-string v2, "home"

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->printCallStack(Ljava/lang/String;)V

    .line 410
    :cond_3
    return-void

    .line 386
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method protected applyKnoxLiveIcon(Lcom/android/launcher3/common/base/item/IconInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    const/4 v1, 0x0

    .line 368
    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-static {v2}, Lcom/android/launcher3/common/view/LiveIconManager;->isKnoxLiveIcon(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    const-string v3, "liveicon_cmpname"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v1

    .line 370
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 371
    const/4 v1, 0x1

    .line 373
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public applyState(Z)V
    .locals 5
    .param p1, "promiseStateChanged"    # Z

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_0

    .line 659
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 660
    .local v0, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v1

    .line 661
    .local v1, "isPromise":Z
    if-eqz v1, :cond_2

    const/16 v4, 0x8

    .line 662
    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/base/item/IconInfo;->hasStatusFlag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 663
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->getInstallProgress()I

    move-result v3

    .line 665
    .local v3, "progressLevel":I
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 667
    iget-object v4, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v4, v4, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    if-eqz v4, :cond_3

    .line 668
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v2, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    .line 674
    .local v2, "preloadDrawable":Lcom/android/launcher3/common/drawable/PreloadIconDrawable;
    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;->setLevel(I)Z

    .line 675
    if-eqz p1, :cond_0

    .line 676
    invoke-virtual {v2}, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;->maybePerformFinishedAnimation()V

    .line 680
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v1    # "isPromise":Z
    .end local v2    # "preloadDrawable":Lcom/android/launcher3/common/drawable/PreloadIconDrawable;
    .end local v3    # "progressLevel":I
    :cond_0
    return-void

    .line 663
    .restart local v0    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v1    # "isPromise":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/16 v3, 0x64

    goto :goto_0

    .line 670
    .restart local v3    # "progressLevel":I
    :cond_3
    new-instance v2, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    iget-object v4, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v4}, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 671
    .restart local v2    # "preloadDrawable":Lcom/android/launcher3/common/drawable/PreloadIconDrawable;
    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/common/view/IconView;->setIcon(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public applyStyle()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v1

    .line 205
    .local v1, "iconInfo":Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    if-nez v1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    .line 210
    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getDrawablePadding()I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/view/IconView;->mDrawablePadding:I

    .line 211
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getTextSize()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 212
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getLineCount()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 214
    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v0

    .line 215
    .local v0, "contentTop":I
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 216
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v2, :cond_2

    .line 217
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 218
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 219
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v2, :cond_2

    .line 220
    iget v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/android/launcher3/common/view/IconView;->mDrawablePadding:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 224
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 225
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 226
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v2, :cond_3

    .line 227
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v3, v6, 0x4

    .line 228
    .local v3, "margin":I
    sub-int v4, v0, v3

    .line 229
    .local v4, "topMargin":I
    if-ltz v4, :cond_5

    .end local v4    # "topMargin":I
    :goto_1
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 230
    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_6

    .line 231
    iget v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v3

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 238
    .end local v3    # "margin":I
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 239
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 240
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v2, :cond_4

    .line 241
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v3, v6, 0x4

    .line 242
    .restart local v3    # "margin":I
    sub-int v4, v0, v3

    .line 243
    .restart local v4    # "topMargin":I
    if-ltz v4, :cond_7

    .end local v4    # "topMargin":I
    :goto_3
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 244
    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_8

    .line 245
    iget v5, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v3

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 252
    .end local v3    # "margin":I
    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/android/launcher3/common/view/IconView;->mShadow:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/common/view/IconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 253
    iget-object v5, p0, Lcom/android/launcher3/common/view/IconView;->mShadow:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 254
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v2, :cond_0

    .line 255
    iget v5, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    mul-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x5

    add-int/2addr v5, v0

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    .restart local v3    # "margin":I
    .restart local v4    # "topMargin":I
    :cond_5
    move v4, v5

    .line 229
    goto :goto_1

    .line 233
    .end local v4    # "topMargin":I
    :cond_6
    iget v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v3

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .restart local v4    # "topMargin":I
    :cond_7
    move v4, v5

    .line 243
    goto :goto_3

    .line 247
    .end local v4    # "topMargin":I
    :cond_8
    iget v5, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v3

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_4
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 652
    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 654
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    .line 655
    return-void
.end method

.method public changeTextColorForBg(Z)V
    .locals 3
    .param p1, "whiteBg"    # Z

    .prologue
    .line 903
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v0

    .line 904
    .local v0, "themeManager":Lcom/android/launcher3/theme/OpenThemeManager;
    invoke-virtual {v0}, Lcom/android/launcher3/theme/OpenThemeManager;->isPinkTheme()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconTextBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 905
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x1

    invoke-static {v1, p0, p1, v2}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Lcom/android/launcher3/common/view/IconView;ZZ)V

    .line 907
    :cond_0
    return-void
.end method

.method protected decorateViewComponent()V
    .locals 9

    .prologue
    const v7, 0x1ffffff

    .line 341
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v2

    .line 342
    .local v2, "themeManager":Lcom/android/launcher3/theme/OpenThemeManager;
    sget-object v6, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->HOME_TEXT_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadColor(I)I

    move-result v3

    .line 343
    .local v3, "titleColor":I
    sget-object v6, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->TEXT_HIGHLIGHT:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadColor(I)I

    move-result v4

    .line 344
    .local v4, "titleHighlightColor":I
    sget-object v6, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->TEXT_SHADOW_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadColor(I)I

    move-result v5

    .line 345
    .local v5, "titleShadowColor":I
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconTextBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 346
    sget-object v6, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->TITLE_BACKGROUND:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconTextBackground:Landroid/graphics/drawable/Drawable;

    .line 348
    :cond_0
    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager;->isPinkTheme()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconTextBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    .line 349
    :cond_1
    if-eq v3, v7, :cond_2

    .line 350
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/view/IconView;->setTextColor(I)V

    .line 352
    :cond_2
    if-eq v4, v7, :cond_3

    .line 353
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 355
    :cond_3
    if-eq v5, v7, :cond_4

    .line 356
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getShadowDx()F

    move-result v7

    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getShadowDy()F

    move-result v8

    invoke-virtual {p0, v6, v7, v8, v5}, Lcom/android/launcher3/common/view/IconView;->setShadowLayer(FFFI)V

    .line 360
    :cond_4
    const v6, 0x7f0f0075

    invoke-virtual {p0, v6}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 361
    .local v0, "badge":Landroid/widget/TextView;
    if-eqz v0, :cond_5

    .line 362
    sget-object v6, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->BADGE_TEXT_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadColor(I)I

    move-result v1

    .line 363
    .local v1, "badgeFontColor":I
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    .end local v1    # "badgeFontColor":I
    :cond_5
    return-void
.end method

.method public disableShortcutIconToTitle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1131
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1132
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1133
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1134
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1135
    const-string v1, "\u00a0"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1136
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    iput-boolean v3, p0, Lcom/android/launcher3/common/view/IconView;->mIsShortcutIconShownWithTitle:Z

    .line 1138
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 560
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/IconView;->drawTextBackground(Landroid/graphics/Canvas;)V

    .line 563
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    .line 565
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 570
    :goto_0
    return-void

    .line 569
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawTextBackground(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 578
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lez v15, :cond_5

    .line 579
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mIconTextBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_5

    .line 580
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v15

    iget v3, v15, Lcom/android/launcher3/theme/OpenThemeManager;->mTextBackgroundExtraPadding:I

    .line 581
    .local v3, "extraPadding":I
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v15

    iget v4, v15, Lcom/android/launcher3/theme/OpenThemeManager;->mTextBackgroundExtraPaddingBottom:I

    .line 583
    .local v4, "extraPaddingBottom":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 584
    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v15, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/view/IconView;->mDrawablePadding:I

    move/from16 v16, v0

    add-int v13, v15, v16

    .line 585
    .local v13, "top":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getLineCount()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLineHeight()I

    move-result v16

    mul-int v15, v15, v16

    add-int/2addr v15, v13

    add-int v1, v15, v4

    .line 586
    .local v1, "bottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/IconView;->getHeight()I

    move-result v15

    if-le v1, v15, :cond_0

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/IconView;->getHeight()I

    move-result v1

    .line 590
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    .line 591
    .local v6, "layout":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 592
    .local v12, "text":Ljava/lang/String;
    const/4 v10, 0x0

    .line 594
    .local v10, "start":I
    const/4 v9, 0x0

    .line 595
    .local v9, "maxWidth":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getLineCount()I

    move-result v15

    if-ge v5, v15, :cond_2

    .line 596
    invoke-virtual {v6, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    .line 597
    .local v2, "end":I
    invoke-virtual {v12, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 598
    .local v11, "subString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/IconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v15

    float-to-int v14, v15

    .line 599
    .local v14, "width":I
    if-ge v9, v14, :cond_1

    .line 600
    move v9, v14

    .line 602
    :cond_1
    move v10, v2

    .line 595
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 605
    .end local v2    # "end":I
    .end local v11    # "subString":Ljava/lang/String;
    .end local v14    # "width":I
    :cond_2
    add-int v14, v9, v3

    .line 606
    .restart local v14    # "width":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/launcher3/common/view/IconView;->mIsShortcutIconShownWithTitle:Z

    if-eqz v15, :cond_3

    .line 607
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v15

    add-int v14, v15, v3

    .line 610
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/IconView;->getWidth()I

    move-result v15

    if-ge v15, v14, :cond_4

    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/IconView;->getWidth()I

    move-result v14

    .line 613
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/IconView;->getWidth()I

    move-result v15

    sub-int/2addr v15, v14

    div-int/lit8 v7, v15, 0x2

    .line 615
    .local v7, "left":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mIconTextBackground:Landroid/graphics/drawable/Drawable;

    add-int v16, v7, v14

    move/from16 v0, v16

    invoke-virtual {v15, v7, v13, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 616
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mIconTextBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 619
    .end local v1    # "bottom":I
    .end local v3    # "extraPadding":I
    .end local v4    # "extraPaddingBottom":I
    .end local v5    # "i":I
    .end local v6    # "layout":Landroid/text/Layout;
    .end local v7    # "left":I
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v9    # "maxWidth":I
    .end local v10    # "start":I
    .end local v12    # "text":Ljava/lang/String;
    .end local v13    # "top":I
    .end local v14    # "width":I
    :cond_5
    return-void
.end method

.method public enableShortcutIconToTitle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1120
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    const v2, 0x7f0200c7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1121
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09008f

    .line 1122
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 1121
    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1123
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1124
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1125
    .local v0, "title":Ljava/lang/String;
    const-string v1, "\\s+"

    const-string v2, "\u00a0"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1126
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/common/view/IconView;->mIsShortcutIconShownWithTitle:Z

    .line 1128
    return-void
.end method

.method protected getBounceAnimation()Lcom/android/launcher3/util/animation/AppIconBounceAnimation;
    .locals 2

    .prologue
    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, "animation":Lcom/android/launcher3/util/animation/AppIconBounceAnimation;
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 498
    new-instance v0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    .end local v0    # "animation":Lcom/android/launcher3/util/animation/AppIconBounceAnimation;
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;-><init>(Landroid/view/View;)V

    .line 500
    .restart local v0    # "animation":Lcom/android/launcher3/util/animation/AppIconBounceAnimation;
    :cond_0
    return-object v0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getCountBadgeView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDrawablePadding()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/android/launcher3/common/view/IconView;->mDrawablePadding:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconDisplay()I
    .locals 1

    .prologue
    .line 1108
    iget v0, p0, Lcom/android/launcher3/common/view/IconView;->mIconDisplay:I

    return v0
.end method

.method public getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    .locals 3

    .prologue
    .line 307
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 308
    .local v0, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    const/4 v1, 0x0

    .line 310
    .local v1, "iconInfo":Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    iget v2, p0, Lcom/android/launcher3/common/view/IconView;->mIconDisplay:I

    packed-switch v2, :pswitch_data_0

    .line 325
    :goto_0
    return-object v1

    .line 312
    :pswitch_0
    iget-object v2, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v1

    .line 313
    goto :goto_0

    .line 315
    :pswitch_1
    iget-object v1, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    .line 316
    goto :goto_0

    .line 318
    :pswitch_2
    iget-object v2, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v1

    .line 319
    goto :goto_0

    .line 321
    :pswitch_3
    iget-object v2, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v1

    goto :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getIconSize()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    return v0
.end method

.method public getIconVew()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 898
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMarkToRemove()Z
    .locals 1

    .prologue
    .line 1116
    iget-boolean v0, p0, Lcom/android/launcher3/common/view/IconView;->mMarkToRemove:Z

    return v0
.end method

.method public markToRemove(Z)V
    .locals 0
    .param p1, "tobeRemove"    # Z

    .prologue
    .line 1112
    iput-boolean p1, p0, Lcom/android/launcher3/common/view/IconView;->mMarkToRemove:Z

    .line 1113
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 623
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 625
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/common/view/IconView;->mSlop:F

    .line 626
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 635
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 636
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 166
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 168
    const v0, 0x7f0f0007

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    .line 169
    const v0, 0x7f0f0008

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f0f0071

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mShadow:Landroid/widget/ImageView;

    .line 171
    const v0, 0x7f0f0074

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    .line 172
    const v0, 0x7f0f0075

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    .line 173
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b3

    .line 177
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 176
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 180
    :cond_0
    const v0, 0x7f0f0073

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/launcher3/common/view/IconView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/view/IconView$1;-><init>(Lcom/android/launcher3/common/view/IconView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 195
    :cond_1
    sget v0, Lcom/android/launcher3/common/view/IconView;->mBadgePositionFactor:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 196
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lcom/android/launcher3/common/view/IconView;->mBadgePositionFactor:F

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    .line 199
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/view/IconView;->setClipToPadding(Z)V

    .line 200
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->decorateViewComponent()V

    .line 201
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 262
    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->updateBadgeLayout()V

    .line 265
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 266
    return-void
.end method

.method public onLiveIconRefresh()V
    .locals 4

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v1, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 731
    .local v0, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-static {v0}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 736
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 735
    invoke-static {v1, v2, v3}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 738
    const/4 v1, 0x0

    iget-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/common/view/IconView;->refreshIcon(Lcom/android/launcher3/common/base/item/IconInfo;ZLandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 505
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/IconView;->onTouchOutofIconArea(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 506
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->cancelLongPress()V

    .line 507
    const/4 v1, 0x1

    .line 554
    :cond_0
    :goto_0
    return v1

    .line 509
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 512
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/event/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 513
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    .line 514
    const/4 v1, 0x1

    .line 517
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    .line 518
    .local v0, "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 520
    :pswitch_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v2

    if-nez v2, :cond_4

    .line 521
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getBounceAnimation()Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    .line 522
    sget-object v2, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    if-eqz v2, :cond_4

    .line 523
    sget-object v2, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-virtual {v2}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->animateDown()V

    .line 527
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/event/StylusEventHelper;->inStylusButtonPressed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 528
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->postCheckForLongPress()V

    goto :goto_0

    .line 534
    :pswitch_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v2

    if-nez v2, :cond_7

    .line 535
    :cond_5
    sget-object v2, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    if-eqz v2, :cond_6

    .line 536
    sget-object v2, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-virtual {v2}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->cancel()V

    .line 537
    sget-object v2, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-virtual {v2}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->animateUp()V

    .line 540
    :cond_6
    iget-boolean v2, p0, Lcom/android/launcher3/common/view/IconView;->mDisableAlphaOnPress:Z

    if-nez v2, :cond_7

    .line 541
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/view/IconView;->setAlpha(F)V

    .line 544
    :cond_7
    const/4 v2, 0x0

    sput-object v2, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    .line 545
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 549
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/launcher3/common/view/IconView;->mSlop:F

    invoke-static {p0, v2, v3, v4}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 550
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto/16 :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchOutofIconArea(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1075
    iget-object v7, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v2

    .line 1076
    .local v2, "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1104
    :cond_0
    :goto_0
    return v5

    .line 1080
    :cond_1
    iget v7, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    int-to-float v7, v7

    const v8, 0x3e99999a    # 0.3f

    mul-float v0, v7, v8

    .line 1081
    .local v0, "expandTouchArea":F
    iget-object v7, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getRight()I

    move-result v7

    int-to-float v7, v7

    add-float v4, v7, v0

    .line 1082
    .local v4, "right":F
    iget-object v7, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float v1, v7, v0

    .line 1084
    .local v1, "left":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    cmpg-float v7, v7, v1

    if-ltz v7, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    cmpl-float v7, v7, v4

    if-gtz v7, :cond_2

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_2

    .line 1085
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_6

    :cond_2
    move v3, v6

    .line 1087
    .local v3, "result":Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    .line 1088
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v6, :cond_7

    .line 1089
    :cond_3
    if-eqz v3, :cond_0

    .line 1090
    sget-object v5, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    if-eqz v5, :cond_4

    .line 1091
    sget-object v5, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-virtual {v5}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->cancel()V

    .line 1092
    sget-object v5, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-virtual {v5}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->animateUp()V

    .line 1095
    :cond_4
    iget-boolean v5, p0, Lcom/android/launcher3/common/view/IconView;->mDisableAlphaOnPress:Z

    if-nez v5, :cond_5

    .line 1096
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/view/IconView;->setAlpha(F)V

    .line 1098
    :cond_5
    const/4 v5, 0x0

    sput-object v5, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    move v5, v6

    .line 1099
    goto :goto_0

    .end local v3    # "result":Z
    :cond_6
    move v3, v5

    .line 1085
    goto :goto_1

    .restart local v3    # "result":Z
    :cond_7
    move v5, v3

    .line 1104
    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 630
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 631
    return-void
.end method

.method public reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 751
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/view/IconView;->mDisableRelayout:Z

    .line 752
    instance-of v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v0, :cond_1

    .line 753
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 754
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 755
    :cond_0
    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local p1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 761
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/view/IconView;->mDisableRelayout:Z

    .line 763
    :cond_2
    return-void

    .line 757
    .restart local p1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 758
    .end local p1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v0

    .line 757
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V

    goto :goto_0
.end method

.method public reapplyItemInfoFromIconCache(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 770
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/common/view/IconView;->mDisableRelayout:Z

    .line 771
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    .line 772
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 773
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 778
    :goto_0
    iget v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 780
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    .line 781
    .local v0, "folderIcon":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 786
    .end local v0    # "folderIcon":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/common/view/IconView;->mDisableRelayout:Z

    .line 788
    :cond_1
    return-void

    :cond_2
    move-object v1, p1

    .line 775
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 776
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v2

    .line 775
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V

    goto :goto_0
.end method

.method public refreshBadge()V
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 814
    iget-object v10, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    if-eqz v10, :cond_4

    .line 815
    iget-object v10, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v7

    .line 816
    .local v7, "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v10

    if-eqz v10, :cond_5

    move v8, v11

    .line 817
    .local v8, "multiSelectMode":Z
    :goto_0
    if-nez v8, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v10, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/IconInfo;

    iget v10, v10, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    if-eqz v10, :cond_8

    .line 818
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v10

    if-nez v10, :cond_0

    iget-boolean v10, p0, Lcom/android/launcher3/common/view/IconView;->mIsSetThemeBadgeBg:Z

    if-nez v10, :cond_0

    .line 819
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/theme/OpenThemeManager;->preloadBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 820
    .local v2, "badgeImage":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 821
    iput-boolean v11, p0, Lcom/android/launcher3/common/view/IconView;->mIsSetThemeBadgeBg:Z

    .line 822
    iget-object v10, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 826
    .end local v2    # "badgeImage":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v6, 0x0

    .line 827
    .local v6, "isOverThousand":Z
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 828
    .local v4, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget v0, v4, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    .line 829
    .local v0, "badge":I
    const/16 v10, 0x3e8

    if-lt v0, v10, :cond_1

    .line 830
    const/4 v6, 0x1

    .line 831
    const/16 v0, 0x3e7

    .line 834
    :cond_1
    if-ne v0, v11, :cond_6

    .line 835
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v4, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f080064

    .line 836
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 835
    invoke-virtual {p0, v10}, Lcom/android/launcher3/common/view/IconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 843
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 844
    .local v1, "badgeCount":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v10}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 845
    .local v3, "currentLanguage":Ljava/lang/String;
    const-string v10, "ar"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "fa"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 846
    :cond_2
    invoke-static {v1, v3}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 850
    :goto_2
    if-eqz v6, :cond_3

    .line 851
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 852
    .local v9, "sb":Ljava/lang/StringBuffer;
    const/16 v10, 0x2b

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 853
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 855
    .end local v9    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    iget-object v10, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->updateBadgeLayout()V

    .line 857
    iget-object v10, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 868
    .end local v0    # "badge":I
    .end local v1    # "badgeCount":Ljava/lang/String;
    .end local v3    # "currentLanguage":Ljava/lang/String;
    .end local v4    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v6    # "isOverThousand":Z
    .end local v7    # "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    .end local v8    # "multiSelectMode":Z
    :cond_4
    :goto_3
    return-void

    .restart local v7    # "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    :cond_5
    move v8, v12

    .line 816
    goto/16 :goto_0

    .line 838
    .restart local v0    # "badge":I
    .restart local v4    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v6    # "isOverThousand":Z
    .restart local v8    # "multiSelectMode":Z
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v4, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ", "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080065

    .line 839
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v12

    .line 838
    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/launcher3/common/view/IconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 848
    .restart local v1    # "badgeCount":Ljava/lang/String;
    .restart local v3    # "currentLanguage":Ljava/lang/String;
    :cond_7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 859
    .end local v0    # "badge":I
    .end local v1    # "badgeCount":Ljava/lang/String;
    .end local v3    # "currentLanguage":Ljava/lang/String;
    .end local v4    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v6    # "isOverThousand":Z
    :cond_8
    iget-object v10, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 860
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v10, :cond_4

    .line 861
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 862
    .local v5, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v10, v5, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v10, :cond_4

    .line 863
    iget-object v10, v5, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v10}, Lcom/android/launcher3/common/view/IconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method refreshIcon(Lcom/android/launcher3/common/base/item/IconInfo;ZLandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "promiseStateChanged"    # Z
    .param p3, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 437
    iget v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    .line 439
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/IconCache;->getSDCardBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    .line 438
    invoke-static {v1, v2}, Lcom/android/launcher3/util/BitmapUtils;->createIconDrawable(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v0

    .line 445
    .local v0, "iconDrawable":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/view/IconView;->setIcon(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 447
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/view/IconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 451
    :cond_0
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/view/IconView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/IconView;->setTag(Ljava/lang/Object;)V

    .line 454
    iget-boolean v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-eqz v1, :cond_1

    .line 455
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    .line 458
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 459
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/launcher3/common/view/IconView;->applyState(Z)V

    .line 462
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->refreshBadge()V

    .line 463
    return-void

    .line 441
    .end local v0    # "iconDrawable":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    :cond_4
    iget v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    invoke-static {p3, v1}, Lcom/android/launcher3/util/BitmapUtils;->createIconDrawable(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v0

    .line 442
    .restart local v0    # "iconDrawable":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    iget v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 744
    iget-boolean v0, p0, Lcom/android/launcher3/common/view/IconView;->mDisableRelayout:Z

    if-nez v0, :cond_0

    .line 745
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 747
    :cond_0
    return-void
.end method

.method public setDisableAlphaOnPress(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    .line 881
    iput-boolean p1, p0, Lcom/android/launcher3/common/view/IconView;->mDisableAlphaOnPress:Z

    .line 882
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 718
    iput-object p1, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 719
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 722
    :cond_0
    return-object p1
.end method

.method public setIconDisplay(I)V
    .locals 1
    .param p1, "iconDisplay"    # I

    .prologue
    .line 329
    iget v0, p0, Lcom/android/launcher3/common/view/IconView;->mIconDisplay:I

    if-ne v0, p1, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iput p1, p0, Lcom/android/launcher3/common/view/IconView;->mIconDisplay:I

    .line 334
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    .line 335
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0
.end method

.method public setLongPressTimeout(I)V
    .locals 1
    .param p1, "longPressTimeout"    # I

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->setLongPressTimeout(I)V

    .line 478
    return-void
.end method

.method protected setShadow()V
    .locals 5

    .prologue
    .line 683
    iget v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconDisplay:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mShadow:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 685
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    iget v4, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    div-int/lit8 v4, v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 686
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mShadow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 689
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public setShadowLayer(FFFI)V
    .locals 1
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 648
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 482
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 483
    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->checkItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 485
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 486
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 640
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 644
    return-void
.end method

.method public setTitleViewVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1072
    return-void
.end method

.method protected updateBadgeLayout()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 269
    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v8, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->mBadgeCount:I

    if-eqz v8, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v2

    .line 272
    .local v2, "contentTop":I
    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 273
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v3, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getWidth()I

    move-result v0

    .line 275
    .local v0, "cellWidth":I
    if-gtz v0, :cond_1

    .line 304
    .end local v0    # "cellWidth":I
    .end local v2    # "contentTop":I
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 278
    .restart local v0    # "cellWidth":I
    .restart local v2    # "contentTop":I
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget v8, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    sub-int v8, v0, v8

    div-int/lit8 v1, v8, 0x2

    .line 279
    .local v1, "contentRight":I
    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    sget v9, Lcom/android/launcher3/common/view/IconView;->mBadgePositionFactor:F

    mul-float/2addr v8, v9

    float-to-int v4, v8

    .line 281
    .local v4, "margin":I
    sub-int v7, v2, v4

    .line 282
    .local v7, "topMargin":I
    sub-int v5, v1, v4

    .line 283
    .local v5, "rightMargin":I
    if-lez v7, :cond_3

    if-lez v5, :cond_3

    .line 284
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 285
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 297
    :cond_2
    :goto_1
    sget-boolean v8, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v8, :cond_0

    .line 298
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 299
    .local v6, "tmp":I
    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 300
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 286
    .end local v6    # "tmp":I
    :cond_3
    if-gtz v7, :cond_4

    .line 287
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 288
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 291
    :cond_4
    if-gtz v5, :cond_2

    .line 292
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 293
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1
.end method

.method public updateCheckBox(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 910
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/view/IconView;->updateCheckBox(ZZ)V

    .line 911
    return-void
.end method

.method public updateCheckBox(ZZ)V
    .locals 8
    .param p1, "visible"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 919
    .local v7, "tag":Ljava/lang/Object;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, v7, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v0, :cond_0

    .line 923
    :cond_2
    if-eqz v7, :cond_3

    .line 924
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    .end local v7    # "tag":Ljava/lang/Object;
    invoke-virtual {v7}, Lcom/android/launcher3/common/base/item/ItemInfo;->getChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 928
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v3, 0x64

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/view/IconView;->animateEachScale(Landroid/view/View;ZIJZ)V

    .line 930
    if-eqz p1, :cond_4

    const/16 v0, 0xc8

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->setLongPressTimeout(I)V

    .line 933
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->refreshBadge()V

    goto :goto_0

    .line 926
    .restart local v7    # "tag":Ljava/lang/Object;
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 930
    .end local v7    # "tag":Ljava/lang/Object;
    :cond_4
    const/16 v0, 0x12c

    goto :goto_2
.end method

.method public updateCountBadge(ZI)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "extraCount"    # I

    .prologue
    .line 1036
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/common/view/IconView;->updateCountBadge(ZIZ)V

    .line 1037
    return-void
.end method

.method public updateCountBadge(ZIZ)V
    .locals 9
    .param p1, "visible"    # Z
    .param p2, "extraCount"    # I
    .param p3, "animate"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1040
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1041
    const v0, 0x7f0f0074

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    .line 1042
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    .line 1045
    :cond_0
    if-eqz p1, :cond_4

    .line 1046
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppCount()I

    move-result v0

    add-int v7, v0, p2

    .line 1047
    .local v7, "count":I
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeCount:Ljava/lang/String;

    .line 1048
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 1049
    .local v8, "currentLanguage":Ljava/lang/String;
    const-string v0, "ar"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fa"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1050
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeCount:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeCount:Ljava/lang/String;

    .line 1054
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1057
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setScaleY(F)V

    .line 1058
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1063
    .end local v7    # "count":I
    .end local v8    # "currentLanguage":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->refreshBadge()V

    .line 1064
    return-void

    .line 1052
    .restart local v7    # "count":I
    .restart local v8    # "currentLanguage":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeCount:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeCount:Ljava/lang/String;

    goto :goto_0

    .line 1058
    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    .line 1060
    .end local v7    # "count":I
    .end local v8    # "currentLanguage":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    const/16 v3, 0xc8

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/view/IconView;->animateEachScale(Landroid/view/View;ZIJZ)V

    goto :goto_2
.end method

.method public updateCountBadge(ZZ)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 1032
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/common/view/IconView;->updateCountBadge(ZIZ)V

    .line 1033
    return-void
.end method

.method public verifyHighRes()V
    .locals 2

    .prologue
    .line 794
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconLoadRequest:Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

    if-eqz v1, :cond_0

    .line 795
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconLoadRequest:Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;->cancel()V

    .line 796
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconLoadRequest:Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

    .line 798
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_2

    .line 799
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 800
    .local v0, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-boolean v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->usingLowResIcon:Z

    if-eqz v1, :cond_1

    .line 801
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v1

    .line 802
    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/model/IconCache;->updateIconInBackground(Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconLoadRequest:Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

    .line 811
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    :goto_0
    return-void

    .line 804
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/common/model/PackageItemInfo;

    if-eqz v1, :cond_1

    .line 805
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/PackageItemInfo;

    .line 806
    .local v0, "info":Lcom/android/launcher3/common/model/PackageItemInfo;
    iget-boolean v1, v0, Lcom/android/launcher3/common/model/PackageItemInfo;->usingLowResIcon:Z

    if-eqz v1, :cond_1

    .line 807
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v1

    .line 808
    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/model/IconCache;->updateIconInBackground(Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconLoadRequest:Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

    goto :goto_0
.end method

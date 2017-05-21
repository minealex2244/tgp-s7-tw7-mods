.class public Lcom/android/launcher3/theme/OpenThemeManager;
.super Ljava/lang/Object;
.source "OpenThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;,
        Lcom/android/launcher3/theme/OpenThemeManager$IconBgScope;,
        Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;,
        Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;,
        Lcom/android/launcher3/theme/OpenThemeManager$SingletonHolder;
    }
.end annotation


# static fields
.field public static final INVALID_COLOR:I = 0x1ffffff

.field public static final INVALID_INT_VALUE:I = -0x1

.field private static final INVALID_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OpenThemeManager"

.field private static mContext:Landroid/content/Context;

.field private static mIconCache:Lcom/android/launcher3/common/model/IconCache;


# instance fields
.field private mFolderStyle:Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

.field private mPreloadBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreloadBadgeTextColor:I

.field private mPreloadIconShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreloadPageIndicatorDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreloadPageIndicatorFestivalDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreloadPageIndicatorHeadlineDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreloadPageIndicatorHomeDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreloadTextColor:I

.field private mPreloadTextHighlightColor:I

.field private mPreloadTextShadowColor:I

.field private mPreloadTitleBGDrawable:Landroid/graphics/drawable/Drawable;

.field public mTextBackgroundExtraPadding:I

.field public mTextBackgroundExtraPaddingBottom:I

.field private mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

.field private themeKey:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const v1, 0x1ffffff

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadTextColor:I

    .line 51
    iput v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadTextHighlightColor:I

    .line 52
    iput v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadTextShadowColor:I

    .line 53
    iput v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadBadgeTextColor:I

    .line 54
    iput-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    iput-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    iput-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadPageIndicatorDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    iput-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadPageIndicatorHomeDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    iput-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadPageIndicatorHeadlineDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    iput-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadPageIndicatorFestivalDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadTitleBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 465
    const/16 v0, 0x29

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "icon_bg_range"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "icon_scale_size"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "home_cell_count_x"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "home_cell_count_y"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "homescreen_menu_page_navi_home_f"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "homescreen_menu_page_navi_default_f"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "homescreen_menu_page_navi_headlines_f"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "enable_shadow"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "enable_title"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "font"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "title_background"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "home_title_color"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "apps_title_color"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ic_allapps"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ic_icon_bg"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "homescreen_apps_bg"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "page_transition_effect"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "material_blue_grey_900"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "counter_bubble"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "badge_bg_color"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "badge_text_color"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "enable_text_shadow"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "text_shadow_color"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "homescreen_ic_folder_default"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "home_ic_folder_gray"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "home_ic_folder_red"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "home_ic_folder_yellow"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "home_ic_folder_green"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "close_folder_type"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "close_folder_shape"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "close_folder_color1"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "close_folder_color2"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "close_folder_color3"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "close_folder_color4"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "close_folder_color5"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "open_folder_type"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "home_folder_bg_default"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "folder_popup_bg_color"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "open_folder_title_color"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "open_folder_text_color"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "homescreen_menu_page_navi_festival"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/theme/OpenThemeManager;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    .line 80
    new-instance v0, Lcom/android/launcher3/theme/OpenThemeLoader;

    sget-object v1, Lcom/android/launcher3/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/theme/OpenThemeLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    .line 82
    new-instance v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    invoke-direct {v0, p0}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;-><init>(Lcom/android/launcher3/theme/OpenThemeManager;)V

    iput-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mFolderStyle:Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mFolderStyle:Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    invoke-virtual {v0}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->setFolderTheme()V

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/theme/OpenThemeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/theme/OpenThemeManager$1;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/launcher3/theme/OpenThemeManager;-><init>()V

    return-void
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/launcher3/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/android/launcher3/theme/OpenThemeManager;
    .locals 1

    .prologue
    .line 72
    # getter for: Lcom/android/launcher3/theme/OpenThemeManager$SingletonHolder;->sOpenThemeMgr:Lcom/android/launcher3/theme/OpenThemeManager;
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager$SingletonHolder;->access$100()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v0

    return-object v0
.end method

.method private getItemBitmapforDefaultResource(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmapId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 389
    sget-object v3, Lcom/android/launcher3/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 390
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 392
    const-string v3, "drawable"

    iget-object v4, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v4}, Lcom/android/launcher3/theme/OpenThemeLoader;->getDefaultPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 393
    .local v1, "resId":I
    if-nez v1, :cond_1

    .line 399
    .end local v1    # "resId":I
    :cond_0
    :goto_0
    return-object v2

    .line 397
    .restart local v1    # "resId":I
    :cond_1
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private getThemeType(Ljava/lang/String;)I
    .locals 3
    .param p1, "intId"    # Ljava/lang/String;

    .prologue
    .line 609
    sget-object v1, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->DEFAULT:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value()I

    move-result v0

    .line 610
    .local v0, "type":I
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 664
    :goto_1
    return v0

    .line 610
    :sswitch_0
    const-string v2, "icon_bg_range"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "icon_scale_size"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "page_transition_effect"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "close_folder_type"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "open_folder_type"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "close_folder_shape"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "home_title_color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "material_blue_grey_900"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string v2, "text_shadow_color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_9
    const-string v2, "folder_popup_bg_color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_a
    const-string v2, "open_folder_title_color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_b
    const-string v2, "open_folder_text_color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :sswitch_c
    const-string v2, "close_folder_color1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "close_folder_color2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "close_folder_color3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "close_folder_color4"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "close_folder_color5"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v2, "badge_bg_color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v2, "badge_text_color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v2, "enable_shadow"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v2, "homescreen_menu_page_navi_home_f"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v2, "homescreen_menu_page_navi_default_f"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v2, "homescreen_menu_page_navi_headlines_f"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v2, "title_background"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v2, "homescreen_ic_folder_default"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string v2, "home_folder_bg_default"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string v2, "ic_allapps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string v2, "ic_icon_bg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string v2, "counter_bubble"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x1c

    goto/16 :goto_0

    .line 614
    :pswitch_0
    sget-object v1, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->APP_ICON:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value()I

    move-result v0

    .line 615
    goto/16 :goto_1

    .line 620
    :pswitch_1
    sget-object v1, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value()I

    move-result v0

    .line 621
    goto/16 :goto_1

    .line 634
    :pswitch_2
    sget-object v1, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value()I

    move-result v0

    .line 635
    goto/16 :goto_1

    .line 638
    :pswitch_3
    sget-object v1, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->BADGE:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value()I

    move-result v0

    .line 639
    goto/16 :goto_1

    .line 643
    :pswitch_4
    sget-object v1, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value()I

    move-result v0

    .line 644
    goto/16 :goto_1

    .line 652
    :pswitch_5
    sget-object v1, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value()I

    move-result v0

    .line 653
    goto/16 :goto_1

    .line 656
    :pswitch_6
    sget-object v1, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->APP_ICON:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value()I

    move-result v0

    .line 657
    goto/16 :goto_1

    .line 659
    :pswitch_7
    sget-object v1, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->BADGE:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value()I

    move-result v0

    .line 660
    goto/16 :goto_1

    .line 610
    :sswitch_data_0
    .sparse-switch
        -0x676dda0a -> :sswitch_4
        -0x5f876ea4 -> :sswitch_1
        -0x5c54bc89 -> :sswitch_5
        -0x4928bbe8 -> :sswitch_c
        -0x4928bbe7 -> :sswitch_d
        -0x4928bbe6 -> :sswitch_e
        -0x4928bbe5 -> :sswitch_f
        -0x4928bbe4 -> :sswitch_10
        -0x3cc8375c -> :sswitch_3
        -0x3bffbea8 -> :sswitch_19
        -0x38b8cf80 -> :sswitch_a
        -0x3174feed -> :sswitch_15
        -0x2ddf9e45 -> :sswitch_14
        -0x25136bfb -> :sswitch_11
        -0x21327a92 -> :sswitch_1a
        -0x20697ef3 -> :sswitch_9
        -0x1b507bff -> :sswitch_18
        -0x162ee473 -> :sswitch_b
        -0x143370a4 -> :sswitch_6
        0x36a2175 -> :sswitch_17
        0x3e0e82f -> :sswitch_1c
        0x4867bc6 -> :sswitch_7
        0xef38dc9 -> :sswitch_0
        0x1c26f9b1 -> :sswitch_16
        0x38c9f60b -> :sswitch_2
        0x3b2e6956 -> :sswitch_8
        0x4b15a75c -> :sswitch_13
        0x6333a7ed -> :sswitch_12
        0x76d3afa6 -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private load3rdPartyIconTray(II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "newIcon":Landroid/graphics/Bitmap;
    sget-object v2, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->ICON_TRAY:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/theme/OpenThemeManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 182
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher3/theme/OpenThemeManager;->getBitmapWithSizeForTheme(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 185
    :cond_0
    return-object v1
.end method

.method private preloadColor()V
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->HOME_TEXT_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v0}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/theme/OpenThemeManager;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadTextColor:I

    .line 101
    sget-object v0, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->TEXT_HIGHLIGHT:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v0}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/theme/OpenThemeManager;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadTextHighlightColor:I

    .line 102
    sget-object v0, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->TEXT_SHADOW_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v0}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/theme/OpenThemeManager;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadTextShadowColor:I

    .line 103
    sget-object v0, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->BADGE_TEXT_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v0}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/theme/OpenThemeManager;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadBadgeTextColor:I

    .line 104
    return-void
.end method

.method private preloadDrawable()V
    .locals 2

    .prologue
    .line 140
    sget-object v1, Lcom/android/launcher3/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 143
    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 145
    invoke-virtual {p0}, Lcom/android/launcher3/theme/OpenThemeManager;->preloadBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 147
    sget-object v1, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->PAGEINDICATOR_DEFAULT:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/theme/OpenThemeManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadPageIndicatorDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 148
    sget-object v1, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->PAGEINDICATOR_HOME:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/theme/OpenThemeManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadPageIndicatorHomeDrawable:Landroid/graphics/drawable/Drawable;

    .line 149
    sget-object v1, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->PAGEINDICATOR_FESTIVAL:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/theme/OpenThemeManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadPageIndicatorFestivalDrawable:Landroid/graphics/drawable/Drawable;

    .line 150
    sget-object v1, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->PAGEINDICATOR_HEADLINE:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/theme/OpenThemeManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadPageIndicatorHeadlineDrawable:Landroid/graphics/drawable/Drawable;

    .line 152
    :cond_0
    sget-object v1, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->TITLE_BACKGROUND:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/theme/OpenThemeManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadTitleBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 153
    return-void
.end method

.method private preloadOtherResources()V
    .locals 2

    .prologue
    .line 94
    sget-object v1, Lcom/android/launcher3/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0900da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mTextBackgroundExtraPadding:I

    .line 96
    const v1, 0x7f0900d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mTextBackgroundExtraPaddingBottom:I

    .line 97
    return-void
.end method


# virtual methods
.method public getBitmapWithSizeForTheme(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "dstWidth"    # I
    .param p3, "dstHeight"    # I

    .prologue
    .line 189
    if-nez p1, :cond_1

    .line 190
    const/4 v0, 0x0

    .line 216
    :cond_0
    :goto_0
    return-object v0

    .line 192
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 193
    .local v7, "srcWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 195
    .local v6, "srcHeight":I
    int-to-float v8, p2

    int-to-float v9, v7

    div-float v4, v8, v9

    .line 196
    .local v4, "rationX":F
    int-to-float v8, p3

    int-to-float v9, v6

    div-float v5, v8, v9

    .line 197
    .local v5, "rationY":F
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 199
    .local v3, "ratio":F
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 201
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 202
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 203
    .local v1, "c":Landroid/graphics/Canvas;
    if-le v7, v6, :cond_3

    .line 204
    const/4 v8, 0x0

    int-to-float v9, p3

    int-to-float v10, v6

    mul-float/2addr v10, v3

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 209
    :cond_2
    :goto_1
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 210
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 211
    .local v2, "oldBounds":Landroid/graphics/Rect;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 212
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 213
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 214
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 205
    .end local v2    # "oldBounds":Landroid/graphics/Rect;
    :cond_3
    if-le v6, v7, :cond_2

    .line 206
    int-to-float v8, p2

    int-to-float v9, v7

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method public getBoolean(I)Z
    .locals 8
    .param p1, "boolId"    # I

    .prologue
    .line 305
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-direct {p0, v5}, Lcom/android/launcher3/theme/OpenThemeManager;->getThemeType(Ljava/lang/String;)I

    move-result v4

    .line 306
    .local v4, "themeType":I
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/theme/OpenThemeLoader;->getThemePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 308
    .local v0, "bool":Z
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/theme/OpenThemeLoader;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 309
    .local v2, "r":Landroid/content/res/Resources;
    if-eqz v2, :cond_2

    .line 311
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    aget-object v5, v5, p1

    const-string v6, "bool"

    invoke-virtual {v2, v5, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 312
    .local v3, "resId":I
    if-nez v3, :cond_1

    .line 313
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeLoader;->getDefaultPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/theme/OpenThemeLoader;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 314
    if-eqz v2, :cond_0

    .line 315
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    aget-object v5, v5, p1

    const-string v6, "bool"

    iget-object v7, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v7}, Lcom/android/launcher3/theme/OpenThemeLoader;->getDefaultPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 316
    if-nez v3, :cond_1

    move v5, v0

    .line 327
    .end local v3    # "resId":I
    :goto_0
    return v5

    .line 319
    .restart local v3    # "resId":I
    :cond_0
    const-string v5, "OpenThemeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t find such bool in the default resource : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v5, 0x0

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .end local v3    # "resId":I
    :goto_1
    move v5, v0

    .line 327
    goto :goto_0

    .line 325
    :cond_2
    const-string v5, "OpenThemeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to getting resources from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getColor(I)I
    .locals 8
    .param p1, "colorId"    # I

    .prologue
    .line 246
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-direct {p0, v5}, Lcom/android/launcher3/theme/OpenThemeManager;->getThemeType(Ljava/lang/String;)I

    move-result v4

    .line 247
    .local v4, "themeType":I
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/theme/OpenThemeLoader;->getThemePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/theme/OpenThemeLoader;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 249
    .local v2, "r":Landroid/content/res/Resources;
    const v0, 0x1ffffff

    .line 250
    .local v0, "color":I
    if-eqz v2, :cond_1

    .line 252
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    aget-object v5, v5, p1

    const-string v6, "color"

    invoke-virtual {v2, v5, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 253
    .local v3, "resId":I
    if-nez v3, :cond_0

    .line 254
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {p0, v5}, Lcom/android/launcher3/theme/OpenThemeManager;->getItemColorforDefaultResource(Ljava/lang/String;)I

    move-result v0

    .line 262
    .end local v3    # "resId":I
    :goto_0
    return v0

    .line 256
    .restart local v3    # "resId":I
    :cond_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 259
    .end local v3    # "resId":I
    :cond_1
    const-string v5, "OpenThemeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to getting resources from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "drawableId"    # I

    .prologue
    .line 331
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-direct {p0, v6}, Lcom/android/launcher3/theme/OpenThemeManager;->getThemeType(Ljava/lang/String;)I

    move-result v5

    .line 332
    .local v5, "themeType":I
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v6, v5}, Lcom/android/launcher3/theme/OpenThemeLoader;->getThemePackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 334
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v6, v2}, Lcom/android/launcher3/theme/OpenThemeLoader;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 335
    .local v3, "r":Landroid/content/res/Resources;
    if-eqz v3, :cond_1

    .line 337
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    aget-object v6, v6, p1

    const-string v7, "drawable"

    invoke-virtual {v3, v6, v7, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 339
    .local v4, "resId":I
    if-nez v4, :cond_0

    .line 340
    :try_start_0
    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {p0, v6}, Lcom/android/launcher3/theme/OpenThemeManager;->getItemDrawableforDefaultResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 350
    .end local v4    # "resId":I
    :goto_0
    return-object v0

    .line 342
    .restart local v4    # "resId":I
    :cond_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 348
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v4    # "resId":I
    :cond_1
    const-string v6, "OpenThemeManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t find such drawable in the resource : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFolderStyle()Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mFolderStyle:Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    return-object v0
.end method

.method public getIconWithTrayIfNeeded(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "iconBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "iconSize"    # I
    .param p3, "isThemeIcon"    # Z

    .prologue
    .line 157
    const/4 v2, 0x0

    .line 160
    .local v2, "newIcon":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    .line 161
    sget-object v3, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->ICON_BG_RANGE:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v3}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/theme/OpenThemeManager;->getInteger(I)I

    move-result v1

    .line 162
    .local v1, "icon_bg_range":I
    sget-object v3, Lcom/android/launcher3/theme/OpenThemeManager$IconBgScope;->UNASSIGNED:Lcom/android/launcher3/theme/OpenThemeManager$IconBgScope;

    invoke-virtual {v3}, Lcom/android/launcher3/theme/OpenThemeManager$IconBgScope;->value()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 163
    if-nez p3, :cond_0

    .line 164
    invoke-direct {p0, p2, p2}, Lcom/android/launcher3/theme/OpenThemeManager;->load3rdPartyIconTray(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    .local v0, "iconTrayBitmap":Landroid/graphics/Bitmap;
    invoke-static {p1, v0, p2, p2}, Lcom/android/launcher3/theme/ThemeUtils;->integrateIconAndTray(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 172
    .end local v0    # "iconTrayBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 173
    move-object v2, p1

    .line 176
    .end local v1    # "icon_bg_range":I
    :cond_1
    return-object v2

    .line 168
    .restart local v1    # "icon_bg_range":I
    :cond_2
    sget-object v3, Lcom/android/launcher3/theme/OpenThemeManager$IconBgScope;->ALL:Lcom/android/launcher3/theme/OpenThemeManager$IconBgScope;

    invoke-virtual {v3}, Lcom/android/launcher3/theme/OpenThemeManager$IconBgScope;->value()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 169
    invoke-direct {p0, p2, p2}, Lcom/android/launcher3/theme/OpenThemeManager;->load3rdPartyIconTray(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    .restart local v0    # "iconTrayBitmap":Landroid/graphics/Bitmap;
    invoke-static {p1, v0, p2, p2}, Lcom/android/launcher3/theme/ThemeUtils;->integrateIconAndTray(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method public getInteger(I)I
    .locals 8
    .param p1, "intId"    # I

    .prologue
    .line 220
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-direct {p0, v5}, Lcom/android/launcher3/theme/OpenThemeManager;->getThemeType(Ljava/lang/String;)I

    move-result v4

    .line 221
    .local v4, "themeType":I
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/theme/OpenThemeLoader;->getThemePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/theme/OpenThemeLoader;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 223
    .local v2, "r":Landroid/content/res/Resources;
    const/4 v0, -0x1

    .line 224
    .local v0, "integer":I
    if-eqz v2, :cond_2

    .line 226
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    aget-object v5, v5, p1

    const-string v6, "integer"

    invoke-virtual {v2, v5, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 227
    .local v3, "resId":I
    if-nez v3, :cond_1

    .line 228
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeLoader;->getDefaultPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/theme/OpenThemeLoader;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 229
    if-eqz v2, :cond_0

    .line 230
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    aget-object v5, v5, p1

    const-string v6, "integer"

    iget-object v7, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v7}, Lcom/android/launcher3/theme/OpenThemeLoader;->getDefaultPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 231
    if-nez v3, :cond_1

    move v5, v0

    .line 242
    .end local v3    # "resId":I
    :goto_0
    return v5

    .line 234
    .restart local v3    # "resId":I
    :cond_0
    const-string v5, "OpenThemeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t find such integer in the default resource : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v5, -0x1

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .end local v3    # "resId":I
    :goto_1
    move v5, v0

    .line 242
    goto :goto_0

    .line 240
    :cond_2
    const-string v5, "OpenThemeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to getting resources from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getItemBitmap(I)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmapId"    # I

    .prologue
    .line 372
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-direct {p0, v5}, Lcom/android/launcher3/theme/OpenThemeManager;->getThemeType(Ljava/lang/String;)I

    move-result v4

    .line 373
    .local v4, "themeType":I
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/theme/OpenThemeLoader;->getThemePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 375
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/theme/OpenThemeLoader;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 376
    .local v2, "r":Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 378
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    aget-object v5, v5, p1

    const-string v6, "drawable"

    invoke-virtual {v2, v5, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 379
    .local v3, "resId":I
    if-nez v3, :cond_1

    .line 380
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-direct {p0, v5}, Lcom/android/launcher3/theme/OpenThemeManager;->getItemBitmapforDefaultResource(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 385
    .end local v3    # "resId":I
    :cond_0
    :goto_0
    return-object v0

    .line 382
    .restart local v3    # "resId":I
    :cond_1
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemColorforDefaultResource(Ljava/lang/String;)I
    .locals 5
    .param p1, "colorId"    # Ljava/lang/String;

    .prologue
    const v2, 0x1ffffff

    .line 266
    sget-object v3, Lcom/android/launcher3/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 267
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 269
    const-string v3, "color"

    iget-object v4, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v4}, Lcom/android/launcher3/theme/OpenThemeLoader;->getDefaultPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 270
    .local v1, "resId":I
    if-nez v1, :cond_1

    .line 275
    .end local v1    # "resId":I
    :cond_0
    :goto_0
    return v2

    .line 273
    .restart local v1    # "resId":I
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_0
.end method

.method public getItemDrawableforDefaultResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "drawableId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 354
    sget-object v3, Lcom/android/launcher3/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 355
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 357
    const-string v3, "drawable"

    iget-object v4, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v4}, Lcom/android/launcher3/theme/OpenThemeLoader;->getDefaultPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 358
    .local v1, "resId":I
    if-nez v1, :cond_1

    .line 363
    .end local v1    # "resId":I
    :cond_0
    :goto_0
    return-object v2

    .line 361
    .restart local v1    # "resId":I
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public getPreloadColor(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 510
    iget-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 511
    .local v0, "key":Ljava/lang/String;
    const-string v1, "home_title_color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    iget v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadTextColor:I

    .line 520
    :goto_0
    return v1

    .line 513
    :cond_0
    const-string v1, "material_blue_grey_900"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 514
    iget v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadTextHighlightColor:I

    goto :goto_0

    .line 515
    :cond_1
    const-string v1, "text_shadow_color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 516
    iget v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadTextShadowColor:I

    goto :goto_0

    .line 517
    :cond_2
    const-string v1, "badge_text_color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 518
    iget v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadBadgeTextColor:I

    goto :goto_0

    .line 520
    :cond_3
    const v1, 0x1ffffff

    goto :goto_0
.end method

.method public getPreloadDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 524
    iget-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 525
    .local v0, "key":Ljava/lang/String;
    const-string v1, "enable_shadow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 540
    :goto_0
    return-object v1

    .line 527
    :cond_0
    const-string v1, "counter_bubble"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadBadgeDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 529
    :cond_1
    const-string v1, "homescreen_menu_page_navi_home_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 530
    iget-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadPageIndicatorHomeDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 531
    :cond_2
    const-string v1, "homescreen_menu_page_navi_default_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 532
    iget-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadPageIndicatorDefaultDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 533
    :cond_3
    const-string v1, "homescreen_menu_page_navi_festival"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 534
    iget-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadPageIndicatorFestivalDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 535
    :cond_4
    const-string v1, "homescreen_menu_page_navi_headlines_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 536
    iget-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadPageIndicatorHeadlineDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 537
    :cond_5
    const-string v1, "title_background"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 538
    iget-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mPreloadTitleBGDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 540
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 8
    .param p1, "stringId"    # I

    .prologue
    .line 279
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-direct {p0, v5}, Lcom/android/launcher3/theme/OpenThemeManager;->getThemeType(Ljava/lang/String;)I

    move-result v4

    .line 280
    .local v4, "themeType":I
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/theme/OpenThemeLoader;->getThemePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 282
    .local v3, "string":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v5, v0}, Lcom/android/launcher3/theme/OpenThemeLoader;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 283
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_2

    .line 285
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    aget-object v5, v5, p1

    const-string v6, "string"

    invoke-virtual {v1, v5, v6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 286
    .local v2, "resId":I
    if-nez v2, :cond_1

    .line 287
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    iget-object v6, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeLoader;->getDefaultPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/theme/OpenThemeLoader;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 288
    if-eqz v1, :cond_0

    .line 289
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    aget-object v5, v5, p1

    const-string v6, "string"

    iget-object v7, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v7}, Lcom/android/launcher3/theme/OpenThemeLoader;->getDefaultPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 290
    if-nez v2, :cond_1

    move-object v5, v3

    .line 301
    .end local v2    # "resId":I
    :goto_0
    return-object v5

    .line 293
    .restart local v2    # "resId":I
    :cond_0
    const-string v5, "OpenThemeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t find such string in the default resource : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v5, 0x0

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .end local v2    # "resId":I
    :goto_1
    move-object v5, v3

    .line 301
    goto :goto_0

    .line 299
    :cond_2
    const-string v5, "OpenThemeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to getting resources from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getThemeAppIcon()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 443
    sget-object v4, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->ALL_APPS_ICON:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v4}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/theme/OpenThemeManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 444
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    sget-object v4, Lcom/android/launcher3/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 445
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v4, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->ALL_APPS_ICON:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    .line 446
    invoke-virtual {v4}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v4

    const-string v5, "drawable"

    .line 445
    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/theme/OpenThemeManager;->isFromThemeResources(ILjava/lang/String;)Z

    move-result v3

    .line 448
    .local v3, "isThemeAppIcon":Z
    invoke-static {}, Lcom/android/launcher3/util/BitmapUtils;->getIconBitmapSize()I

    move-result v4

    .line 447
    invoke-virtual {p0, v0, v4, v3}, Lcom/android/launcher3/theme/OpenThemeManager;->getIconWithTrayIfNeeded(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 449
    .local v2, "iconBitmapWithTrayIfNeeded":Landroid/graphics/Bitmap;
    return-object v2
.end method

.method public initThemeForIconLoading()V
    .locals 2

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/android/launcher3/theme/OpenThemeManager;->isThemeChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    const-string v0, "OpenThemeManager"

    const-string v1, "Theme changed, clear mIconDB."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    sget-object v0, Lcom/android/launcher3/theme/OpenThemeManager;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/IconCache;->clearDB()V

    .line 457
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/theme/OpenThemeLoader;->setIsThemeChanged(Z)V

    .line 459
    :cond_0
    return-void
.end method

.method public isDefaultTheme()Z
    .locals 4

    .prologue
    .line 403
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 404
    .local v1, "ret":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    sget-object v3, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    # getter for: Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value:I
    invoke-static {v3}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->access$200(Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/theme/OpenThemeLoader;->getThemePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "currentThemePackageName":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 409
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public isFromThemeResources(ILjava/lang/String;)Z
    .locals 6
    .param p1, "id"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 427
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-direct {p0, v5}, Lcom/android/launcher3/theme/OpenThemeManager;->getThemeType(Ljava/lang/String;)I

    move-result v3

    .line 428
    .local v3, "themeType":I
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/theme/OpenThemeLoader;->getThemePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v5, v0}, Lcom/android/launcher3/theme/OpenThemeLoader;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 430
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 432
    iget-object v5, p0, Lcom/android/launcher3/theme/OpenThemeManager;->themeKey:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v1, v5, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 434
    .local v2, "resId":I
    if-nez v2, :cond_1

    .line 439
    .end local v2    # "resId":I
    :cond_0
    :goto_0
    return v4

    .line 437
    .restart local v2    # "resId":I
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isPinkTheme()Z
    .locals 4

    .prologue
    .line 413
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 414
    .local v1, "ret":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    sget-object v3, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;

    # getter for: Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->value:I
    invoke-static {v3}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;->access$200(Lcom/android/launcher3/theme/OpenThemeManager$ThemeType;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/theme/OpenThemeLoader;->getThemePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "currentThemePackageName":Ljava/lang/String;
    const-string v2, "com.sec.Pink.common.home"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 419
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public isThemeChanged()Z
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher3/theme/OpenThemeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/theme/OpenThemeLoader;->isThemeChanged()Z

    move-result v0

    return v0
.end method

.method public preloadBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    const v8, 0x7f020088

    const v7, 0x7f020087

    .line 107
    sget-object v6, Lcom/android/launcher3/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 108
    .local v4, "r":Landroid/content/res/Resources;
    if-nez v4, :cond_0

    .line 109
    const/4 v3, 0x0

    .line 136
    :goto_0
    return-object v3

    .line 112
    :cond_0
    sget-object v6, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->BADGE_BG:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/launcher3/theme/OpenThemeManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 113
    .local v3, "preloadBadgeDrawable":Landroid/graphics/drawable/Drawable;
    sget-object v6, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->BADGE_BG_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/launcher3/theme/OpenThemeManager;->getColor(I)I

    move-result v0

    .line 115
    .local v0, "badgeBgColor":I
    if-nez v3, :cond_3

    .line 116
    const v6, 0x1ffffff

    if-eq v0, v6, :cond_2

    .line 119
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 121
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v4, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 126
    .local v5, "small":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 127
    .local v2, "padding":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 128
    invoke-static {v5, v0, v2}, Lcom/android/launcher3/theme/ThemeUtils;->getNinepatchWithColor(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 130
    goto :goto_0

    .line 123
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "padding":Landroid/graphics/Rect;
    .end local v5    # "small":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 124
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v4, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5    # "small":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 131
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "small":Landroid/graphics/Bitmap;
    :cond_2
    const-string v6, "OpenThemeManager"

    const-string v7, "Can\'t set badge color to invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_3
    const-string v6, "OpenThemeManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "There is badge drawable for theme : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public preloadResources()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/launcher3/theme/OpenThemeManager;->preloadColor()V

    .line 89
    invoke-direct {p0}, Lcom/android/launcher3/theme/OpenThemeManager;->preloadDrawable()V

    .line 90
    invoke-direct {p0}, Lcom/android/launcher3/theme/OpenThemeManager;->preloadOtherResources()V

    .line 91
    return-void
.end method

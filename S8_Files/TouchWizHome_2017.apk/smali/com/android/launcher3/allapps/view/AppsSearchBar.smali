.class public Lcom/android/launcher3/allapps/view/AppsSearchBar;
.super Landroid/widget/LinearLayout;
.source "AppsSearchBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;
    }
.end annotation


# static fields
.field private static final EXTRA_MODE_KEY:Ljava/lang/String; = "launch_mode"

.field private static final EXTRA_MODE_TEXT_INPUT:Ljava/lang/String; = "text_input"

.field private static final EXTRA_MODE_VOICE_INPUT:Ljava/lang/String; = "voice_input"

.field private static final SFINDER_CLS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

.field private static final SFINDER_PKG_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyfinder"

.field public static final TAG:Ljava/lang/String; = "AppsSearchBar"

.field private static sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;


# instance fields
.field private mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

.field private mAppsScreenIDForSALog:Ljava/lang/String;

.field private mDivider:Landroid/view/View;

.field private mMagIcon:Landroid/widget/ImageView;

.field private mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private mMoreButton:Landroid/widget/ImageButton;

.field private mMoreButtonContainer:Landroid/view/View;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mSamsungMembersEnabled:Z

.field private mSearchBarContainerView:Landroid/view/View;

.field private mSearchView:Landroid/widget/SearchView;

.field mSearchViewKeyListener:Landroid/view/View$OnKeyListener;

.field mSearchViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mSearchVoiceButton:Landroid/widget/ImageView;

.field private mSearchbarWrapper:Landroid/widget/LinearLayout;

.field mVoiceBtnOnClickListener:Landroid/view/View$OnClickListener;

.field private mWhiteWallpaper:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0d0034

    const v4, 0x7f0d0026

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    sput-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    .line 96
    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    new-instance v1, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    invoke-direct {v1, v6}, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar$1;)V

    aput-object v1, v0, v2

    .line 97
    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v2

    const v1, 0x7f0d0033

    iput v1, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->textColorId:I

    .line 98
    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v2

    iput v4, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->iconColorId:I

    .line 99
    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v2

    iput v4, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->backgroundColorId:I

    .line 100
    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v2

    const v1, 0x7f0d0028

    iput v1, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->dividerColorId:I

    .line 102
    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    new-instance v1, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    invoke-direct {v1, v6}, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar$1;)V

    aput-object v1, v0, v3

    .line 103
    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v3

    iput v5, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->textColorId:I

    .line 104
    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v3

    iput v5, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->iconColorId:I

    .line 105
    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v3

    const v1, 0x7f0d0027

    iput v1, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->backgroundColorId:I

    .line 106
    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v3

    const v1, 0x7f0d0029

    iput v1, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->dividerColorId:I

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mWhiteWallpaper:Z

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsScreenIDForSALog:Ljava/lang/String;

    .line 306
    new-instance v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar$3;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 355
    new-instance v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar$4;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 368
    new-instance v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar$5;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchViewKeyListener:Landroid/view/View$OnKeyListener;

    .line 399
    new-instance v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar$6;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mVoiceBtnOnClickListener:Landroid/view/View$OnClickListener;

    .line 120
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08017f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsScreenIDForSALog:Ljava/lang/String;

    .line 121
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/view/AppsSearchBar;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/view/AppsSearchBar;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/allapps/view/AppsSearchBar;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/view/AppsSearchBar;
    .param p1, "x1"    # Landroid/widget/PopupMenu;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/view/AppsSearchBar;)Lcom/android/launcher3/allapps/controller/AppsController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/view/AppsSearchBar;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/allapps/view/AppsSearchBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/view/AppsSearchBar;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->launchSfinder()Z

    move-result v0

    return v0
.end method

.method private launchSfinder()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 337
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const-string v2, "com.samsung.android.app.galaxyfinder"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAppInstalled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    :goto_0
    return v6

    .line 340
    :cond_0
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 342
    .local v7, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.galaxyfinder"

    const-string v3, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 343
    const-string v1, "launch_mode"

    const-string v2, "text_input"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_1
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "APSC"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 352
    const/4 v6, 0x1

    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "AppsSearchBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start S Finder.  intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 225
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 226
    return-void
.end method

.method private setupAppsOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 270
    const v7, 0x7f0f00f3

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 271
    .local v6, "viewType":Landroid/view/MenuItem;
    const v7, 0x7f0f00f7

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 272
    .local v1, "contactUs":Landroid/view/MenuItem;
    const v7, 0x7f0f00f4

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 273
    .local v5, "tideUpPages":Landroid/view/MenuItem;
    const v7, 0x7f0f00f8

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 274
    .local v4, "search":Landroid/view/MenuItem;
    const v7, 0x7f0f00f9

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 275
    .local v0, "clearhistory":Landroid/view/MenuItem;
    const v7, 0x7f0f00f5

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 276
    .local v3, "homeSettings":Landroid/view/MenuItem;
    const v7, 0x7f0f00f6

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 278
    .local v2, "galaxyEssentials":Landroid/view/MenuItem;
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 279
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 280
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 281
    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 283
    iget-boolean v7, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSamsungMembersEnabled:Z

    if-eqz v7, :cond_1

    .line 284
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 289
    :goto_0
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 290
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 292
    iget-object v7, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v7, v8, :cond_0

    .line 293
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 295
    :cond_0
    return v9

    .line 286
    :cond_1
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public changeColorAndBackground(Z)V
    .locals 12
    .param p1, "whiteBg"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 191
    if-eqz p1, :cond_1

    sget-object v8, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    const/4 v9, 0x1

    aget-object v6, v8, v9

    .line 193
    .local v6, "style":Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v6, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->iconColorId:I

    invoke-virtual {v8, v9, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 194
    .local v5, "iconColor":I
    new-instance v4, Landroid/graphics/LightingColorFilter;

    invoke-direct {v4, v5, v10}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 196
    .local v4, "filter":Landroid/graphics/ColorFilter;
    iget-boolean v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mWhiteWallpaper:Z

    if-ne v8, p1, :cond_2

    .line 197
    iget-object v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMagIcon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V

    .line 199
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v8

    if-nez v8, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v6, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->textColorId:I

    invoke-virtual {v8, v9, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    .line 201
    .local v7, "textColor":I
    iget-object v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    .line 202
    iget-object v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    .line 222
    .end local v7    # "textColor":I
    :cond_0
    :goto_1
    return-void

    .line 191
    .end local v4    # "filter":Landroid/graphics/ColorFilter;
    .end local v5    # "iconColor":I
    .end local v6    # "style":Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;
    :cond_1
    sget-object v8, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v6, v8, v10

    goto :goto_0

    .line 208
    .restart local v4    # "filter":Landroid/graphics/ColorFilter;
    .restart local v5    # "iconColor":I
    .restart local v6    # "style":Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;
    :cond_2
    iget-object v9, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButtonContainer:Landroid/view/View;

    sget-boolean v8, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v8, :cond_3

    const/high16 v8, 0x43340000    # 180.0f

    :goto_2
    invoke-virtual {v9, v8}, Landroid/view/View;->setRotation(F)V

    .line 210
    iget-object v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V

    .line 211
    iget-object v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v6, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->backgroundColorId:I

    invoke-virtual {v8, v9, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 214
    .local v0, "bgColor":I
    new-instance v1, Landroid/graphics/LightingColorFilter;

    invoke-direct {v1, v0, v10}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 215
    .local v1, "bgColorFilter":Landroid/graphics/ColorFilter;
    iget-object v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchbarWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8, v1}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v6, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->dividerColorId:I

    invoke-virtual {v8, v9, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 218
    .local v2, "dividerColor":I
    new-instance v3, Landroid/graphics/LightingColorFilter;

    invoke-direct {v3, v2, v10}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 219
    .local v3, "dividerColorFilter":Landroid/graphics/ColorFilter;
    iget-object v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mDivider:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V

    .line 221
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mWhiteWallpaper:Z

    goto :goto_1

    .line 208
    .end local v0    # "bgColor":I
    .end local v1    # "bgColorFilter":Landroid/graphics/ColorFilter;
    .end local v2    # "dividerColor":I
    .end local v3    # "dividerColorFilter":Landroid/graphics/ColorFilter;
    :cond_3
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public getSearchBarContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchBarContainerView:Landroid/view/View;

    return-object v0
.end method

.method public getSearchView()Landroid/widget/SearchView;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method public hidePopupMenu()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 263
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 12

    .prologue
    const v11, 0x7f0f00a7

    const v10, 0x7f0f0043

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 125
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 126
    const v5, 0x7f0f003e

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchbarWrapper:Landroid/widget/LinearLayout;

    .line 127
    const v5, 0x7f0f003f

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SearchView;

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    .line 128
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 129
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v7}, Landroid/widget/SearchView;->setBackgroundColor(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "android:id/search_voice_btn"

    invoke-virtual {v5, v6, v8, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 132
    .local v4, "searchVoiceId":I
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v4}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchVoiceButton:Landroid/widget/ImageView;

    .line 133
    const v5, 0x7f0f00ca

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchVoiceButton:Landroid/widget/ImageView;

    .line 134
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v7}, Landroid/widget/SearchView;->setInputType(I)V

    .line 135
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/Launcher;->hasVoiceSearch(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 136
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    :cond_0
    const v5, 0x7f0f0041

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mDivider:Landroid/view/View;

    .line 140
    const v5, 0x7f0f003d

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchBarContainerView:Landroid/view/View;

    .line 142
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.samsung.android.app.galaxyfinder"

    invoke-static {v5, v6}, Lcom/android/launcher3/Utilities;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 143
    const v5, 0x7f0f0042

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButtonContainer:Landroid/view/View;

    .line 144
    const v5, 0x7f0f00a6

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    .line 145
    invoke-virtual {p0, v10}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 146
    invoke-virtual {p0, v11}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 148
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 162
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 163
    .local v0, "resource":Landroid/content/res/Resources;
    const-string v5, "android:id/search_src_text"

    invoke-virtual {v0, v5, v8, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 164
    .local v1, "searchEdit":I
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 165
    .local v2, "searchEditText":Landroid/widget/EditText;
    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 166
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 168
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v5

    if-nez v5, :cond_2

    .line 169
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 172
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchVoiceButton:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mVoiceBtnOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/android/launcher3/allapps/view/AppsSearchBar$1;

    invoke-direct {v6, p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar$1;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "android:id/search_mag_icon"

    invoke-virtual {v5, v6, v8, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 183
    .local v3, "searchMagId":I
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v3}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMagIcon:Landroid/widget/ImageView;

    .line 186
    invoke-virtual {p0, v7}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->changeColorAndBackground(Z)V

    .line 187
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->isSamsungMembersEnabled(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSamsungMembersEnabled:Z

    .line 188
    return-void

    .line 152
    .end local v0    # "resource":Landroid/content/res/Resources;
    .end local v1    # "searchEdit":I
    .end local v2    # "searchEditText":Landroid/widget/EditText;
    .end local v3    # "searchMagId":I
    :cond_3
    invoke-virtual {p0, v10}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButtonContainer:Landroid/view/View;

    .line 153
    invoke-virtual {p0, v11}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    .line 154
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchbarWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButtonContainer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 157
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 158
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 419
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 421
    if-eqz p1, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/view/AppsContainer;

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 428
    :cond_0
    return-void
.end method

.method public resetSearchBarText()V
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 304
    return-void
.end method

.method public setAppsController(Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 0
    .param p1, "appsController"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 230
    return-void
.end method

.method public showPopupMenu()V
    .locals 4

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->initBounceAnimation()V

    .line 234
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewBinder()Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->isAppsLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 241
    :cond_2
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchBarContainerView:Landroid/view/View;

    const v3, 0x800005

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 242
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f110000

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 243
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->setupAppsOptionsMenu(Landroid/view/Menu;)Z

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/android/launcher3/allapps/view/AppsSearchBar$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar$2;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 251
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 253
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsScreenIDForSALog:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 254
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsScreenIDForSALog:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
